library IEEE;
use IEEE.numeric_bit.all;

entity pi_3 is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end pi_3;

architecture Behavioral of pi_3 is
    signal pi3_out : bit_vector(23 downto 0);
begin
    pi3_out(0)  <= x(16);
    pi3_out(1)  <= x(22);
    pi3_out(2)  <= x(11);
    pi3_out(3)  <= x(5);
    pi3_out(4)  <= x(2);
    pi3_out(5)  <= x(8);
    pi3_out(6)  <= x(0);
    pi3_out(7)  <= x(6);
    pi3_out(8)  <= x(19);
    pi3_out(9)  <= x(13);
    pi3_out(10) <= x(12);
    pi3_out(11) <= x(18);
    pi3_out(12) <= x(14);
    pi3_out(13) <= x(15);
    pi3_out(14) <= x(1);
    pi3_out(15) <= x(7);
    pi3_out(16) <= x(21);
    pi3_out(17) <= x(20);
    pi3_out(18) <= x(4);
    pi3_out(19) <= x(3);
    pi3_out(20) <= x(17);
    pi3_out(21) <= x(23);
    pi3_out(22) <= x(10);
    pi3_out(23) <= x(9);
    y <= pi3_out;
end Behavioral;