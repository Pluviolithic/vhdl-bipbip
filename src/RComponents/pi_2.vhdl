library IEEE;
use IEEE.numeric_bit.all;

entity pi_2 is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end pi_2;

architecture Behavioral of pi_2 is
    signal pi2_out : bit_vector(23 downto 0);
begin
    pi2_out(0)  <= x(0);
    pi2_out(1)  <= x(1);
    pi2_out(2)  <= x(4);
    pi2_out(3)  <= x(5);
    pi2_out(4)  <= x(8);
    pi2_out(5)  <= x(9);
    pi2_out(6)  <= x(2);
    pi2_out(7)  <= x(3);
    pi2_out(8)  <= x(6);
    pi2_out(9)  <= x(7);
    pi2_out(10) <= x(10);
    pi2_out(11) <= x(11);
    pi2_out(12) <= x(16);
    pi2_out(13) <= x(12);
    pi2_out(14) <= x(13);
    pi2_out(15) <= x(17);
    pi2_out(16) <= x(20);
    pi2_out(17) <= x(21);
    pi2_out(18) <= x(15);
    pi2_out(19) <= x(14);
    pi2_out(20) <= x(18);
    pi2_out(21) <= x(19);
    pi2_out(22) <= x(22);
    pi2_out(23) <= x(23);
    y <= pi2_out;
end Behavioral;