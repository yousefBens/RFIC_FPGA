#include "xparameters.h"
#include "xil_io.h"
#include "xil_printf.h"

#include <stdint.h>
#include <string.h>

/* ============================================================
 * Hardware configuration
 * ============================================================ */

#define SPI_BASEADDR XPAR_SPI_MASTER_AXI_0_BASEADDR

#define NUM_RFIC       3
#define UART_LINE_MAX  128

/* ============================================================
 * AXI register map
 * ============================================================ */

#define REG_CTRL       0x00
#define REG_TX_LOW     0x04
#define REG_TX_HIGH    0x08
#define REG_STATUS     0x0C
#define REG_RX_LOW     0x10
#define REG_RX_HIGH    0x14
#define REG_RX_COUNT   0x18
#define REG_ACK        0x1C

/* ============================================================
 * CTRL bits
 * ============================================================ */

#define CTRL_SEND      (1u << 0)
#define CTRL_LAST      (1u << 1)
#define CTRL_LDB       (1u << 2)

/* ============================================================
 * STATUS bits
 * ============================================================ */

#define STATUS_SPI_BUSY  (1u << 0)
#define STATUS_TX_READY  (1u << 1)
#define STATUS_RX_VALID  (1u << 2)
#define STATUS_SPI_DONE  (1u << 3)
#define STATUS_LDB_BUSY  (1u << 4)
#define STATUS_LDB_DONE  (1u << 5)
#define STATUS_ERROR     (1u << 6)

/* ============================================================
 * ACK bits
 * ============================================================ */

#define ACK_RX          (1u << 0)
#define ACK_SPI_DONE    (1u << 1)
#define ACK_LDB_DONE    (1u << 2)
#define ACK_ERROR       (1u << 3)
#define ACK_RX_COUNT    (1u << 4)

/* ============================================================
 * Timeouts
 * ============================================================ */

#define SPI_TIMEOUT 10000000u

/* ============================================================
 * Data structures
 * ============================================================ */

typedef struct
{
    uint32_t low;
    uint32_t high;

} spi_word_t;

/* ============================================================
 * AXI access functions
 * ============================================================ */

static inline void spi_write(uint32_t offset, uint32_t value)
{
    Xil_Out32(SPI_BASEADDR + offset, value);
}

static inline uint32_t spi_read(uint32_t offset)
{
    return Xil_In32(SPI_BASEADDR + offset);
}

/* ============================================================
 * HEX conversion
 * ============================================================ */

static int hex_char_to_val(char c)
{
    if (c >= '0' && c <= '9')
        return c - '0';

    if (c >= 'a' && c <= 'f')
        return c - 'a' + 10;

    if (c >= 'A' && c <= 'F')
        return c - 'A' + 10;

    return -1;
}

/* ============================================================
 * Parse 60-bit hexadecimal word
 * ============================================================ */

static int parse_hex_60(
    const char *str,
    spi_word_t *word
)
{
    uint64_t value = 0;
    int digits = 0;

    while (*str == ' ' || *str == '\t')
        str++;

    if (*str == '\0')
        return -1;

    while (*str != '\0')
    {
        int v = hex_char_to_val(*str);

        if (v < 0)
            return -2;

        if (digits >= 15)
            return -3;

        value = (value << 4) | (uint64_t)v;

        digits++;
        str++;
    }

    word->low = (uint32_t)(value & 0xFFFFFFFFULL);

    word->high = (uint32_t)(
        (value >> 32) & 0x0FFFFFFFULL
    );

    return digits;
}

/* ============================================================
 * UART line reception
 * ============================================================ */

static int uart_read_line(char *buffer, int max_length)
{
    int index = 0;
    int overflow = 0;

    extern char inbyte(void);

    while (1)
    {
        char c = inbyte();

        if (c == '\r' || c == '\n')
        {
            if (index == 0 && !overflow)
                continue;

            buffer[index] = '\0';

            if (overflow)
                return -1;

            return index;
        }

        if (index < max_length - 1 && !overflow)
        {
            buffer[index++] = c;
        }
        else
        {
            overflow = 1;
        }
    }
}

/* ============================================================
 * Parse UART command
 *
 * Expected:
 * SPI:RFIC3:RFIC2:RFIC1
 * ============================================================ */

