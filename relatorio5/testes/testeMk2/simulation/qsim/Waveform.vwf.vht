-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/19/2024 13:44:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LuzesPiscando
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LuzesPiscando_vhd_vec_tst IS
END LuzesPiscando_vhd_vec_tst;
ARCHITECTURE LuzesPiscando_arch OF LuzesPiscando_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL botaoReset : STD_LOGIC;
SIGNAL botaoVelocidade : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL LEDs : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT LuzesPiscando
	PORT (
	botaoReset : IN STD_LOGIC;
	botaoVelocidade : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	LEDs : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LuzesPiscando
	PORT MAP (
-- list connections between master ports and signals
	botaoReset => botaoReset,
	botaoVelocidade => botaoVelocidade,
	clock => clock,
	enable => enable,
	LEDs => LEDs
	);

-- botaoReset
t_prcs_botaoReset: PROCESS
BEGIN
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 50000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 40000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 30000 ps;
	botaoReset <= '1';
	WAIT FOR 50000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 20000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 30000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 60000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 40000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 40000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 20000 ps;
	botaoReset <= '1';
	WAIT FOR 30000 ps;
	botaoReset <= '0';
	WAIT FOR 20000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 30000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 50000 ps;
	botaoReset <= '1';
	WAIT FOR 50000 ps;
	botaoReset <= '0';
	WAIT FOR 10000 ps;
	botaoReset <= '1';
	WAIT FOR 10000 ps;
	botaoReset <= '0';
	WAIT FOR 20000 ps;
	botaoReset <= '1';
	WAIT FOR 20000 ps;
	botaoReset <= '0';
	WAIT FOR 30000 ps;
	botaoReset <= '1';
WAIT;
END PROCESS t_prcs_botaoReset;

-- botaoVelocidade
t_prcs_botaoVelocidade: PROCESS
BEGIN
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 40000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 30000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 50000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 30000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 30000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 30000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 70000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 30000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 50000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 30000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 30000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '1';
	WAIT FOR 10000 ps;
	botaoVelocidade <= '0';
	WAIT FOR 20000 ps;
	botaoVelocidade <= '1';
WAIT;
END PROCESS t_prcs_botaoVelocidade;

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 70000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 40000 ps;
	clock <= '0';
	WAIT FOR 70000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 40000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 50000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 50000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 50000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 60000 ps;
	clock <= '1';
	WAIT FOR 40000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '0';
	WAIT FOR 30000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 20000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 30000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 30000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 40000 ps;
	enable <= '0';
	WAIT FOR 30000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 30000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 70000 ps;
	enable <= '0';
	WAIT FOR 30000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 30000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 20000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 20000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 30000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 40000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
	WAIT FOR 10000 ps;
	enable <= '1';
	WAIT FOR 10000 ps;
	enable <= '0';
WAIT;
END PROCESS t_prcs_enable;
END LuzesPiscando_arch;
