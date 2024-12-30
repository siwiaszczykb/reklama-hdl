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
            when "0000" => Q <= "01011"; -- 0 : 11/B
            when "0001" => Q <= "10011"; -- 1 : 19/L
            when "0000" => Q <= "00001"; -- 0 : 1/I
            when "0001" => Q <= "10100"; -- 1 : 20/N
            when "0000" => Q <= "00001"; -- 0 : 1/I
            when "0001" => Q <= "01110"; -- 1 : 14/E
            when "0000" => Q <= "01100"; -- 0 : 12/C
            when "0001" => Q <= "11011"; -- 1 : 27/spacja
            when "0000" => Q <= "10001"; -- 0 : 17/H
            when "0001" => Q <= "01011"; -- 1 : 11/B
            when "0000" => Q <= "01111"; -- 0 : 15/F
            when "0001" => Q <= "11011"; -- 1 : 27/spacja
            when "0000" => Q <= "10110"; -- 0 : 22/P
            when "0001" => Q <= "10011"; -- 1 : 19/L
            when others => Q <= "-----";
      end case;
    end process;
end translacja;