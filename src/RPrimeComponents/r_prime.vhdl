library IEEE;
use IEEE.std_logic_1164.all;

entity r_prime is
    port (
        r_prime_x : in std_logic_vector(23 downto 0);
        r_prime_y : out std_logic_vector(23 downto 0)
    );
end r_prime;

architecture Behavioral of r_prime is

    signal r_prime_out : std_logic_vector(23 downto 0);
    signal r_prime0_out : std_logic_vector(23 downto 0);

    component full_s_box
        port (
            full_s_box_x : in std_logic_vector(23 downto 0);
            full_s_box_y : out std_logic_vector(23 downto 0)
        );
    end component full_s_box;
    component pi_3
        port (
            pi_3_x : in std_logic_vector(23 downto 0);
            pi_3_y : out std_logic_vector(23 downto 0)
        );
    end component pi_3;

begin
    r_prime0 : full_s_box port map(r_prime_x, r_prime0_out);
    r_prime1 : pi_3 port map(r_prime0_out, r_prime_out);
    r_prime_y <= r_prime_out;
end Behavioral;