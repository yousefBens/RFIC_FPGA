library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Master is
  generic (
    DATA_LENGTH : integer := 60;
    CLK_DIV     : integer := 8;
    LDB_DELAY   : integer := 4   -- attente après CSB high
                                -- si Clk = 100 MHz, 4 cycles = 40 ns
  );
  port (
    Clk      : in  std_logic;
    rst      : in  std_logic;

    start    : in  std_logic;
    tx_data  : in  std_logic_vector(DATA_LENGTH-1 downto 0);
    rx_data  : out std_logic_vector(DATA_LENGTH-1 downto 0);
    busy     : out std_logic;
    done     : out std_logic;

    sclk     : out std_logic;
    mosi     : out std_logic;
    miso     : in  std_logic;
    ss_n     : out std_logic;
    ldb      : out std_logic
  );
end SPI_Master;

architecture rtl of SPI_Master is

  type state_type is (
    IDLE,
    TRANSFER,
    FINISH,
    WAIT_BEFORE_LDB,
    LDB_LOW,
    LDB_HIGH
  );

  signal state : state_type := IDLE;

  signal sclk_reg    : std_logic := '0';
  signal mosi_reg    : std_logic := '0';
  signal ss_reg      : std_logic := '1';
  signal ldb_reg     : std_logic := '1';

  signal tx_shift    : std_logic_vector(DATA_LENGTH-1 downto 0) := (others => '0');
  signal rx_shift    : std_logic_vector(DATA_LENGTH-1 downto 0) := (others => '0');

  signal bit_count   : integer range 0 to DATA_LENGTH := 0;
  signal clk_count   : integer range 0 to CLK_DIV-1 := 0;
  signal wait_count  : integer range 0 to LDB_DELAY := 0;

  signal sclk_prev   : std_logic := '0';

begin

  sclk    <= sclk_reg;
  mosi    <= mosi_reg;
  ss_n    <= ss_reg;
  ldb     <= ldb_reg;
  rx_data <= rx_shift;

  process(Clk)
  begin
    if rising_edge(Clk) then

      if rst = '1' then
        state      <= IDLE;
        sclk_reg   <= '0';
        sclk_prev  <= '0';
        mosi_reg   <= '0';
        ss_reg     <= '1';
        ldb_reg    <= '1';

        tx_shift   <= (others => '0');
        rx_shift   <= (others => '0');

        bit_count  <= 0;
        clk_count  <= 0;
        wait_count <= 0;

        busy       <= '0';
        done       <= '0';

      else
        done <= '0';
        sclk_prev <= sclk_reg;

        case state is

          when IDLE =>
            busy       <= '0';
            ss_reg     <= '1';
            ldb_reg    <= '1';
            sclk_reg   <= '0';
            clk_count  <= 0;
            bit_count  <= 0;
            wait_count <= 0;

            if start = '1' then
              busy     <= '1';
              ss_reg   <= '0';
              ldb_reg  <= '1';

              tx_shift <= tx_data;
              rx_shift <= (others => '0');

              mosi_reg <= tx_data(DATA_LENGTH-1);

              state <= TRANSFER;
            end if;

          when TRANSFER =>
            busy <= '1';

            if clk_count = CLK_DIV-1 then
              clk_count <= 0;
              sclk_reg  <= not sclk_reg;
            else
              clk_count <= clk_count + 1;
            end if;

            -- front montant SCLK : lecture MISO
            if (sclk_prev = '0' and sclk_reg = '1') then
              rx_shift <= rx_shift(DATA_LENGTH-2 downto 0) & miso;

              if bit_count < DATA_LENGTH then
                bit_count <= bit_count + 1;
              end if;

              if bit_count = DATA_LENGTH-1 then
                state <= FINISH;
              end if;
            end if;

            -- front descendant SCLK : préparer MOSI suivant
            if (sclk_prev = '1' and sclk_reg = '0') then
              tx_shift <= tx_shift(DATA_LENGTH-2 downto 0) & '0';
              mosi_reg <= tx_shift(DATA_LENGTH-2);
            end if;

          when FINISH =>
            busy       <= '1';
            ss_reg     <= '1';  -- CSB remonte : fin de transaction SPI
            sclk_reg   <= '0';
            ldb_reg    <= '1';
            wait_count <= 0;
            state      <= WAIT_BEFORE_LDB;

          when WAIT_BEFORE_LDB =>
            -- attendre au moins 20 ns après CSB high
            if wait_count = LDB_DELAY then
              wait_count <= 0;
              ldb_reg    <= '0'; -- front descendant LDB : applique la config
              state      <= LDB_LOW;
            else
              wait_count <= wait_count + 1;
            end if;

          when LDB_LOW =>
            -- garder LDB bas quelques cycles
            if wait_count = LDB_DELAY then
              wait_count <= 0;
              ldb_reg    <= '1';
              state      <= LDB_HIGH;
            else
              wait_count <= wait_count + 1;
            end if;

          when LDB_HIGH =>
            busy  <= '0';
            done  <= '1';
            state <= IDLE;

        end case;
      end if;
    end if;
  end process;

end rtl;