library IEEE;
use IEEE.numeric_bit.all;

entity e_1 is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(23 downto 0)
    );
end e_1;

architecture Behavioral of e_1 is
    signal e1_out : bit_vector(23 downto 0);
begin
    e1_out(0) <= x(1);
    e1_out(1) <= x(3);
    e1_out(2) <= x(5);
    e1_out(3) <= x(7);
    e1_out(4) <= x(9);
    e1_out(5) <= x(11);
    e1_out(6) <= x(13);
    e1_out(7) <= x(15);
    e1_out(8) <= x(17);
    e1_out(9) <= x(19);
    e1_out(10) <= x(21);
    e1_out(11) <= x(23);
    e1_out(12) <= x(25);
    e1_out(13) <= x(27);
    e1_out(14) <= x(29);
    e1_out(15) <= x(31);
    e1_out(16) <= x(33);
    e1_out(17) <= x(35);
    e1_out(18) <= x(37);
    e1_out(19) <= x(39);
    e1_out(20) <= x(41);
    e1_out(21) <= x(43);
    e1_out(22) <= x(45);
    e1_out(23) <= x(47);
    y <= e1_out;
end Behavioral;