library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
---------------------------------------
entity exercicio3 is
    port (
        clk: in bit;
        count1, count2: out natural range 0 to 10
    );
end entity;
---------------------------------------
architecture exercicio3 of exercicio3 is
    signal internal_count1: natural range 0 to 10 := 0;
begin

    counter1: process(clk)
    begin
        if clk'event and clk = '1' then
            internal_count1 <= internal_count1 + 1;
            if internal_count1 = 10 then
                internal_count1 <= 0;
            end if;
        end if;
        count1 <= internal_count1; -- Atribuição ao sinal de saída
    end process counter1;
    
    counter2: process(clk)
        variable var: natural range 0 to 10;
    begin
        if clk'event and clk = '1' then
            var := var + 1;
            if var = 10 then
                var := 0;
            end if;
        end if;
        count2 <= var;
    end process counter2;

end architecture;
---------------------------------------
