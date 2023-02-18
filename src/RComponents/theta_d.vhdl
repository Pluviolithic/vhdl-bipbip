library IEEE;
use IEEE.std_logic_1164.all;

entity theta_d is
    port (
        theta_d_x : in std_logic_vector(23 downto 0);
        theta_d_y : out std_logic_vector(23 downto 0)
    );
end theta_d;

architecture Behavioral of theta_d is
    signal theta_d_out : std_logic_vector(23 downto 0);
begin
    theta_d_out(0) <= theta_d_x(0) xor theta_d_x(2) xor theta_d_x(12);
    theta_d_out(1) <= theta_d_x(1) xor theta_d_x(3) xor theta_d_x(13);
    theta_d_out(2) <= theta_d_x(2) xor theta_d_x(4) xor theta_d_x(14);
    theta_d_out(3) <= theta_d_x(3) xor theta_d_x(5) xor theta_d_x(15);
    theta_d_out(4) <= theta_d_x(4) xor theta_d_x(6) xor theta_d_x(16);
    theta_d_out(5) <= theta_d_x(5) xor theta_d_x(7) xor theta_d_x(17);
    theta_d_out(6) <= theta_d_x(6) xor theta_d_x(8) xor theta_d_x(18);
    theta_d_out(7) <= theta_d_x(7) xor theta_d_x(9) xor theta_d_x(19);
    theta_d_out(8) <= theta_d_x(8) xor theta_d_x(10) xor theta_d_x(20);
    theta_d_out(9) <= theta_d_x(9) xor theta_d_x(11) xor theta_d_x(21);
    theta_d_out(10) <= theta_d_x(10) xor theta_d_x(12) xor theta_d_x(22);
    theta_d_out(11) <= theta_d_x(11) xor theta_d_x(13) xor theta_d_x(23);
    theta_d_out(12) <= theta_d_x(12) xor theta_d_x(14) xor theta_d_x(0);
    theta_d_out(13) <= theta_d_x(13) xor theta_d_x(15) xor theta_d_x(1);
    theta_d_out(14) <= theta_d_x(14) xor theta_d_x(16) xor theta_d_x(2);
    theta_d_out(15) <= theta_d_x(15) xor theta_d_x(17) xor theta_d_x(3);
    theta_d_out(16) <= theta_d_x(16) xor theta_d_x(18) xor theta_d_x(4);
    theta_d_out(17) <= theta_d_x(17) xor theta_d_x(19) xor theta_d_x(5);
    theta_d_out(18) <= theta_d_x(18) xor theta_d_x(20) xor theta_d_x(6);
    theta_d_out(19) <= theta_d_x(19) xor theta_d_x(21) xor theta_d_x(7);
    theta_d_out(20) <= theta_d_x(20) xor theta_d_x(22) xor theta_d_x(8);
    theta_d_out(21) <= theta_d_x(21) xor theta_d_x(23) xor theta_d_x(9);
    theta_d_out(22) <= theta_d_x(22) xor theta_d_x(0) xor theta_d_x(10);
    theta_d_out(23) <= theta_d_x(23) xor theta_d_x(1) xor theta_d_x(11);
    theta_d_y <= theta_d_out;
end Behavioral;