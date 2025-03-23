library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity preskaler is
  port (
    clk : in std_logic;
    clk1Hz : out std_logic );
end preskaler;

architecture skalowanie of preskaler is
	signal count1Hz     : integer := 0;
	signal pulse1Hz     : std_logic := '0';
	constant MAX_1Hz    : integer := 50000000 - 1;  
	begin
		process(clk)
		begin
			if clk'event and clk = '1' then
				if count1Hz = MAX_1Hz then
					pulse1Hz <= '1';  
					count1Hz <= 0;    
				else
					pulse1Hz <= '0';
					count1Hz <= count1Hz + 1;
				end if;
			end if;
		end process;
	clk1Hz <= pulse1Hz;
end skalowanie;