library IEEE;
use IEEE.numeric_bit.all;

entity s_box is
    port (
        x : in bit_vector(5 downto 0);
        y : out bit_vector(5 downto 0)
    );
end s_box;

-- change this to operate from memory
architecture lut of s_box is
    signal lut_out : bit_vector(5 downto 0);
begin
    process (x) is
    begin
        case x is
            when "000000" => lut_out <= "000000";
            when "000001" => lut_out <= "000001";
            when "000010" => lut_out <= "000010";
            when "000011" => lut_out <= "000011";
            when "000100" => lut_out <= "000100";
            when "000101" => lut_out <= "000110";
            when "000110" => lut_out <= "111110";
            when "000111" => lut_out <= "111100";
            when "001000" => lut_out <= "001000";
            when "001001" => lut_out <= "010001";
            when "001010" => lut_out <= "001110";
            when "001011" => lut_out <= "010111";
            when "001100" => lut_out <= "101011";
            when "001101" => lut_out <= "110011";
            when "001110" => lut_out <= "110101";
            when "001111" => lut_out <= "101101";
            when "010000" => lut_out <= "011001";
            when "010001" => lut_out <= "011100";
            when "010010" => lut_out <= "001001";
            when "010011" => lut_out <= "001100";
            when "010100" => lut_out <= "010101";
            when "010101" => lut_out <= "010011";
            when "010110" => lut_out <= "111101";
            when "010111" => lut_out <= "111011";
            when "011000" => lut_out <= "110001";
            when "011001" => lut_out <= "101100";
            when "011010" => lut_out <= "100101";
            when "011011" => lut_out <= "111000";
            when "011100" => lut_out <= "111010";
            when "011101" => lut_out <= "100110";
            when "011110" => lut_out <= "110110";
            when "011111" => lut_out <= "101010";
            when "100000" => lut_out <= "110100";
            when "100001" => lut_out <= "011101";
            when "100010" => lut_out <= "110111";
            when "100011" => lut_out <= "011110";
            when "100100" => lut_out <= "110000";
            when "100101" => lut_out <= "011010";
            when "100110" => lut_out <= "001011";
            when "100111" => lut_out <= "100001";
            when "101000" => lut_out <= "101110";
            when "101001" => lut_out <= "011111";
            when "101010" => lut_out <= "101001";
            when "101011" => lut_out <= "011000";
            when "101100" => lut_out <= "001111";
            when "101101" => lut_out <= "111111";
            when "101110" => lut_out <= "010000";
            when "101111" => lut_out <= "100000";
            when "110000" => lut_out <= "101000";
            when "110001" => lut_out <= "000101";
            when "110010" => lut_out <= "111001";
            when "110011" => lut_out <= "010100";
            when "110100" => lut_out <= "100100";
            when "110101" => lut_out <= "001010";
            when "110110" => lut_out <= "001101";
            when "110111" => lut_out <= "100011";
            when "111000" => lut_out <= "010010";
            when "111001" => lut_out <= "100111";
            when "111010" => lut_out <= "000111";
            when "111011" => lut_out <= "110010";
            when "111100" => lut_out <= "011011";
            when "111101" => lut_out <= "101111";
            when "111110" => lut_out <= "010110";
            when "111111" => lut_out <= "100010";
        end case;
    end process;
    y <= lut_out;
end lut;