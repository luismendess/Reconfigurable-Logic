library ieee;
use ieee.std_logic_1164.all;
--------------------------------------
entity exercicio1 is
    port (q: out std_logic;
          d, rst, clk: in std_logic);
end entity;
--------------------------------------
architecture exercicio1 of exercicio1 is
begin

--    P1: process (clk, rst)
--    begin
--        if rst = '1' then
--            q <= '0';
--        elsif rising_edge(clk) then
--            q <= d;
--        end if;
--    end process;

    P2: process
    begin
        -- wait until rising_edge(clk)
        wait until clk = '1'; -- equivalentes
        q <= d;
    end process;

end architecture;
--------------------------------------