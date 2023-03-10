library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity s_box_inverse is
  port (
    s_box_inverse_x : in std_logic_vector(5 downto 0);
    s_box_inverse_y : out std_logic_vector(5 downto 0)
  );
end s_box_inverse;

architecture lut of s_box_inverse is
  signal lut_out : std_logic_vector(5 downto 0);
  type lut_array_type is array (0 to 63) of std_logic_vector(5 downto 0);
  constant lut_array : lut_array_type := (
    "000000", "000001", "000010", "000011", "000100", "110001", "000101", "111010",
    "001000", "010010", "110101", "100110", "010011", "110110", "001010", "101100",
    "101110", "001001", "111000", "010101", "110011", "010100", "111110", "001011",
    "101011", "010000", "100101", "111100", "010001", "100001", "100011", "101001",
    "101111", "100111", "111111", "110111", "110100", "011010", "011101", "111001",
    "110000", "101010", "011111", "001100", "011001", "001111", "101000", "111101",
    "100100", "011000", "111011", "001101", "100000", "001110", "011110", "100010",
    "011011", "110010", "011100", "010111", "000111", "010110", "000110", "101101"
  );
begin
  lut_out <= lut_array(to_integer(unsigned(s_box_inverse_x)));
  s_box_inverse_y <= lut_out;
end lut;
