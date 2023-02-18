library IEEE;
use IEEE.numeric_bit.all;

entity theta_t is
    port (
        theta_t_x : in bit_vector(52 downto 0);
        theta_t_y : out bit_vector(52 downto 0)
    );
end theta_t;

architecture Behavioral of theta_t is
    signal theta_t_out : bit_vector(52 downto 0);
begin
    theta_t_out(0) <= theta_t_x(0) xor theta_t_x(1) xor theta_t_x(8);
    theta_t_out(1) <= theta_t_x(1) xor theta_t_x(2) xor theta_t_x(9);
    theta_t_out(2) <= theta_t_x(2) xor theta_t_x(3) xor theta_t_x(10);
    theta_t_out(3) <= theta_t_x(3) xor theta_t_x(4) xor theta_t_x(11);
    theta_t_out(4) <= theta_t_x(4) xor theta_t_x(5) xor theta_t_x(12);
    theta_t_out(5) <= theta_t_x(5) xor theta_t_x(6) xor theta_t_x(13);
    theta_t_out(6) <= theta_t_x(6) xor theta_t_x(7) xor theta_t_x(14);
    theta_t_out(7) <= theta_t_x(7) xor theta_t_x(8) xor theta_t_x(15);
    theta_t_out(8) <= theta_t_x(8) xor theta_t_x(9) xor theta_t_x(16);
    theta_t_out(9) <= theta_t_x(9) xor theta_t_x(10) xor theta_t_x(17);
    theta_t_out(10) <= theta_t_x(10) xor theta_t_x(11) xor theta_t_x(18);
    theta_t_out(11) <= theta_t_x(11) xor theta_t_x(12) xor theta_t_x(19);
    theta_t_out(12) <= theta_t_x(12) xor theta_t_x(13) xor theta_t_x(20);
    theta_t_out(13) <= theta_t_x(13) xor theta_t_x(14) xor theta_t_x(21);
    theta_t_out(14) <= theta_t_x(14) xor theta_t_x(15) xor theta_t_x(22);
    theta_t_out(15) <= theta_t_x(15) xor theta_t_x(16) xor theta_t_x(23);
    theta_t_out(16) <= theta_t_x(16) xor theta_t_x(17) xor theta_t_x(24);
    theta_t_out(17) <= theta_t_x(17) xor theta_t_x(18) xor theta_t_x(25);
    theta_t_out(18) <= theta_t_x(18) xor theta_t_x(19) xor theta_t_x(26);
    theta_t_out(19) <= theta_t_x(19) xor theta_t_x(20) xor theta_t_x(27);
    theta_t_out(20) <= theta_t_x(20) xor theta_t_x(21) xor theta_t_x(28);
    theta_t_out(21) <= theta_t_x(21) xor theta_t_x(22) xor theta_t_x(29);
    theta_t_out(22) <= theta_t_x(22) xor theta_t_x(23) xor theta_t_x(30);
    theta_t_out(23) <= theta_t_x(23) xor theta_t_x(24) xor theta_t_x(31);
    theta_t_out(24) <= theta_t_x(24) xor theta_t_x(25) xor theta_t_x(32);
    theta_t_out(25) <= theta_t_x(25) xor theta_t_x(26) xor theta_t_x(33);
    theta_t_out(26) <= theta_t_x(26) xor theta_t_x(27) xor theta_t_x(34);
    theta_t_out(27) <= theta_t_x(27) xor theta_t_x(28) xor theta_t_x(35);
    theta_t_out(28) <= theta_t_x(28) xor theta_t_x(29) xor theta_t_x(36);
    theta_t_out(29) <= theta_t_x(29) xor theta_t_x(30) xor theta_t_x(37);
    theta_t_out(30) <= theta_t_x(30) xor theta_t_x(31) xor theta_t_x(38);
    theta_t_out(31) <= theta_t_x(31) xor theta_t_x(32) xor theta_t_x(39);
    theta_t_out(32) <= theta_t_x(32) xor theta_t_x(33) xor theta_t_x(40);
    theta_t_out(33) <= theta_t_x(33) xor theta_t_x(34) xor theta_t_x(41);
    theta_t_out(34) <= theta_t_x(34) xor theta_t_x(35) xor theta_t_x(42);
    theta_t_out(35) <= theta_t_x(35) xor theta_t_x(36) xor theta_t_x(43);
    theta_t_out(36) <= theta_t_x(36) xor theta_t_x(37) xor theta_t_x(44);
    theta_t_out(37) <= theta_t_x(37) xor theta_t_x(38) xor theta_t_x(45);
    theta_t_out(38) <= theta_t_x(38) xor theta_t_x(39) xor theta_t_x(46);
    theta_t_out(39) <= theta_t_x(39) xor theta_t_x(40) xor theta_t_x(47);
    theta_t_out(40) <= theta_t_x(40) xor theta_t_x(41) xor theta_t_x(48);
    theta_t_out(41) <= theta_t_x(41) xor theta_t_x(42) xor theta_t_x(49);
    theta_t_out(42) <= theta_t_x(42) xor theta_t_x(43) xor theta_t_x(50);
    theta_t_out(43) <= theta_t_x(43) xor theta_t_x(44) xor theta_t_x(51);
    theta_t_out(44) <= theta_t_x(44) xor theta_t_x(45) xor theta_t_x(52);
    theta_t_out(45) <= theta_t_x(45) xor theta_t_x(46) xor theta_t_x(0);
    theta_t_out(46) <= theta_t_x(46) xor theta_t_x(47) xor theta_t_x(1);
    theta_t_out(47) <= theta_t_x(47) xor theta_t_x(48) xor theta_t_x(2);
    theta_t_out(48) <= theta_t_x(48) xor theta_t_x(49) xor theta_t_x(3);
    theta_t_out(49) <= theta_t_x(49) xor theta_t_x(50) xor theta_t_x(4);
    theta_t_out(50) <= theta_t_x(50) xor theta_t_x(51) xor theta_t_x(5);
    theta_t_out(51) <= theta_t_x(51) xor theta_t_x(52) xor theta_t_x(6);
    theta_t_out(52) <= theta_t_x(52) xor theta_t_x(0) xor theta_t_x(7);
    theta_t_y <= theta_t_out;
end Behavioral;