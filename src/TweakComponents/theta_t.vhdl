library IEEE;
use IEEE.std_logic_1164.all;

entity theta_t is
  port (
    theta_t_x : in std_logic_vector(52 downto 0);
    theta_t_y : out std_logic_vector(52 downto 0)
  );
end theta_t;

architecture Behavioral of theta_t is
  signal theta_t_out : std_logic_vector(52 downto 0);
begin
  theta_t_generate_for : for i in 0 to 52 generate
    theta_t_out(i) <= theta_t_x(i) xor theta_t_x((i + 1) mod 53) xor theta_t_x((i + 8) mod 52);
  end generate theta_t_generate_for;
  theta_t_y <= theta_t_out;
end Behavioral;
