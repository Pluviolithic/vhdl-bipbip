library IEEE;
use IEEE.numeric_bit.all;

entity theta_t is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(52 downto 0)
    );
end theta_t;

architecture Behavioral of theta_t is
    signal theta_t_out : bit_vector(52 downto 0);
begin
    theta_t_out(0) <= x(0) xor x(1) xor x(8);
    theta_t_out(1) <= x(1) xor x(2) xor x(9);
    theta_t_out(2) <= x(2) xor x(3) xor x(10);
    theta_t_out(3) <= x(3) xor x(4) xor x(11);
    theta_t_out(4) <= x(4) xor x(5) xor x(12);
    theta_t_out(5) <= x(5) xor x(6) xor x(13);
    theta_t_out(6) <= x(6) xor x(7) xor x(14);
    theta_t_out(7) <= x(7) xor x(8) xor x(15);
    theta_t_out(8) <= x(8) xor x(9) xor x(16);
    theta_t_out(9) <= x(9) xor x(10) xor x(17);
    theta_t_out(10) <= x(10) xor x(11) xor x(18);
    theta_t_out(11) <= x(11) xor x(12) xor x(19);
    theta_t_out(12) <= x(12) xor x(13) xor x(20);
    theta_t_out(13) <= x(13) xor x(14) xor x(21);
    theta_t_out(14) <= x(14) xor x(15) xor x(22);
    theta_t_out(15) <= x(15) xor x(16) xor x(23);
    theta_t_out(16) <= x(16) xor x(17) xor x(24);
    theta_t_out(17) <= x(17) xor x(18) xor x(25);
    theta_t_out(18) <= x(18) xor x(19) xor x(26);
    theta_t_out(19) <= x(19) xor x(20) xor x(27);
    theta_t_out(20) <= x(20) xor x(21) xor x(28);
    theta_t_out(21) <= x(21) xor x(22) xor x(29);
    theta_t_out(22) <= x(22) xor x(23) xor x(30);
    theta_t_out(23) <= x(23) xor x(24) xor x(31);
    theta_t_out(24) <= x(24) xor x(25) xor x(32);
    theta_t_out(25) <= x(25) xor x(26) xor x(33);
    theta_t_out(26) <= x(26) xor x(27) xor x(34);
    theta_t_out(27) <= x(27) xor x(28) xor x(35);
    theta_t_out(28) <= x(28) xor x(29) xor x(36);
    theta_t_out(29) <= x(29) xor x(30) xor x(37);
    theta_t_out(30) <= x(30) xor x(31) xor x(38);
    theta_t_out(31) <= x(31) xor x(32) xor x(39);
    theta_t_out(32) <= x(32) xor x(33) xor x(40);
    theta_t_out(33) <= x(33) xor x(34) xor x(41);
    theta_t_out(34) <= x(34) xor x(35) xor x(42);
    theta_t_out(35) <= x(35) xor x(36) xor x(43);
    theta_t_out(36) <= x(36) xor x(37) xor x(44);
    theta_t_out(37) <= x(37) xor x(38) xor x(45);
    theta_t_out(38) <= x(38) xor x(39) xor x(46);
    theta_t_out(39) <= x(39) xor x(40) xor x(47);
    theta_t_out(40) <= x(40) xor x(41) xor x(48);
    theta_t_out(41) <= x(41) xor x(42) xor x(49);
    theta_t_out(42) <= x(42) xor x(43) xor x(50);
    theta_t_out(43) <= x(43) xor x(44) xor x(51);
    theta_t_out(44) <= x(44) xor x(45) xor x(52);
    theta_t_out(45) <= x(45) xor x(46) xor x(0);
    theta_t_out(46) <= x(46) xor x(47) xor x(1);
    theta_t_out(47) <= x(47) xor x(48) xor x(2);
    theta_t_out(48) <= x(48) xor x(49) xor x(3);
    theta_t_out(49) <= x(49) xor x(50) xor x(4);
    theta_t_out(50) <= x(50) xor x(51) xor x(5);
    theta_t_out(51) <= x(51) xor x(52) xor x(6);
    theta_t_out(52) <= x(52) xor x(0) xor x(7);
    y <= theta_t_out;
end Behavioral;