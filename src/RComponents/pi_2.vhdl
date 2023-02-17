library IEEE;
use IEEE.numeric_bit.all;

entity pi_2 is
    port (
        x : in bit_vector(23 downto 0);
        y_out : out bit_vector(23 downto 0)
    );
end pi_2;

architecture Behavioral of pi_2 is
    signal y : bit_vector(23 downto 0);
begin
    y(0)  <= x(0);
    y(1)  <= x(1);
    y(2)  <= x(4);
    y(3)  <= x(5);
    y(4)  <= x(8);
    y(5)  <= x(9);
    y(6)  <= x(2);
    y(7)  <= x(3);
    y(8)  <= x(6);
    y(9)  <= x(7);
    y(10) <= x(10);
    y(11) <= x(11);
    y(12) <= x(16);
    y(13) <= x(12);
    y(14) <= x(13);
    y(15) <= x(17);
    y(16) <= x(20);
    y(17) <= x(21);
    y(18) <= x(15);
    y(19) <= x(14);
    y(20) <= x(18);
    y(21) <= x(19);
    y(22) <= x(22);
    y(23) <= x(23);
    y_out <= y;
end Behavioral;