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
-- Generated on "10/30/2024 23:20:46"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          projeto2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY projeto2_vhd_vec_tst IS
END projeto2_vhd_vec_tst;
ARCHITECTURE projeto2_arch OF projeto2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL sw1 : STD_LOGIC;
SIGNAL sw2 : STD_LOGIC;
SIGNAL sw3 : STD_LOGIC;
SIGNAL sw4 : STD_LOGIC;
SIGNAL z : STD_LOGIC;
COMPONENT projeto2
	PORT (
	sw1 : IN STD_LOGIC;
	sw2 : IN STD_LOGIC;
	sw3 : IN STD_LOGIC;
	sw4 : IN STD_LOGIC;
	z : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : projeto2
	PORT MAP (
-- list connections between master ports and signals
	sw1 => sw1,
	sw2 => sw2,
	sw3 => sw3,
	sw4 => sw4,
	z => z
	);

-- sw1
t_prcs_sw1: PROCESS
BEGIN
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 20000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 30000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 60000 ps;
	sw1 <= '0';
	WAIT FOR 20000 ps;
	sw1 <= '1';
	WAIT FOR 40000 ps;
	sw1 <= '0';
	WAIT FOR 20000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 20000 ps;
	sw1 <= '0';
	WAIT FOR 20000 ps;
	sw1 <= '1';
	WAIT FOR 30000 ps;
	sw1 <= '0';
	WAIT FOR 30000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 40000 ps;
	sw1 <= '0';
	WAIT FOR 30000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 20000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 30000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 30000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 40000 ps;
	sw1 <= '1';
	WAIT FOR 20000 ps;
	sw1 <= '0';
	WAIT FOR 30000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 30000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 20000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 50000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 10000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 20000 ps;
	sw1 <= '0';
	WAIT FOR 10000 ps;
	sw1 <= '1';
	WAIT FOR 40000 ps;
	sw1 <= '0';
	WAIT FOR 20000 ps;
	sw1 <= '1';
	WAIT FOR 20000 ps;
	sw1 <= '0';
WAIT;
END PROCESS t_prcs_sw1;

-- sw2
t_prcs_sw2: PROCESS
BEGIN
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 30000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 50000 ps;
	sw2 <= '1';
	WAIT FOR 30000 ps;
	sw2 <= '0';
	WAIT FOR 20000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 40000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
	WAIT FOR 60000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 30000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 20000 ps;
	sw2 <= '1';
	WAIT FOR 40000 ps;
	sw2 <= '0';
	WAIT FOR 30000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 20000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 30000 ps;
	sw2 <= '0';
	WAIT FOR 20000 ps;
	sw2 <= '1';
	WAIT FOR 50000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 20000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 40000 ps;
	sw2 <= '0';
	WAIT FOR 20000 ps;
	sw2 <= '1';
	WAIT FOR 30000 ps;
	sw2 <= '0';
	WAIT FOR 30000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
	WAIT FOR 10000 ps;
	sw2 <= '1';
	WAIT FOR 10000 ps;
	sw2 <= '0';
WAIT;
END PROCESS t_prcs_sw2;

-- sw3
t_prcs_sw3: PROCESS
BEGIN
	sw3 <= '0';
	WAIT FOR 20000 ps;
	sw3 <= '1';
	WAIT FOR 20000 ps;
	sw3 <= '0';
	WAIT FOR 10000 ps;
	sw3 <= '1';
	WAIT FOR 20000 ps;
	sw3 <= '0';
	WAIT FOR 30000 ps;
	sw3 <= '1';
	WAIT FOR 10000 ps;
	sw3 <= '0';
	WAIT FOR 60000 ps;
	sw3 <= '1';
	WAIT FOR 10000 ps;
	sw3 <= '0';
	WAIT FOR 10000 ps;
	sw3 <= '1';
	WAIT FOR 20000 ps;
	sw3 <= '0';
	WAIT FOR 40000 ps;
	sw3 <= '1';
	WAIT FOR 10000 ps;
	sw3 <= '0';
	WAIT FOR 10000 ps;
	sw3 <= '1';
	WAIT FOR 30000 ps;
	sw3 <= '0';
	WAIT FOR 20000 ps;
	sw3 <= '1';
	WAIT FOR 90000 ps;
	sw3 <= '0';
	WAIT FOR 20000 ps;
	sw3 <= '1';
	WAIT FOR 20000 ps;
	sw3 <= '0';
	WAIT FOR 10000 ps;
	sw3 <= '1';
	WAIT FOR 10000 ps;
	sw3 <= '0';
	WAIT FOR 20000 ps;
	sw3 <= '1';
	WAIT FOR 10000 ps;
	sw3 <= '0';
	WAIT FOR 20000 ps;
	sw3 <= '1';
	WAIT FOR 40000 ps;
	sw3 <= '0';
	WAIT FOR 40000 ps;
	sw3 <= '1';
	WAIT FOR 50000 ps;
	sw3 <= '0';
	WAIT FOR 50000 ps;
	sw3 <= '1';
	WAIT FOR 40000 ps;
	sw3 <= '0';
	WAIT FOR 20000 ps;
	sw3 <= '1';
	WAIT FOR 20000 ps;
	sw3 <= '0';
	WAIT FOR 10000 ps;
	sw3 <= '1';
	WAIT FOR 30000 ps;
	sw3 <= '0';
	WAIT FOR 20000 ps;
	sw3 <= '1';
	WAIT FOR 10000 ps;
	sw3 <= '0';
	WAIT FOR 40000 ps;
	sw3 <= '1';
	WAIT FOR 50000 ps;
	sw3 <= '0';
	WAIT FOR 10000 ps;
	sw3 <= '1';
	WAIT FOR 30000 ps;
	sw3 <= '0';
WAIT;
END PROCESS t_prcs_sw3;

-- sw4
t_prcs_sw4: PROCESS
BEGIN
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 40000 ps;
	sw4 <= '0';
	WAIT FOR 40000 ps;
	sw4 <= '1';
	WAIT FOR 20000 ps;
	sw4 <= '0';
	WAIT FOR 20000 ps;
	sw4 <= '1';
	WAIT FOR 20000 ps;
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 20000 ps;
	sw4 <= '0';
	WAIT FOR 100000 ps;
	sw4 <= '1';
	WAIT FOR 20000 ps;
	sw4 <= '0';
	WAIT FOR 30000 ps;
	sw4 <= '1';
	WAIT FOR 40000 ps;
	sw4 <= '0';
	WAIT FOR 40000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 80000 ps;
	sw4 <= '1';
	WAIT FOR 50000 ps;
	sw4 <= '0';
	WAIT FOR 20000 ps;
	sw4 <= '1';
	WAIT FOR 30000 ps;
	sw4 <= '0';
	WAIT FOR 40000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 30000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 50000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
	WAIT FOR 10000 ps;
	sw4 <= '1';
	WAIT FOR 40000 ps;
	sw4 <= '0';
	WAIT FOR 20000 ps;
	sw4 <= '1';
	WAIT FOR 20000 ps;
	sw4 <= '0';
	WAIT FOR 20000 ps;
	sw4 <= '1';
	WAIT FOR 10000 ps;
	sw4 <= '0';
WAIT;
END PROCESS t_prcs_sw4;
END projeto2_arch;
