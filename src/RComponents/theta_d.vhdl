library IEEE;
use IEEE.numeric_bit.all;

entity theta_d is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end theta_d;

architecture Behavioral of theta_d is
begin
    y(0) <= x(0) xor x(2) xor x(12);
    y(1) <= x(1) xor x(3) xor x(13);
    y(2) <= x(2) xor x(4) xor x(14);
    y(3) <= x(3) xor x(5) xor x(15);
    y(4) <= x(4) xor x(6) xor x(16);
    y(5) <= x(5) xor x(7) xor x(17);
    y(6) <= x(6) xor x(8) xor x(18);
    y(7) <= x(7) xor x(9) xor x(19);
    y(8) <= x(8) xor x(10) xor x(20);
    y(9) <= x(9) xor x(11) xor x(21);
    y(10) <= x(10) xor x(12) xor x(22);
    y(11) <= x(11) xor x(13) xor x(23);
    y(12) <= x(12) xor x(14) xor x(0);
    y(13) <= x(13) xor x(15) xor x(1);
    y(14) <= x(14) xor x(16) xor x(2);
    y(15) <= x(15) xor x(17) xor x(3);
    y(16) <= x(16) xor x(18) xor x(4);
    y(17) <= x(17) xor x(19) xor x(5);
    y(18) <= x(18) xor x(20) xor x(6);
    y(19) <= x(19) xor x(21) xor x(7);
    y(20) <= x(20) xor x(22) xor x(8);
    y(21) <= x(21) xor x(23) xor x(9);
    y(22) <= x(22) xor x(0) xor x(10);
    y(23) <= x(23) xor x(1) xor x(11);
end Behavioral;