library IEEE;
use IEEE.numeric_bit.all;

entity pi_1 is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end pi_1;

architecture Behavioral of pi_1 is
    signal pi1_out : bit_vector(23 downto 0);
begin
    pi1_out(0)  <= x(1);
    pi1_out(1)  <= x(7);
    pi1_out(2)  <= x(6);
    pi1_out(3)  <= x(0);
    pi1_out(4)  <= x(2);
    pi1_out(5)  <= x(8);
    pi1_out(6)  <= x(12);
    pi1_out(7)  <= x(18);
    pi1_out(8)  <= x(19);
    pi1_out(9)  <= x(13);
    pi1_out(10) <= x(14);
    pi1_out(11) <= x(20);
    pi1_out(12) <= x(21);
    pi1_out(13) <= x(15);
    pi1_out(14) <= x(16);
    pi1_out(15) <= x(22);
    pi1_out(16) <= x(23);
    pi1_out(17) <= x(17);
    pi1_out(18) <= x(9);
    pi1_out(19) <= x(3);
    pi1_out(20) <= x(4);
    pi1_out(21) <= x(10);
    pi1_out(22) <= x(11);
    pi1_out(23) <= x(5);
    y <= pi1_out;
end Behavioral;