library IEEE;
use IEEE.numeric_bit.all;

entity pi_5 is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(52 downto 0)
    );
end pi_5;

architecture Behavioral of pi_5 is
    signal pi5_out : bit_vector(52 downto 0);
begin
    pi5_out(0) <= x(0);
    pi5_out(1) <= x(11);
    pi5_out(2) <= x(22);
    pi5_out(3) <= x(33);
    pi5_out(4) <= x(44);
    pi5_out(5) <= x(2);
    pi5_out(6) <= x(13);
    pi5_out(7) <= x(24);
    pi5_out(8) <= x(35);
    pi5_out(9) <= x(46);
    pi5_out(10) <= x(4);
    pi5_out(11) <= x(15);
    pi5_out(12) <= x(26);
    pi5_out(13) <= x(37);
    pi5_out(14) <= x(48);
    pi5_out(15) <= x(6);
    pi5_out(16) <= x(17);
    pi5_out(17) <= x(28);
    pi5_out(18) <= x(39);
    pi5_out(19) <= x(50);
    pi5_out(20) <= x(8);
    pi5_out(21) <= x(19);
    pi5_out(22) <= x(30);
    pi5_out(23) <= x(41);
    pi5_out(24) <= x(52);
    pi5_out(25) <= x(10);
    pi5_out(26) <= x(21);
    pi5_out(27) <= x(32);
    pi5_out(28) <= x(43);
    pi5_out(29) <= x(1);
    pi5_out(30) <= x(12);
    pi5_out(31) <= x(23);
    pi5_out(32) <= x(34);
    pi5_out(33) <= x(45);
    pi5_out(34) <= x(3);
    pi5_out(35) <= x(14);
    pi5_out(36) <= x(25);
    pi5_out(37) <= x(36);
    pi5_out(38) <= x(47);
    pi5_out(39) <= x(5);
    pi5_out(40) <= x(16);
    pi5_out(41) <= x(27);
    pi5_out(42) <= x(38);
    pi5_out(43) <= x(49);
    pi5_out(44) <= x(7);
    pi5_out(45) <= x(18);
    pi5_out(46) <= x(29);
    pi5_out(47) <= x(40);
    pi5_out(48) <= x(51);
    pi5_out(49) <= x(9);
    pi5_out(50) <= x(20);
    pi5_out(51) <= x(31);
    pi5_out(52) <= x(42);
    y <= pi5_out;
end Behavioral;