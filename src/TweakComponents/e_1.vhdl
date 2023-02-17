library IEEE;
use IEEE.numeric_bit.all;

entity e_1 is
    port (
        x : in bit_vector(52 downto 0);
        y_out : out bit_vector(23 downto 0)
    );
end e_1;

architecture Behavioral of e_1 is
    signal y : bit_vector(23 downto 0);
begin
    y(0) <= x(1);
    y(1) <= x(3);
    y(2) <= x(5);
    y(3) <= x(7);
    y(4) <= x(9);
    y(5) <= x(11);
    y(6) <= x(13);
    y(7) <= x(15);
    y(8) <= x(17);
    y(9) <= x(19);
    y(10) <= x(21);
    y(11) <= x(23);
    y(12) <= x(25);
    y(13) <= x(27);
    y(14) <= x(29);
    y(15) <= x(31);
    y(16) <= x(33);
    y(17) <= x(35);
    y(18) <= x(37);
    y(19) <= x(39);
    y(20) <= x(41);
    y(21) <= x(43);
    y(22) <= x(45);
    y(23) <= x(47);
    y_out <= y;
end Behavioral;