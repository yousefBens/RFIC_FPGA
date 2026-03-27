#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"
#include <stdint.h>
#include <string.h>

/* =========================
   SPI AXI
   ========================= */
#define SPI_BASEADDR XPAR_SPI_MASTER_AXI_0_BASEADDR

#define REG0_CTRL   0x00
#define REG1_TXLOW  0x04
#define REG2_TXHIGH 0x08
#define REG3_STAT   0x0C
#define REG4_RXLOW  0x10
#define REG5_RXHIGH 0x14

/* =========================
   UART frame buffer
   ========================= */
#define UART_LINE_MAX 32

volatile char g_uart_line[UART_LINE_MAX];
volatile unsigned int g_uart_idx = 0;
volatile int g_frame_ready = 0;
volatile int g_uart_overflow = 0;

/* =========================================================
   A appeler depuis TON ISR UART existant
   Exemple dans l'ISR :
       char c = ...;   // caractère reçu
       uart_rx_push_char(c);
   ========================================================= */
void uart_rx_push_char(char c)
{
    /* === DEBUG AFFFICHAGE === */
    xil_printf("[DBG] rx_char: '%c' (0x%02X)\r\n", c, c);

    if (g_frame_ready) {
        xil_printf("[DBG] frame_ready=1, caractere ignore\r\n");
        return;
    }

    if (c == '\r' || c == '\n') {
        xil_printf("[DBG] Fin de ligne detectee\r\n");
        if (g_uart_idx > 0) {
            g_uart_line[g_uart_idx] = '\0';
            g_uart_idx = 0;
            g_frame_ready = 1;
            xil_printf("[DBG] Trame complete prete a etre parser\r\n");
        }
        return;
    }

    if (g_uart_idx < (UART_LINE_MAX - 1)) {
        g_uart_line[g_uart_idx] = c;
        xil_printf("[DBG] Stocke a l'index %d\r\n", g_uart_idx);
        g_uart_idx++;
    } else {
        g_uart_idx = 0;
        g_uart_overflow = 1;
        xil_printf("[DBG] OVERFLOW du buffer UART !\r\n");
    }
}

/* =========================
   Utilitaires HEX
   ========================= */
static int hex_char_to_val(char c)
{
    if (c >= '0' && c <= '9') return (int)(c - '0');
    if (c >= 'a' && c <= 'f') return (int)(c - 'a' + 10);
    if (c >= 'A' && c <= 'F') return (int)(c - 'A' + 10);
    return -1;
}

/* Convertit une chaine hex ASCII (max 15 digits = 60 bits)
   vers tx_high[27:0] et tx_low[31:0]
   Exemples:
   "A5"
   "123456789ABCDE"
*/
static int parse_hex_60(const char *s, uint32_t *tx_low, uint32_t *tx_high)
{
    uint64_t value = 0;
    int digits = 0;
    int v;

    *tx_low = 0;
    *tx_high = 0;

    while (*s == ' ' || *s == '\t') {
        s++;
    }

    if (*s == '\0') {
        return -1;
    }

    while (*s != '\0') {
        v = hex_char_to_val(*s);
        if (v < 0) {
            return -2;
        }

        if (digits >= 15) {
            return -3;
        }

        value = (value << 4) | (uint64_t)v;
        digits++;
        s++;
    }

    *tx_low  = (uint32_t)(value & 0xFFFFFFFFu);
    *tx_high = (uint32_t)((value >> 32) & 0x0FFFFFFFu);

    return digits;
}

/* =========================
   SPI helpers
   ========================= */
static void spi_send_frame(uint32_t tx_low, uint32_t tx_high)
{
    uint32_t status;

    Xil_Out32(SPI_BASEADDR + REG1_TXLOW, tx_low);
    Xil_Out32(SPI_BASEADDR + REG2_TXHIGH, tx_high);

    /* start pulse */
    Xil_Out32(SPI_BASEADDR + REG0_CTRL, 0x1);

    do {
        status = Xil_In32(SPI_BASEADDR + REG3_STAT);
    } while ((status & 0x2u) == 0u);   /* bit1 = done */
}

static void spi_read_rx(uint32_t *rx_low, uint32_t *rx_high)
{
    *rx_low  = Xil_In32(SPI_BASEADDR + REG4_RXLOW);
    *rx_high = Xil_In32(SPI_BASEADDR + REG5_RXHIGH) & 0x0FFFFFFFu;
}

/* =========================
   Main
   ========================= */
int main(void)
{
    uint32_t tx_low, tx_high;
    uint32_t rx_low, rx_high;
    int ret;

    xil_printf("\r\n");
    xil_printf("=== UART -> SPI READY ===\r\n");
    xil_printf("Envoyer une trame HEX puis Enter\r\n");
    xil_printf("Max = 15 digits hex (60 bits)\r\n");
    xil_printf("Exemples :\r\n");
    xil_printf("  A5\r\n");
    xil_printf("  123456789ABCDE\r\n");
    xil_printf("\r\n");

    // Déclaration de la fonction Xilinx pour lire un caractère UART
    extern char inbyte(void);

    while (1) {
        
        // --- NOUVEAU : Lecture d'un octet UART (bloquant) ---
        char c = inbyte();
        uart_rx_push_char(c);

        if (g_uart_overflow) {
            g_uart_overflow = 0;
            xil_printf("Erreur : overflow buffer UART\r\n");
        }

        if (g_frame_ready) {
            char local_line[UART_LINE_MAX];

            strcpy(local_line, (const char *)g_uart_line);
            g_frame_ready = 0;

            ret = parse_hex_60(local_line, &tx_low, &tx_high);

            if (ret < 0) {
                xil_printf("Trame invalide : %s\r\n", local_line);
                xil_printf("Utiliser uniquement HEX, max 15 digits\r\n");
                continue;
            }

            xil_printf("Trame recue : %s\r\n", local_line);
            xil_printf("TX_HIGH = 0x%08X\r\n", tx_high);
            xil_printf("TX_LOW  = 0x%08X\r\n", tx_low);

            spi_send_frame(tx_low, tx_high);
            spi_read_rx(&rx_low, &rx_high);

            xil_printf("SPI DONE\r\n");
            xil_printf("RX_HIGH = 0x%08X\r\n", rx_high);
            xil_printf("RX_LOW  = 0x%08X\r\n", rx_low);
            xil_printf("\r\n");
        }
    }

    return 0;
}