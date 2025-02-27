----------------PACOTES----------------
library ieee;
use ieee.std_logic_1164.all;
---------------ENTIDADES---------------

--A entidade projeto2 utiliza as portas sw1, sw2, sw3 e sw4 como entrada do sinal e a saida z,
entity projeto2 is 
--portas sw1 a sw4 são entradas switches, STD_LOGIC é o tipo de entrada (binário, assumindo valores 0 ou 1)
	port (sw1, sw2, sw3, sw4: in STD_LOGIC; 
			z: out STD_LOGIC); --porta z é uma saída em LED também assumindo valores 0 ou 1 (apagado ou aceso)
end entity;
----------------PROJETO----------------
architecture projeto2 of projeto2 is --utiliza a arquitetura do próprio projeto para definir a função e operação entre as portas usadas

begin --inicia o bloco de comando do projeto
--porta z recebe as combinações em que o led acende a partir dessas combinações
--para o caso de o sw1 e sw4 ativos ao mesmo tempo, o LED não acende, mas se sw2 e/ou sw3 estiverem ativos também, o LED acenderá
	z <= (NOT sw1 AND NOT sw2) OR
		  (NOT sw1 AND NOT sw3) OR
		  (NOT sw2 AND NOT sw3) OR
		  (NOT sw2 AND NOT sw4) OR
		  (NOT sw3 AND NOT sw4); --a porta z recebe o sinal a partir das combinações entre sw1, sw2, sw3 e sw4
end architecture;