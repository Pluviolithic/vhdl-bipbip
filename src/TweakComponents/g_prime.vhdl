library IEEE;
use IEEE.std_logic_1164.all;

entity g_prime is
    port (
        g_prime_x : in std_logic_vector(52 downto 0);
        g_prime_y : out std_logic_vector(52 downto 0)
    );
end g_prime;

architecture Behavioral of g_prime is

    signal g_prime_out : std_logic_vector(52 downto 0);
    signal g0_out : std_logic_vector(52 downto 0);
    signal g1_out : std_logic_vector(52 downto 0);
    signal g2_out : std_logic_vector(52 downto 0);
    signal g3_out : std_logic_vector(52 downto 0);

    component chi
        port (
            chi_x : in std_logic_vector(52 downto 0);
            chi_y : out std_logic_vector(52 downto 0)
        );
    end component chi;
    component pi_5
        port (
            pi_5_x : in std_logic_vector(52 downto 0);
            pi_5_y : out std_logic_vector(52 downto 0)
        );
    end component pi_5;
    component theta_prime
        port (
            theta_prime_x : in std_logic_vector(52 downto 0);
            theta_prime_y : out std_logic_vector(52 downto 0)
        );
    end component theta_prime;
    component pi_4
        port (
            pi_4_x : in std_logic_vector(52 downto 0);
            pi_4_y : out std_logic_vector(52 downto 0)
        );
    end component pi_4;

begin
    g0 : chi port map(g_prime_x, g0_out);
    g1 : pi_5 port map(g0_out, g1_out);
    g2 : theta_prime port map(g1_out, g2_out);
    g3 : pi_4 port map(g2_out, g_prime_out);
    g_prime_y <= g_prime_out;
end Behavioral;