static int parse_spi_command(
    char *line,
    spi_word_t words[NUM_RFIC]
)
{
    char *token;
    int index = 0;

    token = strtok(line, ":");

    if (token == NULL)
        return -1;

    if (strcmp(token, "SPI") != 0)
        return -2;

    while (index < NUM_RFIC)
    {
        token = strtok(NULL, ":");

        if (token == NULL)
            return -3;

        if (parse_hex_60(token, &words[index]) < 0)
            return -4;

        index++;
    }

    if (strtok(NULL, ":") != NULL)
        return -5;

    return 0;
}

/* ============================================================
 * Wait for status bit
 * ============================================================ */

static int wait_status_set(uint32_t mask)
{
    uint32_t timeout = SPI_TIMEOUT;

    while (timeout--)
    {
        uint32_t status = spi_read(REG_STATUS);

        if (status & STATUS_ERROR)
        {
            xil_printf(
                "[ERROR] AXI SPI error, STATUS=0x%08X\r\n",
                status
            );

            return -2;
        }

        if ((status & mask) == mask)
            return 0;
    }

    xil_printf(
        "[ERROR] Timeout waiting for STATUS mask 0x%08X\r\n",
        mask
    );

    return -1;
}

/* ============================================================
 * Wait until SPI can accept a new word
 * ============================================================ */

static int wait_spi_ready(void)
{
    uint32_t timeout = SPI_TIMEOUT;

    while (timeout--)
    {
        uint32_t status = spi_read(REG_STATUS);

        if (status & STATUS_ERROR)
            return -2;

        if ((status & STATUS_TX_READY) &&
            !(status & STATUS_RX_VALID) &&
            !(status & STATUS_LDB_BUSY))
        {
            return 0;
        }
    }

    return -1;
}

/* ============================================================
 * Send one 60-bit word
 *
 * last = 0 : keep CSB low
 * last = 1 : release CSB after word
 * ============================================================ */

static int spi_send_word(
    const spi_word_t *tx,
    spi_word_t *rx,
    int last
)
{
    uint32_t ctrl;
    int ret;

    /* Wait until SPI is ready */

    ret = wait_spi_ready();

    if (ret != 0)
    {
        xil_printf("[ERROR] SPI not ready\r\n");
        return -1;
    }

    /* Load TX registers */

    spi_write(REG_TX_LOW, tx->low);
    spi_write(REG_TX_HIGH, tx->high);

    /* Build command */

    ctrl = CTRL_SEND;

    if (last)
        ctrl |= CTRL_LAST;

    /* Start transmission */

    spi_write(REG_CTRL, ctrl);

    /* Wait for received word */

    ret = wait_status_set(STATUS_RX_VALID);

    if (ret != 0)
    {
        xil_printf("[ERROR] RX timeout\r\n");
        return -2;
    }

    /* Read RX registers */

    rx->low = spi_read(REG_RX_LOW);

    rx->high = spi_read(REG_RX_HIGH) & 0x0FFFFFFF;

    /* Acknowledge RX */

    spi_write(REG_ACK, ACK_RX);

    return 0;
}

/* ============================================================
 * Wait for SPI transaction completion
 * ============================================================ */

static int spi_wait_done(void)
{
    int ret;

    ret = wait_status_set(STATUS_SPI_DONE);

    if (ret != 0)
        return ret;

    spi_write(REG_ACK, ACK_SPI_DONE);

    return 0;
}

/* ============================================================
 * Generate LDB pulse
 * ============================================================ */

static int ldb_apply(void)
{
    int ret;

    xil_printf("[LDB] Trigger\r\n");

    /* Clear previous LDB DONE event */

    spi_write(REG_ACK, ACK_LDB_DONE);

    /* SPI must be completely idle */

    {
        uint32_t timeout = SPI_TIMEOUT;

        while (timeout--)
        {
            uint32_t status = spi_read(REG_STATUS);

            if (status & STATUS_ERROR)
                return -2;

            if (!(status & STATUS_SPI_BUSY) &&
                !(status & STATUS_LDB_BUSY) &&
                (status & STATUS_TX_READY))
            {
                break;
            }
        }

        if (timeout == 0)
        {
            xil_printf("[ERROR] SPI busy before LDB\r\n");
            return -1;
        }
    }

    /* Trigger LDB controller */

    spi_write(REG_CTRL, CTRL_LDB);

    /* Wait for LDB pulse completion */

    ret = wait_status_set(STATUS_LDB_DONE);

    if (ret != 0)
    {
        xil_printf("[ERROR] LDB timeout\r\n");
        return -3;
    }

    /* Acknowledge LDB completion */

    spi_write(REG_ACK, ACK_LDB_DONE);

    xil_printf("[LDB] DONE\r\n");

    return 0;
}

