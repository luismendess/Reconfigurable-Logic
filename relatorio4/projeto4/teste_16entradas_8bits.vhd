library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity teste_16entradas_8bits is
end entity;

architecture teste_16entradas_8bits of teste_16entradas_8bits is
    -- Sinais para o teste
    signal Entradas_sim : std_logic_vector(127 downto 0); -- 16 entradas de 8 bits
    signal Selecao_sim  : std_logic_vector(3 downto 0);   -- 4 bits de seleção
    signal Saida_sim    : std_logic_vector(7 downto 0);   -- Saída de 8 bits
begin
    -- Instância do multiplexador
    Multiplexador_UUT: entity work.projeto4
        generic map (
            S => 4,  -- 4 bits de seleção (16 entradas)
            M => 8   -- 8 bits por entrada
        )
        port map (
            Entradas => Entradas_sim,
            Selecao  => Selecao_sim,
            Saida    => Saida_sim
        );

    -- Processo de estímulo
    estimulo: process
    begin
        -- Inicializa as entradas com valores conhecidos
        Entradas_sim <= "00000001" & "00000010" & "00000011" & "00000100" & 
                        "00000101" & "00000110" & "00000111" & "00001000" &
                        "00001001" & "00001010" & "00001011" & "00001100" &
                        "00001101" & "00001110" & "00001111" & "00010000";
                        
        -- Testa todas as seleções possíveis
        for i in 0 to 15 loop
            Selecao_sim <= std_logic_vector(to_unsigned(i, 4)); -- Seleciona a entrada i
            wait for 10 ns; -- Aguarda 10 ns para observar a saída
        end loop;

        -- Fim da simulação
        wait;
    end process;
end architecture;
