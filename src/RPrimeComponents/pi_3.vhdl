library IEEE;
use IEEE.numeric_bit.all;

entity pi_3 is
    port (
        pi_3_x : in bit_vector(23 downto 0);
        pi_3_y : out bit_vector(23 downto 0)
    );
end pi_3;

architecture Behavioral of pi_3 is
    signal pi3_out : bit_vector(23 downto 0);
begin
    pi3_out(0)  <= pi_3_x(16);
    pi3_out(1)  <= pi_3_x(22);
    pi3_out(2)  <= pi_3_x(11);
    pi3_out(3)  <= pi_3_x(5);
    pi3_out(4)  <= pi_3_x(2);
    pi3_out(5)  <= pi_3_x(8);
    pi3_out(6)  <= pi_3_x(0);
    pi3_out(7)  <= pi_3_x(6);
    pi3_out(8)  <= pi_3_x(19);
    pi3_out(9)  <= pi_3_x(13);
    pi3_out(10) <= pi_3_x(12);
    pi3_out(11) <= pi_3_x(18);
    pi3_out(12) <= pi_3_x(14);
    pi3_out(13) <= pi_3_x(15);
    pi3_out(14) <= pi_3_x(1);
    pi3_out(15) <= pi_3_x(7);
    pi3_out(16) <= pi_3_x(21);
    pi3_out(17) <= pi_3_x(20);
    pi3_out(18) <= pi_3_x(4);
    pi3_out(19) <= pi_3_x(3);
    pi3_out(20) <= pi_3_x(17);
    pi3_out(21) <= pi_3_x(23);
    pi3_out(22) <= pi_3_x(10);
    pi3_out(23) <= pi_3_x(9);
    pi_3_y <= pi3_out;
end Behavioral;