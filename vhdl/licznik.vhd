library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity licznik is
    port (
        clk : in std_logic;
        Q : buffer std_logic_vector(3 downto 0));
end licznik;

architecture liczenie of licznik is 
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
            if Q = "1111" then
                Q <= "0000";
            else
                Q <= Q + 1;
            end if;
        end if;
    end process;
end liczenie;