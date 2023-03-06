library IEEE;
use IEEE.std_logic_1164.all;

entity encryptor is
  port (
    key : in std_logic_vector(255 downto 0);
    plaintext_address : in std_logic_vector(63 downto 0);
    encrypted_address : out std_logic_vector(63 downto 0)
  );
end encryptor;

architecture Behavioral of encryptor is
  signal k0 : std_logic_vector(23 downto 0);

  signal trk1 : std_logic_vector(52 downto 0);
  signal trk2 : std_logic_vector(52 downto 0);
  signal trk3 : std_logic_vector(52 downto 0);
  signal trk4 : std_logic_vector(52 downto 0);
  signal trk5 : std_logic_vector(52 downto 0);
  signal trk6 : std_logic_vector(52 downto 0);

  signal tweak : std_logic_vector(39 downto 0);
  signal tweak_star : std_logic_vector(52 downto 0);

  signal tweak_value0 : std_logic_vector(52 downto 0);
  signal tweak_value1 : std_logic_vector(52 downto 0);
  signal tweak_value2 : std_logic_vector(52 downto 0);
  signal tweak_value3 : std_logic_vector(52 downto 0);
  signal tweak_value4 : std_logic_vector(52 downto 0);
  signal tweak_value5 : std_logic_vector(52 downto 0);
  signal tweak_value6 : std_logic_vector(52 downto 0);
  signal tweak_value7 : std_logic_vector(52 downto 0);
  signal tweak_value8 : std_logic_vector(52 downto 0);

  signal data_round_key0 : std_logic_vector(23 downto 0);
  signal data_round_key1 : std_logic_vector(23 downto 0);
  signal data_round_key2 : std_logic_vector(23 downto 0);
  signal data_round_key3 : std_logic_vector(23 downto 0);
  signal data_round_key4 : std_logic_vector(23 downto 0);
  signal data_round_key5 : std_logic_vector(23 downto 0);
  signal data_round_key6 : std_logic_vector(23 downto 0);
  signal data_round_key7 : std_logic_vector(23 downto 0);
  signal data_round_key8 : std_logic_vector(23 downto 0);
  signal data_round_key9 : std_logic_vector(23 downto 0);
  signal data_round_key10 : std_logic_vector(23 downto 0);

  signal r_value0 : std_logic_vector(23 downto 0);
  signal r_value1 : std_logic_vector(23 downto 0);
  signal r_value2 : std_logic_vector(23 downto 0);
  signal r_value3 : std_logic_vector(23 downto 0);
  signal r_value4 : std_logic_vector(23 downto 0);
  signal r_value5 : std_logic_vector(23 downto 0);
  signal r_value6 : std_logic_vector(23 downto 0);
  signal r_value7 : std_logic_vector(23 downto 0);
  signal r_value8 : std_logic_vector(23 downto 0);
  signal r_value9 : std_logic_vector(23 downto 0);
  signal r_value10 : std_logic_vector(23 downto 0);

  signal xor_input0 : std_logic_vector(52 downto 0);
  signal xor_input1 : std_logic_vector(52 downto 0);
  signal xor_input2 : std_logic_vector(52 downto 0);
  signal xor_input3 : std_logic_vector(52 downto 0);
  signal xor_input4 : std_logic_vector(52 downto 0);
  signal xor_input5 : std_logic_vector(52 downto 0);

  signal xor_input6 : std_logic_vector(23 downto 0);
  signal xor_input7 : std_logic_vector(23 downto 0);
  signal xor_input8 : std_logic_vector(23 downto 0);
  signal xor_input9 : std_logic_vector(23 downto 0);
  signal xor_input10 : std_logic_vector(23 downto 0);
  signal xor_input11 : std_logic_vector(23 downto 0);
  signal xor_input12 : std_logic_vector(23 downto 0);
  signal xor_input13 : std_logic_vector(23 downto 0);
  signal xor_input14 : std_logic_vector(23 downto 0);
  signal xor_input15 : std_logic_vector(23 downto 0);
  signal xor_input16 : std_logic_vector(23 downto 0);

  signal plaintext : std_logic_vector(23 downto 0);

  component chi is
    port (
      chi_x : in std_logic_vector(52 downto 0);
      chi_y : out std_logic_vector(52 downto 0)
    );
  end component;
  component r_prime_inverse is
    port (
      r_prime_inverse_x : in std_logic_vector(23 downto 0);
      r_prime_inverse_y : out std_logic_vector(23 downto 0)
    );
  end component;
  component e_0 is
    port (
      e_0_x : in std_logic_vector(52 downto 0);
      e_0_y : out std_logic_vector(23 downto 0)
    );
  end component;
  component e_1 is
    port (
      e_1_x : in std_logic_vector(52 downto 0);
      e_1_y : out std_logic_vector(23 downto 0)
    );
  end component;
  component g is
    port (
      g_x : in std_logic_vector(52 downto 0);
      g_y : out std_logic_vector(52 downto 0)
    );
  end component;
  component r_inverse is
    port (
      r_inverse_x : in std_logic_vector(23 downto 0);
      r_inverse_y : out std_logic_vector(23 downto 0)
    );
  end component;
  component g_prime is
    port (
      g_prime_x : in std_logic_vector(52 downto 0);
      g_prime_y : out std_logic_vector(52 downto 0)
    );
  end component;
