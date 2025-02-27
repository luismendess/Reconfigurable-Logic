library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LuzesPiscando is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        enable : in std_logic;
        speed : in std_logic_vector(1 downto 0);
        leds : out std_logic_vector(9 downto 0)
    );
end entity;


architecture LuzesPiscando of LuzesPiscando is
    signal counter : integer range 0 to 19 := 0;
    signal led_state : std_logic_vector(9 downto 0) := (others => '0');
    signal speed_counter : integer := 0;
begin
    process (clk, reset)
    begin
        if reset = '0' then
            counter <= 0;
            led_state <= (others => '0');
            leds <= (others => '0');
        elsif rising_edge(clk) then
            if enable = '1' then
                case speed is
                    when "00" => speed_counter <= speed_counter + 1;
                    when "01" => speed_counter <= speed_counter + 2;
                    when "10" => speed_counter <= speed_counter + 4;
                    when others => speed_counter <= speed_counter + 1;
                end case;

                if speed_counter >= 50 then  -- Ajuste para a velocidade desejada
                    speed_counter <= 0;
                    if counter < 10 then
                        led_state <= (others => '0');
                        led_state(counter) <= '1';
                    else
                        led_state <= (others => '0');
                        led_state(19 - counter) <= '1';
                    end if;
                    counter <= (counter + 1) mod 20;
                end if;
            end if;
        end if;
    end process;
    leds <= led_state;
end architecture;