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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "02/26/2025 08:42:52"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Calculator IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	SEG1 : BUFFER std_logic_vector(6 DOWNTO 0);
	SEG2 : BUFFER std_logic_vector(6 DOWNTO 0);
	Overflow : BUFFER std_logic
	);
END Calculator;

-- Design Ports Information
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[0]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[4]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG1[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[4]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[5]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG2[6]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Overflow	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_SEG1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SEG2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SEG1[0]~output_o\ : std_logic;
SIGNAL \SEG1[1]~output_o\ : std_logic;
SIGNAL \SEG1[2]~output_o\ : std_logic;
SIGNAL \SEG1[3]~output_o\ : std_logic;
SIGNAL \SEG1[4]~output_o\ : std_logic;
SIGNAL \SEG1[5]~output_o\ : std_logic;
SIGNAL \SEG1[6]~output_o\ : std_logic;
SIGNAL \SEG2[0]~output_o\ : std_logic;
SIGNAL \SEG2[1]~output_o\ : std_logic;
SIGNAL \SEG2[2]~output_o\ : std_logic;
SIGNAL \SEG2[3]~output_o\ : std_logic;
SIGNAL \SEG2[4]~output_o\ : std_logic;
SIGNAL \SEG2[5]~output_o\ : std_logic;
SIGNAL \SEG2[6]~output_o\ : std_logic;
SIGNAL \Overflow~output_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|selnose[0]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[2][0]~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[1][1]~combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[0][2]~combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[0][1]~combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[1][0]~combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U2|Add0~1\ : std_logic;
SIGNAL \U2|Add0~3\ : std_logic;
SIGNAL \U2|Add0~4_combout\ : std_logic;
SIGNAL \U1|Sum[0]~1\ : std_logic;
SIGNAL \U1|Sum[1]~3\ : std_logic;
SIGNAL \U1|Sum[2]~4_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \U2|Add0~5\ : std_logic;
SIGNAL \U2|Add0~6_combout\ : std_logic;
SIGNAL \U1|Sum[2]~5\ : std_logic;
SIGNAL \U1|Sum[3]~6_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[1][2]~combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[2][1]~combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U1|Sum[1]~2_combout\ : std_logic;
SIGNAL \U2|Add0~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|selnose[4]~0_combout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|selnose[4]~1_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[0][0]~combout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|StageOut[4]~0_combout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|StageOut[4]~1_combout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|StageOut[3]~2_combout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1_cout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3_cout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_cout\ : std_logic;
SIGNAL \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \U1|Sum[0]~0_combout\ : std_logic;
SIGNAL \U2|Add0~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \U7|Mux6~0_combout\ : std_logic;
SIGNAL \U7|Mux5~0_combout\ : std_logic;
SIGNAL \U7|Mux4~0_combout\ : std_logic;
SIGNAL \U7|Mux3~0_combout\ : std_logic;
SIGNAL \U7|Mux2~0_combout\ : std_logic;
SIGNAL \U7|Mux1~0_combout\ : std_logic;
SIGNAL \U7|Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|decoder_node[2][2]~combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \U8|Mux6~0_combout\ : std_logic;
SIGNAL \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \U8|Mux5~0_combout\ : std_logic;
SIGNAL \U8|Mux5~1_combout\ : std_logic;
SIGNAL \U8|Mux3~0_combout\ : std_logic;
SIGNAL \U8|Mux2~0_combout\ : std_logic;
SIGNAL \U8|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \U8|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \U8|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U7|ALT_INV_Mux6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
SEG1 <= ww_SEG1;
SEG2 <= ww_SEG2;
Overflow <= ww_Overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\U8|ALT_INV_Mux5~1_combout\ <= NOT \U8|Mux5~1_combout\;
\U8|ALT_INV_Mux5~0_combout\ <= NOT \U8|Mux5~0_combout\;
\U8|ALT_INV_Mux6~0_combout\ <= NOT \U8|Mux6~0_combout\;
\U7|ALT_INV_Mux6~0_combout\ <= NOT \U7|Mux6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X74_Y54_N23
\SEG1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SEG1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[1]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\SEG1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\SEG1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\SEG1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\SEG1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\SEG1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U7|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG1[6]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\SEG2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SEG2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\SEG2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SEG2[1]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\SEG2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|ALT_INV_Mux5~1_combout\,
	devoe => ww_devoe,
	o => \SEG2[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\SEG2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG2[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\SEG2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SEG2[4]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\SEG2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SEG2[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\SEG2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U8|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SEG2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\Overflow~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Overflow~output_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X54_Y53_N6
\Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\SW[2]~input_o\ & ((\SW[5]~input_o\) # (\SW[6]~input_o\))) # (!\SW[2]~input_o\ & (\SW[5]~input_o\ & \SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X54_Y53_N10
\U4|Div0|auto_generated|divider|divider|selnose[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|selnose[0]~2_combout\ = (\SW[5]~input_o\) # ((\SW[4]~input_o\) # ((!\SW[2]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \U4|Div0|auto_generated|divider|divider|selnose[0]~2_combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X51_Y53_N22
\U3|Mult0|mult_core|decoder_node[2][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[2][0]~combout\ = (\SW[5]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[2][0]~combout\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X55_Y53_N14
\U3|Mult0|mult_core|decoder_node[1][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[1][1]~combout\ = (\SW[1]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[1][1]~combout\);

-- Location: LCCOMB_X51_Y53_N4
\U3|Mult0|mult_core|decoder_node[0][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[0][2]~combout\ = (\SW[2]~input_o\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[0][2]~combout\);

-- Location: LCCOMB_X51_Y53_N8
\U3|Mult0|mult_core|decoder_node[0][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[0][1]~combout\ = (\SW[1]~input_o\ & \SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[0][1]~combout\);

-- Location: LCCOMB_X51_Y53_N18
\U3|Mult0|mult_core|decoder_node[1][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[1][0]~combout\ = (\SW[0]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[1][0]~combout\);

-- Location: LCCOMB_X51_Y53_N10
\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = (\U3|Mult0|mult_core|decoder_node[0][1]~combout\ & (\U3|Mult0|mult_core|decoder_node[1][0]~combout\ $ (VCC))) # (!\U3|Mult0|mult_core|decoder_node[0][1]~combout\ & 
-- (\U3|Mult0|mult_core|decoder_node[1][0]~combout\ & VCC))
-- \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ = CARRY((\U3|Mult0|mult_core|decoder_node[0][1]~combout\ & \U3|Mult0|mult_core|decoder_node[1][0]~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mult0|mult_core|decoder_node[0][1]~combout\,
	datab => \U3|Mult0|mult_core|decoder_node[1][0]~combout\,
	datad => VCC,
	combout => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cout => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X51_Y53_N12
\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ = (\U3|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\U3|Mult0|mult_core|decoder_node[0][2]~combout\ & (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\ & VCC)) # 
-- (!\U3|Mult0|mult_core|decoder_node[0][2]~combout\ & (!\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)))) # (!\U3|Mult0|mult_core|decoder_node[1][1]~combout\ & ((\U3|Mult0|mult_core|decoder_node[0][2]~combout\ & 
-- (!\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # (!\U3|Mult0|mult_core|decoder_node[0][2]~combout\ & ((\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ = CARRY((\U3|Mult0|mult_core|decoder_node[1][1]~combout\ & (!\U3|Mult0|mult_core|decoder_node[0][2]~combout\ & !\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\)) # 
-- (!\U3|Mult0|mult_core|decoder_node[1][1]~combout\ & ((!\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\) # (!\U3|Mult0|mult_core|decoder_node[0][2]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mult0|mult_core|decoder_node[1][1]~combout\,
	datab => \U3|Mult0|mult_core|decoder_node[0][2]~combout\,
	datad => VCC,
	cin => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~1\,
	combout => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	cout => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X51_Y53_N24
\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ = (\U3|Mult0|mult_core|decoder_node[2][0]~combout\ & (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ $ (VCC))) # 
-- (!\U3|Mult0|mult_core|decoder_node[2][0]~combout\ & (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\ & VCC))
-- \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ = CARRY((\U3|Mult0|mult_core|decoder_node[2][0]~combout\ & \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mult0|mult_core|decoder_node[2][0]~combout\,
	datab => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~2_combout\,
	datad => VCC,
	combout => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	cout => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\);

-- Location: LCCOMB_X52_Y53_N16
\U2|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~0_combout\ = (\SW[3]~input_o\ & (\SW[0]~input_o\ $ (VCC))) # (!\SW[3]~input_o\ & ((\SW[0]~input_o\) # (GND)))
-- \U2|Add0~1\ = CARRY((\SW[0]~input_o\) # (!\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \U2|Add0~0_combout\,
	cout => \U2|Add0~1\);

-- Location: LCCOMB_X52_Y53_N18
\U2|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~2_combout\ = (\SW[4]~input_o\ & ((\SW[1]~input_o\ & (!\U2|Add0~1\)) # (!\SW[1]~input_o\ & ((\U2|Add0~1\) # (GND))))) # (!\SW[4]~input_o\ & ((\SW[1]~input_o\ & (\U2|Add0~1\ & VCC)) # (!\SW[1]~input_o\ & (!\U2|Add0~1\))))
-- \U2|Add0~3\ = CARRY((\SW[4]~input_o\ & ((!\U2|Add0~1\) # (!\SW[1]~input_o\))) # (!\SW[4]~input_o\ & (!\SW[1]~input_o\ & !\U2|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \U2|Add0~1\,
	combout => \U2|Add0~2_combout\,
	cout => \U2|Add0~3\);

-- Location: LCCOMB_X52_Y53_N20
\U2|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~4_combout\ = ((\SW[5]~input_o\ $ (\SW[2]~input_o\ $ (\U2|Add0~3\)))) # (GND)
-- \U2|Add0~5\ = CARRY((\SW[5]~input_o\ & (\SW[2]~input_o\ & !\U2|Add0~3\)) # (!\SW[5]~input_o\ & ((\SW[2]~input_o\) # (!\U2|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \U2|Add0~3\,
	combout => \U2|Add0~4_combout\,
	cout => \U2|Add0~5\);

-- Location: LCCOMB_X54_Y53_N20
\U1|Sum[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Sum[0]~0_combout\ = (\SW[0]~input_o\ & (\SW[3]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & (\SW[3]~input_o\ & VCC))
-- \U1|Sum[0]~1\ = CARRY((\SW[0]~input_o\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	combout => \U1|Sum[0]~0_combout\,
	cout => \U1|Sum[0]~1\);

-- Location: LCCOMB_X54_Y53_N22
\U1|Sum[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Sum[1]~2_combout\ = (\SW[1]~input_o\ & ((\SW[4]~input_o\ & (\U1|Sum[0]~1\ & VCC)) # (!\SW[4]~input_o\ & (!\U1|Sum[0]~1\)))) # (!\SW[1]~input_o\ & ((\SW[4]~input_o\ & (!\U1|Sum[0]~1\)) # (!\SW[4]~input_o\ & ((\U1|Sum[0]~1\) # (GND)))))
-- \U1|Sum[1]~3\ = CARRY((\SW[1]~input_o\ & (!\SW[4]~input_o\ & !\U1|Sum[0]~1\)) # (!\SW[1]~input_o\ & ((!\U1|Sum[0]~1\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \U1|Sum[0]~1\,
	combout => \U1|Sum[1]~2_combout\,
	cout => \U1|Sum[1]~3\);

-- Location: LCCOMB_X54_Y53_N24
\U1|Sum[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Sum[2]~4_combout\ = ((\SW[2]~input_o\ $ (\SW[5]~input_o\ $ (!\U1|Sum[1]~3\)))) # (GND)
-- \U1|Sum[2]~5\ = CARRY((\SW[2]~input_o\ & ((\SW[5]~input_o\) # (!\U1|Sum[1]~3\))) # (!\SW[2]~input_o\ & (\SW[5]~input_o\ & !\U1|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \U1|Sum[1]~3\,
	combout => \U1|Sum[2]~4_combout\,
	cout => \U1|Sum[2]~5\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X54_Y53_N0
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SW[6]~input_o\ & ((\U2|Add0~4_combout\) # ((\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (((\U1|Sum[2]~4_combout\ & !\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~4_combout\,
	datab => \U1|Sum[2]~4_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X54_Y53_N28
\Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((!\SW[7]~input_o\)) # (!\U4|Div0|auto_generated|divider|divider|selnose[0]~2_combout\))) # (!\Mux5~0_combout\ & (((\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\ & 
-- \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Div0|auto_generated|divider|divider|selnose[0]~2_combout\,
	datab => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~0_combout\,
	datac => \Mux5~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X54_Y53_N8
\Mux5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\SW[8]~input_o\ & (\Mux5~2_combout\ & ((!\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (((\Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \Mux5~1_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X52_Y53_N22
\U2|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U2|Add0~6_combout\ = \SW[5]~input_o\ $ (\U2|Add0~5\ $ (!\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datad => \SW[2]~input_o\,
	cin => \U2|Add0~5\,
	combout => \U2|Add0~6_combout\);

-- Location: LCCOMB_X54_Y53_N26
\U1|Sum[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U1|Sum[3]~6_combout\ = \U1|Sum[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U1|Sum[2]~5\,
	combout => \U1|Sum[3]~6_combout\);

-- Location: LCCOMB_X55_Y53_N16
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\SW[6]~input_o\ & ((\U2|Add0~6_combout\) # ((\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (((\U1|Sum[3]~6_combout\ & !\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~6_combout\,
	datab => \U1|Sum[3]~6_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X51_Y53_N0
\U3|Mult0|mult_core|decoder_node[1][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[1][2]~combout\ = (\SW[2]~input_o\ & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[1][2]~combout\);

-- Location: LCCOMB_X51_Y53_N14
\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ = (\U3|Mult0|mult_core|decoder_node[1][2]~combout\ & (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ $ (GND))) # (!\U3|Mult0|mult_core|decoder_node[1][2]~combout\ & 
-- (!\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\ & VCC))
-- \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\ = CARRY((\U3|Mult0|mult_core|decoder_node[1][2]~combout\ & !\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U3|Mult0|mult_core|decoder_node[1][2]~combout\,
	datad => VCC,
	cin => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~3\,
	combout => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	cout => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X51_Y53_N2
\U3|Mult0|mult_core|decoder_node[2][1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[2][1]~combout\ = (\SW[5]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[2][1]~combout\);

-- Location: LCCOMB_X51_Y53_N26
\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ = (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\U3|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- (\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\ & VCC)) # (!\U3|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)))) # 
-- (!\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((\U3|Mult0|mult_core|decoder_node[2][1]~combout\ & (!\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\U3|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- ((\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # (GND)))))
-- \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\ = CARRY((\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & (!\U3|Mult0|mult_core|decoder_node[2][1]~combout\ & 
-- !\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\)) # (!\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\ & ((!\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\) # 
-- (!\U3|Mult0|mult_core|decoder_node[2][1]~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~4_combout\,
	datab => \U3|Mult0|mult_core|decoder_node[2][1]~combout\,
	datad => VCC,
	cin => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~1\,
	combout => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	cout => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\);

-- Location: LCCOMB_X55_Y53_N26
\Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (!\SW[8]~input_o\ & ((\Mux4~0_combout\ & ((!\SW[7]~input_o\))) # (!\Mux4~0_combout\ & (\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\ & \SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Mux4~0_combout\,
	datac => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X55_Y53_N0
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\SW[6]~input_o\ & (((\U2|Add0~2_combout\) # (\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\U1|Sum[1]~2_combout\ & ((!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \U1|Sum[1]~2_combout\,
	datac => \U2|Add0~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X52_Y53_N12
\U4|Div0|auto_generated|divider|divider|selnose[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|selnose[4]~0_combout\ = (!\SW[5]~input_o\ & ((\SW[2]~input_o\) # (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \U4|Div0|auto_generated|divider|divider|selnose[4]~0_combout\);

-- Location: LCCOMB_X52_Y53_N8
\U4|Div0|auto_generated|divider|divider|selnose[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|selnose[4]~1_combout\ = ((\SW[3]~input_o\ & !\SW[1]~input_o\)) # (!\U4|Div0|auto_generated|divider|divider|selnose[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Div0|auto_generated|divider|divider|selnose[4]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \U4|Div0|auto_generated|divider|divider|selnose[4]~1_combout\);

-- Location: LCCOMB_X55_Y53_N18
\Mux6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((!\SW[7]~input_o\) # (!\U4|Div0|auto_generated|divider|divider|selnose[4]~1_combout\)))) # (!\Mux6~0_combout\ & (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ & ((\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	datab => \Mux6~0_combout\,
	datac => \U4|Div0|auto_generated|divider|divider|selnose[4]~1_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X55_Y53_N4
\Mux6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\SW[6]~input_o\ & ((\SW[4]~input_o\) # (\SW[1]~input_o\))) # (!\SW[6]~input_o\ & (\SW[4]~input_o\ & \SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X55_Y53_N22
\Mux6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\SW[8]~input_o\ & (((\Mux6~2_combout\ & !\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Mux6~1_combout\,
	datac => \Mux6~2_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X55_Y53_N12
\U3|Mult0|mult_core|decoder_node[0][0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[0][0]~combout\ = (\SW[3]~input_o\ & \SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[0][0]~combout\);

-- Location: LCCOMB_X52_Y53_N0
\U4|Div0|auto_generated|divider|divider|StageOut[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|StageOut[4]~0_combout\ = (\SW[5]~input_o\) # ((\SW[3]~input_o\ & (!\SW[1]~input_o\ & \SW[4]~input_o\)) # (!\SW[3]~input_o\ & ((!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \U4|Div0|auto_generated|divider|divider|StageOut[4]~0_combout\);

-- Location: LCCOMB_X52_Y53_N10
\U4|Div0|auto_generated|divider|divider|StageOut[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|StageOut[4]~1_combout\ = (\SW[2]~input_o\ & \U4|Div0|auto_generated|divider|divider|StageOut[4]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => \U4|Div0|auto_generated|divider|divider|StageOut[4]~0_combout\,
	combout => \U4|Div0|auto_generated|divider|divider|StageOut[4]~1_combout\);

-- Location: LCCOMB_X52_Y53_N14
\U4|Div0|auto_generated|divider|divider|StageOut[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|StageOut[3]~2_combout\ = (\SW[1]~input_o\ & ((!\SW[3]~input_o\) # (!\U4|Div0|auto_generated|divider|divider|selnose[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U4|Div0|auto_generated|divider|divider|selnose[4]~0_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \U4|Div0|auto_generated|divider|divider|StageOut[3]~2_combout\);

-- Location: LCCOMB_X52_Y53_N24
\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1_cout\ = CARRY((\SW[0]~input_o\) # (!\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1_cout\);

-- Location: LCCOMB_X52_Y53_N26
\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3_cout\ = CARRY((\SW[4]~input_o\ & ((!\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1_cout\) # (!\U4|Div0|auto_generated|divider|divider|StageOut[3]~2_combout\))) # 
-- (!\SW[4]~input_o\ & (!\U4|Div0|auto_generated|divider|divider|StageOut[3]~2_combout\ & !\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \U4|Div0|auto_generated|divider|divider|StageOut[3]~2_combout\,
	datad => VCC,
	cin => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1_cout\,
	cout => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3_cout\);

-- Location: LCCOMB_X52_Y53_N28
\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_cout\ = CARRY((\SW[5]~input_o\ & (\U4|Div0|auto_generated|divider|divider|StageOut[4]~1_combout\ & !\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3_cout\)) # 
-- (!\SW[5]~input_o\ & ((\U4|Div0|auto_generated|divider|divider|StageOut[4]~1_combout\) # (!\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \U4|Div0|auto_generated|divider|divider|StageOut[4]~1_combout\,
	datad => VCC,
	cin => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3_cout\,
	cout => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_cout\);

-- Location: LCCOMB_X52_Y53_N30
\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5_cout\,
	combout => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X55_Y53_N8
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\SW[6]~input_o\ & (((\U2|Add0~0_combout\) # (\SW[7]~input_o\)))) # (!\SW[6]~input_o\ & (\U1|Sum[0]~0_combout\ & ((!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \U1|Sum[0]~0_combout\,
	datac => \U2|Add0~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X55_Y53_N10
\Mux7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((!\SW[7]~input_o\) # (!\U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)))) # (!\Mux7~0_combout\ & (\U3|Mult0|mult_core|decoder_node[0][0]~combout\ & ((\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mult0|mult_core|decoder_node[0][0]~combout\,
	datab => \U4|Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Mux7~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X55_Y53_N28
\Mux7~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\SW[6]~input_o\ & ((\SW[0]~input_o\) # (\SW[3]~input_o\))) # (!\SW[6]~input_o\ & (\SW[0]~input_o\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X55_Y53_N6
\Mux7~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\SW[8]~input_o\ & (((\Mux7~2_combout\ & !\SW[7]~input_o\)))) # (!\SW[8]~input_o\ & (\Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \Mux7~2_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X62_Y53_N0
\U7|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux6~0_combout\ = (\Mux5~3_combout\ & (!\Mux4~1_combout\ & ((!\Mux7~3_combout\) # (!\Mux6~3_combout\)))) # (!\Mux5~3_combout\ & (\Mux4~1_combout\ $ ((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux7~3_combout\,
	combout => \U7|Mux6~0_combout\);

-- Location: LCCOMB_X62_Y53_N2
\U7|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux5~0_combout\ = (\Mux5~3_combout\ & ((\Mux4~1_combout\) # ((\Mux6~3_combout\ & \Mux7~3_combout\)))) # (!\Mux5~3_combout\ & ((\Mux6~3_combout\) # ((!\Mux4~1_combout\ & \Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux7~3_combout\,
	combout => \U7|Mux5~0_combout\);

-- Location: LCCOMB_X62_Y53_N12
\U7|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux4~0_combout\ = (\Mux7~3_combout\) # ((\Mux6~3_combout\ & ((\Mux4~1_combout\))) # (!\Mux6~3_combout\ & (\Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux7~3_combout\,
	combout => \U7|Mux4~0_combout\);

-- Location: LCCOMB_X62_Y53_N22
\U7|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux3~0_combout\ = (\Mux6~3_combout\ & ((\Mux4~1_combout\) # ((\Mux5~3_combout\ & \Mux7~3_combout\)))) # (!\Mux6~3_combout\ & (\Mux5~3_combout\ $ (((!\Mux4~1_combout\ & \Mux7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux7~3_combout\,
	combout => \U7|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y53_N24
\U7|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux2~0_combout\ = (\Mux5~3_combout\ & (\Mux4~1_combout\)) # (!\Mux5~3_combout\ & (\Mux6~3_combout\ & ((\Mux4~1_combout\) # (!\Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux7~3_combout\,
	combout => \U7|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y53_N26
\U7|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux1~0_combout\ = (\Mux5~3_combout\ & ((\Mux4~1_combout\) # (\Mux6~3_combout\ $ (\Mux7~3_combout\)))) # (!\Mux5~3_combout\ & (\Mux4~1_combout\ & (\Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux7~3_combout\,
	combout => \U7|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y53_N4
\U7|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U7|Mux0~0_combout\ = (\Mux6~3_combout\ & (((\Mux4~1_combout\)))) # (!\Mux6~3_combout\ & (\Mux5~3_combout\ $ (((!\Mux4~1_combout\ & \Mux7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux4~1_combout\,
	datac => \Mux6~3_combout\,
	datad => \Mux7~3_combout\,
	combout => \U7|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y53_N24
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\SW[6]~input_o\ & (\U2|Add0~6_combout\ & (!\SW[8]~input_o\ & !\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \U2|Add0~6_combout\,
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X51_Y53_N20
\U3|Mult0|mult_core|decoder_node[2][2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|decoder_node[2][2]~combout\ = (\SW[5]~input_o\ & \SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \U3|Mult0|mult_core|decoder_node[2][2]~combout\);

-- Location: LCCOMB_X51_Y53_N16
\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ = \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~5\,
	combout => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X51_Y53_N28
\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\ = ((\U3|Mult0|mult_core|decoder_node[2][2]~combout\ $ (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ $ 
-- (!\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))) # (GND)
-- \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\ = CARRY((\U3|Mult0|mult_core|decoder_node[2][2]~combout\ & ((\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\) # 
-- (!\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\))) # (!\U3|Mult0|mult_core|decoder_node[2][2]~combout\ & (\U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\ & 
-- !\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Mult0|mult_core|decoder_node[2][2]~combout\,
	datab => \U3|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~3\,
	combout => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	cout => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\);

-- Location: LCCOMB_X51_Y53_N30
\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\ = \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~5\,
	combout => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X55_Y53_N20
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\SW[8]~input_o\ & (\SW[6]~input_o\ $ (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X55_Y53_N30
\Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\SW[6]~input_o\ & (\U2|Add0~6_combout\)) # (!\SW[6]~input_o\ & ((\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~6_combout\,
	datab => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~6_combout\,
	datac => \SW[6]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X66_Y53_N0
\U8|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U8|Mux6~0_combout\ = (!\Mux0~0_combout\ & \Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \U8|Mux6~0_combout\);

-- Location: LCCOMB_X55_Y53_N2
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux2~0_combout\ & ((\SW[6]~input_o\ & (\U2|Add0~6_combout\)) # (!\SW[6]~input_o\ & ((\U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U2|Add0~6_combout\,
	datab => \U3|Mult0|mult_core|padder|sub_par_add|adder[0]|auto_generated|op_1~4_combout\,
	datac => \SW[6]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X66_Y53_N26
\U8|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U8|Mux5~0_combout\ = (!\Mux3~0_combout\ & (!\Mux0~0_combout\ & !\Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux0~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \U8|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y53_N28
\U8|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U8|Mux5~1_combout\ = (!\Mux3~0_combout\ & !\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \U8|Mux5~1_combout\);

-- Location: LCCOMB_X66_Y53_N6
\U8|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U8|Mux3~0_combout\ = (\Mux3~0_combout\ & (\Mux0~0_combout\ $ (!\Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux0~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \U8|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y53_N16
\U8|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U8|Mux2~0_combout\ = (\Mux2~1_combout\ & (\Mux3~0_combout\ $ (!\Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux0~0_combout\,
	datad => \Mux2~1_combout\,
	combout => \U8|Mux2~0_combout\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_SEG1(0) <= \SEG1[0]~output_o\;

ww_SEG1(1) <= \SEG1[1]~output_o\;

ww_SEG1(2) <= \SEG1[2]~output_o\;

ww_SEG1(3) <= \SEG1[3]~output_o\;

ww_SEG1(4) <= \SEG1[4]~output_o\;

ww_SEG1(5) <= \SEG1[5]~output_o\;

ww_SEG1(6) <= \SEG1[6]~output_o\;

ww_SEG2(0) <= \SEG2[0]~output_o\;

ww_SEG2(1) <= \SEG2[1]~output_o\;

ww_SEG2(2) <= \SEG2[2]~output_o\;

ww_SEG2(3) <= \SEG2[3]~output_o\;

ww_SEG2(4) <= \SEG2[4]~output_o\;

ww_SEG2(5) <= \SEG2[5]~output_o\;

ww_SEG2(6) <= \SEG2[6]~output_o\;

ww_Overflow <= \Overflow~output_o\;
END structure;


