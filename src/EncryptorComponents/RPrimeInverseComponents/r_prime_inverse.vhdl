library IEEE;
use IEEE.std_logic_1164.all;

entity r_prime_inverse is
    port (
        r_prime_inverse_x : in std_logic_vector(23 downto 0);
        r_prime_inverse_y : out std_logic_vector(23 downto 0)
    );
end r_prime_inverse;

architecture Behavioral of r_prime_inverse is

    signal r_prime_inverse_out  : std_logic_vector(23 downto 0);
    signal r_prime0_inverse_out : std_logic_vector(23 downto 0);

    component full_s_box_inverse
        port (
            full_s_box_inverse_x : in std_logic_vector(23 downto 0);
            full_s_box_inverse_y : out std_logic_vector(23 downto 0)
        );
    end component full_s_box_inverse;
    component pi_3_inverse
        port (
            pi_3_inverse_x : in std_logic_vector(23 downto 0);
            pi_3_inverse_y : out std_logic_vector(23 downto 0)
        );
    end component pi_3_inverse;

begin
    r_prime_inverse0 : pi_3_inverse port map(r_prime_inverse_x, r_prime0_inverse_out);
    r_prime_inverse1 : full_s_box_inverse port map(r_prime0_inverse_out, r_prime_inverse_out);
    r_prime_inverse_y <= r_prime_inverse_out;
end Behavioral;