library IEEE;
use IEEE.std_logic_1164.all;

entity e_0 is
    port (
        e_0_x : in std_logic_vector(52 downto 0);
        e_0_y : out std_logic_vector(23 downto 0)
    );
end e_0;

architecture Behavioral of e_0 is
    signal e0_out : std_logic_vector(23 downto 0);
begin
    e0_out(0) <= e_0_x(0);
    e0_out(1) <= e_0_x(2);
    e0_out(2) <= e_0_x(4);
    e0_out(3) <= e_0_x(6);
    e0_out(4) <= e_0_x(8);
    e0_out(5) <= e_0_x(10);
    e0_out(6) <= e_0_x(12);
    e0_out(7) <= e_0_x(14);
    e0_out(8) <= e_0_x(16);
    e0_out(9) <= e_0_x(18);
    e0_out(10) <= e_0_x(20);
    e0_out(11) <= e_0_x(22);
    e0_out(12) <= e_0_x(24);
    e0_out(13) <= e_0_x(26);
    e0_out(14) <= e_0_x(28);
    e0_out(15) <= e_0_x(30);
    e0_out(16) <= e_0_x(32);
    e0_out(17) <= e_0_x(34);
    e0_out(18) <= e_0_x(36);
    e0_out(19) <= e_0_x(38);
    e0_out(20) <= e_0_x(40);
    e0_out(21) <= e_0_x(42);
    e0_out(22) <= e_0_x(44);
    e0_out(23) <= e_0_x(46);
    e_0_y <= e0_out;
end Behavioral;
