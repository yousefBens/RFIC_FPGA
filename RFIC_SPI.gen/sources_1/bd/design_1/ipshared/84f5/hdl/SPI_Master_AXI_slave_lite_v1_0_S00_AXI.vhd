library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SPI_Master_AXI_slave_lite_v1_0_S00_AXI is
	generic (
		-- Width of S_AXI data bus
		C_S_AXI_DATA_WIDTH : integer := 32;
		-- Width of S_AXI address bus
		C_S_AXI_ADDR_WIDTH : integer := 5
	);
	port (
		-- User ports
		spi_start   : out std_logic;
		spi_tx_data : out std_logic_vector(59 downto 0);
		spi_rx_data : in  std_logic_vector(59 downto 0);
		spi_busy    : in  std_logic;
		spi_done    : in  std_logic;

		-- Global Clock Signal
		S_AXI_ACLK   : in std_logic;
		-- Global Reset Signal. This Signal is Active LOW
		S_AXI_ARESETN : in std_logic;
		-- Write address (issued by master, accepted by Slave)
		S_AXI_AWADDR : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Write channel Protection type
		S_AXI_AWPROT : in std_logic_vector(2 downto 0);
		-- Write address valid
		S_AXI_AWVALID : in std_logic;
		-- Write address ready
		S_AXI_AWREADY : out std_logic;
		-- Write data
		S_AXI_WDATA : in std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Write strobes
		S_AXI_WSTRB : in std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
		-- Write valid
		S_AXI_WVALID : in std_logic;
		-- Write ready
		S_AXI_WREADY : out std_logic;
		-- Write response
		S_AXI_BRESP : out std_logic_vector(1 downto 0);
		-- Write response valid
		S_AXI_BVALID : out std_logic;
		-- Response ready
		S_AXI_BREADY : in std_logic;
		-- Read address
		S_AXI_ARADDR : in std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
		-- Protection type
		S_AXI_ARPROT : in std_logic_vector(2 downto 0);
		-- Read address valid
		S_AXI_ARVALID : in std_logic;
		-- Read address ready
		S_AXI_ARREADY : out std_logic;
		-- Read data
		S_AXI_RDATA : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
		-- Read response
		S_AXI_RRESP : out std_logic_vector(1 downto 0);
		-- Read valid
		S_AXI_RVALID : out std_logic;
		-- Read ready
		S_AXI_RREADY : in std_logic
	);
end SPI_Master_AXI_slave_lite_v1_0_S00_AXI;

architecture arch_imp of SPI_Master_AXI_slave_lite_v1_0_S00_AXI is

	-- AXI4LITE signals
	signal axi_awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_awready : std_logic;
	signal axi_wready  : std_logic;
	signal axi_bresp   : std_logic_vector(1 downto 0);
	signal axi_bvalid  : std_logic;
	signal axi_araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
	signal axi_arready : std_logic;
	signal axi_rresp   : std_logic_vector(1 downto 0);
	signal axi_rvalid  : std_logic;

	-- local parameter for addressing 32 bit / 64 bit C_S_AXI_DATA_WIDTH
	constant ADDR_LSB : integer := (C_S_AXI_DATA_WIDTH/32) + 1;
	constant OPT_MEM_ADDR_BITS : integer := 2;

	------------------------------------------------
	---- Signals for user logic register space
	------------------------------------------------
	signal slv_reg0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg4 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg5 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg6 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
	signal slv_reg7 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);

	signal mem_logic : std_logic_vector(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);

	-- start pulse
	signal spi_start_pulse : std_logic := '0';

	-- State machine local parameters
	constant Idle  : std_logic_vector(1 downto 0) := "00";
	constant Raddr : std_logic_vector(1 downto 0) := "10";
	constant Rdata : std_logic_vector(1 downto 0) := "11";
	constant Waddr : std_logic_vector(1 downto 0) := "10";
	constant Wdata : std_logic_vector(1 downto 0) := "11";

	-- State machine variables
	signal state_read  : std_logic_vector(1 downto 0);
	signal state_write : std_logic_vector(1 downto 0);

