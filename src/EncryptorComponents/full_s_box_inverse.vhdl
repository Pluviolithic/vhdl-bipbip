library IEEE;
use IEEE.std_logic_1164.all;

entity full_s_box_inverse is
  port (
    full_s_box_inverse_x : in std_logic_vector(23 downto 0);
    full_s_box_inverse_y : out std_logic_vector(23 downto 0)
  );
end full_s_box_inverse;

architecture Behavioral of full_s_box_inverse is
  signal full_s_box_inverse_out : std_logic_vector(23 downto 0);
  component s_box_inverse
    port (
      s_box_x : in std_logic_vector(5 downto 0);
      s_box_y : out std_logic_vector(5 downto 0)
    );
  end component s_box_inverse;
begin
  sub_y3 : s_box_inverse port map(full_s_box_inverse_x(23 downto 18), full_s_box_inverse_out(23 downto 18));
  sub_y2 : s_box_inverse port map(full_s_box_inverse_x(17 downto 12), full_s_box_inverse_out(17 downto 12));
  sub_y1 : s_box_inverse port map(full_s_box_inverse_x(11 downto 6), full_s_box_inverse_out(11 downto 6));
  sub_y0 : s_box_inverse port map(full_s_box_inverse_x(5 downto 0), full_s_box_inverse_out(5 downto 0));
  full_s_box_inverse_y <= full_s_box_inverse_out;
end Behavioral;
