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
            when "0000" => Q <= "10011"; -- 0 : 19/L
            when "0001" => Q <= "11000"; -- 1 : 24/U
            when "0010" => Q <= "01011"; -- 2 : 11/B
            when "0011" => Q <= "10011"; -- 3 : 19/L
            when "0100" => Q <= "00001"; -- 4 : 1/I
            when "0101" => Q <= "10100"; -- 5 : 20/N
            when "0110" => Q <= "00001"; -- 6 : 1/I
            when "0111" => Q <= "01110"; -- 7 : 14/E
            when "1000" => Q <= "01100"; -- 8 : 12/C
            when "1001" => Q <= "11011"; -- 9 : 27/spacja
            when "1010" => Q <= "10001"; -- 10 : 17/H
            when "1011" => Q <= "01011"; -- 11 : 11/B
            when "1100" => Q <= "01111"; -- 12 : 15/F
            when "1101" => Q <= "11011"; -- 13 : 27/spacja
            when "1110" => Q <= "10110"; -- 14 : 22/P
            when "1111" => Q <= "10011"; -- 15 : 19/L
            when others => Q <= "-----";
      end case;
    end process;
end translacja;