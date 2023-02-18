library IEEE;
use IEEE.numeric_bit.all;

entity g is
    port (
        g_x : in bit_vector(52 downto 0);
        g_y : out bit_vector(52 downto 0)
    );
end g;

architecture Behavioral of g is

    signal g0_out : bit_vector(52 downto 0);
    signal g1_out : bit_vector(52 downto 0);
    signal g2_out : bit_vector(52 downto 0);
    signal g3_out : bit_vector(52 downto 0);

    component chi
        port (
            chi_x : in bit_vector(52 downto 0);
            chi_y : out bit_vector(52 downto 0)
        );
    end component chi;
    component pi_5
        port (
            pi_5_x : in bit_vector(52 downto 0);
            pi_5_y : out bit_vector(52 downto 0)
        );
    end component pi_5;
    component theta_t
        port (
            theta_t_x : in bit_vector(52 downto 0);
            theta_t_y : out bit_vector(52 downto 0)
        );
    end component theta_t;
    component pi_4
        port (
            pi_4_x : in bit_vector(52 downto 0);
            pi_4_y : out bit_vector(52 downto 0)
        );
    end component pi_4;

begin
    g0 : chi port map(g_x, g0_out);
    g1 : pi_5 port map(g0_out, g1_out);
    g2 : theta_t port map(g1_out, g2_out);
    g3 : pi_4 port map(g2_out, g3_out);
    g_y <= g3_out;
end Behavioral;