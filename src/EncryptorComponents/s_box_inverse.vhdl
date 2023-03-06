library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity s_box_inverse is
  port (
    s_box_x : in std_logic_vector(5 downto 0);
    s_box_y : out std_logic_vector(5 downto 0)
  );
end s_box_inverse;

architecture lut of s_box_inverse is
  signal lut_out : std_logic_vector(5 downto 0);
  type lut_array_type is array (0 to 63) of std_logic_vector(5 downto 0);
  constant lut_array : lut_array_type := (
    "000000", "000001", "000010", "000011", "000100", "000101", "000110", "000111",
    "001000", "001001", "001010", "001011", "001100", "001101", "001110", "001111",
    "010000", "010001", "010010", "010011", "010100", "010101", "010110", "010111",
    "011000", "011001", "011010", "011011", "011100", "011101", "011110", "011111",
    "100000", "100001", "100010", "100011", "100100", "100101", "100110", "100111",
    "101000", "101001", "101010", "101011", "101100", "101101", "101110", "101111",
    "110000", "110001", "110010", "110011", "110100", "110101", "110110", "110111",
    "111000", "111001", "111010", "111011", "111100", "111101", "111110", "111111"
  );
begin
  lut_out <= lut_array(to_integer(unsigned(s_box_x)));
  s_box_y <= lut_out;
end lut;
