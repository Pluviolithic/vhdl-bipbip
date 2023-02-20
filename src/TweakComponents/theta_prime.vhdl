library IEEE;
use IEEE.std_logic_1164.all;

entity theta_prime is
    port (
        theta_prime_x : in std_logic_vector(52 downto 0);
        theta_prime_y : out std_logic_vector(52 downto 0)
    );
end theta_prime;

architecture Behavioral of theta_prime is
    signal theta_prime_out : std_logic_vector(52 downto 0);
begin
    theta_prime_generate_for : for i in 0 to 52 generate
        theta_prime_out(i) <= theta_prime_x(i) xor theta_prime_x((i + 1) mod 53);
    end generate theta_prime_generate_for;
    theta_prime_y <= theta_prime_out;
end Behavioral;