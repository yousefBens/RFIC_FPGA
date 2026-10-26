library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Master is
    generic (
        DATA_LENGTH : integer := 60;
        CLK_DIV     : integer := 2
    );
    port (
        -- Clock and reset
        Clk : in std_logic;
        rst : in std_logic;

        -- TX interface
        tx_data  : in  std_logic_vector(DATA_LENGTH-1 downto 0);
        tx_valid : in  std_logic;
        tx_ready : out std_logic;
        tx_last  : in  std_logic;

        -- RX interface
        rx_data  : out std_logic_vector(DATA_LENGTH-1 downto 0);
        rx_valid : out std_logic;

        -- Status
        busy : out std_logic;
        done : out std_logic;

        -- SPI physical interface
        sclk : out std_logic;
        mosi : out std_logic;
        miso : in  std_logic;
        ss_n : out std_logic
    );
end SPI_Master;


architecture Behavioral of SPI_Master is

    --------------------------------------------------
    -- FSM states
    --------------------------------------------------

    type state_type is (
        IDLE,
        SHIFT_LOW,
        SHIFT_HIGH,
        WORD_END,
        WAIT_WORD,
        CS_RELEASE
    );

    signal state : state_type := IDLE;

    --------------------------------------------------
    -- Shift registers
    --------------------------------------------------

    signal tx_shift : std_logic_vector(DATA_LENGTH-1 downto 0)
        := (others => '0');

    signal rx_shift : std_logic_vector(DATA_LENGTH-1 downto 0)
        := (others => '0');

    signal rx_data_reg : std_logic_vector(DATA_LENGTH-1 downto 0)
        := (others => '0');

    --------------------------------------------------
    -- Counters
    --------------------------------------------------

    signal bit_count : integer range 0 to DATA_LENGTH-1 := 0;

    signal clk_count : integer range 0 to CLK_DIV-1 := 0;

    --------------------------------------------------
    -- Internal registers
    --------------------------------------------------

    signal sclk_reg : std_logic := '0';
    signal mosi_reg : std_logic := '0';
    signal ss_reg   : std_logic := '1';

    signal rx_valid_reg : std_logic := '0';
    signal done_reg     : std_logic := '0';

    signal current_last : std_logic := '0';

begin

    --------------------------------------------------
    -- Outputs
    --------------------------------------------------

    sclk <= sclk_reg;
    mosi <= mosi_reg;
    ss_n <= ss_reg;

    rx_data  <= rx_data_reg;
    rx_valid <= rx_valid_reg;

    done <= done_reg;

    --------------------------------------------------
    -- Status
    --------------------------------------------------

    busy <= '0' when state = IDLE else '1';

    tx_ready <= '1' when (
        state = IDLE or state = WAIT_WORD
    ) else '0';

    --------------------------------------------------
    -- Main FSM
    --------------------------------------------------

    process(Clk)
    begin

        if rising_edge(Clk) then

            if rst = '1' then

                state <= IDLE;

                tx_shift <= (others => '0');
                rx_shift <= (others => '0');
                rx_data_reg <= (others => '0');

                bit_count <= 0;
                clk_count <= 0;

                sclk_reg <= '0';
                mosi_reg <= '0';
                ss_reg <= '1';

                rx_valid_reg <= '0';
                done_reg <= '0';

                current_last <= '0';

            else

                -- Default pulse values
                rx_valid_reg <= '0';
                done_reg <= '0';

                case state is

                    ----------------------------------
                    -- IDLE
                    ----------------------------------

                    when IDLE =>

                        sclk_reg <= '0';
                        ss_reg <= '1';
                        mosi_reg <= '0';

                        clk_count <= 0;
                        bit_count <= 0;

                        if tx_valid = '1' then

                            tx_shift <= tx_data;
                            rx_shift <= (others => '0');

                            current_last <= tx_last;

                            mosi_reg <= tx_data(DATA_LENGTH-1);

                            ss_reg <= '0';

                            state <= SHIFT_LOW;

                        end if;

                    ----------------------------------
                    -- SCLK LOW
                    ----------------------------------

                    when SHIFT_LOW =>

                        sclk_reg <= '0';

                        if clk_count = CLK_DIV-1 then

                            clk_count <= 0;

                            -- Sample MISO on rising edge
                            rx_shift <= rx_shift(
                                DATA_LENGTH-2 downto 0
                            ) & miso;

                            sclk_reg <= '1';

                            state <= SHIFT_HIGH;

                        else

                            clk_count <= clk_count + 1;

                        end if;

                    ----------------------------------
                    -- SCLK HIGH
                    ----------------------------------

                    when SHIFT_HIGH =>

                        if clk_count = CLK_DIV-1 then

                            clk_count <= 0;

                            sclk_reg <= '0';

                            if bit_count = DATA_LENGTH-1 then

                                state <= WORD_END;

                            else

                                bit_count <= bit_count + 1;

                                tx_shift <= tx_shift(
                                    DATA_LENGTH-2 downto 0
                                ) & '0';

                                mosi_reg <= tx_shift(
                                    DATA_LENGTH-2
                                );

                                state <= SHIFT_LOW;

                            end if;

                        else

                            clk_count <= clk_count + 1;

                        end if;

                    ----------------------------------
                    -- WORD END
                    ----------------------------------

                    when WORD_END =>

                        rx_data_reg <= rx_shift;
                        rx_valid_reg <= '1';

                        sclk_reg <= '0';

                        if current_last = '1' then

                            state <= CS_RELEASE;

                        else

                            -- Keep CSB low
                            ss_reg <= '0';

                            state <= WAIT_WORD;

                        end if;

                    ----------------------------------
                    -- WAIT NEXT WORD
                    ----------------------------------

                    when WAIT_WORD =>

                        sclk_reg <= '0';
                        ss_reg <= '0';

                        if tx_valid = '1' then

                            tx_shift <= tx_data;
                            rx_shift <= (others => '0');

                            current_last <= tx_last;

                            bit_count <= 0;
                            clk_count <= 0;

                            mosi_reg <= tx_data(DATA_LENGTH-1);

                            state <= SHIFT_LOW;

                        end if;

                    ----------------------------------
                    -- RELEASE CSB
                    ----------------------------------

                    when CS_RELEASE =>

                        ss_reg <= '1';

                        sclk_reg <= '0';
                        mosi_reg <= '0';

                        done_reg <= '1';

                        state <= IDLE;

                    ----------------------------------
                    -- DEFAULT
                    ----------------------------------

                    when others =>

                        state <= IDLE;

                end case;

            end if;

        end if;

    end process;

end Behavioral;