----------------PACOTES----------------
library IEEE; -- pacote padrão para trabalhar com lógica digital
use IEEE.STD_LOGIC_1164.ALL; -- pacote para sinais em std_logic
use IEEE.NUMERIC_STD.ALL; -- pacote para operações matemáticas com vetores binários
---------------ENTIDADES---------------
entity projeto4_placa is

  port(
    sw: in std_logic_vector(9 downto 0); -- vetor que armazena as combinações dos switches para entradas e seleção
    ledr: out std_logic_vector(1 downto 0)  -- vetor que controla os LEDs para exibir os dois bits da saída
  );

end entity;

----------------PROJETO----------------
architecture projeto4_placa of projeto4_placa is -- utiliza a arquitetura do projeto para definir a lógica de funcionamento entre os sinais

  -- Declaração de constantes para configurar o multiplexador
  constant M : integer := 2; -- número de bits por entrada
  constant S : integer := 2; -- número de bits para seleção
  constant N : integer := 4; -- número total de entradas (2^S)
  
  -- Declaração de sinais internos para processar as entradas e seleção
  signal entradas : std_logic_vector((N*M) - 1 downto 0); -- vetor para armazenar as entradas concatenadas
  signal selecao  : std_logic_vector(S-1 downto 0);       -- vetor para armazenar os bits de seleção
  signal saida    : std_logic_vector(M-1 downto 0);       -- vetor para armazenar a saída selecionada

begin
  -- Mapear as entradas a partir das chaves (switches) da placa
  -- Os primeiros 8 switches (sw[7:0]) são usados como entradas concatenadas
  entradas <= sw(7 downto 0); 
  
  -- Os dois últimos switches (sw[9:8]) são usados para selecionar uma das 4 entradas
  selecao  <= sw(9 downto 8);

  -- Lógica do multiplexador
  process (entradas, selecao) -- processa as entradas e os bits de seleção
    variable auxiliar : integer; -- variável auxiliar para calcular o índice da entrada selecionada
  begin
    -- Converter os bits de seleção para um índice numérico
    auxiliar := to_integer(unsigned(selecao)); 
    -- A saída é definida pelos bits correspondentes à entrada selecionada
    saida <= entradas(auxiliar*M + M-1 downto auxiliar*M);
  end process;

  -- Mapear a saída do multiplexador para os LEDs da placa
  -- Os LEDs (ledr[1:0]) exibem os dois bits da saída selecionada
  ledr <= saida;

end architecture;
