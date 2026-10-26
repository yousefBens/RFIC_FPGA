library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_Master_AXI is
    generic (
        C_S00_AXI_DATA_WIDTH : integer := 32;
        C_S00_AXI_ADDR_WIDTH : integer := 5
    );
    port (
        -- SPI physical interface
        miso : in  std_logic;
        mosi : out std_logic;
        sclk : out std_logic;
        ss_n : out std_logic;

        -- Common LDB
        ldb  : out std_logic;

        -- AXI4-Lite interface
        s00_axi_aclk    : in std_logic;
        s00_axi_aresetn : in std_logic;

        s00_axi_awaddr  : in std_logic_vector(
            C_S00_AXI_ADDR_WIDTH-1 downto 0
        );

        s00_axi_awprot  : in std_logic_vector(2 downto 0);
        s00_axi_awvalid : in std_logic;
        s00_axi_awready : out std_logic;

        s00_axi_wdata : in std_logic_vector(
            C_S00_AXI_DATA_WIDTH-1 downto 0
        );

        s00_axi_wstrb : in std_logic_vector(
            (C_S00_AXI_DATA_WIDTH/8)-1 downto 0
        );

        s00_axi_wvalid : in std_logic;
        s00_axi_wready : out std_logic;

        s00_axi_bresp  : out std_logic_vector(1 downto 0);
        s00_axi_bvalid : out std_logic;
        s00_axi_bready : in std_logic;

        s00_axi_araddr : in std_logic_vector(
            C_S00_AXI_ADDR_WIDTH-1 downto 0
        );

        s00_axi_arprot  : in std_logic_vector(2 downto 0);
        s00_axi_arvalid : in std_logic;
        s00_axi_arready : out std_logic;

        s00_axi_rdata : out std_logic_vector(
            C_S00_AXI_DATA_WIDTH-1 downto 0
        );

        s00_axi_rresp  : out std_logic_vector(1 downto 0);
        s00_axi_rvalid : out std_logic;
        s00_axi_rready : in std_logic
    );
end SPI_Master_AXI;


architecture arch_imp of SPI_Master_AXI is

    --------------------------------------------------
    -- SPI Master signals
    --------------------------------------------------

    signal spi_tx_data : std_logic_vector(59 downto 0);
    signal spi_tx_valid : std_logic;
    signal spi_tx_ready : std_logic;
    signal spi_tx_last  : std_logic;

    signal spi_rx_data : std_logic_vector(59 downto 0);
    signal spi_rx_valid : std_logic;

    signal spi_busy : std_logic;
    signal spi_done : std_logic;

    --------------------------------------------------
    -- LDB Controller signals
    --------------------------------------------------

    signal ldb_trigger : std_logic;
    signal ldb_busy    : std_logic;
    signal ldb_done    : std_logic;

    --------------------------------------------------
    -- Reset
    --------------------------------------------------

    signal rst : std_logic;

begin

    rst <= not s00_axi_aresetn;

    --------------------------------------------------
    -- AXI Slave
    --------------------------------------------------

    u_axi_slave :
    entity work.SPI_Master_AXI_slave_lite_v1_0_S00_AXI

    generic map (
        C_S_AXI_DATA_WIDTH => C_S00_AXI_DATA_WIDTH,
        C_S_AXI_ADDR_WIDTH => C_S00_AXI_ADDR_WIDTH
    )

    port map (

        -- SPI TX
        spi_tx_data  => spi_tx_data,
        spi_tx_valid => spi_tx_valid,
        spi_tx_ready => spi_tx_ready,
        spi_tx_last  => spi_tx_last,

        -- SPI RX
        spi_rx_data  => spi_rx_data,
        spi_rx_valid => spi_rx_valid,

        -- SPI status
        spi_busy => spi_busy,
        spi_done => spi_done,

        -- LDB
        ldb_trigger => ldb_trigger,
        ldb_busy    => ldb_busy,
        ldb_done    => ldb_done,

        -- AXI
        S_AXI_ACLK    => s00_axi_aclk,
        S_AXI_ARESETN => s00_axi_aresetn,

        S_AXI_AWADDR  => s00_axi_awaddr,
        S_AXI_AWPROT  => s00_axi_awprot,
        S_AXI_AWVALID => s00_axi_awvalid,
        S_AXI_AWREADY => s00_axi_awready,

        S_AXI_WDATA   => s00_axi_wdata,
        S_AXI_WSTRB   => s00_axi_wstrb,
        S_AXI_WVALID  => s00_axi_wvalid,
        S_AXI_WREADY  => s00_axi_wready,

        S_AXI_BRESP   => s00_axi_bresp,
        S_AXI_BVALID  => s00_axi_bvalid,
        S_AXI_BREADY => s00_axi_bready,

        S_AXI_ARADDR  => s00_axi_araddr,
        S_AXI_ARPROT  => s00_axi_arprot,
        S_AXI_ARVALID => s00_axi_arvalid,
        S_AXI_ARREADY => s00_axi_arready,

        S_AXI_RDATA  => s00_axi_rdata,
        S_AXI_RRESP  => s00_axi_rresp,
        S_AXI_RVALID => s00_axi_rvalid,
        S_AXI_RREADY => s00_axi_rready
    );

    --------------------------------------------------
    -- SPI Master
    --------------------------------------------------

    u_spi_master :
    entity work.SPI_Master

    generic map (
        DATA_LENGTH => 60,
        CLK_DIV     => 8
    )

    port map (

        Clk => s00_axi_aclk,
        rst => rst,

        -- TX
        tx_data  => spi_tx_data,
        tx_valid => spi_tx_valid,
        tx_ready => spi_tx_ready,
        tx_last  => spi_tx_last,

        -- RX
        rx_data  => spi_rx_data,
        rx_valid => spi_rx_valid,

        -- Status
        busy => spi_busy,
        done => spi_done,

        -- Physical SPI
        sclk => sclk,
        mosi => mosi,
        miso => miso,
        ss_n => ss_n
    );

    --------------------------------------------------
    -- LDB Controller
    --------------------------------------------------

    u_ldb_controller :
    entity work.LDB_Controller_bg

    generic map (
        CLK_FREQ_HZ => 100000000,
        LDB_DELAY   => 4,
        LDB_WIDTH   => 4
    )

    port map (

        Clk => s00_axi_aclk,
        rst => rst,

        trigger  => ldb_trigger,
        spi_busy => spi_busy,

        ldb  => ldb,
        busy => ldb_busy,
        done => ldb_done
    );

end arch_imp;