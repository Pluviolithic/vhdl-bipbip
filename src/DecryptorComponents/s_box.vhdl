library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity s_box is
  port (
    s_box_x : in std_logic_vector(5 downto 0);
    s_box_y : out std_logic_vector(5 downto 0)
  );
end s_box;

architecture lut of s_box is
  signal lut_out : std_logic_vector(5 downto 0);
  type lut_array_type is array (0 to 63) of std_logic_vector(5 downto 0);

  constant lut_array : lut_array_type := (
    "000000", "000001", "000010", "000011", "000100", "000110", "111110", "111100",
    "001000", "010001", "001110", "010111", "101011", "110011", "110101", "101101",
    "011001", "011100", "001001", "001100", "010101", "010011", "111101", "111011",
    "110001", "101100", "100101", "111000", "111010", "100110", "110110", "101010",
    "110100", "011101", "110111", "011110", "110000", "011010", "001011", "100001",
    "101110", "011111", "101001", "011000", "001111", "111111", "010000", "100000",
    "101000", "000101", "111001", "010100", "100100", "001010", "001101", "100011",
    "010010", "100111", "000111", "110010", "011011", "101111", "010110", "100010"
  );
begin
  lut_out <= lut_array(to_integer(unsigned(s_box_x)));
  s_box_y <= lut_out;
end lut;
