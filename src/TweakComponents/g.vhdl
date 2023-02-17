library IEEE;
use IEEE.numeric_bit.all;

entity g is
    port (
        x : in bit_vector(52 downto 0);
        y : out bit_vector(52 downto 0)
    );
end g;

architecture Behavioral of g is
    component chi
        port (
            s_box_x : in bit_vector(52 downto 0);
            s_box_y : out bit_vector(52 downto 0)
        );
    end component chi;
    component pi_5
        port (
            s_box_x : in bit_vector(52 downto 0);
            s_box_y : out bit_vector(52 downto 0)
        );
    end component pi_5;
    component theta_t
        port (
            s_box_x : in bit_vector(52 downto 0);
            s_box_y : out bit_vector(52 downto 0)
        );
    end component theta_t;
    component pi_4
        port (
            s_box_x : in bit_vector(52 downto 0);
            s_box_y : out bit_vector(52 downto 0)
        );
    end component pi_4;

begin
    g0 : chi port map(x, y);
    g1 : pi_5 port map(y, y);
    g2 : theta_t port map(y, y);
    g3 : pi_4 port map(y, y);
end Behavioral;