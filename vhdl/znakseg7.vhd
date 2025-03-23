library IEEE;
use IEEE.std_logic_1164.all;

entity znakSEG7 is
    port (
        A : in std_logic_vector(4 downto 0);
        SEG : out std_logic_vector(6 downto 0));
end znakSEG7;

architecture translacja of znakSEG7 is 
begin
    process(A)
    begin
        case A is
            when "00000" => SEG <= "0111111"; -- 0 : 0
            when "00001" => SEG <= "0000110"; -- 1 : 1
            when "00010" => SEG <= "1011011"; -- 2 : 2
            when "00011" => SEG <= "1001111"; -- 3 : 3
            when "00100" => SEG <= "1100110"; -- 4 : 4
            when "00101" => SEG <= "1101101"; -- 5 : 5
            when "00110" => SEG <= "1111101"; -- 6 : 6
            when "00111" => SEG <= "0000111"; -- 7 : 7
            when "01000" => SEG <= "1111111"; -- 8 : 8
            when "01001" => SEG <= "1101111"; -- 9 : 9
            when "01010" => SEG <= "1110111"; -- 10 : A
            when "01011" => SEG <= "1111100"; -- 11 : B
            when "01100" => SEG <= "0111001"; -- 12 : C
            when "01101" => SEG <= "1011110"; -- 13 : d
            when "01110" => SEG <= "1111001"; -- 14 : E
            when "01111" => SEG <= "1110001"; -- 15 : F
            when "10000" => SEG <= "0111101"; -- 16 : G
            when "10001" => SEG <= "1110110"; -- 17 : H
            when "10010" => SEG <= "0011110"; -- 18 : J
            when "10011" => SEG <= "0111000"; -- 19 : L
            when "10100" => SEG <= "0110111"; -- 20 : N
            when "10101" => SEG <= "0111111"; -- 21 : O
            when "10110" => SEG <= "1110011"; -- 22 : P
            when "10111" => SEG <= "1010000"; -- 23 : r
            when "11000" => SEG <= "0111110"; -- 24 : U
            when "11001" => SEG <= "1101101"; -- 25 : S
            when "11010" => SEG <= "0011100"; -- 26 : U
            when "11011" => SEG <= "0000000"; -- 27 : spacja
            when others => SEG <= "-------";
      end case;
    end process;
end translacja;