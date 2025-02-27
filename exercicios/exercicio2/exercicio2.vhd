----------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
----------------------------------------------
entity exercicio2 is
    generic (
        max: natural := 6;
        bits: natural := 3);
    port (
        clk: in std_logic;
        count: out std_logic_vector(bits-1 downto 0);
        is_max: out std_logic);
end entity;
----------------------------------------------
architecture exercicio2 of exercicio2 is
    signal i: natural range 0 to max; -- contador
begin
    P1: process(clk)
    begin
        if rising_edge(clk) then
            if i = MAX - 1 then
                is_max <= '1';
                i <= i + 1;
            elsif i = MAX then
                is_max <= '0';
                i <= 0;
            else
                i <= i + 1;
            end if;
        end if;
    end process;
--    
--    P2: process(clk)
--    begin
--        if rising_edge(clk) then
--        
--            -- Contador:
--            if i /= max then
--                i <= i + 1;
--            else
--                i <= 0;
--            end if;
--          
--            -- Gerador da flag:
--            if i = max - 1 then
--                is_max <= '1';
--            else
--                is_max <= '0';
--            end if;
--        end if;
--    end process;
    
    count <= std_logic_vector(to_unsigned(i, bits));

end architecture;
----------------------------------------------