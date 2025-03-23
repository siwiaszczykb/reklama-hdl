library IEEE;
use IEEE.std_logic_1164.all;

entity msg is
    port (
        A : in std_logic_vector(3 downto 0);
        Q : out std_logic_vector(4 downto 0));
end msg;

architecture translacja of msg is 
begin
    process(A)
    begin
        case A is
			   when "0000" => Q <= "11011"; -- 13 : 27/spacja
            when "0001" => Q <= "10011"; -- 0 : 19/L
            when "0010" => Q <= "11000"; -- 1 : 24/U
            when "0011" => Q <= "01011"; -- 2 : 11/B
            when "0100" => Q <= "10011"; -- 3 : 19/L
            when "0101" => Q <= "00001"; -- 4 : 1/I
            when "0110" => Q <= "10100"; -- 5 : 20/N
            when "0111" => Q <= "00001"; -- 6 : 1/I
            when "1000" => Q <= "01110"; -- 7 : 14/E
            when "1001" => Q <= "01100"; -- 8 : 12/C
            when "1010" => Q <= "11011"; -- 9 : 27/spacja
            when "1011" => Q <= "00010"; -- 10 : 2/2
            when "1100" => Q <= "00000"; -- 11 : 0/0
            when "1101" => Q <= "00010"; -- 12 : 2/2
            when "1110" => Q <= "00101"; -- 13 : 5/5
            when "1010" => Q <= "11011"; -- 14 : 27/spacja
            when others => Q <= "-----";
      end case;
    end process;
end translacja;