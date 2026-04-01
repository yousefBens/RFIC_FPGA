library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Master is
  generic (
    DATA_LENGTH : integer := 60;
    CLK_DIV     : integer := 6   -- diviseur pour générer SCLK à partir de Clk
                                 -- SCLK = Clk / (2 * CLK_DIV)
  );
  port (
    -- Horloge / reset système
    Clk      : in  std_logic;
    rst      : in  std_logic;

    -- Contrôle
    start    : in  std_logic;  -- pulse pour démarrer une transaction
    tx_data  : in  std_logic_vector(DATA_LENGTH-1 downto 0);
    rx_data  : out std_logic_vector(DATA_LENGTH-1 downto 0);
    busy     : out std_logic;
    done     : out std_logic;

    -- Interface SPI
    sclk     : out std_logic;
    mosi     : out std_logic;
    miso     : in  std_logic;
    ss_n     : out std_logic
  );
end SPI_Master;

architecture rtl of SPI_Master is

  type state_type is (IDLE, TRANSFER, FINISH);
  signal state : state_type := IDLE;

  signal sclk_reg    : std_logic := '0';
  signal mosi_reg    : std_logic := '0';
  signal ss_reg      : std_logic := '1';

  signal tx_shift    : std_logic_vector(DATA_LENGTH-1 downto 0) := (others => '0');
  signal rx_shift    : std_logic_vector(DATA_LENGTH-1 downto 0) := (others => '0');

  signal bit_count   : integer range 0 to DATA_LENGTH := 0;
  signal clk_count   : integer range 0 to CLK_DIV-1 := 0;

  signal sclk_prev   : std_logic := '0';

begin

  sclk   <= sclk_reg;
  mosi   <= mosi_reg;
  ss_n   <= ss_reg;
  rx_data <= rx_shift;

  process(Clk)
  begin
    if rising_edge(Clk) then
      if rst = '1' then
        state     <= IDLE;
        sclk_reg  <= '0';
        sclk_prev <= '0';
        mosi_reg  <= '0';
        ss_reg    <= '1';
        tx_shift  <= (others => '0');
        rx_shift  <= (others => '0');
        bit_count <= 0;
        clk_count <= 0;
        busy      <= '0';
        done      <= '0';

      else
        done <= '0';
        sclk_prev <= sclk_reg;

        case state is

          when IDLE =>
            busy     <= '0';
            ss_reg   <= '1';
            sclk_reg <= '0';
            clk_count <= 0;
            bit_count <= 0;

            if start = '1' then
              busy     <= '1';
              ss_reg   <= '0';
              tx_shift <= tx_data;
              rx_shift <= (others => '0');

              -- En mode 0, le premier bit doit être déjà présent avant le 1er front montant
              mosi_reg <= tx_data(DATA_LENGTH-1);

              state <= TRANSFER;
            end if;

          when TRANSFER =>
            busy <= '1';

            -- Diviseur d'horloge pour SCLK
            if clk_count = CLK_DIV-1 then
              clk_count <= 0;
              sclk_reg  <= not sclk_reg;
            else
              clk_count <= clk_count + 1;
            end if;

            -- Front montant de SCLK : échantillonnage MISO
            if (sclk_prev = '0' and sclk_reg = '1') then
              rx_shift <= rx_shift(DATA_LENGTH-2 downto 0) & miso;

              if bit_count < DATA_LENGTH then
                bit_count <= bit_count + 1;
              end if;

              if bit_count = DATA_LENGTH-1 then
                state <= FINISH;
              end if;
            end if;

            -- Front descendant de SCLK : préparation du bit suivant sur MOSI
            if (sclk_prev = '1' and sclk_reg = '0') then
              tx_shift <= tx_shift(DATA_LENGTH-2 downto 0) & '0';
              mosi_reg <= tx_shift(DATA_LENGTH-2);
            end if;

          when FINISH =>
            busy     <= '0';
            ss_reg   <= '1';
            sclk_reg <= '0';
            done     <= '1';
            state    <= IDLE;

        end case;
      end if;
    end if;
  end process;

end rtl;