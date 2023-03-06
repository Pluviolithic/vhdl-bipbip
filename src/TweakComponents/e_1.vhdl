library IEEE;
use IEEE.std_logic_1164.all;

entity e_1 is
  port (
    e_1_x : in std_logic_vector(52 downto 0);
    e_1_y : out std_logic_vector(23 downto 0)
  );
end e_1;

architecture Behavioral of e_1 is
  signal e1_out : std_logic_vector(23 downto 0);
begin
  e_1_generate_for : for i in 0 to 23 generate
    e1_out(i) <= e_1_x(2 * i + 1);
  end generate e_1_generate_for;
  e_1_y <= e1_out;
end Behavioral;
