library IEEE;
use IEEE.std_logic_1164.all;

entity e_0 is
  port (
    e_0_x : in std_logic_vector(52 downto 0);
    e_0_y : out std_logic_vector(23 downto 0)
  );
end e_0;

architecture Behavioral of e_0 is
  signal e0_out : std_logic_vector(23 downto 0);
begin
  e_0_generate_for : for i in 0 to 23 generate
    e0_out(i) <= e_0_x(2 * i);
  end generate e_0_generate_for;
  e_0_y <= e0_out;
end Behavioral;