begin
	-- I/O Connections assignments
	S_AXI_AWREADY <= axi_awready;
	S_AXI_WREADY  <= axi_wready;
	S_AXI_BRESP   <= axi_bresp;
	S_AXI_BVALID  <= axi_bvalid;
	S_AXI_ARREADY <= axi_arready;
	S_AXI_RRESP   <= axi_rresp;
	S_AXI_RVALID  <= axi_rvalid;

	mem_logic <= S_AXI_AWADDR(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB)
		when (S_AXI_AWVALID = '1')
		else axi_awaddr(ADDR_LSB + OPT_MEM_ADDR_BITS downto ADDR_LSB);

	-- Implement Write state machine
	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_awready <= '0';
				axi_wready  <= '0';
				axi_bvalid  <= '0';
				axi_bresp   <= (others => '0');
				state_write <= Idle;
			else
				case (state_write) is
					when Idle =>
						if (S_AXI_ARESETN = '1') then
							axi_awready <= '1';
							axi_wready  <= '1';
							state_write <= Waddr;
						else
							state_write <= state_write;
						end if;

					when Waddr =>
						if (S_AXI_AWVALID = '1' and axi_awready = '1') then
							axi_awaddr <= S_AXI_AWADDR;
							if (S_AXI_WVALID = '1') then
								axi_awready <= '1';
								state_write <= Waddr;
								axi_bvalid  <= '1';
							else
								axi_awready <= '0';
								state_write <= Wdata;
								if (S_AXI_BREADY = '1' and axi_bvalid = '1') then
									axi_bvalid <= '0';
								end if;
							end if;
						else
							state_write <= state_write;
							if (S_AXI_BREADY = '1' and axi_bvalid = '1') then
								axi_bvalid <= '0';
							end if;
						end if;

					when Wdata =>
						if (S_AXI_WVALID = '1') then
							state_write <= Waddr;
							axi_bvalid  <= '1';
							axi_awready <= '1';
						else
							state_write <= state_write;
							if (S_AXI_BREADY = '1' and axi_bvalid = '1') then
								axi_bvalid <= '0';
							end if;
						end if;

					when others =>
						axi_awready <= '0';
						axi_wready  <= '0';
						axi_bvalid  <= '0';
				end case;
			end if;
		end if;
	end process;

	-- Register write logic + user register updates
	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				slv_reg0 <= (others => '0');
				slv_reg1 <= (others => '0');
				slv_reg2 <= (others => '0');
				slv_reg3 <= (others => '0');
				slv_reg4 <= (others => '0');
				slv_reg5 <= (others => '0');
				slv_reg6 <= (others => '0');
				slv_reg7 <= (others => '0');
				spi_start_pulse <= '0';
			else
				-- pulse d'un cycle par défaut
				spi_start_pulse <= '0';

				-- registres de statut mis à jour automatiquement
				slv_reg3 <= (others => '0');
				slv_reg3(0) <= spi_busy;
				slv_reg3(1) <= spi_done;

				-- registres RX mis à jour automatiquement
				slv_reg4 <= spi_rx_data(31 downto 0);
				slv_reg5 <= (others => '0');
				slv_reg5(27 downto 0) <= spi_rx_data(59 downto 32);

				-- écritures CPU
				if (S_AXI_WVALID = '1') then
					case (mem_logic) is
						when b"000" =>
							for i in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if (S_AXI_WSTRB(i) = '1') then
									slv_reg0(i*8+7 downto i*8) <= S_AXI_WDATA(i*8+7 downto i*8);
								end if;
							end loop;

							-- start sur bit0
							if S_AXI_WDATA(0) = '1' then
								spi_start_pulse <= '1';
							end if;

						when b"001" =>
							for i in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if (S_AXI_WSTRB(i) = '1') then
									slv_reg1(i*8+7 downto i*8) <= S_AXI_WDATA(i*8+7 downto i*8);
								end if;
							end loop;

						when b"010" =>
							for i in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if (S_AXI_WSTRB(i) = '1') then
									slv_reg2(i*8+7 downto i*8) <= S_AXI_WDATA(i*8+7 downto i*8);
								end if;
							end loop;

						when b"110" =>
							for i in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if (S_AXI_WSTRB(i) = '1') then
									slv_reg6(i*8+7 downto i*8) <= S_AXI_WDATA(i*8+7 downto i*8);
								end if;
							end loop;

						when b"111" =>
							for i in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
								if (S_AXI_WSTRB(i) = '1') then
									slv_reg7(i*8+7 downto i*8) <= S_AXI_WDATA(i*8+7 downto i*8);
								end if;
							end loop;

						when others =>
							null;
					end case;
				end if;
			end if;
		end if;
	end process;

	-- Implement read state machine
	process (S_AXI_ACLK)
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				axi_arready <= '0';
				axi_rvalid  <= '0';
				axi_rresp   <= (others => '0');
				state_read  <= Idle;
			else
				case (state_read) is
					when Idle =>
						if (S_AXI_ARESETN = '1') then
							axi_arready <= '1';
							state_read  <= Raddr;
						else
							state_read <= state_read;
						end if;

					when Raddr =>
						if (S_AXI_ARVALID = '1' and axi_arready = '1') then
							state_read  <= Rdata;
							axi_rvalid  <= '1';
							axi_arready <= '0';
							axi_araddr  <= S_AXI_ARADDR;
						else
							state_read <= state_read;
						end if;

					when Rdata =>
						if (axi_rvalid = '1' and S_AXI_RREADY = '1') then
							axi_rvalid  <= '0';
							axi_arready <= '1';
							state_read  <= Raddr;
						else
							state_read <= state_read;
						end if;

					when others =>
						axi_arready <= '0';
						axi_rvalid  <= '0';
				end case;
			end if;
		end if;
	end process;

	-- Read mux
	S_AXI_RDATA <= slv_reg0 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "000") else
	               slv_reg1 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "001") else
	               slv_reg2 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "010") else
	               slv_reg3 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "011") else
	               slv_reg4 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "100") else
	               slv_reg5 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "101") else
	               slv_reg6 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "110") else
	               slv_reg7 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "111") else
	               (others => '0');

	-- User logic
	spi_start   <= spi_start_pulse;
	spi_tx_data <= slv_reg2(27 downto 0) & slv_reg1;

end arch_imp;