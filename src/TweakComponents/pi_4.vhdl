library IEEE;
use IEEE.numeric_bit.all;

entity pi_4 is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(52 downto 0)
    );
end pi_4;

architecture Behavioral of pi_4 is
begin
    y(0) <= x(0);
    y(1) <= x(13);
    y(2) <= x(26);
    y(3) <= x(39);
    y(4) <= x(52);
    y(5) <= x(11);
    y(6) <= x(24);
    y(7) <= x(37);
    y(8) <= x(50);
    y(9) <= x(9);
    y(10) <= x(22);
    y(11) <= x(35);
    y(12) <= x(48);
    y(13) <= x(7);
    y(14) <= x(20);
    y(15) <= x(33);
    y(16) <= x(46);
    y(17) <= x(5);
    y(18) <= x(18);
    y(19) <= x(31);
    y(20) <= x(44);
    y(21) <= x(3);
    y(22) <= x(16);
    y(23) <= x(29);
    y(24) <= x(42);
    y(25) <= x(1);
    y(26) <= x(14);
    y(27) <= x(27);
    y(28) <= x(40);
    y(29) <= x(53);
    y(30) <= x(12);
    y(31) <= x(25);
    y(32) <= x(38);
    y(33) <= x(51);
    y(34) <= x(10);
    y(35) <= x(23);
    y(36) <= x(36);
    y(37) <= x(49);
    y(38) <= x(8);
    y(39) <= x(21);
    y(40) <= x(34);
    y(41) <= x(47);
    y(42) <= x(6);
    y(43) <= x(19);
    y(44) <= x(32);
    y(45) <= x(45);
    y(46) <= x(4);
    y(47) <= x(17);
    y(48) <= x(30);
    y(49) <= x(43);
    y(50) <= x(2);
    y(51) <= x(15);
    y(52) <= x(28);
end Behavioral;