library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Btn_led is
  generic (
    Clock_Freq : positive := 12_000_000
  );
  Port (
    Clk : in std_logic;
    rst : in std_logic;
    btn : in std_logic;
    
    sig : out std_logic
  );
end Btn_led;

architecture rtl of Btn_led is

begin

    process(Clk)
    begin
        if rst = '1' then
            sig <= '0';
        else
            if btn = '1' then
                sig <= btn;
            else
                sig <= '0';
            end if;
           
        end if;
    end process;

end rtl;
