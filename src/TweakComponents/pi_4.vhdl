library IEEE;
use IEEE.numeric_bit.all;

entity pi_4 is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(52 downto 0)
    );
end pi_4;

architecture Behavioral of pi_4 is
    signal pi4_out : bit_vector(52 downto 0);
begin
    pi4_out(0) <= x(0);
    pi4_out(1) <= x(13);
    pi4_out(2) <= x(26);
    pi4_out(3) <= x(39);
    pi4_out(4) <= x(52);
    pi4_out(5) <= x(12);
    pi4_out(6) <= x(25);
    pi4_out(7) <= x(38);
    pi4_out(8) <= x(51);
    pi4_out(9) <= x(11);
    pi4_out(10) <= x(24);
    pi4_out(11) <= x(37);
    pi4_out(12) <= x(50);
    pi4_out(13) <= x(10);
    pi4_out(14) <= x(23);
    pi4_out(15) <= x(36);
    pi4_out(16) <= x(49);
    pi4_out(17) <= x(9);
    pi4_out(18) <= x(22);
    pi4_out(19) <= x(35);
    pi4_out(20) <= x(48);
    pi4_out(21) <= x(8);
    pi4_out(22) <= x(21);
    pi4_out(23) <= x(34);
    pi4_out(24) <= x(47);
    pi4_out(25) <= x(7);
    pi4_out(26) <= x(20);
    pi4_out(27) <= x(33);
    pi4_out(28) <= x(46);
    pi4_out(29) <= x(6);
    pi4_out(30) <= x(19);
    pi4_out(31) <= x(32);
    pi4_out(32) <= x(45);
    pi4_out(33) <= x(5);
    pi4_out(34) <= x(18);
    pi4_out(35) <= x(31);
    pi4_out(36) <= x(44);
    pi4_out(37) <= x(4);
    pi4_out(38) <= x(17);
    pi4_out(39) <= x(30);
    pi4_out(40) <= x(43);
    pi4_out(41) <= x(3);
    pi4_out(42) <= x(16);
    pi4_out(43) <= x(29);
    pi4_out(44) <= x(42);
    pi4_out(45) <= x(2);
    pi4_out(46) <= x(15);
    pi4_out(47) <= x(28);
    pi4_out(48) <= x(41);
    pi4_out(49) <= x(1);
    pi4_out(50) <= x(14);
    pi4_out(51) <= x(27);
    pi4_out(52) <= x(40);
    y <= pi4_out;
end Behavioral;