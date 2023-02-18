library IEEE;
use IEEE.std_logic_1164.all;

entity theta_prime is
    port (
        theta_prime_x : in std_logic_vector(52 downto 0);
        theta_prime_y : out std_logic_vector(52 downto 0)
    );
end theta_prime;

architecture Behavioral of theta_prime is
    signal theta_prime_out : std_logic_vector(52 downto 0);
begin
    theta_prime_out(0) <= theta_prime_x(0) xor theta_prime_x(1);
    theta_prime_out(1) <= theta_prime_x(1) xor theta_prime_x(2);
    theta_prime_out(2) <= theta_prime_x(2) xor theta_prime_x(3);
    theta_prime_out(3) <= theta_prime_x(3) xor theta_prime_x(4);
    theta_prime_out(4) <= theta_prime_x(4) xor theta_prime_x(5);
    theta_prime_out(5) <= theta_prime_x(5) xor theta_prime_x(6);
    theta_prime_out(6) <= theta_prime_x(6) xor theta_prime_x(7);
    theta_prime_out(7) <= theta_prime_x(7) xor theta_prime_x(8);
    theta_prime_out(8) <= theta_prime_x(8) xor theta_prime_x(9);
    theta_prime_out(9) <= theta_prime_x(9) xor theta_prime_x(10);
    theta_prime_out(10) <= theta_prime_x(10) xor theta_prime_x(11);
    theta_prime_out(11) <= theta_prime_x(11) xor theta_prime_x(12);
    theta_prime_out(12) <= theta_prime_x(12) xor theta_prime_x(13);
    theta_prime_out(13) <= theta_prime_x(13) xor theta_prime_x(14);
    theta_prime_out(14) <= theta_prime_x(14) xor theta_prime_x(15);
    theta_prime_out(15) <= theta_prime_x(15) xor theta_prime_x(16);
    theta_prime_out(16) <= theta_prime_x(16) xor theta_prime_x(17);
    theta_prime_out(17) <= theta_prime_x(17) xor theta_prime_x(18);
    theta_prime_out(18) <= theta_prime_x(18) xor theta_prime_x(19);
    theta_prime_out(19) <= theta_prime_x(19) xor theta_prime_x(20);
    theta_prime_out(20) <= theta_prime_x(20) xor theta_prime_x(21);
    theta_prime_out(21) <= theta_prime_x(21) xor theta_prime_x(22);
    theta_prime_out(22) <= theta_prime_x(22) xor theta_prime_x(23);
    theta_prime_out(23) <= theta_prime_x(23) xor theta_prime_x(24);
    theta_prime_out(24) <= theta_prime_x(24) xor theta_prime_x(25);
    theta_prime_out(25) <= theta_prime_x(25) xor theta_prime_x(26);
    theta_prime_out(26) <= theta_prime_x(26) xor theta_prime_x(27);
    theta_prime_out(27) <= theta_prime_x(27) xor theta_prime_x(28);
    theta_prime_out(28) <= theta_prime_x(28) xor theta_prime_x(29);
    theta_prime_out(29) <= theta_prime_x(29) xor theta_prime_x(30);
    theta_prime_out(30) <= theta_prime_x(30) xor theta_prime_x(31);
    theta_prime_out(31) <= theta_prime_x(31) xor theta_prime_x(32);
    theta_prime_out(32) <= theta_prime_x(32) xor theta_prime_x(33);
    theta_prime_out(33) <= theta_prime_x(33) xor theta_prime_x(34);
    theta_prime_out(34) <= theta_prime_x(34) xor theta_prime_x(35);
    theta_prime_out(35) <= theta_prime_x(35) xor theta_prime_x(36);
    theta_prime_out(36) <= theta_prime_x(36) xor theta_prime_x(37);
    theta_prime_out(37) <= theta_prime_x(37) xor theta_prime_x(38);
    theta_prime_out(38) <= theta_prime_x(38) xor theta_prime_x(39);
    theta_prime_out(39) <= theta_prime_x(39) xor theta_prime_x(40);
    theta_prime_out(40) <= theta_prime_x(40) xor theta_prime_x(41);
    theta_prime_out(41) <= theta_prime_x(41) xor theta_prime_x(42);
    theta_prime_out(42) <= theta_prime_x(42) xor theta_prime_x(43);
    theta_prime_out(43) <= theta_prime_x(43) xor theta_prime_x(44);
    theta_prime_out(44) <= theta_prime_x(44) xor theta_prime_x(45);
    theta_prime_out(45) <= theta_prime_x(45) xor theta_prime_x(46);
    theta_prime_out(46) <= theta_prime_x(46) xor theta_prime_x(47);
    theta_prime_out(47) <= theta_prime_x(47) xor theta_prime_x(48);
    theta_prime_out(48) <= theta_prime_x(48) xor theta_prime_x(49);
    theta_prime_out(49) <= theta_prime_x(49) xor theta_prime_x(50);
    theta_prime_out(50) <= theta_prime_x(50) xor theta_prime_x(51);
    theta_prime_out(51) <= theta_prime_x(51) xor theta_prime_x(52);
    theta_prime_out(52) <= theta_prime_x(52);
    theta_prime_y <= theta_prime_out;
end Behavioral;