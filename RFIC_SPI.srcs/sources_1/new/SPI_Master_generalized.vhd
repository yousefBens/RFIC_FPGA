library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Master_generalized is
    generic (
        DATA_LENGTH : integer := 60;
        CLK_DIV     : integer := 2
    );
    port (
        -- Clock and Reset
        Clk      : in  std_logic;
        rst      : in  std_logic;

        -- Control
        start    : in  std_logic;
        busy     : out std_logic;
        done     : out std_logic;

        -- Data
        tx_data  : in  std_logic_vector(DATA_LENGTH-1 downto 0);
        rx_data  : out std_logic_vector(DATA_LENGTH-1 downto 0);

        -- SPI Interface
        sclk     : out std_logic;
        mosi     : out std_logic;
        miso     : in  std_logic;
        ss_n     : out std_logic
    );
end SPI_Master_generalized;


architecture rtl of SPI_Master_generalized is

    -- FSM States
    type state_type is (
        IDLE,
        TRANSFER,
        FINISH
    );

    signal state : state_type := IDLE;

    -- SPI Registers
    signal sclk_reg : std_logic := '0';
    signal mosi_reg : std_logic := '0';
    signal ss_reg   : std_logic := '1';

    -- Shift Registers
    signal tx_shift : std_logic_vector(DATA_LENGTH-1 downto 0)
                      := (others => '0');

    signal rx_shift : std_logic_vector(DATA_LENGTH-1 downto 0)
                      := (others => '0');

    -- Counters
    signal bit_count : integer range 0 to DATA_LENGTH := 0;
    signal clk_count : integer range 0 to CLK_DIV-1 := 0;

    -- Control Registers
    signal busy_reg : std_logic := '0';
    signal done_reg : std_logic := '0';

begin

    -- Output Assignments
    sclk    <= sclk_reg;
    mosi    <= mosi_reg;
    ss_n    <= ss_reg;

    rx_data <= rx_shift;

    busy    <= busy_reg;
    done    <= done_reg;


    -- Main SPI Process
    process(Clk)
    begin
        if rising_edge(Clk) then

            if rst = '1' then

                state     <= IDLE;

                sclk_reg  <= '0';
                mosi_reg  <= '0';
                ss_reg    <= '1';

                tx_shift  <= (others => '0');
                rx_shift  <= (others => '0');

                bit_count <= 0;
                clk_count <= 0;

                busy_reg  <= '0';
                done_reg  <= '0';

            else

                -- Default: done is a one-clock pulse
                done_reg <= '0';

                case state is
                    when IDLE =>

                        busy_reg  <= '0';

                        ss_reg    <= '1';
                        sclk_reg  <= '0';

                        clk_count <= 0;
                        bit_count <= 0;

                        if start = '1' then

                            busy_reg <= '1';

                            -- Activate Chip Select
                            ss_reg <= '0';

                            -- Load TX data
                            tx_shift <= tx_data;

                            -- Clear RX data
                            rx_shift <= (others => '0');

                            -- Prepare first MOSI bit (MSB first)
                            mosi_reg <= tx_data(DATA_LENGTH-1);

                            state <= TRANSFER;

                        end if;

                    when TRANSFER =>

                        busy_reg <= '1';

                        if clk_count = CLK_DIV-1 then

                            clk_count <= 0;

                            if sclk_reg = '0' then

                                -- Rising SCLK edge:
                                -- Sample MISO
                                sclk_reg <= '1';

                                rx_shift <= rx_shift(DATA_LENGTH-2 downto 0) & miso;

                                bit_count <= bit_count + 1;

                            else

                                -- Falling SCLK edge:
                                -- Prepare next MOSI bit
                                sclk_reg <= '0';

                                if bit_count = DATA_LENGTH then

                                    -- All bits transferred
                                    state <= FINISH;

                                else

                                    tx_shift <= tx_shift(DATA_LENGTH-2 downto 0) & '0';

                                    mosi_reg <= tx_shift(DATA_LENGTH-2);

                                end if;

                            end if;

                        else

                            clk_count <= clk_count + 1;

                        end if;

                    when FINISH =>

                        -- Deactivate Chip Select
                        ss_reg   <= '1';

                        -- SPI clock idle low
                        sclk_reg <= '0';

                        -- Transaction completed
                        busy_reg <= '0';

                        -- One clock pulse
                        done_reg <= '1';

                        state <= IDLE;


                    when others =>

                        state <= IDLE;

                end case;

            end if;

        end if;
    end process;

end rtl;