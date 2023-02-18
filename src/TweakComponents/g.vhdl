library IEEE;
use IEEE.numeric_bit.all;

entity g is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(52 downto 0)
    );
end g;

architecture Behavioral of g is

    signal g0_out : bit_vector(52 downto 0);
    signal g1_out : bit_vector(52 downto 0);
    signal g2_out : bit_vector(52 downto 0);
    signal g3_out : bit_vector(52 downto 0);

    component chi
        port (
            x : in bit_vector(52 downto 0);
            y : out bit_vector(52 downto 0)
        );
    end component chi;
    component pi_5
        port (
            x : in bit_vector(52 downto 0);
            y : out bit_vector(52 downto 0)
        );
    end component pi_5;
    component theta_t
        port (
            x : in bit_vector(52 downto 0);
            y : out bit_vector(52 downto 0)
        );
    end component theta_t;
    component pi_4
        port (
            x : in bit_vector(52 downto 0);
            y : out bit_vector(52 downto 0)
        );
    end component pi_4;

begin
    g0 : chi port map(x, g0_out);
    g1 : pi_5 port map(g0_out, g1_out);
    g2 : theta_t port map(g1_out, g2_out);
    g3 : pi_4 port map(g2_out, g3_out);
    y <= g3_out;
end Behavioral;