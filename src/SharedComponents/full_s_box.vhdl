library IEEE;
use IEEE.numeric_bit.all;

entity full_s_box is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end full_s_box;

architecture Behavioral of full_s_box is
    signal full_s_box_out : bit_vector(23 downto 0);
    component s_box
        port (
            x : in bit_vector(5 downto 0);
            y : out bit_vector(5 downto 0)
        );
    end component s_box;
begin
    -- already parallel because four boxes instantiated
    -- can use a statement for generate to make it fancy
    sub_y3 : s_box port map(x(23 downto 18), full_s_box_out(23 downto 18));
    sub_y2 : s_box port map(x(17 downto 12), full_s_box_out(17 downto 12));
    sub_y1 : s_box port map(x(11 downto 6), full_s_box_out(11 downto 6));
    sub_y0 : s_box port map(X(5 downto 0), full_s_box_out(5 downto 0));
    y <= full_s_box_out;
end Behavioral;