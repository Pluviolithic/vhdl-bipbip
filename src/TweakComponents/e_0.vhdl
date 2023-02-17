library IEEE;
use IEEE.numeric_bit.all;

entity e_0 is
    port (
        x : in bit_vector(52 downto 0);
        y_out : out bit_vector(23 downto 0)
    );
end e_0;

architecture Behavioral of e_0 is
    signal y : bit_vector(23 downto 0);
begin
    y(0) <= x(0);
    y(1) <= x(2);
    y(2) <= x(4);
    y(3) <= x(6);
    y(4) <= x(8);
    y(5) <= x(10);
    y(6) <= x(12);
    y(7) <= x(14);
    y(8) <= x(16);
    y(9) <= x(18);
    y(10) <= x(20);
    y(11) <= x(22);
    y(12) <= x(24);
    y(13) <= x(26);
    y(14) <= x(28);
    y(15) <= x(30);
    y(16) <= x(32);
    y(17) <= x(34);
    y(18) <= x(36);
    y(19) <= x(38);
    y(20) <= x(40);
    y(21) <= x(42);
    y(22) <= x(44);
    y(23) <= x(46);
    y_out <= y;
end Behavioral;
