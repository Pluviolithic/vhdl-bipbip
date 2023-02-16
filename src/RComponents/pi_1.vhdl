library IEEE;
use IEEE.numeric_bit.all;

entity pi_1 is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end pi_1;

architecture Behavioral of pi_1 is
begin
    y(0)  <= x(1);
    y(1)  <= x(7);
    y(2)  <= x(6);
    y(3)  <= x(0);
    y(4)  <= x(2);
    y(5)  <= x(8);
    y(6)  <= x(12);
    y(7)  <= x(18);
    y(8)  <= x(19);
    y(9)  <= x(13);
    y(10) <= x(14);
    y(11) <= x(20);
    y(12) <= x(21);
    y(13) <= x(15);
    y(14) <= x(16);
    y(15) <= x(22);
    y(16) <= x(23);
    y(17) <= x(17);
    y(18) <= x(9);
    y(19) <= x(3);
    y(20) <= x(4);
    y(21) <= x(10);
    y(22) <= x(11);
    y(23) <= x(5);
end Behavioral;