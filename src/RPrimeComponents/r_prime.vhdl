library IEEE;
use IEEE.numeric_bit.all;

entity r_prime is
    port (
        x : in bit_vector(23 downto 0);
        y_out : out bit_vector(23 downto 0)
    );
end r_prime;

architecture Behavioral of r_prime is

    signal y : bit_vector(23 downto 0);

    component full_s_box
        port (
            x : in bit_vector(23 downto 0);
            y_out : out bit_vector(23 downto 0)
        );
    end component full_s_box;
    component pi_3
        port (
            x : in bit_vector(23 downto 0);
            y_out : out bit_vector(23 downto 0)
        );
    end component pi_3;

begin
    r_prime_0 : full_s_box port map(x, y);
    r_prime_1 : pi_3 port map(y, y);
    y_out <= y;
end Behavioral;