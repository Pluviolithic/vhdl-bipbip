library IEEE;
use IEEE.numeric_bit.all;

entity r is
    port (
        x : in bit_vector(23 downto 0);
        y_out : out bit_vector(23 downto 0)
    );
end r;

architecture Behavioral of r is
    signal y : bit_vector(23 downto 0);

    component full_s_box
        port (
            x : in bit_vector(23 downto 0);
            y_out : out bit_vector(23 downto 0)
        );
    end component full_s_box;
    component pi_1
        port (
            x : in bit_vector(23 downto 0);
            y_out : out bit_vector(23 downto 0)
        );
    end component pi_1;
    component theta_d
        port (
            x : in bit_vector(23 downto 0);
            y_out : out bit_vector(23 downto 0)
        );
    end component theta_d;
    component pi_2
        port (
            x : in bit_vector(23 downto 0);
            y_out : out bit_vector(23 downto 0)
        );
    end component pi_2;

begin
    r0 : full_s_box port map(x, y);
    r1 : pi_1 port map(y, y);
    r2 : theta_d port map(y, y);
    r3 : pi_2 port map(y, y);
    y_out <= y;
end Behavioral;