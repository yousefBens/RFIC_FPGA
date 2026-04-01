library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;




entity Signal_Freq_test is
  generic (
    DIVIDER : natural := 2
  );
  Port (
    Clk : in std_logic;
    rst : in std_logic;
    
    in_signal : in std_logic;
    
    out_signal : out std_logic
    
   );
end Signal_Freq_test;

architecture rtl of Signal_Freq_test is

    signal in_sync_0, in_sync_1 : std_logic := '0';
    signal in_prev : std_logic := '0';

    signal cnt : unsigned(31 downto 0) := (others => '0');
    signal signal_reg : std_logic := '0';

begin

    process(Clk)
    begin
        if rising_edge(Clk) then

            -- reset
            if rst = '1' then
                in_sync_0 <= '0';
                in_sync_1 <= '0';
                in_prev   <= '0';
                cnt <= (others => '0');
                signal_reg <= '0';

            else

                -- 1️ synchronisation
                in_sync_0 <= in_signal;
                in_sync_1 <= in_sync_0;

                -- 2️ détection front montant
                if (in_prev = '0' and in_sync_1 = '1') then

                    -- 3  division
                    if cnt = DIVIDER - 1 then
                        cnt <= (others => '0');
                        signal_reg <= not signal_reg;
                    else
                        cnt <= cnt + 1;
                    end if;

                end if;

                -- mémorisation état précédent
                in_prev <= in_sync_1;

            end if;
        end if;
    end process;

    out_signal <= signal_reg;

end rtl;
