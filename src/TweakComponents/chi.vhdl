library IEEE;
use IEEE.std_logic_1164.all;

entity chi is
    port (
        chi_x : in std_logic_vector(52 downto 0);
        chi_y : out std_logic_vector(52 downto 0)
    );
end chi;

architecture Behavioral of chi is
    signal chi_out : std_logic_vector(52 downto 0);
begin
    -- simpy do not x(i) instead
    chi_out(0) <= chi_x(0) xor ((chi_x(1) xor '1') and chi_x(2));
    chi_out(1) <= chi_x(1) xor ((chi_x(2) xor '1') and chi_x(3));
    chi_out(2) <= chi_x(2) xor ((chi_x(3) xor '1') and chi_x(4));
    chi_out(3) <= chi_x(3) xor ((chi_x(4) xor '1') and chi_x(5));
    chi_out(4) <= chi_x(4) xor ((chi_x(5) xor '1') and chi_x(6));
    chi_out(5) <= chi_x(5) xor ((chi_x(6) xor '1') and chi_x(7));
    chi_out(6) <= chi_x(6) xor ((chi_x(7) xor '1') and chi_x(8));
    chi_out(7) <= chi_x(7) xor ((chi_x(8) xor '1') and chi_x(9));
    chi_out(8) <= chi_x(8) xor ((chi_x(9) xor '1') and chi_x(10));
    chi_out(9) <= chi_x(9) xor ((chi_x(10) xor '1') and chi_x(11));
    chi_out(10) <= chi_x(10) xor ((chi_x(11) xor '1') and chi_x(12));
    chi_out(11) <= chi_x(11) xor ((chi_x(12) xor '1') and chi_x(13));
    chi_out(12) <= chi_x(12) xor ((chi_x(13) xor '1') and chi_x(14));
    chi_out(13) <= chi_x(13) xor ((chi_x(14) xor '1') and chi_x(15));
    chi_out(14) <= chi_x(14) xor ((chi_x(15) xor '1') and chi_x(16));
    chi_out(15) <= chi_x(15) xor ((chi_x(16) xor '1') and chi_x(17));
    chi_out(16) <= chi_x(16) xor ((chi_x(17) xor '1') and chi_x(18));
    chi_out(17) <= chi_x(17) xor ((chi_x(18) xor '1') and chi_x(19));
    chi_out(18) <= chi_x(18) xor ((chi_x(19) xor '1') and chi_x(20));
    chi_out(19) <= chi_x(19) xor ((chi_x(20) xor '1') and chi_x(21));
    chi_out(20) <= chi_x(20) xor ((chi_x(21) xor '1') and chi_x(22));
    chi_out(21) <= chi_x(21) xor ((chi_x(22) xor '1') and chi_x(23));
    chi_out(22) <= chi_x(22) xor ((chi_x(23) xor '1') and chi_x(24));
    chi_out(23) <= chi_x(23) xor ((chi_x(24) xor '1') and chi_x(25));
    chi_out(24) <= chi_x(24) xor ((chi_x(25) xor '1') and chi_x(26));
    chi_out(25) <= chi_x(25) xor ((chi_x(26) xor '1') and chi_x(27));
    chi_out(26) <= chi_x(26) xor ((chi_x(27) xor '1') and chi_x(28));
    chi_out(27) <= chi_x(27) xor ((chi_x(28) xor '1') and chi_x(29));
    chi_out(28) <= chi_x(28) xor ((chi_x(29) xor '1') and chi_x(30));
    chi_out(29) <= chi_x(29) xor ((chi_x(30) xor '1') and chi_x(31));
    chi_out(30) <= chi_x(30) xor ((chi_x(31) xor '1') and chi_x(32));
    chi_out(31) <= chi_x(31) xor ((chi_x(32) xor '1') and chi_x(33));
    chi_out(32) <= chi_x(32) xor ((chi_x(33) xor '1') and chi_x(34));
    chi_out(33) <= chi_x(33) xor ((chi_x(34) xor '1') and chi_x(35));
    chi_out(34) <= chi_x(34) xor ((chi_x(35) xor '1') and chi_x(36));
    chi_out(35) <= chi_x(35) xor ((chi_x(36) xor '1') and chi_x(37));
    chi_out(36) <= chi_x(36) xor ((chi_x(37) xor '1') and chi_x(38));
    chi_out(37) <= chi_x(37) xor ((chi_x(38) xor '1') and chi_x(39));
    chi_out(38) <= chi_x(38) xor ((chi_x(39) xor '1') and chi_x(40));
    chi_out(39) <= chi_x(39) xor ((chi_x(40) xor '1') and chi_x(41));
    chi_out(40) <= chi_x(40) xor ((chi_x(41) xor '1') and chi_x(42));
    chi_out(41) <= chi_x(41) xor ((chi_x(42) xor '1') and chi_x(43));
    chi_out(42) <= chi_x(42) xor ((chi_x(43) xor '1') and chi_x(44));
    chi_out(43) <= chi_x(43) xor ((chi_x(44) xor '1') and chi_x(45));
    chi_out(44) <= chi_x(44) xor ((chi_x(45) xor '1') and chi_x(46));
    chi_out(45) <= chi_x(45) xor ((chi_x(46) xor '1') and chi_x(47));
    chi_out(46) <= chi_x(46) xor ((chi_x(47) xor '1') and chi_x(48));
    chi_out(47) <= chi_x(47) xor ((chi_x(48) xor '1') and chi_x(49));
    chi_out(48) <= chi_x(48) xor ((chi_x(49) xor '1') and chi_x(50));
    chi_out(49) <= chi_x(49) xor ((chi_x(50) xor '1') and chi_x(51));
    chi_out(50) <= chi_x(50) xor ((chi_x(51) xor '1') and chi_x(52));
    chi_out(51) <= chi_x(51) xor ((chi_x(52) xor '1') and chi_x(0));
    chi_out(52) <= chi_x(52) xor ((chi_x(0) xor '1') and chi_x(1));
    chi_y <= chi_out;
end Behavioral;