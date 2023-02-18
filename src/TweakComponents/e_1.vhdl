library IEEE;
use IEEE.std_logic_1164.all;

entity e_1 is
    port (
        e_1_x : in std_logic_vector(52 downto 0);
        e_1_y : out std_logic_vector(23 downto 0)
    );
end e_1;

architecture Behavioral of e_1 is
    signal e1_out : std_logic_vector(23 downto 0);
begin
    e1_out(0) <= e_1_x(1);
    e1_out(1) <= e_1_x(3);
    e1_out(2) <= e_1_x(5);
    e1_out(3) <= e_1_x(7);
    e1_out(4) <= e_1_x(9);
    e1_out(5) <= e_1_x(11);
    e1_out(6) <= e_1_x(13);
    e1_out(7) <= e_1_x(15);
    e1_out(8) <= e_1_x(17);
    e1_out(9) <= e_1_x(19);
    e1_out(10) <= e_1_x(21);
    e1_out(11) <= e_1_x(23);
    e1_out(12) <= e_1_x(25);
    e1_out(13) <= e_1_x(27);
    e1_out(14) <= e_1_x(29);
    e1_out(15) <= e_1_x(31);
    e1_out(16) <= e_1_x(33);
    e1_out(17) <= e_1_x(35);
    e1_out(18) <= e_1_x(37);
    e1_out(19) <= e_1_x(39);
    e1_out(20) <= e_1_x(41);
    e1_out(21) <= e_1_x(43);
    e1_out(22) <= e_1_x(45);
    e1_out(23) <= e_1_x(47);
    e_1_y <= e1_out;
end Behavioral;