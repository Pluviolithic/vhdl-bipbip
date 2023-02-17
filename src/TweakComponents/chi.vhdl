library IEEE;
use IEEE.numeric_bit.all;

entity chi is
    port (
        x : in bit_vector(52 downto 0);
        y_out : out bit_vector(52 downto 0)
    );
end chi;

architecture Behavioral of chi is
    signal y : bit_vector(52 downto 0);
begin
    -- simply do not x(i) instead
    y(0) <= x(0) xor ((x(1) xor '1') and x(2));
    y(1) <= x(1) xor ((x(2) xor '1') and x(3));
    y(2) <= x(2) xor ((x(3) xor '1') and x(4));
    y(3) <= x(3) xor ((x(4) xor '1') and x(5));
    y(4) <= x(4) xor ((x(5) xor '1') and x(6));
    y(5) <= x(5) xor ((x(6) xor '1') and x(7));
    y(6) <= x(6) xor ((x(7) xor '1') and x(8));
    y(7) <= x(7) xor ((x(8) xor '1') and x(9));
    y(8) <= x(8) xor ((x(9) xor '1') and x(10));
    y(9) <= x(9) xor ((x(10) xor '1') and x(11));
    y(10) <= x(10) xor ((x(11) xor '1') and x(12));
    y(11) <= x(11) xor ((x(12) xor '1') and x(13));
    y(12) <= x(12) xor ((x(13) xor '1') and x(14));
    y(13) <= x(13) xor ((x(14) xor '1') and x(15));
    y(14) <= x(14) xor ((x(15) xor '1') and x(16));
    y(15) <= x(15) xor ((x(16) xor '1') and x(17));
    y(16) <= x(16) xor ((x(17) xor '1') and x(18));
    y(17) <= x(17) xor ((x(18) xor '1') and x(19));
    y(18) <= x(18) xor ((x(19) xor '1') and x(20));
    y(19) <= x(19) xor ((x(20) xor '1') and x(21));
    y(20) <= x(20) xor ((x(21) xor '1') and x(22));
    y(21) <= x(21) xor ((x(22) xor '1') and x(23));
    y(22) <= x(22) xor ((x(23) xor '1') and x(24));
    y(23) <= x(23) xor ((x(24) xor '1') and x(25));
    y(24) <= x(24) xor ((x(25) xor '1') and x(26));
    y(25) <= x(25) xor ((x(26) xor '1') and x(27));
    y(26) <= x(26) xor ((x(27) xor '1') and x(28));
    y(27) <= x(27) xor ((x(28) xor '1') and x(29));
    y(28) <= x(28) xor ((x(29) xor '1') and x(30));
    y(29) <= x(29) xor ((x(30) xor '1') and x(31));
    y(30) <= x(30) xor ((x(31) xor '1') and x(32));
    y(31) <= x(31) xor ((x(32) xor '1') and x(33));
    y(32) <= x(32) xor ((x(33) xor '1') and x(34));
    y(33) <= x(33) xor ((x(34) xor '1') and x(35));
    y(34) <= x(34) xor ((x(35) xor '1') and x(36));
    y(35) <= x(35) xor ((x(36) xor '1') and x(37));
    y(36) <= x(36) xor ((x(37) xor '1') and x(38));
    y(37) <= x(37) xor ((x(38) xor '1') and x(39));
    y(38) <= x(38) xor ((x(39) xor '1') and x(40));
    y(39) <= x(39) xor ((x(40) xor '1') and x(41));
    y(40) <= x(40) xor ((x(41) xor '1') and x(42));
    y(41) <= x(41) xor ((x(42) xor '1') and x(43));
    y(42) <= x(42) xor ((x(43) xor '1') and x(44));
    y(43) <= x(43) xor ((x(44) xor '1') and x(45));
    y(44) <= x(44) xor ((x(45) xor '1') and x(46));
    y(45) <= x(45) xor ((x(46) xor '1') and x(47));
    y(46) <= x(46) xor ((x(47) xor '1') and x(48));
    y(47) <= x(47) xor ((x(48) xor '1') and x(49));
    y(48) <= x(48) xor ((x(49) xor '1') and x(50));
    y(49) <= x(49) xor ((x(50) xor '1') and x(51));
    y(50) <= x(50) xor ((x(51) xor '1') and x(52));
    y(51) <= x(51) xor ((x(52) xor '1') and x(0));
    y(52) <= x(52) xor ((x(0) xor '1') and x(1));
    y_out <= y;
end Behavioral;