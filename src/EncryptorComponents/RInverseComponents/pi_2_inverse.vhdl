library IEEE;
use IEEE.std_logic_1164.all;

entity pi_2_inverse is
  port (
    pi_2_inverse_x : in std_logic_vector(23 downto 0);
    pi_2_inverse_y : out std_logic_vector(23 downto 0)
  );
end pi_2_inverse;

architecture Behavioral of pi_2_inverse is
  signal pi2_inverse_out : std_logic_vector(23 downto 0);
begin
  pi2_inverse_out(0) <= pi_2_inverse_x(0);
  pi2_inverse_out(1) <= pi_2_inverse_x(1);
  pi2_inverse_out(2) <= pi_2_inverse_x(6);
  pi2_inverse_out(3) <= pi_2_inverse_x(7);
  pi2_inverse_out(4) <= pi_2_inverse_x(2);
  pi2_inverse_out(5) <= pi_2_inverse_x(3);
  pi2_inverse_out(6) <= pi_2_inverse_x(8);
  pi2_inverse_out(7) <= pi_2_inverse_x(9);
  pi2_inverse_out(8) <= pi_2_inverse_x(4);
  pi2_inverse_out(9) <= pi_2_inverse_x(5);
  pi2_inverse_out(10) <= pi_2_inverse_x(10);
  pi2_inverse_out(11) <= pi_2_inverse_x(11);
  pi2_inverse_out(12) <= pi_2_inverse_x(13);
  pi2_inverse_out(13) <= pi_2_inverse_x(14);
  pi2_inverse_out(14) <= pi_2_inverse_x(19);
  pi2_inverse_out(15) <= pi_2_inverse_x(18);
  pi2_inverse_out(16) <= pi_2_inverse_x(12);
  pi2_inverse_out(17) <= pi_2_inverse_x(15);
  pi2_inverse_out(18) <= pi_2_inverse_x(20);
  pi2_inverse_out(19) <= pi_2_inverse_x(21);
  pi2_inverse_out(20) <= pi_2_inverse_x(16);
  pi2_inverse_out(21) <= pi_2_inverse_x(17);
  pi2_inverse_out(22) <= pi_2_inverse_x(22);
  pi2_inverse_out(23) <= pi_2_inverse_x(23);
  pi_2_inverse_y <= pi2_inverse_out;
end Behavioral;
