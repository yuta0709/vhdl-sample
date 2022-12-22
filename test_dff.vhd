library IEEE;
use IEEE.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture Stimulus of TestBench is
component DFF is
    port(
        CLK: in std_logic;
        D: in std_logic;
        Q: out std_logic
    );
end component;

signal CLK, D, Q : std_logic; 

begin
    DUT: DFF port map(CLK,D, Q);
    CLOCK: process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;

    INPUT: process
    begin
        D <= '1';
        wait for 15 ns;
        D <= '0';
        wait for  25 ns;
    end process;
end Stimulus;