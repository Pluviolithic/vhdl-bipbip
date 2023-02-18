library IEEE;
use IEEE.numeric_bit.all;

entity theta_d is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end theta_d;

architecture Behavioral of theta_d is
    signal theta_d_out : bit_vector(23 downto 0);
begin
    theta_d_out(0) <= x(0) xor x(2) xor x(12);
    theta_d_out(1) <= x(1) xor x(3) xor x(13);
    theta_d_out(2) <= x(2) xor x(4) xor x(14);
    theta_d_out(3) <= x(3) xor x(5) xor x(15);
    theta_d_out(4) <= x(4) xor x(6) xor x(16);
    theta_d_out(5) <= x(5) xor x(7) xor x(17);
    theta_d_out(6) <= x(6) xor x(8) xor x(18);
    theta_d_out(7) <= x(7) xor x(9) xor x(19);
    theta_d_out(8) <= x(8) xor x(10) xor x(20);
    theta_d_out(9) <= x(9) xor x(11) xor x(21);
    theta_d_out(10) <= x(10) xor x(12) xor x(22);
    theta_d_out(11) <= x(11) xor x(13) xor x(23);
    theta_d_out(12) <= x(12) xor x(14) xor x(0);
    theta_d_out(13) <= x(13) xor x(15) xor x(1);
    theta_d_out(14) <= x(14) xor x(16) xor x(2);
    theta_d_out(15) <= x(15) xor x(17) xor x(3);
    theta_d_out(16) <= x(16) xor x(18) xor x(4);
    theta_d_out(17) <= x(17) xor x(19) xor x(5);
    theta_d_out(18) <= x(18) xor x(20) xor x(6);
    theta_d_out(19) <= x(19) xor x(21) xor x(7);
    theta_d_out(20) <= x(20) xor x(22) xor x(8);
    theta_d_out(21) <= x(21) xor x(23) xor x(9);
    theta_d_out(22) <= x(22) xor x(0) xor x(10);
    theta_d_out(23) <= x(23) xor x(1) xor x(11);
    y <= theta_d_out;
end Behavioral;