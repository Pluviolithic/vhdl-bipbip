library IEEE;
use IEEE.std_logic_1164.all;

entity bipbip is
  port (
    key : in std_logic_vector(255 downto 0);
    plaintext_address : in std_logic_vector(63 downto 0);
    encrypted_address : out std_logic_vector(63 downto 0)
  );
end bipbip;

architecture Behavioral of bipbip is
  component encryptor is
    port (
      key : in std_logic_vector(255 downto 0);
      plaintext_address : in std_logic_vector(63 downto 0);
      encrypted_address : out std_logic_vector(63 downto 0)
    );
  end component;
  component decryptor is
    port (
      key : in std_logic_vector(255 downto 0);
      encrypted_address : in std_logic_vector(63 downto 0);
      decrypted_address : out std_logic_vector(63 downto 0)
    );
  end component;

  signal plaintext_address_1 : std_logic_vector(63 downto 0);
  signal encrypted_address_1 : std_logic_vector(63 downto 0);

begin
  encryptor_1 : encryptor port map(key, plaintext_address, encrypted_address_1);
  decryptor_1 : decryptor port map(key, encrypted_address_1, plaintext_address_1);
  encrypted_address <= encrypted_address_1;
end Behavioral;
