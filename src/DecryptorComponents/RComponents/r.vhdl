library IEEE;
use IEEE.std_logic_1164.all;

entity r is
  port (
    r_x : in std_logic_vector(23 downto 0);
    r_y : out std_logic_vector(23 downto 0)
  );
end r;

architecture Behavioral of r is
  signal r0_out : std_logic_vector(23 downto 0);
  signal r1_out : std_logic_vector(23 downto 0);
  signal r2_out : std_logic_vector(23 downto 0);
  signal r3_out : std_logic_vector(23 downto 0);

  component full_s_box
    port (
      full_s_box_x : in std_logic_vector(23 downto 0);
      full_s_box_y : out std_logic_vector(23 downto 0)
    );
  end component full_s_box;
  component pi_1
    port (
      pi_1_x : in std_logic_vector(23 downto 0);
      pi_1_y : out std_logic_vector(23 downto 0)
    );
  end component pi_1;
  component theta_d
    port (
      theta_d_x : in std_logic_vector(23 downto 0);
      theta_d_y : out std_logic_vector(23 downto 0)
    );
  end component theta_d;
  component pi_2
    port (
      pi_2_x : in std_logic_vector(23 downto 0);
      pi_2_y : out std_logic_vector(23 downto 0)
    );
  end component pi_2;

begin
  r0 : full_s_box port map(r_x, r0_out);
  r1 : pi_1 port map(r0_out, r1_out);
  r2 : theta_d port map(r1_out, r2_out);
  r3 : pi_2 port map(r2_out, r3_out);
  r_y <= r3_out;
end Behavioral;
