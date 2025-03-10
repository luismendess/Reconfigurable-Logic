library ieee;
use ieee.std_logic_1164.all;
---------------------------------------
entity exercicio4 is
    generic (
        f_clk: integer := 50_000_000); -- Frequência do clock, em Hz
    port (
        clk: in std_logic;
        led: out bit);
end entity;
---------------------------------------
architecture exercicio4 of exercicio4 is
    constant tempo_piscar: integer := f_clk/2; -- Meio segundo
begin

    process(clk)
        variable contador: integer range 0 to f_clk'high; -- Variável contadora
    begin
        if rising_edge(clk) then -- A cada subida de clock
            if contador < tempo_piscar then -- Se o contador for menor 
                contador := contador + 1;   -- que o tempo, incrementar
            elsif led = '0' then -- Se o contador é igual o tempo
                led <= '1';      -- e o LED estiver apagado, acender
                contador := 0;   -- Zerar o contador
            else                 -- Se estiver aceso, apagar
                led <= '0';
                contador := 0;
            end if;
        end if;
    end process;

end architecture;
---------------------------------------