library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_Master_AXI_slave_lite_v1_0_S00_AXI is
    generic (
        C_S_AXI_DATA_WIDTH : integer := 32;
        C_S_AXI_ADDR_WIDTH : integer := 5
    );
    port (
        -- SPI Master interface
        spi_tx_data  : out std_logic_vector(59 downto 0);
        spi_tx_valid : out std_logic;
        spi_tx_ready : in  std_logic;
        spi_tx_last  : out std_logic;

        spi_rx_data  : in std_logic_vector(59 downto 0);
        spi_rx_valid : in std_logic;

        spi_busy : in std_logic;
        spi_done : in std_logic;

        -- LDB Controller interface
        ldb_trigger : out std_logic;
        ldb_busy    : in  std_logic;
        ldb_done    : in  std_logic;

        -- AXI4-Lite
        S_AXI_ACLK    : in std_logic;
        S_AXI_ARESETN : in std_logic;

        S_AXI_AWADDR  : in std_logic_vector(
            C_S_AXI_ADDR_WIDTH-1 downto 0
        );
        S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
        S_AXI_AWVALID : in std_logic;
        S_AXI_AWREADY : out std_logic;

        S_AXI_WDATA : in std_logic_vector(
            C_S_AXI_DATA_WIDTH-1 downto 0
        );
        S_AXI_WSTRB : in std_logic_vector(
            (C_S_AXI_DATA_WIDTH/8)-1 downto 0
        );
        S_AXI_WVALID : in std_logic;
        S_AXI_WREADY : out std_logic;

        S_AXI_BRESP   : out std_logic_vector(1 downto 0);
        S_AXI_BVALID  : out std_logic;
        S_AXI_BREADY  : in  std_logic;

        S_AXI_ARADDR  : in std_logic_vector(
            C_S_AXI_ADDR_WIDTH-1 downto 0
        );
        S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
        S_AXI_ARVALID : in std_logic;
        S_AXI_ARREADY : out std_logic;

        S_AXI_RDATA : out std_logic_vector(
            C_S_AXI_DATA_WIDTH-1 downto 0
        );
        S_AXI_RRESP  : out std_logic_vector(1 downto 0);
        S_AXI_RVALID : out std_logic;
        S_AXI_RREADY : in std_logic
    );
end SPI_Master_AXI_slave_lite_v1_0_S00_AXI;


architecture arch_imp of
    SPI_Master_AXI_slave_lite_v1_0_S00_AXI is

    --------------------------------------------------
    -- Register addresses
    --------------------------------------------------

    constant REG_CTRL     : integer := 0;
    constant REG_TX_LOW   : integer := 1;
    constant REG_TX_HIGH  : integer := 2;
    constant REG_STATUS   : integer := 3;
    constant REG_RX_LOW   : integer := 4;
    constant REG_RX_HIGH  : integer := 5;
    constant REG_RX_COUNT : integer := 6;
    constant REG_ACK      : integer := 7;

    --------------------------------------------------
    -- AXI signals
    --------------------------------------------------

    signal axi_awready : std_logic := '0';
    signal axi_wready  : std_logic := '0';
    signal axi_bvalid  : std_logic := '0';

    signal axi_arready : std_logic := '0';
    signal axi_rvalid  : std_logic := '0';

    signal axi_rdata : std_logic_vector(31 downto 0)
        := (others => '0');

    -- Write address and data holding registers
    signal aw_hold_valid : std_logic := '0';
    signal w_hold_valid  : std_logic := '0';

    signal aw_hold_addr : std_logic_vector(
        C_S_AXI_ADDR_WIDTH-1 downto 0
    ) := (others => '0');

    signal w_hold_data : std_logic_vector(31 downto 0)
        := (others => '0');

    signal w_hold_strb : std_logic_vector(3 downto 0)
        := (others => '0');

    --------------------------------------------------
    -- User registers
    --------------------------------------------------

    signal tx_low_reg : std_logic_vector(31 downto 0)
        := (others => '0');

    signal tx_high_reg : std_logic_vector(27 downto 0)
        := (others => '0');

    signal rx_low_reg : std_logic_vector(31 downto 0)
        := (others => '0');

    signal rx_high_reg : std_logic_vector(27 downto 0)
        := (others => '0');

    signal rx_count_reg : unsigned(31 downto 0)
        := (others => '0');

    --------------------------------------------------
    -- Event flags
    --------------------------------------------------

    signal rx_pending       : std_logic := '0';
    signal spi_done_pending : std_logic := '0';
    signal ldb_done_pending : std_logic := '0';
    signal error_pending    : std_logic := '0';

    --------------------------------------------------
    -- SPI command registers
    --------------------------------------------------

    signal spi_tx_data_reg : std_logic_vector(59 downto 0)
        := (others => '0');

    signal spi_tx_valid_reg : std_logic := '0';
    signal spi_tx_last_reg  : std_logic := '0';

    signal ldb_trigger_reg : std_logic := '0';

    --------------------------------------------------
    -- Helpers
    --------------------------------------------------

    function apply_wstrb(
        old_data : std_logic_vector(31 downto 0);
        new_data : std_logic_vector(31 downto 0);
        strb     : std_logic_vector(3 downto 0)
    ) return std_logic_vector is

        variable result : std_logic_vector(31 downto 0);

    begin

        result := old_data;

        for i in 0 to 3 loop
            if strb(i) = '1' then
                result(i*8+7 downto i*8) :=
                    new_data(i*8+7 downto i*8);
            end if;
        end loop;

        return result;

    end function;

