library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_Master_AXI is
	generic (
		C_S00_AXI_DATA_WIDTH : integer := 32;
		C_S00_AXI_ADDR_WIDTH : integer := 5
	);
	port (
		-- Users to add ports here
		miso : in  std_logic;
		mosi : out std_logic;
		sclk : out std_logic;
		ss_n : out std_logic;
		ldb  : out std_logic;
		-- User ports ends

		-- Ports of Axi Slave Bus Interface S00_AXI
		s00_axi_aclk    : in std_logic;
		s00_axi_aresetn : in std_logic;
		s00_axi_awaddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_awprot  : in std_logic_vector(2 downto 0);
		s00_axi_awvalid : in std_logic;
		s00_axi_awready : out std_logic;
		s00_axi_wdata   : in std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_wstrb   : in std_logic_vector((C_S00_AXI_DATA_WIDTH/8)-1 downto 0);
		s00_axi_wvalid  : in std_logic;
		s00_axi_wready  : out std_logic;
		s00_axi_bresp   : out std_logic_vector(1 downto 0);
		s00_axi_bvalid  : out std_logic;
		s00_axi_bready  : in std_logic;
		s00_axi_araddr  : in std_logic_vector(C_S00_AXI_ADDR_WIDTH-1 downto 0);
		s00_axi_arprot  : in std_logic_vector(2 downto 0);
		s00_axi_arvalid : in std_logic;
		s00_axi_arready : out std_logic;
		s00_axi_rdata   : out std_logic_vector(C_S00_AXI_DATA_WIDTH-1 downto 0);
		s00_axi_rresp   : out std_logic_vector(1 downto 0);
		s00_axi_rvalid  : out std_logic;
		s00_axi_rready  : in std_logic
	);
end SPI_Master_AXI;

architecture arch_imp of SPI_Master_AXI is

	-- Signaux entre AXI et SPI RTL
	signal spi_start   : std_logic;
	signal spi_tx_data : std_logic_vector(59 downto 0);
	signal spi_rx_data : std_logic_vector(59 downto 0);
	signal spi_busy    : std_logic;
	signal spi_done    : std_logic;

	-- composant AXI slave
	component SPI_Master_AXI_slave_lite_v1_0_S00_AXI is
		generic (
			C_S_AXI_DATA_WIDTH : integer := 32;
			C_S_AXI_ADDR_WIDTH : integer := 5
		);
		port (
			-- signaux user ajoutés
			spi_start   : out std_logic;
			spi_tx_data : out std_logic_vector(59 downto 0);
			spi_rx_data : in  std_logic_vector(59 downto 0);
			spi_busy    : in  std_logic;
			spi_done    : in  std_logic;

			-- AXI
			S_AXI_ACLK    : in std_logic;
			S_AXI_ARESETN : in std_logic;
			S_AXI_AWADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
			S_AXI_AWPROT  : in std_logic_vector(2 downto 0);
			S_AXI_AWVALID : in std_logic;
			S_AXI_AWREADY : out std_logic;
			S_AXI_WDATA   : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			S_AXI_WSTRB   : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
			S_AXI_WVALID  : in std_logic;
			S_AXI_WREADY  : out std_logic;
			S_AXI_BRESP   : out std_logic_vector(1 downto 0);
			S_AXI_BVALID  : out std_logic;
			S_AXI_BREADY  : in std_logic;
			S_AXI_ARADDR  : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
			S_AXI_ARPROT  : in std_logic_vector(2 downto 0);
			S_AXI_ARVALID : in std_logic;
			S_AXI_ARREADY : out std_logic;
			S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
			S_AXI_RRESP   : out std_logic_vector(1 downto 0);
			S_AXI_RVALID  : out std_logic;
			S_AXI_RREADY  : in std_logic
		);
	end component;

	-- composant SPI Master RTL
	component SPI_Master is
		generic (
			DATA_LENGTH : integer := 60;
			CLK_DIV     : integer := 8;
			LDB_DELAY   : integer := 4 
		);
		port (
			Clk     : in  std_logic;
			rst     : in  std_logic;
			start   : in  std_logic;
			tx_data : in  std_logic_vector(DATA_LENGTH-1 downto 0);
			rx_data : out std_logic_vector(DATA_LENGTH-1 downto 0);
			busy    : out std_logic;
			done    : out std_logic;
			sclk    : out std_logic;
			mosi    : out std_logic;
			miso    : in  std_logic;
			ss_n    : out std_logic;
			ldb     : out std_logic
		);
	end component;

begin

	-- Instantiation AXI slave
	SPI_Master_AXI_slave_lite_v1_0_S00_AXI_inst : SPI_Master_AXI_slave_lite_v1_0_S00_AXI
		generic map (
			C_S_AXI_DATA_WIDTH => C_S00_AXI_DATA_WIDTH,
			C_S_AXI_ADDR_WIDTH => C_S00_AXI_ADDR_WIDTH
		)
		port map (
			spi_start   => spi_start,
			spi_tx_data => spi_tx_data,
			spi_rx_data => spi_rx_data,
			spi_busy    => spi_busy,
			spi_done    => spi_done,

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
			S_AXI_BREADY  => s00_axi_bready,
			S_AXI_ARADDR  => s00_axi_araddr,
			S_AXI_ARPROT  => s00_axi_arprot,
			S_AXI_ARVALID => s00_axi_arvalid,
			S_AXI_ARREADY => s00_axi_arready,
			S_AXI_RDATA   => s00_axi_rdata,
			S_AXI_RRESP   => s00_axi_rresp,
			S_AXI_RVALID  => s00_axi_rvalid,
			S_AXI_RREADY  => s00_axi_rready
		);

	-- Instantiation de ton SPI master RTL
	u_spi_master : SPI_Master
		generic map (
			DATA_LENGTH => 60,
			CLK_DIV     => 8,
			LDB_DELAY   => 4
		)
		port map (
			Clk     => s00_axi_aclk,
			rst     => not s00_axi_aresetn,
			start   => spi_start,
			tx_data => spi_tx_data,
			rx_data => spi_rx_data,
			busy    => spi_busy,
			done    => spi_done,
			sclk    => sclk,
			mosi    => mosi,
			miso    => miso,
			ss_n    => ss_n,
			ldb     => ldb
		);

end arch_imp;