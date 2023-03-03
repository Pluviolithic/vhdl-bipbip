library IEEE;
use IEEE.std_logic_1164.all;

entity r_inverse is
    port (
        r_inverse_x : in std_logic_vector(23 downto 0);
        r_inverse_y : out std_logic_vector(23 downto 0)
    );
end r_inverse;

architecture Behavioral of r_inverse is
    signal r0_inverse_out : std_logic_vector(23 downto 0);
    signal r1_inverse_out : std_logic_vector(23 downto 0);
    signal r2_inverse_out : std_logic_vector(23 downto 0);
    signal r3_inverse_out : std_logic_vector(23 downto 0);

    component full_s_box_inverse
        port (
            full_s_box_inverse_x : in std_logic_vector(23 downto 0);
            full_s_box_inverse_y : out std_logic_vector(23 downto 0)
        );
    end component full_s_box_inverse;
    component pi_1_inverse
        port (
            pi_1_inverse_x : in std_logic_vector(23 downto 0);
            pi_1_inverse_y : out std_logic_vector(23 downto 0)
        );
    end component pi_1_inverse;
    component theta_d_inverse
        port (
            theta_d_inverse_x : in std_logic_vector(23 downto 0);
            theta_d_inverse_y : out std_logic_vector(23 downto 0)
        );
    end component theta_d_inverse;
    component pi_2_inverse
        port (
            pi_2_inverse_x : in std_logic_vector(23 downto 0);
            pi_2_inverse_y : out std_logic_vector(23 downto 0)
        );
    end component pi_2_inverse;

begin
    r0 : pi_2_inverse port map(r_inverse_x, r0_inverse_out);
    r1 : theta_d_inverse port map(r0_inverse_out, r1_inverse_out);
    r2 : pi_1_inverse port map(r1_inverse_out, r2_inverse_out);
    r3 : full_s_box_inverse port map(r2_inverse_out, r3_inverse_out);
    r_inverse_y <= r3_inverse_out;
end Behavioral;