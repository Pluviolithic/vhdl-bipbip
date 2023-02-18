library IEEE;
use IEEE.std_logic_1164.all;

entity decryptor is
    port (
        key : in std_logic_vector(255 downto 0);
        encrypted_address : in std_logic_vector(63 downto 0);
        decrypted_address : out std_logic_vector(63 downto 0)
    );
end decryptor;

architecture Behavioral of decryptor is
    signal k0 : std_logic_vector(23 downto 0);

    signal trk1 : std_logic_vector(52 downto 0);
    signal trk2 : std_logic_vector(52 downto 0);
    signal trk3 : std_logic_vector(52 downto 0);
    signal trk4 : std_logic_vector(52 downto 0);
    signal trk5 : std_logic_vector(52 downto 0);
    signal trk6 : std_logic_vector(52 downto 0);

    signal tweak : std_logic_vector(39 downto 0);
    signal tweak_star : std_logic_vector(52 downto 0);
    signal tweak_value : std_logic_vector(52 downto 0);

    signal data_round_key : std_logic_vector(23 downto 0);
    signal r_value : std_logic_vector(23 downto 0);

    signal ciphertext : std_logic_vector(23 downto 0);

    component chi is
        port (
            chi_x : in std_logic_vector(52 downto 0);
            chi_y : out std_logic_vector(52 downto 0)
        );
    end component;
    component r_prime is
        port (
            r_prime_x : in std_logic_vector(23 downto 0);
            r_prime_y : out std_logic_vector(23 downto 0)
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
    component r is
        port (
            r_x : in std_logic_vector(23 downto 0);
            r_y : out std_logic_vector(23 downto 0)
        );
    end component;
    component g_prime is
        port (
            g_prime_x : in std_logic_vector(52 downto 0);
            g_prime_y : out std_logic_vector(52 downto 0)
        );
    end component;

begin
    k0_generate_for: for i in 1 to 24 generate
        k0(i - 1) <= key((i ** i) mod 256);
    end generate k0_generate_for;

    -- trk = tweak round key
    trk1_generate_for: for i in 0 to 52 generate
        trk1(i) <= key((53 + i) mod 256);
    end generate trk1_generate_for;

    trk2_generate_for: for i in 0 to 52 generate
        trk2(i) <= key((53 * 2 + i) mod 256);
    end generate trk2_generate_for;

    trk3_generate_for: for i in 0 to 52 generate
        trk3(i) <= key((53 * 3 + i) mod 256);
    end generate trk3_generate_for;

    trk4_generate_for: for i in 0 to 52 generate
        trk4(i) <= key((53 * 4 + i) mod 256);
    end generate trk4_generate_for;

    trk5_generate_for: for i in 0 to 52 generate
        trk5(i) <= key((53 * 5 + i) mod 256);
    end generate trk5_generate_for;

    trk6_generate_for: for i in 0 to 52 generate
        trk6(i) <= key((53 * 6 + i) mod 256);
    end generate trk6_generate_for;

    tweak <= encrypted_address(63 downto 58) & encrypted_address(33 downto 0);
    tweak_star <= "1000000000000" & tweak;

    ciphertext <= encrypted_address(57 downto 34);

    tweak_value_1 : chi port map(tweak_star xor trk1, tweak_value);
    r_value_1 : r_prime port map(ciphertext xor k0, r_value);

    data_round_key_0 : e_0 port map(tweak_value, data_round_key);
    r_value_2 : r_prime port map(r_value xor data_round_key, r_value);

    data_round_key_1 : e_1 port map(tweak_value, data_round_key);
    r_value_3 : r_prime port map(r_value xor data_round_key, r_value);

    tweak_value_2 : g port map(tweak_value xor trk2, tweak_value);
    data_round_key_2 : e_0 port map(tweak_value, data_round_key);
    
    r_value_4 : r port map(r_value xor data_round_key, r_value);
    data_round_key_3 : e_1 port map(tweak_value, data_round_key);

    r_value_5 : r port map(r_value xor data_round_key, r_value); 
        
    tweak_value_3 : g port map(tweak_value xor trk3, tweak_value);
    tweak_value_4 : g_prime port map(tweak_value, tweak_value);
    
    data_round_key_4 : e_0 port map(tweak_value, data_round_key);
    r_value_6 : r port map(r_value xor data_round_key, r_value);
    
    tweak_value_5 : g port map(tweak_value xor trk4, tweak_value);
    data_round_key_5 : e_0 port map(tweak_value, data_round_key);

    r_value_7 : r port map(r_value xor data_round_key, r_value);

    tweak_value_6 : g_prime port map(tweak_value, tweak_value);
    data_round_key_6 : e_0 port map(tweak_value, data_round_key);

    r_value_8 : r port map(r_value xor data_round_key, r_value);
    tweak_value_7 : g port map(tweak_value xor trk5, tweak_value);

    data_round_key_7 : e_0 port map(tweak_value, data_round_key);
    r_value_9 : r_prime port map(r_value xor data_round_key, r_value);

    tweak_value_8 : g_prime port map(tweak_value, tweak_value);
    data_round_key_8 : e_0 port map(tweak_value, data_round_key);

    r_value_10 : r_prime port map(r_value xor data_round_key, r_value);

    tweak_value_9 : g port map(tweak_value xor trk6, tweak_value);
    data_round_key_9 : e_0 port map(tweak_value, data_round_key);
    
    r_value_11 : r_prime port map(r_value xor data_round_key, r_value);
    data_round_key_10 : e_1 port map(tweak_value, data_round_key);

    decrypted_address <= tweak(39 downto 34) & (r_value xor data_round_key) & tweak(33 downto 0);
    
end Behavioral;