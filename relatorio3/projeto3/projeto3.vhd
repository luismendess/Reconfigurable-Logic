----------------PACOTES----------------
library ieee;
use ieee.std_logic_1164.all;
---------------ENTIDADES---------------
entity projeto3 is

  port (
    switches1, switches2 : in std_logic_vector (3 downto 0); --vetor que armazena as combinações dos switches em binário permitindo
    --gerar os valores de 0 a 9
    SSD1, SSD2 : out std_logic_vector (7 downto 0)
  ); --armazena o byte que representa o display permitindo acender apenas os segmentos
  --desejados
end entity;
----------------PROJETO----------------
architecture projeto3 of projeto3 is --utiliza a arquitetura do próprio projeto para definir a função e operação entre as portas usadas

begin --inicia o bloco de comando do projeto
  --bloco de código que atua na combinação dos 4 primeiros switches e ativa o primeiro display (da direita para a esquerda)
  with switches1 select

    --display da direita 
    --cada bit do primeiro conjunto representa um segmento do display --cada bit do segundo conjunto representa um switch da placa, 
    --da direita para a esquerda	
    SSD1 <= "11000000" when "0000", --0 --ativa os segmentos 0,1,2,3,4,5
    "11111001" when "0001", --1 --ativa os segmentos 1,2
    "10100100" when "0010", --2 --ativa os segmentos 0,1,3,4,6
    "10110000" when "0011", --3 --ativa os segmentos 0,1,2,3,6
    "10011001" when "0100", --4 --ativa os segmentos 1,2,5,6
    "10010010" when "0101", --5 --ativa os segmentos 0,2,3,5,6
    "10000010" when "0110", --6 --ativa os segmentos 0,2,3,4,5,6
    "11111000" when "0111", --7 --ativa os segmentos 0,1,2
    "10000000" when "1000", --8 --ativa todos os segmentos
    "10010000" when "1001", --9  --ativa os segmentos 0,1,2,3,5,6
    "00000000" when others;--tudo
  --bloco de código que atua na combinação dos 4 próximos switches e ativa o segundo display (da direita para a esquerda)
  with switches2 select

    --display da esquerda 
    --cada bit do primeiro conjunto representa um segmento do display --cada bit do segundo conjunto representa um switch da placa, 
    --da direita para a esquerda, os switches 5, 6,
    SSD2 <= "11000000" when "0000", --0 --ativa os segmentos 0,1,2,3,4,5
    "11111001" when "0001", --1 --ativa os segmentos 1,2
    "10100100" when "0010", --2 --ativa os segmentos 0,1,3,4,6
    "10110000" when "0011", --3 --ativa os segmentos 0,1,2,3,6
    "10011001" when "0100", --4 --ativa os segmentos 1,2,5,6
    "10010010" when "0101", --5 --ativa os segmentos 0,2,3,5,6
    "10000010" when "0110", --6 --ativa os segmentos 0,2,3,4,5,6
    "11111000" when "0111", --7 --ativa os segmentos 0,1,2
    "10000000" when "1000", --8 --ativa todos os segmentos
    "10010000" when "1001", --9  --ativa os segmentos 0,1,2,3,5,6
    "00000000" when others;--tudo

end architecture;