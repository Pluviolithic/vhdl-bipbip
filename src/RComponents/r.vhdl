library IEEE;
use IEEE.numeric_bit.all;

entity r is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end r;

architecture Behavioral of r is
    component full_s_box
        port (
            s_box_x : in bit_vector(23 downto 0);
            s_box_y : out bit_vector(23 downto 0)
        );
    end component full_s_box;
    component pi_1
        port (
            pi_1_x : in bit_vector(23 downto 0);
            pi_1_y : out bit_vector(23 downto 0)
        );
    end component pi_1;
    component theta_d
        port (
            theta_d_x : in bit_vector(23 downto 0);
            theta_d_y : out bit_vector(23 downto 0)
        );
    end component theta_d;
    component pi_2
        port (
            pi_2_x : in bit_vector(23 downto 0);
            pi_2_y : out bit_vector(23 downto 0)
        );
    end component pi_2;

begin
    r0 : full_s_box port map(x, y);
    r1 : pi_1 port map(y, y);
    r2 : theta_d port map(y, y);
    r3 : pi_2 port map(y, y);
end Behavioral;