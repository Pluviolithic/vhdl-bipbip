library IEEE;
use IEEE.numeric_bit.all;

entity r_prime is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end r_prime;

architecture Behavioral of r_prime is

    signal r_prime_out : bit_vector(23 downto 0);
    signal r_prime0_out : bit_vector(23 downto 0);

    component full_s_box
        port (
            x : in bit_vector(23 downto 0);
            y : out bit_vector(23 downto 0)
        );
    end component full_s_box;
    component pi_3
        port (
            x : in bit_vector(23 downto 0);
            y : out bit_vector(23 downto 0)
        );
    end component pi_3;

begin
    r_prime0 : full_s_box port map(x, r_prime0_out);
    r_prime1 : pi_3 port map(r_prime0_out, r_prime_out);
    y <= r_prime_out;
end Behavioral;