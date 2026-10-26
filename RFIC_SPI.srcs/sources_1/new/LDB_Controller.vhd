library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LDB_Controller is
    generic (
        NUM_SPI   : integer := 8;
        LDB_DELAY : integer := 4;
        LDB_PULSE : integer := 4
    );
    port (
        -- Clock and Reset
        Clk      : in  std_logic;
        rst      : in  std_logic;

        -- SPI Masters completion signals
        spi_done : in  std_logic_vector(NUM_SPI-1 downto 0);

        -- Control outputs
        busy     : out std_logic;
        done     : out std_logic;

        -- Common LDB output
        ldb      : out std_logic
    );
end LDB_Controller;


architecture rtl of LDB_Controller is

    type state_type is (
        WAIT_SPI,
        WAIT_DELAY,
        LDB_LOW,
        LDB_HIGH
    );

    signal state : state_type := WAIT_SPI;

    signal done_seen : std_logic_vector(NUM_SPI-1 downto 0)
                       := (others => '0');

    signal delay_count : integer range 0 to LDB_DELAY := 0;
    signal pulse_count : integer range 0 to LDB_PULSE := 0;

    signal ldb_reg  : std_logic := '1';
    signal busy_reg : std_logic := '0';
    signal done_reg : std_logic := '0';

begin

    ldb  <= ldb_reg;
    busy <= busy_reg;
    done <= done_reg;

    process(Clk)
    begin
        if rising_edge(Clk) then

            if rst = '1' then

                state <= WAIT_SPI;

                done_seen <= (others => '0');

                delay_count <= 0;
                pulse_count <= 0;

                ldb_reg  <= '1';
                busy_reg <= '0';
                done_reg <= '0';

            else

                -- Default: done is a one-clock pulse
                done_reg <= '0';

                case state is

                    when WAIT_SPI =>

                        ldb_reg  <= '1';
                        busy_reg <= '0';

                        delay_count <= 0;
                        pulse_count <= 0;

                        -- Memorize SPI completion pulses
                        done_seen <= done_seen or spi_done;

                        -- Check if all SPI Masters completed
                        if (done_seen or spi_done) =
                           (done_seen'range => '1') then

                            busy_reg <= '1';

                            delay_count <= 0;

                            state <= WAIT_DELAY;

                        end if;


                    when WAIT_DELAY =>

                        busy_reg <= '1';
                        ldb_reg  <= '1';

                        if delay_count = LDB_DELAY-1 then

                            delay_count <= 0;

                            -- Falling edge LDB:
                            -- Apply RFIC configurations
                            ldb_reg <= '0';

                            state <= LDB_LOW;

                        else

                            delay_count <= delay_count + 1;

                        end if;

                    when LDB_LOW =>

                        busy_reg <= '1';

                        if pulse_count = LDB_PULSE-1 then

                            pulse_count <= 0;

                            ldb_reg <= '1';

                            state <= LDB_HIGH;

                        else

                            pulse_count <= pulse_count + 1;

                        end if;


                    when LDB_HIGH =>

                        ldb_reg  <= '1';
                        busy_reg <= '0';

                        done_reg <= '1';

                        -- Reset SPI completion tracking
                        done_seen <= (others => '0');

                        state <= WAIT_SPI;


                    when others =>

                        state <= WAIT_SPI;

                end case;

            end if;

        end if;
    end process;

end rtl;