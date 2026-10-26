library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LDB_ControllerTb is
end LDB_ControllerTb;

architecture DUT of LDB_ControllerTb is

    ------------------------------------------------
    -- Constants
    ------------------------------------------------
    constant CLK_PERIOD : time := 10 ns; -- 100 MHz

    constant NUM_SPI   : integer := 8;
    constant LDB_DELAY : integer := 4;
    constant LDB_PULSE : integer := 4;

    ------------------------------------------------
    -- Signals
    ------------------------------------------------
    signal Clk : std_logic := '0';
    signal rst : std_logic := '0';

    signal spi_done : std_logic_vector(NUM_SPI-1 downto 0)
                      := (others => '0');

    signal busy : std_logic;
    signal done : std_logic;
    signal ldb  : std_logic;

    signal sim_finished : boolean := false;

begin

    ------------------------------------------------
    -- DUT
    ------------------------------------------------
    DUT : entity work.LDB_Controller
        generic map (
            NUM_SPI   => NUM_SPI,
            LDB_DELAY => LDB_DELAY,
            LDB_PULSE => LDB_PULSE
        )
        port map (
            Clk      => Clk,
            rst      => rst,
            spi_done => spi_done,
            busy     => busy,
            done     => done,
            ldb      => ldb
        );

    ------------------------------------------------
    -- Clock generation
    ------------------------------------------------
    clk_process : process
    begin
        while not sim_finished loop
            Clk <= '0';
            wait for CLK_PERIOD / 2;

            Clk <= '1';
            wait for CLK_PERIOD / 2;
        end loop;

        wait;
    end process;


    ------------------------------------------------
    -- Stimulus and automatic checks
    ------------------------------------------------
    stimulus : process

        variable t_last_spi : time;
        variable t_ldb_fall : time;
        variable t_ldb_rise : time;

        variable pulse_count : integer := 0;

        ------------------------------------------------
        -- Wait N clock cycles
        ------------------------------------------------
        procedure wait_cycles(
            constant n : in natural
        ) is
        begin
            for i in 1 to n loop
                wait until rising_edge(Clk);
            end loop;

            wait for 1 ns;
        end procedure;


        ------------------------------------------------
        -- Send one-cycle SPI done pulse
        ------------------------------------------------
        procedure send_spi_done(
            constant spi_index : in integer
        ) is
        begin

            wait until falling_edge(Clk);

            spi_done(spi_index) <= '1';

            wait until falling_edge(Clk);

            spi_done(spi_index) <= '0';

            report "SPI " & integer'image(spi_index)
                   & " completed";

        end procedure;


        ------------------------------------------------
        -- Check controller idle state
        ------------------------------------------------
        procedure check_idle is
        begin

            assert ldb = '1'
                report "ERROR: LDB must be HIGH in idle"
                severity failure;

            assert busy = '0'
                report "ERROR: busy must be LOW in idle"
                severity failure;

            assert done = '0'
                report "ERROR: done must be LOW in idle"
                severity failure;

        end procedure;


        ------------------------------------------------
        -- Check LDB pulse and timing
        ------------------------------------------------
        procedure check_ldb_sequence(
            constant t_last : in time
        ) is

            variable t_fall : time;
            variable t_rise : time;

        begin

            ------------------------------------------------
            -- Wait for LDB falling edge
            ------------------------------------------------
            wait until falling_edge(ldb);

            t_fall := now;

            report "LDB falling edge at "
                   & time'image(t_fall);

            ------------------------------------------------
            -- Verify delay
            ------------------------------------------------
            assert (t_fall - t_last) >= 20 ns
                report "ERROR: LDB delay below 20 ns"
                severity failure;

            report "SPI -> LDB delay = "
                   & time'image(t_fall - t_last);

            ------------------------------------------------
            -- Verify busy during LDB
            ------------------------------------------------
            assert busy = '1'
                report "ERROR: busy must be HIGH during LDB"
                severity failure;

            ------------------------------------------------
            -- Wait for LDB rising edge
            ------------------------------------------------
            wait until rising_edge(ldb);

            t_rise := now;

            report "LDB rising edge at "
                   & time'image(t_rise);

            ------------------------------------------------
            -- Verify pulse width
            ------------------------------------------------
            assert (t_rise - t_fall) =
                   (LDB_PULSE * CLK_PERIOD)
                report "ERROR: Incorrect LDB pulse width"
                severity failure;

            report "LDB pulse width = "
                   & time'image(t_rise - t_fall);

            ------------------------------------------------
            -- Verify done pulse
            ------------------------------------------------
            wait_cycles(1);

            assert done = '1'
                report "ERROR: done pulse missing"
                severity failure;

            assert busy = '0'
                report "ERROR: busy must be LOW after LDB"
                severity failure;

            wait_cycles(1);

            assert done = '0'
                report "ERROR: done must return LOW"
                severity failure;

            assert ldb = '1'
                report "ERROR: LDB must return HIGH"
                severity failure;

            pulse_count := pulse_count + 1;

            report "LDB sequence "
                   & integer'image(pulse_count)
                   & " PASSED";

        end procedure;


    begin

        report "========================================";
        report "START LDB CONTROLLER TESTBENCH";
        report "========================================";


        ------------------------------------------------
        -- TEST 1: RESET
        ------------------------------------------------
        report "TEST 1 - RESET";

        rst <= '1';

        wait_cycles(3);

        check_idle;

        rst <= '0';

        wait_cycles(2);

        check_idle;

        report "TEST 1 PASSED";


        ------------------------------------------------
        -- TEST 2: SPI DONE AT DIFFERENT TIMES
        ------------------------------------------------
        report "TEST 2 - SPI COMPLETION AT DIFFERENT TIMES";

        send_spi_done(0);
        wait_cycles(3);

        send_spi_done(2);
        wait_cycles(2);

        send_spi_done(4);
        wait_cycles(4);

        send_spi_done(1);
        wait_cycles(2);

        send_spi_done(3);
        wait_cycles(3);

        send_spi_done(5);
        wait_cycles(2);

        send_spi_done(6);
        wait_cycles(3);

        ------------------------------------------------
        -- Only 7 SPI completed
        ------------------------------------------------
        assert ldb = '1'
            report "ERROR: LDB activated before all SPI"
            severity failure;

        assert done = '0'
            report "ERROR: done activated too early"
            severity failure;

        report "7 SPI completed - LDB correctly inactive";

        ------------------------------------------------
        -- Last SPI completes
        ------------------------------------------------
        report "TEST 3 - LAST SPI COMPLETION";

        send_spi_done(7);

        t_last_spi := now;

        assert ldb = '1'
            report "ERROR: LDB activated immediately"
            severity failure;

        report "All 8 SPI completed";


        ------------------------------------------------
        -- TEST 4: VERIFY LDB SEQUENCE
        ------------------------------------------------
        report "TEST 4 - VERIFY LDB DELAY AND PULSE";

        check_ldb_sequence(t_last_spi);

        report "TEST 4 PASSED";


        ------------------------------------------------
        -- TEST 5: SECOND CONFIGURATION
        ------------------------------------------------
        report "TEST 5 - SECOND CONFIGURATION";

        wait_cycles(3);

        check_idle;

        -- All SPI done simultaneously
        wait until falling_edge(Clk);

        spi_done <= (others => '1');

        t_last_spi := now;

        wait until falling_edge(Clk);

        spi_done <= (others => '0');

        check_ldb_sequence(t_last_spi);

        report "TEST 5 PASSED";


        ------------------------------------------------
        -- TEST 6: RESET DURING OPERATION
        ------------------------------------------------
        report "TEST 6 - RESET DURING OPERATION";

        send_spi_done(0);
        send_spi_done(1);
        send_spi_done(2);

        rst <= '1';

        wait_cycles(3);

        check_idle;

        rst <= '0';

        wait_cycles(3);

        check_idle;

        report "TEST 6 PASSED";


        ------------------------------------------------
        -- TEST 7: VERIFY OLD DONE ARE CLEARED
        ------------------------------------------------
        report "TEST 7 - VERIFY DONE MEMORY RESET";

        -- Send only 5 SPI done signals
        send_spi_done(3);
        send_spi_done(4);
        send_spi_done(5);
        send_spi_done(6);
        send_spi_done(7);

        wait_cycles(10);

        assert ldb = '1'
            report "ERROR: Old SPI done flags were not cleared"
            severity failure;

        assert done = '0'
            report "ERROR: Unexpected done after reset"
            severity failure;

        report "TEST 7 PASSED";


        ------------------------------------------------
        -- END SIMULATION
        ------------------------------------------------
        report "========================================";
        report "ALL TESTS PASSED";
        report "Total LDB sequences = "
               & integer'image(pulse_count);
        report "========================================";

        sim_finished <= true;

        wait;

    end process;

end DUT;