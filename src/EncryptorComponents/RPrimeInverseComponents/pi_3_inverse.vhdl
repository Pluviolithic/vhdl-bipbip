library IEEE;
use IEEE.std_logic_1164.all;

entity pi_3_inverse is
  port (
    pi_3_inverse_x : in std_logic_vector(23 downto 0);
    pi_3_inverse_y : out std_logic_vector(23 downto 0)
  );
end pi_3_inverse;

architecture Behavioral of pi_3_inverse is
  signal pi3_inverse_out : std_logic_vector(23 downto 0);
begin
  pi3_inverse_out(0) <= pi_3_inverse_x(6);
  pi3_inverse_out(1) <= pi_3_inverse_x(14);
  pi3_inverse_out(2) <= pi_3_inverse_x(4);
  pi3_inverse_out(3) <= pi_3_inverse_x(19);
  pi3_inverse_out(4) <= pi_3_inverse_x(18);
  pi3_inverse_out(5) <= pi_3_inverse_x(3);
  pi3_inverse_out(6) <= pi_3_inverse_x(7);
  pi3_inverse_out(7) <= pi_3_inverse_x(15);
  pi3_inverse_out(8) <= pi_3_inverse_x(5);
  pi3_inverse_out(9) <= pi_3_inverse_x(23);
  pi3_inverse_out(10) <= pi_3_inverse_x(22);
  pi3_inverse_out(11) <= pi_3_inverse_x(17);
  pi3_inverse_out(12) <= pi_3_inverse_x(13);
  pi3_inverse_out(13) <= pi_3_inverse_x(12);
  pi3_inverse_out(14) <= pi_3_inverse_x(2);
  pi3_inverse_out(15) <= pi_3_inverse_x(8);
  pi3_inverse_out(16) <= pi_3_inverse_x(0);
  pi3_inverse_out(17) <= pi_3_inverse_x(20);
  pi3_inverse_out(18) <= pi_3_inverse_x(21);
  pi3_inverse_out(19) <= pi_3_inverse_x(19);
  pi3_inverse_out(20) <= pi_3_inverse_x(11);
  pi3_inverse_out(21) <= pi_3_inverse_x(16);
  pi3_inverse_out(22) <= pi_3_inverse_x(10);
  pi3_inverse_out(23) <= pi_3_inverse_x(9);
  pi_3_inverse_y <= pi3_inverse_out;
end Behavioral;
