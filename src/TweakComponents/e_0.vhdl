library IEEE;
use IEEE.numeric_bit.all;

entity e_0 is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(23 downto 0)
    );
end e_0;

architecture Behavioral of e_0 is
    signal e0_out : bit_vector(23 downto 0);
begin
    e0_out(0) <= x(0);
    e0_out(1) <= x(2);
    e0_out(2) <= x(4);
    e0_out(3) <= x(6);
    e0_out(4) <= x(8);
    e0_out(5) <= x(10);
    e0_out(6) <= x(12);
    e0_out(7) <= x(14);
    e0_out(8) <= x(16);
    e0_out(9) <= x(18);
    e0_out(10) <= x(20);
    e0_out(11) <= x(22);
    e0_out(12) <= x(24);
    e0_out(13) <= x(26);
    e0_out(14) <= x(28);
    e0_out(15) <= x(30);
    e0_out(16) <= x(32);
    e0_out(17) <= x(34);
    e0_out(18) <= x(36);
    e0_out(19) <= x(38);
    e0_out(20) <= x(40);
    e0_out(21) <= x(42);
    e0_out(22) <= x(44);
    e0_out(23) <= x(46);
    y <= e0_out;
end Behavioral;
