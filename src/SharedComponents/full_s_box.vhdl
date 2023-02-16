library IEEE;
use IEEE.numeric_bit.all;

entity full_s_box is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end full_s_box;

architecture Behavioral of full_s_box is
    component s_box
        port (
            sub_x : in bit_vector(5 downto 0);
            sub_y : out bit_vector(5 downto 0)
        );
    end component s_box;
begin
    sub_y_3 : s_box port map(X(23 downto 18), Y(23 downto 18));
    sub_y_2 : s_box port map(X(17 downto 12), Y(17 downto 12));
    sub_y_1 : s_box port map(X(11 downto 6), Y(11 downto 6));
    sub_y_0 : s_box port map(X(5 downto 0), Y(5 downto 0));
end Behavioral;