begin

    --------------------------------------------------
    -- Parameter checks
    --------------------------------------------------

    assert C_S_AXI_DATA_WIDTH = 32
        report "This IP requires a 32-bit AXI data bus"
        severity failure;

    assert C_S_AXI_ADDR_WIDTH >= 5
        report "AXI address width must be >= 5"
        severity failure;

    --------------------------------------------------
    -- AXI output assignments
    --------------------------------------------------

    S_AXI_AWREADY <= axi_awready;
    S_AXI_WREADY  <= axi_wready;

    S_AXI_BVALID <= axi_bvalid;
    S_AXI_BRESP  <= "00";

    S_AXI_ARREADY <= axi_arready;

    S_AXI_RVALID <= axi_rvalid;
    S_AXI_RRESP  <= "00";
    S_AXI_RDATA  <= axi_rdata;

    --------------------------------------------------
    -- SPI output assignments
    --------------------------------------------------

    spi_tx_data  <= spi_tx_data_reg;
    spi_tx_valid <= spi_tx_valid_reg;
    spi_tx_last  <= spi_tx_last_reg;

    ldb_trigger <= ldb_trigger_reg;

    --------------------------------------------------
    -- AXI ready signals
    --------------------------------------------------

    axi_awready <= '1'
        when (
            aw_hold_valid = '0' and
            axi_bvalid = '0'
        )
        else '0';

    axi_wready <= '1'
        when (
            w_hold_valid = '0' and
            axi_bvalid = '0'
        )
        else '0';

    axi_arready <= '1'
        when axi_rvalid = '0'
        else '0';

    --------------------------------------------------
    -- Main sequential process
    --------------------------------------------------

    process(S_AXI_ACLK)

        variable write_addr : integer range 0 to 7;
        variable read_addr  : integer range 0 to 7;

        variable ctrl_word : std_logic_vector(31 downto 0);
        variable status_word : std_logic_vector(31 downto 0);

        variable v_aw_valid : std_logic;
        variable v_w_valid  : std_logic;

        variable v_aw_addr : std_logic_vector(
            C_S_AXI_ADDR_WIDTH-1 downto 0
        );

        variable v_w_data : std_logic_vector(31 downto 0);
        variable v_w_strb : std_logic_vector(3 downto 0);

        variable v_rx_pending       : std_logic;
        variable v_spi_done_pending : std_logic;
        variable v_ldb_done_pending : std_logic;
        variable v_error_pending    : std_logic;

    begin

        if rising_edge(S_AXI_ACLK) then

            if S_AXI_ARESETN = '0' then

                aw_hold_valid <= '0';
                w_hold_valid  <= '0';

                aw_hold_addr <= (others => '0');
                w_hold_data  <= (others => '0');
                w_hold_strb  <= (others => '0');

                axi_bvalid <= '0';
                axi_rvalid <= '0';
                axi_rdata  <= (others => '0');

                tx_low_reg  <= (others => '0');
                tx_high_reg <= (others => '0');

                rx_low_reg  <= (others => '0');
                rx_high_reg <= (others => '0');

                rx_count_reg <= (others => '0');

                rx_pending       <= '0';
                spi_done_pending <= '0';
                ldb_done_pending <= '0';
                error_pending    <= '0';

                spi_tx_data_reg  <= (others => '0');
                spi_tx_valid_reg <= '0';
                spi_tx_last_reg  <= '0';

                ldb_trigger_reg <= '0';

            else

                --------------------------------------------------
                -- Default command pulses
                --------------------------------------------------

                ldb_trigger_reg <= '0';

                --------------------------------------------------
                -- SPI TX handshake
                --------------------------------------------------

                if spi_tx_valid_reg = '1' and
                   spi_tx_ready = '1' then

                    spi_tx_valid_reg <= '0';

                end if;

                --------------------------------------------------
                -- Capture event flags
                --------------------------------------------------

                v_rx_pending       := rx_pending;
                v_spi_done_pending := spi_done_pending;
                v_ldb_done_pending := ldb_done_pending;
                v_error_pending    := error_pending;

                --------------------------------------------------
                -- Capture SPI RX
                --------------------------------------------------

                if spi_rx_valid = '1' then

                    if v_rx_pending = '0' then

                        rx_low_reg  <= spi_rx_data(31 downto 0);
                        rx_high_reg <= spi_rx_data(59 downto 32);

                        rx_count_reg <= rx_count_reg + 1;

                        v_rx_pending := '1';

                    else

                        -- Previous RX has not been acknowledged.
                        -- Do not overwrite it.
                        v_error_pending := '1';

                    end if;

                end if;

                --------------------------------------------------
                -- SPI transaction completed
                --------------------------------------------------

                if spi_done = '1' then
                    v_spi_done_pending := '1';
                end if;

                --------------------------------------------------
                -- LDB completed
                --------------------------------------------------

                if ldb_done = '1' then
                    v_ldb_done_pending := '1';
                end if;

                --------------------------------------------------
                -- AXI write response
                --------------------------------------------------

                if axi_bvalid = '1' and
                   S_AXI_BREADY = '1' then

                    axi_bvalid <= '0';

                end if;

                --------------------------------------------------
                -- Capture AXI write address/data
                --------------------------------------------------

                v_aw_valid := aw_hold_valid;
                v_w_valid  := w_hold_valid;

                v_aw_addr := aw_hold_addr;
                v_w_data := w_hold_data;
                v_w_strb := w_hold_strb;

                if S_AXI_AWVALID = '1' and
                   axi_awready = '1' then

                    v_aw_valid := '1';
                    v_aw_addr := S_AXI_AWADDR;

                end if;

                if S_AXI_WVALID = '1' and
                   axi_wready = '1' then

                    v_w_valid := '1';
                    v_w_data := S_AXI_WDATA;
                    v_w_strb := S_AXI_WSTRB;

                end if;

                --------------------------------------------------
                -- Execute AXI write
                --------------------------------------------------

                if v_aw_valid = '1' and
                   v_w_valid = '1' and
                   axi_bvalid = '0' then

                    write_addr := to_integer(
                        unsigned(v_aw_addr(4 downto 2))
                    );

                    case write_addr is

                        ----------------------------------
                        -- CTRL: 0x00
                        ----------------------------------

                        when REG_CTRL =>

                            ctrl_word := apply_wstrb(
                                (others => '0'),
                                v_w_data,
                                v_w_strb
                            );

                            -- Bit 0: SEND
                            if ctrl_word(0) = '1' then

                                if spi_tx_valid_reg = '0' and
                                   spi_tx_ready = '1' and
                                   v_rx_pending = '0' and
                                   ldb_busy = '0' then

                                    spi_tx_data_reg <=
                                        tx_high_reg & tx_low_reg;

                                    spi_tx_last_reg <= ctrl_word(1);

                                    spi_tx_valid_reg <= '1';

                                else

                                    v_error_pending := '1';

                                end if;

                            end if;

                            -- Bit 2: LDB
                            if ctrl_word(2) = '1' then

                                if spi_busy = '0' and
                                   spi_tx_valid_reg = '0' and
                                   ldb_busy = '0' then

                                    ldb_trigger_reg <= '1';

                                else

                                    v_error_pending := '1';

                                end if;

                            end if;

                        ----------------------------------
                        -- TX_LOW: 0x04
                        ----------------------------------

                        when REG_TX_LOW =>

                            tx_low_reg <= apply_wstrb(
                                tx_low_reg,
                                v_w_data,
                                v_w_strb
                            );

                        ----------------------------------
                        -- TX_HIGH: 0x08
                        ----------------------------------

                        when REG_TX_HIGH =>

                            ctrl_word := (others => '0');
                            ctrl_word(27 downto 0) :=
                                tx_high_reg;

                            ctrl_word := apply_wstrb(
                                ctrl_word,
                                v_w_data,
                                v_w_strb
                            );

                            tx_high_reg <= ctrl_word(27 downto 0);

                        ----------------------------------
                        -- ACK: 0x1C
                        ----------------------------------

                        when REG_ACK =>

                            ctrl_word := apply_wstrb(
                                (others => '0'),
                                v_w_data,
                                v_w_strb
                            );

                            -- Bit 0: acknowledge RX
                            if ctrl_word(0) = '1' then
                                v_rx_pending := '0';
                            end if;

                            -- Bit 1: acknowledge SPI DONE
                            if ctrl_word(1) = '1' then
                                v_spi_done_pending := '0';
                            end if;

                            -- Bit 2: acknowledge LDB DONE
                            if ctrl_word(2) = '1' then
                                v_ldb_done_pending := '0';
                            end if;

                            -- Bit 3: clear error
                            if ctrl_word(3) = '1' then
                                v_error_pending := '0';
                            end if;

                            -- Bit 4: clear RX counter
                            if ctrl_word(4) = '1' then
                                rx_count_reg <= (others => '0');
                            end if;

                        when others =>
                            null;

                    end case;

                    v_aw_valid := '0';
                    v_w_valid := '0';

                    axi_bvalid <= '1';

                end if;

                aw_hold_valid <= v_aw_valid;
                w_hold_valid  <= v_w_valid;

                aw_hold_addr <= v_aw_addr;
                w_hold_data  <= v_w_data;
                w_hold_strb  <= v_w_strb;

                --------------------------------------------------
                -- Update sticky event flags
                --------------------------------------------------

                rx_pending       <= v_rx_pending;
                spi_done_pending <= v_spi_done_pending;
                ldb_done_pending <= v_ldb_done_pending;
                error_pending    <= v_error_pending;

                --------------------------------------------------
                -- AXI read response
                --------------------------------------------------

                if axi_rvalid = '1' and
                   S_AXI_RREADY = '1' then

                    axi_rvalid <= '0';

                end if;

                if S_AXI_ARVALID = '1' and
                   axi_arready = '1' then

                    read_addr := to_integer(
                        unsigned(S_AXI_ARADDR(4 downto 2))
                    );

                    status_word := (others => '0');

                    status_word(0) := spi_busy;
                    status_word(1) := spi_tx_ready;
                    status_word(2) := v_rx_pending;
                    status_word(3) := v_spi_done_pending;
                    status_word(4) := ldb_busy;
                    status_word(5) := v_ldb_done_pending;
                    status_word(6) := v_error_pending;

                    case read_addr is

                        when REG_CTRL =>

                            axi_rdata <= (others => '0');

                        when REG_TX_LOW =>

                            axi_rdata <= tx_low_reg;

                        when REG_TX_HIGH =>

                            axi_rdata <= (others => '0');
                            axi_rdata(27 downto 0) <=
                                tx_high_reg;

                        when REG_STATUS =>

                            axi_rdata <= status_word;

                        when REG_RX_LOW =>

                            axi_rdata <= rx_low_reg;

                        when REG_RX_HIGH =>

                            axi_rdata <= (others => '0');
                            axi_rdata(27 downto 0) <=
                                rx_high_reg;

                        when REG_RX_COUNT =>

                            axi_rdata <=
                                std_logic_vector(rx_count_reg);

                        when REG_ACK =>

                            axi_rdata <= (others => '0');

                        when others =>

                            axi_rdata <= (others => '0');

                    end case;

                    axi_rvalid <= '1';

                end if;

            end if;

        end if;

    end process;

end arch_imp;