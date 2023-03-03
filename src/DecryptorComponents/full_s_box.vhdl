library IEEE;
use IEEE.std_logic_1164.all;

entity full_s_box is
    port (
        full_s_box_x : in std_logic_vector(23 downto 0);
        full_s_box_y : out std_logic_vector(23 downto 0)
    );
end full_s_box;

architecture Behavioral of full_s_box is
    signal full_s_box_out : std_logic_vector(23 downto 0);
    component s_box
        port (
            s_box_x : in std_logic_vector(5 downto 0);
            s_box_y : out std_logic_vector(5 downto 0)
        );
    end component s_box;
begin
    -- already parallel because four boxes instantiated
    -- can use a statement for generate to make it fancy
    sub_y3 : s_box port map(full_s_box_x(23 downto 18), full_s_box_out(23 downto 18));
    sub_y2 : s_box port map(full_s_box_x(17 downto 12), full_s_box_out(17 downto 12));
    sub_y1 : s_box port map(full_s_box_x(11 downto 6), full_s_box_out(11 downto 6));
    sub_y0 : s_box port map(full_s_box_x(5 downto 0), full_s_box_out(5 downto 0));
    full_s_box_y <= full_s_box_out;
end Behavioral;