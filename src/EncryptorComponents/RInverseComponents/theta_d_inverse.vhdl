library IEEE;
use IEEE.std_logic_1164.all;

entity theta_d_inverse is
    port (
        theta_d_inverse_x : in std_logic_vector(23 downto 0);
        theta_d_inverse_y : out std_logic_vector(23 downto 0)
    );
end theta_d_inverse;

architecture Behavioral of theta_d_inverse is
    signal theta_d_inverse_out : std_logic_vector(23 downto 0);
begin
    theta_d_generate_for : for i in 0 to 23 generate
        theta_d_inverse_out(i) <= theta_d_inverse_x((i + 8) mod 24) xor theta_d_inverse_x((i + 20) mod 24) xor theta_d_inverse_x((i + 22) mod 24);
    end generate theta_d_generate_for;
    theta_d_inverse_y <= theta_d_inverse_out;
end Behavioral;