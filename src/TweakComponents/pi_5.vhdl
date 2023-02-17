library IEEE;
use IEEE.numeric_bit.all;

entity pi_5 is
    port (
        x : in bit_vector(52 downto 0);
        y_out : out bit_vector(52 downto 0)
    );
end pi_5;

architecture Behavioral of pi_5 is
    signal y : bit_vector(52 downto 0);
begin
    -- everything mod 53
    y(0) <= x(0);
    y(1) <= x(11);
    y(2) <= x(22);
    y(3) <= x(33);
    y(4) <= x(44);
    y(5) <= x(2);
    y(6) <= x(13);
    y(7) <= x(24);
    y(8) <= x(35);
    y(9) <= x(46);
    y(10) <= x(4);
    y(11) <= x(15);
    y(12) <= x(26);
    y(13) <= x(37);
    y(14) <= x(48);
    y(15) <= x(6);
    y(16) <= x(17);
    y(17) <= x(28);
    y(18) <= x(39);
    y(19) <= x(50);
    y(20) <= x(8);
    y(21) <= x(19);
    y(22) <= x(30);
    y(23) <= x(41);
    y(24) <= x(52);
    y(25) <= x(10);
    y(26) <= x(21);
    y(27) <= x(32);
    y(28) <= x(43);
    y(29) <= x(1);
    y(30) <= x(12);
    y(31) <= x(23);
    y(32) <= x(34);
    y(33) <= x(45);
    y(34) <= x(3);
    y(35) <= x(14);
    y(36) <= x(25);
    y(37) <= x(36);
    y(38) <= x(47);
    y(39) <= x(5);
    y(40) <= x(16);
    y(41) <= x(27);
    y(42) <= x(38);
    y(43) <= x(49);
    y(44) <= x(7);
    y(45) <= x(18);
    y(46) <= x(29);
    y(47) <= x(40);
    y(48) <= x(51);
    y(49) <= x(9);
    y(50) <= x(20);
    y(51) <= x(31);
    y(52) <= x(42);
    y_out <= y;
end Behavioral;