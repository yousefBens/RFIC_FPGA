library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_masterTb is
end SPI_masterTb;

architecture DUT of SPI_masterTb is

  --------------------------------------------------------------------------
  -- Constantes
  --------------------------------------------------------------------------
  constant DATA_LENGTH : integer := 16;
  constant CLK_PERIOD  : time    := 83 ns;  -- ~12 MHz

  --------------------------------------------------------------------------
  -- Signaux DUT
  --------------------------------------------------------------------------
  signal Clk      : std_logic := '0';
  signal rst      : std_logic := '0';

  signal start    : std_logic := '0';
  signal tx_data  : std_logic_vector(DATA_LENGTH-1 downto 0) := (others => '0');
  signal rx_data  : std_logic_vector(DATA_LENGTH-1 downto 0);

  signal busy     : std_logic;
  signal done     : std_logic;

  signal sclk     : std_logic;
  signal mosi     : std_logic;
  signal miso     : std_logic := '0';
  signal ss_n     : std_logic;

  --------------------------------------------------------------------------
  -- Données simulées côté esclave
  --------------------------------------------------------------------------
  signal slave_tx_shift : std_logic_vector(DATA_LENGTH-1 downto 0) := x"3C5A";

begin

  --------------------------------------------------------------------------
  -- Instanciation du SPI_Master
  --------------------------------------------------------------------------
  UUT : entity work.SPI_Master
    generic map (
      DATA_LENGTH => DATA_LENGTH,
      CLK_DIV     => 6
    )
    port map (
      Clk     => Clk,
      rst     => rst,
      start   => start,
      tx_data => tx_data,
      rx_data => rx_data,
      busy    => busy,
      done    => done,
      sclk    => sclk,
      mosi    => mosi,
      miso    => miso,
      ss_n    => ss_n
    );

  --------------------------------------------------------------------------
  -- Génération horloge FPGA
  --------------------------------------------------------------------------
  clk_process : process
  begin
    while true loop
      Clk <= '0';
      wait for CLK_PERIOD / 2;
      Clk <= '1';
      wait for CLK_PERIOD / 2;
    end loop;
  end process;

  --------------------------------------------------------------------------
  -- Stimulus principal
  --------------------------------------------------------------------------
  stim_proc : process
  begin
    ------------------------------------------------------------------------
    -- Reset
    ------------------------------------------------------------------------
    rst <= '1';
    wait for 10 * CLK_PERIOD;
    rst <= '0';
    wait for 5 * CLK_PERIOD;

    ------------------------------------------------------------------------
    -- Transaction 1
    ------------------------------------------------------------------------
    tx_data <= x"A5F0";

    -- pulse start sur 1 cycle
    start <= '1';
    wait for CLK_PERIOD;
    start <= '0';

    -- attendre la fin
    wait until done = '1';
    wait for 5 * CLK_PERIOD;

    ------------------------------------------------------------------------
    -- Transaction 2
    ------------------------------------------------------------------------
    slave_tx_shift <= x"55AA";
    tx_data        <= x"0F0F";

    start <= '1';
    wait for CLK_PERIOD;
    start <= '0';

    wait until done = '1';
    wait for 10 * CLK_PERIOD;

    ------------------------------------------------------------------------
    -- Fin simulation
    ------------------------------------------------------------------------
    wait;
  end process;

  --------------------------------------------------------------------------
  -- Modèle très simple d'esclave SPI
  -- Mode 0 :
  -- - le master lit MISO sur front montant
  -- - l'esclave change MISO sur front descendant
  --------------------------------------------------------------------------
  slave_model : process
  begin
    -- attendre début transaction
    wait until ss_n = '0';

    -- présenter le premier bit avant le premier front montant
    miso <= slave_tx_shift(DATA_LENGTH-1);

    for i in DATA_LENGTH-1 downto 1 loop
      wait until falling_edge(sclk);
      miso <= slave_tx_shift(i-1);
    end loop;

    -- attendre fin transaction
    wait until ss_n = '1';
    miso <= '0';
  end process;

end DUT;