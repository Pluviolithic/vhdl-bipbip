library IEEE;
use IEEE.std_logic_1164.all;

entity pi_4 is
  port (
    pi_4_x : in std_logic_vector(52 downto 0);
    pi_4_y : out std_logic_vector(52 downto 0)
  );
end pi_4;

architecture Behavioral of pi_4 is
  signal pi4_out : std_logic_vector(52 downto 0);
begin
  pi4_out(0) <= pi_4_x(0);
  pi4_out(1) <= pi_4_x(13);
  pi4_out(2) <= pi_4_x(26);
  pi4_out(3) <= pi_4_x(39);
  pi4_out(4) <= pi_4_x(52);
  pi4_out(5) <= pi_4_x(12);
  pi4_out(6) <= pi_4_x(25);
  pi4_out(7) <= pi_4_x(38);
  pi4_out(8) <= pi_4_x(51);
  pi4_out(9) <= pi_4_x(11);
  pi4_out(10) <= pi_4_x(24);
  pi4_out(11) <= pi_4_x(37);
  pi4_out(12) <= pi_4_x(50);
  pi4_out(13) <= pi_4_x(10);
  pi4_out(14) <= pi_4_x(23);
  pi4_out(15) <= pi_4_x(36);
  pi4_out(16) <= pi_4_x(49);
  pi4_out(17) <= pi_4_x(9);
  pi4_out(18) <= pi_4_x(22);
  pi4_out(19) <= pi_4_x(35);
  pi4_out(20) <= pi_4_x(48);
  pi4_out(21) <= pi_4_x(8);
  pi4_out(22) <= pi_4_x(21);
  pi4_out(23) <= pi_4_x(34);
  pi4_out(24) <= pi_4_x(47);
  pi4_out(25) <= pi_4_x(7);
  pi4_out(26) <= pi_4_x(20);
  pi4_out(27) <= pi_4_x(33);
  pi4_out(28) <= pi_4_x(46);
  pi4_out(29) <= pi_4_x(6);
  pi4_out(30) <= pi_4_x(19);
  pi4_out(31) <= pi_4_x(32);
  pi4_out(32) <= pi_4_x(45);
  pi4_out(33) <= pi_4_x(5);
  pi4_out(34) <= pi_4_x(18);
  pi4_out(35) <= pi_4_x(31);
  pi4_out(36) <= pi_4_x(44);
  pi4_out(37) <= pi_4_x(4);
  pi4_out(38) <= pi_4_x(17);
  pi4_out(39) <= pi_4_x(30);
  pi4_out(40) <= pi_4_x(43);
  pi4_out(41) <= pi_4_x(3);
  pi4_out(42) <= pi_4_x(16);
  pi4_out(43) <= pi_4_x(29);
  pi4_out(44) <= pi_4_x(42);
  pi4_out(45) <= pi_4_x(2);
  pi4_out(46) <= pi_4_x(15);
  pi4_out(47) <= pi_4_x(28);
  pi4_out(48) <= pi_4_x(41);
  pi4_out(49) <= pi_4_x(1);
  pi4_out(50) <= pi_4_x(14);
  pi4_out(51) <= pi_4_x(27);
  pi4_out(52) <= pi_4_x(40);
  pi_4_y <= pi4_out;
end Behavioral;
