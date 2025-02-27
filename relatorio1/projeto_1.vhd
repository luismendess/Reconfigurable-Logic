----------------PACOTES----------------
library ieee;
use ieee.std_logic_1164.all ;
---------------ENTIDADES---------------

--A entidade projeto_1 utiliza as portas a e b como entrada do sinal e as portas de s a z como saída,
entity projeto_1 is 
	port (a, b: in bit;
			s, t, u, v, w, x, y, z: out bit);
end entity;
----------------PROJETO----------------
architecture projeto_1 of projeto_1 is --utiliza a arquitetura do próprio projeto para definir a função e operação entre as portas usadas

begin --inicia o bloco de comando do projeto
	z <= a and b; --a porta z recebe o sinal a partir de uma porta lógica E com entradas de a e b
	y <= a or b; --a porta y recebe o sinal a partir de uma porta lógica OU com entradas de a e b
	x <= not a; --a porta x recebe o sinal a partir de uma porta lógica NÃO com entrada de a
	w <= not b;--a porta w recebe o sinal a partir de uma porta lógica NÃO com entrada de b
	v <= a nand b; --a porta v recebe o sinal a partir de uma porta lógica NÃO/E com entradas de a e b
	u <= a nor b; --a porta u recebe o sinal a partir de uma porta lógica NÃO/OU com entradas de a e b
	t <= a xor b; --a porta t recebe o sinal a partir de uma porta lógica EXCLUSIVO com entradas de a e b
	s <= a xnor b; --a porta S recebe o sinal a partir de uma porta lógica NÃO/EXCLUSIVO com entradas de a e b
end architecture;