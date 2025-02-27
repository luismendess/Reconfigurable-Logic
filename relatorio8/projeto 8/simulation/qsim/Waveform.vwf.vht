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
-- Generated on "02/25/2025 11:38:57"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          semaforos
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY semaforos_vhd_vec_tst IS
END semaforos_vhd_vec_tst;
ARCHITECTURE semaforos_arch OF semaforos_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL mode_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL semaforo1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL semaforo2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT semaforos
	PORT (
	clock : IN STD_LOGIC;
	mode_select : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	reset : IN STD_LOGIC;
	semaforo1 : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	semaforo2 : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : semaforos
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	mode_select => mode_select,
	reset => reset,
	semaforo1 => semaforo1,
	semaforo2 => semaforo2
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 40000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 90000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 50000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 30000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 30000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 20000 ps;
	clock <= '0';
	WAIT FOR 20000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- mode_select[0]
t_prcs_mode_select_0: PROCESS
BEGIN
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
	WAIT FOR 30000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 30000 ps;
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
	WAIT FOR 20000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 30000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 40000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 30000 ps;
	mode_select(0) <= '1';
	WAIT FOR 40000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 20000 ps;
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
	WAIT FOR 20000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 30000 ps;
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
	WAIT FOR 20000 ps;
	mode_select(0) <= '1';
	WAIT FOR 30000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 30000 ps;
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
	WAIT FOR 20000 ps;
	mode_select(0) <= '1';
	WAIT FOR 30000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 40000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 20000 ps;
	mode_select(0) <= '1';
	WAIT FOR 10000 ps;
	mode_select(0) <= '0';
	WAIT FOR 10000 ps;
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
	WAIT FOR 40000 ps;
	mode_select(0) <= '1';
	WAIT FOR 20000 ps;
	mode_select(0) <= '0';
WAIT;
END PROCESS t_prcs_mode_select_0;

-- mode_select[1]
t_prcs_mode_select_1: PROCESS
BEGIN
	mode_select(1) <= '1';
	WAIT FOR 70000 ps;
	mode_select(1) <= '0';
	WAIT FOR 30000 ps;
	mode_select(1) <= '1';
	WAIT FOR 40000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 20000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 20000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 20000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 20000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 20000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 20000 ps;
	mode_select(1) <= '0';
	WAIT FOR 30000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 50000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 10000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 70000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
	WAIT FOR 20000 ps;
	mode_select(1) <= '1';
	WAIT FOR 50000 ps;
	mode_select(1) <= '0';
	WAIT FOR 30000 ps;
	mode_select(1) <= '1';
	WAIT FOR 10000 ps;
	mode_select(1) <= '0';
WAIT;
END PROCESS t_prcs_mode_select_1;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
	WAIT FOR 50000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 40000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 80000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 50000 ps;
	reset <= '0';
	WAIT FOR 10000 ps;
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 30000 ps;
	reset <= '0';
	WAIT FOR 50000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END semaforos_arch;
