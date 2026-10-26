library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LDB_Controller_bg is

    generic (
        -- FPGA clock frequency
        CLK_FREQ_HZ : integer := 100000000;

        -- Delay after SPI becomes idle
        -- 4 cycles at 100 MHz = 40 ns
        LDB_DELAY : integer := 4;

        -- LDB pulse duration
        -- 4 cycles at 100 MHz = 40 ns
        LDB_WIDTH : integer := 4
    );

    port (
        --------------------------------------------------
        -- Clock and Reset
        --------------------------------------------------

        Clk : in std_logic;
        rst : in std_logic;

        --------------------------------------------------
        -- Control interface
        --------------------------------------------------

        trigger : in std_logic;

        -- SPI Master busy status
        spi_busy : in std_logic;

        --------------------------------------------------
        -- LDB output
        --------------------------------------------------

        ldb : out std_logic;

        --------------------------------------------------
        -- Status
        --------------------------------------------------

        busy : out std_logic;
        done : out std_logic
    );

end LDB_Controller_bg;


architecture rtl of LDB_Controller_bg is

    --------------------------------------------------
    -- FSM states
    --------------------------------------------------

    type state_type is (
        IDLE,
        WAIT_SPI,
        WAIT_DELAY,
        LDB_PULSE,
        COMPLETE
    );

    signal state : state_type := IDLE;

    --------------------------------------------------
    -- Counters
    --------------------------------------------------

    signal delay_count : integer range 0 to LDB_DELAY := 0;

    signal pulse_count : integer range 0 to LDB_WIDTH := 0;

    --------------------------------------------------
    -- Internal registers
    --------------------------------------------------

    signal ldb_reg  : std_logic := '1';
    signal done_reg : std_logic := '0';

begin

    --------------------------------------------------
    -- Parameter checks
    --------------------------------------------------

    assert CLK_FREQ_HZ > 0
        report "CLK_FREQ_HZ must be positive"
        severity failure;

    assert LDB_DELAY >= 1
        report "LDB_DELAY must be >= 1"
        severity failure;

    assert LDB_WIDTH >= 1
        report "LDB_WIDTH must be >= 1"
        severity failure;

    --------------------------------------------------
    -- Output assignments
    --------------------------------------------------

    ldb <= ldb_reg;

    done <= done_reg;

    busy <= '0' when state = IDLE else '1';

    --------------------------------------------------
    -- Main FSM
    --------------------------------------------------

    process(Clk)
    begin

        if rising_edge(Clk) then

            if rst = '1' then

                state <= IDLE;

                delay_count <= 0;
                pulse_count <= 0;

                ldb_reg  <= '1';
                done_reg <= '0';

            else

                -- DONE is a one-clock pulse
                done_reg <= '0';

                case state is

                    --------------------------------------
                    -- IDLE
                    --------------------------------------

                    when IDLE =>

                        ldb_reg <= '1';

                        delay_count <= 0;
                        pulse_count <= 0;

                        if trigger = '1' then

                            state <= WAIT_SPI;

                        end if;

                    --------------------------------------
                    -- WAIT FOR SPI COMPLETION
                    --------------------------------------

                    when WAIT_SPI =>

                        ldb_reg <= '1';

                        if spi_busy = '0' then

                            delay_count <= 0;

                            state <= WAIT_DELAY;

                        end if;

                    --------------------------------------
                    -- WAIT AFTER SPI
                    --------------------------------------

                    when WAIT_DELAY =>

                        ldb_reg <= '1';

                        -- If SPI becomes busy again,
                        -- wait for it to finish
                        if spi_busy = '1' then

                            delay_count <= 0;

                            state <= WAIT_SPI;

                        elsif delay_count = LDB_DELAY-1 then

                            delay_count <= 0;
                            pulse_count <= 0;

                            ldb_reg <= '0';

                            state <= LDB_PULSE;

                        else

                            delay_count <= delay_count + 1;

                        end if;

                    --------------------------------------
                    -- GENERATE LDB PULSE
                    --------------------------------------

                    when LDB_PULSE =>

                        -- Keep LDB low for LDB_WIDTH cycles
                        if pulse_count = LDB_WIDTH-1 then

                            pulse_count <= 0;

                            ldb_reg <= '1';

                            state <= COMPLETE;

                        else

                            pulse_count <= pulse_count + 1;

                        end if;

                    --------------------------------------
                    -- COMPLETE
                    --------------------------------------

                    when COMPLETE =>

                        ldb_reg <= '1';

                        done_reg <= '1';

                        state <= IDLE;

                    --------------------------------------
                    -- DEFAULT
                    --------------------------------------

                    when others =>

                        state <= IDLE;

                end case;

            end if;

        end if;

    end process;

end rtl;