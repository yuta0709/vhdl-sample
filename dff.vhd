library IEEE;
use IEEE.std_logic_1164.all;

entity DFF is
    port(
        CLK : in std_logic;
        D : in std_logic;
        Q : out std_logic
    );
end DFF;

architecture RTL of DFF is
begin
    process(CLK)
    begin
        if(CLK = '1' and CLK'event) then
            Q <= D;
        end if;
    end process;
end architecture;