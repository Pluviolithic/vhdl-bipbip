library IEEE;
use IEEE.numeric_bit.all;

entity r_prime is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end r_prime;

architecture Behavioral of r_prime is
    component full_s_box
        port (
            s_box_x : in bit_vector(23 downto 0);
            s_box_y : out bit_vector(23 downto 0)
        );
    end component full_s_box;
    component pi_3
        port (
            pi_3_x : in bit_vector(23 downto 0);
            pi_3_y : out bit_vector(23 downto 0)
        );
    end component pi_3;

begin
    r_prime_0 : full_s_box port map(x, y);
    r_prime_1 : pi_3 port map(y, y);
end Behavioral;