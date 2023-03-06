library IEEE;
use IEEE.std_logic_1164.all;

entity chi is
  port (
    chi_x : in std_logic_vector(52 downto 0);
    chi_y : out std_logic_vector(52 downto 0)
  );
end chi;

architecture Behavioral of chi is
  signal chi_out : std_logic_vector(52 downto 0);
begin
  chi_generate_for : for i in 0 to 52 generate
    chi_out(i) <= chi_x(i) xor (not chi_x((i + 1) mod 53) and chi_x((i + 2) mod 53));
  end generate chi_generate_for;
  chi_y <= chi_out;
end Behavioral;
