library IEEE;
use IEEE.std_logic_1164.all;

entity theta_d is
  port (
    theta_d_x : in std_logic_vector(23 downto 0);
    theta_d_y : out std_logic_vector(23 downto 0)
  );
end theta_d;

architecture Behavioral of theta_d is
  signal theta_d_out : std_logic_vector(23 downto 0);
begin
  theta_d_generate_for : for i in 0 to 23 generate
    theta_d_out(i) <= theta_d_x(i) xor theta_d_x((i + 2) mod 24) xor theta_d_x((i + 12) mod 24);
  end generate theta_d_generate_for;
  theta_d_y <= theta_d_out;
end Behavioral;
