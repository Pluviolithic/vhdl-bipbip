library IEEE;
use IEEE.numeric_bit.all;

entity r is
    port (
        x : in bit_vector(23 downto 0);
        y : out bit_vector(23 downto 0)
    );
end r;

architecture Behavioral of r is
    signal r0_out : bit_vector(23 downto 0);
    signal r1_out : bit_vector(23 downto 0);
    signal r2_out : bit_vector(23 downto 0);
    signal r3_out : bit_vector(23 downto 0);

    component full_s_box
        port (
            x : in bit_vector(23 downto 0);
            y : out bit_vector(23 downto 0)
        );
    end component full_s_box;
    component pi_1
        port (
            x : in bit_vector(23 downto 0);
            y : out bit_vector(23 downto 0)
        );
    end component pi_1;
    component theta_d
        port (
            x : in bit_vector(23 downto 0);
            y : out bit_vector(23 downto 0)
        );
    end component theta_d;
    component pi_2
        port (
            x : in bit_vector(23 downto 0);
            y : out bit_vector(23 downto 0)
        );
    end component pi_2;

begin
    r0 : full_s_box port map(x, r0_out);
    r1 : pi_1 port map(r0_out, r1_out);
    r2 : theta_d port map(r1_out, r2_out);
    r3 : pi_2 port map(r2_out, r3_out);
    y <= r3_out;
end Behavioral;