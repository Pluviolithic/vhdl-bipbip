library IEEE;
use IEEE.std_logic_1164.all;

entity pi_5 is
    port (
        pi_5_x : in std_logic_vector(52 downto 0);
        pi_5_y : out std_logic_vector(52 downto 0)
    );
end pi_5;

architecture Behavioral of pi_5 is
    signal pi5_out : std_logic_vector(52 downto 0);
begin
    pi5_out(0)  <= pi_5_x(0);
    pi5_out(1)  <= pi_5_x(11);
    pi5_out(2)  <= pi_5_x(22);
    pi5_out(3)  <= pi_5_x(33);
    pi5_out(4)  <= pi_5_x(44);
    pi5_out(5)  <= pi_5_x(2);
    pi5_out(6)  <= pi_5_x(13);
    pi5_out(7)  <= pi_5_x(24);
    pi5_out(8)  <= pi_5_x(35);
    pi5_out(9)  <= pi_5_x(46);
    pi5_out(10) <= pi_5_x(4);
    pi5_out(11) <= pi_5_x(15);
    pi5_out(12) <= pi_5_x(26);
    pi5_out(13) <= pi_5_x(37);
    pi5_out(14) <= pi_5_x(48);
    pi5_out(15) <= pi_5_x(6);
    pi5_out(16) <= pi_5_x(17);
    pi5_out(17) <= pi_5_x(28);
    pi5_out(18) <= pi_5_x(39);
    pi5_out(19) <= pi_5_x(50);
    pi5_out(20) <= pi_5_x(8);
    pi5_out(21) <= pi_5_x(19);
    pi5_out(22) <= pi_5_x(30);
    pi5_out(23) <= pi_5_x(41);
    pi5_out(24) <= pi_5_x(52);
    pi5_out(25) <= pi_5_x(10);
    pi5_out(26) <= pi_5_x(21);
    pi5_out(27) <= pi_5_x(32);
    pi5_out(28) <= pi_5_x(43);
    pi5_out(29) <= pi_5_x(1);
    pi5_out(30) <= pi_5_x(12);
    pi5_out(31) <= pi_5_x(23);
    pi5_out(32) <= pi_5_x(34);
    pi5_out(33) <= pi_5_x(45);
    pi5_out(34) <= pi_5_x(3);
    pi5_out(35) <= pi_5_x(14);
    pi5_out(36) <= pi_5_x(25);
    pi5_out(37) <= pi_5_x(36);
    pi5_out(38) <= pi_5_x(47);
    pi5_out(39) <= pi_5_x(5);
    pi5_out(40) <= pi_5_x(16);
    pi5_out(41) <= pi_5_x(27);
    pi5_out(42) <= pi_5_x(38);
    pi5_out(43) <= pi_5_x(49);
    pi5_out(44) <= pi_5_x(7);
    pi5_out(45) <= pi_5_x(18);
    pi5_out(46) <= pi_5_x(29);
    pi5_out(47) <= pi_5_x(40);
    pi5_out(48) <= pi_5_x(51);
    pi5_out(49) <= pi_5_x(9);
    pi5_out(50) <= pi_5_x(20);
    pi5_out(51) <= pi_5_x(31);
    pi5_out(52) <= pi_5_x(42);
    pi_5_y      <= pi5_out;
end Behavioral;