/* ============================================================
 * Print 60-bit word
 * ============================================================ */

static void print_spi_word(
    const char *label,
    const spi_word_t *word
)
{
    xil_printf(
        "%s HIGH=0x%08X LOW=0x%08X\r\n",
        label,
        word->high,
        word->low
    );
}

/* ============================================================
 * Send configuration to three RFIC
 * ============================================================ */

static int configure_rfic_chain(
    spi_word_t tx_words[NUM_RFIC]
)
{
    spi_word_t rx_words[NUM_RFIC];

    int ret;
    int i;

    xil_printf("\r\n");
    xil_printf("====================================\r\n");
    xil_printf("  SPI DAISY CHAIN - %d RFIC\r\n", NUM_RFIC);
    xil_printf("====================================\r\n");

    /* Clear previous events */

    spi_write(
        REG_ACK,
        ACK_RX |
        ACK_SPI_DONE |
        ACK_LDB_DONE |
        ACK_ERROR |
        ACK_RX_COUNT
    );

    /* Send words: RFIC3, RFIC2, RFIC1 */

    for (i = 0; i < NUM_RFIC; i++)
    {
        int rfic_number = NUM_RFIC - i;

        int last = (i == NUM_RFIC - 1);

        xil_printf(
            "\r\n[SPI] Sending RFIC %d\r\n",
            rfic_number
        );

        print_spi_word("TX", &tx_words[i]);

        ret = spi_send_word(
            &tx_words[i],
            &rx_words[i],
            last
        );

        if (ret != 0)
        {
            xil_printf(
                "[ERROR] RFIC %d transmission failed\r\n",
                rfic_number
            );

            return -1;
        }

        print_spi_word("RX", &rx_words[i]);
    }

    /* Wait for CSB release */

    xil_printf("\r\n[SPI] Waiting for transaction DONE\r\n");

    ret = spi_wait_done();

    if (ret != 0)
    {
        xil_printf("[ERROR] SPI transaction timeout\r\n");
        return -2;
    }

    xil_printf("[SPI] 180 bits transmitted\r\n");
    xil_printf("[SPI] CSB released\r\n");

    /* Apply all configurations simultaneously */

    ret = ldb_apply();

    if (ret != 0)
    {
        xil_printf("[ERROR] LDB operation failed\r\n");
        return -3;
    }

    xil_printf("\r\n");
    xil_printf("====================================\r\n");
    xil_printf("  CONFIGURATION COMPLETED\r\n");
    xil_printf("====================================\r\n");

    return 0;
}

/* ============================================================
 * MAIN
 * ============================================================ */

int main(void)
{
    char uart_line[UART_LINE_MAX];

    spi_word_t tx_words[NUM_RFIC];

    int ret;

    xil_printf("\r\n");
    xil_printf("====================================\r\n");
    xil_printf("       RFIC SPI CONTROLLER\r\n");
    xil_printf("====================================\r\n");

    xil_printf("MicroBlaze + AXI SPI + LDB\r\n");
    xil_printf("Number of RFIC : %d\r\n", NUM_RFIC);
    xil_printf("SPI word size  : 60 bits\r\n");
    xil_printf("Total SPI bits : %d\r\n", NUM_RFIC * 60);

    xil_printf("\r\n");
    xil_printf("UART command format:\r\n");
    xil_printf("SPI:RFIC3:RFIC2:RFIC1\r\n");

    xil_printf("\r\nExample:\r\n");
    xil_printf(
        "SPI:123456789ABCDEF:23456789ABCDEF0:3456789ABCDEF01\r\n"
    );

    xil_printf("\r\nREADY\r\n");

    while (1)
    {
        xil_printf("\r\n> ");

        ret = uart_read_line(
            uart_line,
            UART_LINE_MAX
        );

        if (ret < 0)
        {
            xil_printf("[ERROR] UART buffer overflow\r\n");
            continue;
        }

        xil_printf(
            "\r\n[UART] Received: %s\r\n",
            uart_line
        );

        ret = parse_spi_command(
            uart_line,
            tx_words
        );

        if (ret != 0)
        {
            xil_printf(
                "[ERROR] Invalid UART command (%d)\r\n",
                ret
            );

            xil_printf(
                "Expected: SPI:RFIC3:RFIC2:RFIC1\r\n"
            );

            continue;
        }

        ret = configure_rfic_chain(tx_words);

        if (ret != 0)
        {
            xil_printf(
                "[ERROR] Configuration failed (%d)\r\n",
                ret
            );
        }
    }

    return 0;
}