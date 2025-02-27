library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; -- Apenas esta biblioteca para tipos numéricos

-- Entidade do multiplexador genérico
entity projeto4 is
    generic (
        S : integer := 2; -- Número de bits de seleção
        M : integer := 8  -- Número de bits por entrada
    );
    port (
        Entradas : in  std_logic_vector((2**S)*M - 1 downto 0); -- Entradas concatenadas
        Selecao  : in  std_logic_vector(S-1 downto 0);          -- Entradas de seleção
        Saida    : out std_logic_vector(M-1 downto 0)          -- Saída selecionada
    );
end entity;

-- Arquitetura do multiplexador genérico
architecture projeto4 of projeto4 is
begin
    process (Entradas, Selecao)
        variable Index : integer;
    begin
        -- Converte o vetor de seleção para um índice inteiro
        Index := to_integer(unsigned(Selecao));
        -- Seleciona a fatia correta das entradas para a saída
        Saida <= Entradas(Index*M + M-1 downto Index*M);
    end process;
end architecture;
