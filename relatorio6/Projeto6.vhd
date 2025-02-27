-- Arquivo principal Projeto6.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.my_types_pkg.all;

entity Projeto6 is
    generic(
        num_bits    : natural := 4;
        num_inputs  : natural := 2
    );
    port(
        entrada1, entrada2: in unsigned(num_bits-1 downto 0);
        min_seg : out std_logic_vector(7 downto 0);
        max_seg : out std_logic_vector(7 downto 0)
    );
end entity;

architecture rtl of Projeto6 is
    signal x : unsigned_array(0 to num_inputs-1)(num_bits-1 downto 0);
    signal min_val, max_val : unsigned(num_bits-1 downto 0);

    component bin_to_7seg is
        port(
            bin : in unsigned(3 downto 0);
            seg : out std_logic_vector(7 downto 0)
        );
    end component;

begin
    x <= (entrada1, entrada2);

    process(x)
        variable temp_min, temp_max : unsigned(num_bits-1 downto 0);
    begin
        temp_min := x(0);
        temp_max := x(0);
        for i in 1 to num_inputs-1 loop
            if x(i) < temp_min then
                temp_min := x(i);
            end if;
            if x(i) > temp_max then
                temp_max := x(i);
            end if;
        end loop;
        min_val <= temp_min;
        max_val <= temp_max;
    end process;

    min_decoder: bin_to_7seg
        port map(min_val, min_seg);

    max_decoder: bin_to_7seg
        port map(max_val, max_seg);
end architecture;

-- Arquivo bin_to_7seg.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 

entity bin_to_7seg is
    port(
        bin : in unsigned(3 downto 0);
        seg : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavior of bin_to_7seg is
begin
    process(bin)
    begin
        case bin is
            when "0000" => seg <= "11000000"; -- 0
            when "0001" => seg <= "11111001"; -- 1
            when "0010" => seg <= "10100100"; -- 2
            when "0011" => seg <= "10110000"; -- 3
            when "0100" => seg <= "10011001"; -- 4
            when "0101" => seg <= "10010010"; -- 5
            when "0110" => seg <= "10000010"; -- 6
            when "0111" => seg <= "11111000"; -- 7
            when "1000" => seg <= "10000000"; -- 8
            when "1001" => seg <= "10010000"; -- 9
				when "1010" => seg <= "10001000"; -- 10 (A)
				when "1011" => seg <= "10000011"; -- 11 (B)
				when "1100" => seg <= "11000110"; -- 12 (C)
				when "1101" => seg <= "10100001"; -- 13 (d)
				when "1110" => seg <= "10000110"; -- 14 (E)
				when "1111" => seg <= "10001110"; -- 15 (F)
            when others => seg <= "01111111";
        end case;
    end process;
end architecture;