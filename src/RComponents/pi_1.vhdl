library IEEE;
use IEEE.std_logic_1164.all;

entity pi_1 is
    port (
        pi_1_x : in std_logic_vector(23 downto 0);
        pi_1_y : out std_logic_vector(23 downto 0)
    );
end pi_1;

architecture Behavioral of pi_1 is
    signal pi1_out : std_logic_vector(23 downto 0);
begin
    pi1_out(0)  <= pi_1_x(1);
    pi1_out(1)  <= pi_1_x(7);
    pi1_out(2)  <= pi_1_x(6);
    pi1_out(3)  <= pi_1_x(0);
    pi1_out(4)  <= pi_1_x(2);
    pi1_out(5)  <= pi_1_x(8);
    pi1_out(6)  <= pi_1_x(12);
    pi1_out(7)  <= pi_1_x(18);
    pi1_out(8)  <= pi_1_x(19);
    pi1_out(9)  <= pi_1_x(13);
    pi1_out(10) <= pi_1_x(14);
    pi1_out(11) <= pi_1_x(20);
    pi1_out(12) <= pi_1_x(21);
    pi1_out(13) <= pi_1_x(15);
    pi1_out(14) <= pi_1_x(16);
    pi1_out(15) <= pi_1_x(22);
    pi1_out(16) <= pi_1_x(23);
    pi1_out(17) <= pi_1_x(17);
    pi1_out(18) <= pi_1_x(9);
    pi1_out(19) <= pi_1_x(3);
    pi1_out(20) <= pi_1_x(4);
    pi1_out(21) <= pi_1_x(10);
    pi1_out(22) <= pi_1_x(11);
    pi1_out(23) <= pi_1_x(5);
    pi_1_y      <= pi1_out;
end Behavioral;