library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity rejestr is
    port (
        clk : in std_logic;
		  D : in std_logic_vector(6 downto 0);
        Q : out std_logic_vector(6 downto 0));
end rejestr;

architecture przesuwanie of rejestr is 
begin
    process(clk)
    begin
        if clk'event and clk = '1' then
		  		Q(6) <= not D(6);
				Q(5) <= not D(5);
				Q(4) <= not D(4);
				Q(3) <= not D(3);
				Q(2) <= not D(2);
				Q(1) <= not D(1);
				Q(0) <= not D(0);
        end if;
    end process;
end przesuwanie;