begin
  k0_generate_for : for i in 1 to 24 generate
    k0(i - 1) <= key((i ** i) mod 256);
  end generate k0_generate_for;

  -- trk = tweak round key
  trk1_generate_for : for i in 0 to 52 generate
    trk1(i) <= key((53 + i) mod 256);
  end generate trk1_generate_for;

  trk2_generate_for : for i in 0 to 52 generate
    trk2(i) <= key((53 * 2 + i) mod 256);
  end generate trk2_generate_for;

  trk3_generate_for : for i in 0 to 52 generate
    trk3(i) <= key((53 * 3 + i) mod 256);
  end generate trk3_generate_for;

  trk4_generate_for : for i in 0 to 52 generate
    trk4(i) <= key((53 * 4 + i) mod 256);
  end generate trk4_generate_for;

  trk5_generate_for : for i in 0 to 52 generate
    trk5(i) <= key((53 * 5 + i) mod 256);
  end generate trk5_generate_for;

  trk6_generate_for : for i in 0 to 52 generate
    trk6(i) <= key((53 * 6 + i) mod 256);
  end generate trk6_generate_for;

  tweak <= plaintext_address(63 downto 58) & plaintext_address(33 downto 0);
  tweak_star <= "1000000000000" & tweak;

  plaintext <= plaintext_address(57 downto 34);

  xor_input0 <= tweak_star xor trk1;
  encryptor0 : chi port map(xor_input0, tweak_value0);
  encryptor1 : e_0 port map(tweak_value0, data_round_key0);
  encryptor2 : e_1 port map(tweak_value0, data_round_key1);

  xor_input1 <= tweak_value0 xor trk2;
  encryptor3 : g port map(xor_input1, tweak_value1);
  encryptor4 : e_0 port map(tweak_value1, data_round_key2);
  encryptor5 : e_1 port map(tweak_value1, data_round_key3);

  xor_input2 <= tweak_value1 xor trk3;
  encryptor6 : g port map(xor_input2, tweak_value2);
  encryptor7 : g_prime port map(tweak_value2, tweak_value3);
  encryptor8 : e_0 port map(tweak_value3, data_round_key4);

  xor_input3 <= tweak_value3 xor trk4;
  encryptor9 : g port map(xor_input3, tweak_value4);
  encryptor10 : e_0 port map(tweak_value4, data_round_key5);
  encryptor11 : g_prime port map(tweak_value4, tweak_value5);
  encryptor12 : e_0 port map(tweak_value5, data_round_key6);

  xor_input4 <= tweak_value5 xor trk5;
  encryptor13 : g port map(xor_input4, tweak_value6);
  encryptor14 : e_0 port map(tweak_value6, data_round_key7);

  encryptor15 : g_prime port map(tweak_value6, tweak_value7);
  encryptor16 : e_0 port map(tweak_value7, data_round_key8);

  xor_input5 <= tweak_value7 xor trk6;
  encryptor17 : g port map(xor_input5, tweak_value8);
  encryptor18 : e_0 port map(tweak_value8, data_round_key9);
  encryptor19 : e_1 port map(tweak_value8, data_round_key10);

  xor_input6 <= plaintext xor data_round_key10;
  encryptor20 : r_prime_inverse port map(xor_input6, r_value0);

  xor_input7 <= r_value0 xor data_round_key9;
  encryptor21 : r_prime_inverse port map(xor_input7, r_value1);

  xor_input8 <= r_value1 xor data_round_key8;
  encryptor22 : r_prime_inverse port map(xor_input8, r_value2);

  xor_input9 <= r_value2 xor data_round_key7;
  encryptor23 : r_inverse port map(xor_input9, r_value3);

  xor_input10 <= r_value3 xor data_round_key6;
  encryptor24 : r_inverse port map(xor_input10, r_value4);

  xor_input11 <= r_value4 xor data_round_key5;
  encryptor25 : r_inverse port map(xor_input11, r_value5);

  xor_input12 <= r_value5 xor data_round_key4;
  encryptor26 : r_inverse port map(xor_input12, r_value6);

  xor_input13 <= r_value6 xor data_round_key3;
  encryptor27 : r_inverse port map(xor_input13, r_value7);

  xor_input14 <= r_value7 xor data_round_key2;
  encryptor28 : r_prime_inverse port map(xor_input14, r_value8);

  xor_input15 <= r_value8 xor data_round_key1;
  encryptor29 : r_prime_inverse port map(xor_input15, r_value9);

  xor_input16 <= r_value9 xor data_round_key0;
  encryptor30 : r_prime_inverse port map(xor_input16, r_value10);

  encrypted_address <= tweak(39 downto 34) & (r_value10 xor k0) & tweak(33 downto 0);

end Behavioral;
