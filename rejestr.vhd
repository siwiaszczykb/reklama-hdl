library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity rejestr is
    port (
        clk : in std_logic;
		  EN : in std_logic;
		  D : in std_logic_vector(6 downto 0);
        Q : out std_logic_vector(6 downto 0));
end rejestr;

architecture przesuwanie of rejestr is 
begin
    process(EN, clk)
    begin
	 if EN = '1' then
        if clk'event and clk = '1' then
		  		Q(6) <= D(6);
				Q(5) <= D(5);
				Q(4) <= D(4);
				Q(3) <= D(3);
				Q(2) <= D(2);
				Q(1) <= D(1);
				Q(0) <= D(0);
        end if;
	 end if;
    end process;
end przesuwanie;