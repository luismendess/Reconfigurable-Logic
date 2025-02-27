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

-- DATE "02/26/2025 08:42:16"

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

ENTITY 	Projeto6 IS
    PORT (
	entrada1 : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	entrada2 : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	min_seg : OUT std_logic_vector(7 DOWNTO 0);
	max_seg : OUT std_logic_vector(7 DOWNTO 0)
	);
END Projeto6;

-- Design Ports Information
-- min_seg[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_seg[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_seg[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_seg[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_seg[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_seg[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_seg[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_seg[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- max_seg[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada1[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada2[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Projeto6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_entrada2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_max_seg : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \min_seg[0]~output_o\ : std_logic;
SIGNAL \min_seg[1]~output_o\ : std_logic;
SIGNAL \min_seg[2]~output_o\ : std_logic;
SIGNAL \min_seg[3]~output_o\ : std_logic;
SIGNAL \min_seg[4]~output_o\ : std_logic;
SIGNAL \min_seg[5]~output_o\ : std_logic;
SIGNAL \min_seg[6]~output_o\ : std_logic;
SIGNAL \min_seg[7]~output_o\ : std_logic;
SIGNAL \max_seg[0]~output_o\ : std_logic;
SIGNAL \max_seg[1]~output_o\ : std_logic;
SIGNAL \max_seg[2]~output_o\ : std_logic;
SIGNAL \max_seg[3]~output_o\ : std_logic;
SIGNAL \max_seg[4]~output_o\ : std_logic;
SIGNAL \max_seg[5]~output_o\ : std_logic;
SIGNAL \max_seg[6]~output_o\ : std_logic;
SIGNAL \max_seg[7]~output_o\ : std_logic;
SIGNAL \entrada1[0]~input_o\ : std_logic;
SIGNAL \entrada1[1]~input_o\ : std_logic;
SIGNAL \entrada2[1]~input_o\ : std_logic;
SIGNAL \entrada2[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \entrada1[3]~input_o\ : std_logic;
SIGNAL \entrada2[3]~input_o\ : std_logic;
SIGNAL \entrada1[2]~input_o\ : std_logic;
SIGNAL \entrada2[2]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \min_val[0]~0_combout\ : std_logic;
SIGNAL \min_val[1]~1_combout\ : std_logic;
SIGNAL \min_val[2]~2_combout\ : std_logic;
SIGNAL \min_val[3]~3_combout\ : std_logic;
SIGNAL \min_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \min_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \min_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \min_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \min_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \min_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \min_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \max_val[2]~2_combout\ : std_logic;
SIGNAL \max_val[1]~1_combout\ : std_logic;
SIGNAL \max_val[3]~3_combout\ : std_logic;
SIGNAL \max_val[0]~0_combout\ : std_logic;
SIGNAL \max_decoder|Mux6~0_combout\ : std_logic;
SIGNAL \max_decoder|Mux5~0_combout\ : std_logic;
SIGNAL \max_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \max_decoder|Mux3~0_combout\ : std_logic;
SIGNAL \max_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \max_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \max_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \max_decoder|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \min_decoder|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada1 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(entrada1);
ww_entrada2 <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(entrada2);
min_seg <= ww_min_seg;
max_seg <= ww_max_seg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\max_decoder|ALT_INV_Mux0~0_combout\ <= NOT \max_decoder|Mux0~0_combout\;
\min_decoder|ALT_INV_Mux0~0_combout\ <= NOT \min_decoder|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N8
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

-- Location: IOOBUF_X78_Y44_N9
\min_seg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \min_seg[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\min_seg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \min_seg[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\min_seg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \min_seg[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\min_seg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \min_seg[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\min_seg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \min_seg[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\min_seg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \min_seg[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\min_seg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \min_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \min_seg[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\min_seg[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \min_seg[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\max_seg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_decoder|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \max_seg[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\max_seg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_decoder|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \max_seg[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\max_seg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_decoder|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \max_seg[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\max_seg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_decoder|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \max_seg[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\max_seg[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_decoder|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \max_seg[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\max_seg[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_decoder|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \max_seg[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\max_seg[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \max_decoder|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \max_seg[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\max_seg[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \max_seg[7]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\entrada1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(0),
	o => \entrada1[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\entrada1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(1),
	o => \entrada1[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\entrada2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(1),
	o => \entrada2[1]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\entrada2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(0),
	o => \entrada2[0]~input_o\);

-- Location: LCCOMB_X59_Y53_N10
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\entrada1[1]~input_o\ & (((\entrada1[0]~input_o\ & !\entrada2[0]~input_o\)) # (!\entrada2[1]~input_o\))) # (!\entrada1[1]~input_o\ & (!\entrada2[1]~input_o\ & (\entrada1[0]~input_o\ & !\entrada2[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[1]~input_o\,
	datab => \entrada2[1]~input_o\,
	datac => \entrada1[0]~input_o\,
	datad => \entrada2[0]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X54_Y54_N29
\entrada1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(3),
	o => \entrada1[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\entrada2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(3),
	o => \entrada2[3]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\entrada1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada1(2),
	o => \entrada1[2]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\entrada2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada2(2),
	o => \entrada2[2]~input_o\);

-- Location: LCCOMB_X59_Y53_N28
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\entrada1[3]~input_o\ & (\entrada2[3]~input_o\ & (\entrada1[2]~input_o\ $ (!\entrada2[2]~input_o\)))) # (!\entrada1[3]~input_o\ & (!\entrada2[3]~input_o\ & (\entrada1[2]~input_o\ $ (!\entrada2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[3]~input_o\,
	datab => \entrada2[3]~input_o\,
	datac => \entrada1[2]~input_o\,
	datad => \entrada2[2]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X59_Y53_N16
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\entrada1[3]~input_o\ & (((\entrada1[2]~input_o\ & !\entrada2[2]~input_o\)) # (!\entrada2[3]~input_o\))) # (!\entrada1[3]~input_o\ & (!\entrada2[3]~input_o\ & (\entrada1[2]~input_o\ & !\entrada2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[3]~input_o\,
	datab => \entrada2[3]~input_o\,
	datac => \entrada1[2]~input_o\,
	datad => \entrada2[2]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X59_Y53_N30
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\ & \LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \LessThan0~2_combout\,
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X59_Y53_N0
\min_val[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_val[0]~0_combout\ = (\LessThan0~3_combout\ & ((\entrada2[0]~input_o\))) # (!\LessThan0~3_combout\ & (\entrada1[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[0]~input_o\,
	datac => \LessThan0~3_combout\,
	datad => \entrada2[0]~input_o\,
	combout => \min_val[0]~0_combout\);

-- Location: LCCOMB_X59_Y53_N18
\min_val[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_val[1]~1_combout\ = (\LessThan0~3_combout\ & (\entrada2[1]~input_o\)) # (!\LessThan0~3_combout\ & ((\entrada1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \entrada2[1]~input_o\,
	datac => \entrada1[1]~input_o\,
	combout => \min_val[1]~1_combout\);

-- Location: LCCOMB_X59_Y53_N20
\min_val[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_val[2]~2_combout\ = (\LessThan0~3_combout\ & (\entrada2[2]~input_o\)) # (!\LessThan0~3_combout\ & ((\entrada1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \entrada2[2]~input_o\,
	datac => \entrada1[2]~input_o\,
	combout => \min_val[2]~2_combout\);

-- Location: LCCOMB_X59_Y53_N6
\min_val[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_val[3]~3_combout\ = (\LessThan0~3_combout\ & ((\entrada2[3]~input_o\))) # (!\LessThan0~3_combout\ & (\entrada1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[3]~input_o\,
	datab => \entrada2[3]~input_o\,
	datac => \LessThan0~3_combout\,
	combout => \min_val[3]~3_combout\);

-- Location: LCCOMB_X71_Y50_N24
\min_decoder|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_decoder|Mux6~0_combout\ = (\min_val[2]~2_combout\ & (!\min_val[1]~1_combout\ & (\min_val[0]~0_combout\ $ (!\min_val[3]~3_combout\)))) # (!\min_val[2]~2_combout\ & (\min_val[0]~0_combout\ & (\min_val[1]~1_combout\ $ (!\min_val[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_val[0]~0_combout\,
	datab => \min_val[1]~1_combout\,
	datac => \min_val[2]~2_combout\,
	datad => \min_val[3]~3_combout\,
	combout => \min_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y50_N10
\min_decoder|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_decoder|Mux5~0_combout\ = (\min_val[1]~1_combout\ & ((\min_val[0]~0_combout\ & ((\min_val[3]~3_combout\))) # (!\min_val[0]~0_combout\ & (\min_val[2]~2_combout\)))) # (!\min_val[1]~1_combout\ & (\min_val[2]~2_combout\ & (\min_val[0]~0_combout\ $ 
-- (\min_val[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_val[0]~0_combout\,
	datab => \min_val[1]~1_combout\,
	datac => \min_val[2]~2_combout\,
	datad => \min_val[3]~3_combout\,
	combout => \min_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y50_N4
\min_decoder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_decoder|Mux4~0_combout\ = (\min_val[2]~2_combout\ & (\min_val[3]~3_combout\ & ((\min_val[1]~1_combout\) # (!\min_val[0]~0_combout\)))) # (!\min_val[2]~2_combout\ & (!\min_val[0]~0_combout\ & (\min_val[1]~1_combout\ & !\min_val[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_val[0]~0_combout\,
	datab => \min_val[1]~1_combout\,
	datac => \min_val[2]~2_combout\,
	datad => \min_val[3]~3_combout\,
	combout => \min_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y50_N6
\min_decoder|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_decoder|Mux3~0_combout\ = (\min_val[1]~1_combout\ & ((\min_val[0]~0_combout\ & (\min_val[2]~2_combout\)) # (!\min_val[0]~0_combout\ & (!\min_val[2]~2_combout\ & \min_val[3]~3_combout\)))) # (!\min_val[1]~1_combout\ & (!\min_val[3]~3_combout\ & 
-- (\min_val[0]~0_combout\ $ (\min_val[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_val[0]~0_combout\,
	datab => \min_val[1]~1_combout\,
	datac => \min_val[2]~2_combout\,
	datad => \min_val[3]~3_combout\,
	combout => \min_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y50_N8
\min_decoder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_decoder|Mux2~0_combout\ = (\min_val[1]~1_combout\ & (\min_val[0]~0_combout\ & ((!\min_val[3]~3_combout\)))) # (!\min_val[1]~1_combout\ & ((\min_val[2]~2_combout\ & ((!\min_val[3]~3_combout\))) # (!\min_val[2]~2_combout\ & (\min_val[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_val[0]~0_combout\,
	datab => \min_val[1]~1_combout\,
	datac => \min_val[2]~2_combout\,
	datad => \min_val[3]~3_combout\,
	combout => \min_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y50_N2
\min_decoder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_decoder|Mux1~0_combout\ = (\min_val[0]~0_combout\ & (\min_val[3]~3_combout\ $ (((\min_val[1]~1_combout\) # (!\min_val[2]~2_combout\))))) # (!\min_val[0]~0_combout\ & (\min_val[1]~1_combout\ & (!\min_val[2]~2_combout\ & !\min_val[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_val[0]~0_combout\,
	datab => \min_val[1]~1_combout\,
	datac => \min_val[2]~2_combout\,
	datad => \min_val[3]~3_combout\,
	combout => \min_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y50_N28
\min_decoder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \min_decoder|Mux0~0_combout\ = (\min_val[0]~0_combout\ & ((\min_val[3]~3_combout\) # (\min_val[1]~1_combout\ $ (\min_val[2]~2_combout\)))) # (!\min_val[0]~0_combout\ & ((\min_val[1]~1_combout\) # (\min_val[2]~2_combout\ $ (\min_val[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_val[0]~0_combout\,
	datab => \min_val[1]~1_combout\,
	datac => \min_val[2]~2_combout\,
	datad => \min_val[3]~3_combout\,
	combout => \min_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X59_Y53_N8
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\entrada1[3]~input_o\ & (\entrada2[3]~input_o\ & (!\entrada1[2]~input_o\ & \entrada2[2]~input_o\))) # (!\entrada1[3]~input_o\ & ((\entrada2[3]~input_o\) # ((!\entrada1[2]~input_o\ & \entrada2[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[3]~input_o\,
	datab => \entrada2[3]~input_o\,
	datac => \entrada1[2]~input_o\,
	datad => \entrada2[2]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X59_Y53_N26
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\entrada1[1]~input_o\ & (\entrada2[1]~input_o\ & (!\entrada1[0]~input_o\ & \entrada2[0]~input_o\))) # (!\entrada1[1]~input_o\ & ((\entrada2[1]~input_o\) # ((!\entrada1[0]~input_o\ & \entrada2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[1]~input_o\,
	datab => \entrada2[1]~input_o\,
	datac => \entrada1[0]~input_o\,
	datad => \entrada2[0]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X59_Y53_N12
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\) # ((\LessThan1~1_combout\ & \LessThan0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X59_Y53_N2
\max_val[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_val[2]~2_combout\ = (\LessThan1~2_combout\ & (\entrada2[2]~input_o\)) # (!\LessThan1~2_combout\ & ((\entrada1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada2[2]~input_o\,
	datac => \entrada1[2]~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \max_val[2]~2_combout\);

-- Location: LCCOMB_X59_Y53_N24
\max_val[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_val[1]~1_combout\ = (\LessThan1~2_combout\ & (\entrada2[1]~input_o\)) # (!\LessThan1~2_combout\ & ((\entrada1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada2[1]~input_o\,
	datac => \entrada1[1]~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \max_val[1]~1_combout\);

-- Location: LCCOMB_X59_Y53_N4
\max_val[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_val[3]~3_combout\ = (\LessThan1~2_combout\ & ((\entrada2[3]~input_o\))) # (!\LessThan1~2_combout\ & (\entrada1[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada1[3]~input_o\,
	datab => \entrada2[3]~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \max_val[3]~3_combout\);

-- Location: LCCOMB_X59_Y53_N14
\max_val[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_val[0]~0_combout\ = (\LessThan1~2_combout\ & (\entrada2[0]~input_o\)) # (!\LessThan1~2_combout\ & ((\entrada1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada2[0]~input_o\,
	datac => \entrada1[0]~input_o\,
	datad => \LessThan1~2_combout\,
	combout => \max_val[0]~0_combout\);

-- Location: LCCOMB_X65_Y53_N0
\max_decoder|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_decoder|Mux6~0_combout\ = (\max_val[2]~2_combout\ & (!\max_val[1]~1_combout\ & (\max_val[3]~3_combout\ $ (!\max_val[0]~0_combout\)))) # (!\max_val[2]~2_combout\ & (\max_val[0]~0_combout\ & (\max_val[1]~1_combout\ $ (!\max_val[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_val[2]~2_combout\,
	datab => \max_val[1]~1_combout\,
	datac => \max_val[3]~3_combout\,
	datad => \max_val[0]~0_combout\,
	combout => \max_decoder|Mux6~0_combout\);

-- Location: LCCOMB_X65_Y53_N2
\max_decoder|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_decoder|Mux5~0_combout\ = (\max_val[1]~1_combout\ & ((\max_val[0]~0_combout\ & ((\max_val[3]~3_combout\))) # (!\max_val[0]~0_combout\ & (\max_val[2]~2_combout\)))) # (!\max_val[1]~1_combout\ & (\max_val[2]~2_combout\ & (\max_val[3]~3_combout\ $ 
-- (\max_val[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_val[2]~2_combout\,
	datab => \max_val[1]~1_combout\,
	datac => \max_val[3]~3_combout\,
	datad => \max_val[0]~0_combout\,
	combout => \max_decoder|Mux5~0_combout\);

-- Location: LCCOMB_X65_Y53_N28
\max_decoder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_decoder|Mux4~0_combout\ = (\max_val[2]~2_combout\ & (\max_val[3]~3_combout\ & ((\max_val[1]~1_combout\) # (!\max_val[0]~0_combout\)))) # (!\max_val[2]~2_combout\ & (\max_val[1]~1_combout\ & (!\max_val[3]~3_combout\ & !\max_val[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_val[2]~2_combout\,
	datab => \max_val[1]~1_combout\,
	datac => \max_val[3]~3_combout\,
	datad => \max_val[0]~0_combout\,
	combout => \max_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X65_Y53_N22
\max_decoder|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_decoder|Mux3~0_combout\ = (\max_val[1]~1_combout\ & ((\max_val[2]~2_combout\ & ((\max_val[0]~0_combout\))) # (!\max_val[2]~2_combout\ & (\max_val[3]~3_combout\ & !\max_val[0]~0_combout\)))) # (!\max_val[1]~1_combout\ & (!\max_val[3]~3_combout\ & 
-- (\max_val[2]~2_combout\ $ (\max_val[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_val[2]~2_combout\,
	datab => \max_val[1]~1_combout\,
	datac => \max_val[3]~3_combout\,
	datad => \max_val[0]~0_combout\,
	combout => \max_decoder|Mux3~0_combout\);

-- Location: LCCOMB_X65_Y53_N16
\max_decoder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_decoder|Mux2~0_combout\ = (\max_val[1]~1_combout\ & (((!\max_val[3]~3_combout\ & \max_val[0]~0_combout\)))) # (!\max_val[1]~1_combout\ & ((\max_val[2]~2_combout\ & (!\max_val[3]~3_combout\)) # (!\max_val[2]~2_combout\ & ((\max_val[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_val[2]~2_combout\,
	datab => \max_val[1]~1_combout\,
	datac => \max_val[3]~3_combout\,
	datad => \max_val[0]~0_combout\,
	combout => \max_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X65_Y53_N10
\max_decoder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_decoder|Mux1~0_combout\ = (\max_val[2]~2_combout\ & (\max_val[0]~0_combout\ & (\max_val[1]~1_combout\ $ (\max_val[3]~3_combout\)))) # (!\max_val[2]~2_combout\ & (!\max_val[3]~3_combout\ & ((\max_val[1]~1_combout\) # (\max_val[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_val[2]~2_combout\,
	datab => \max_val[1]~1_combout\,
	datac => \max_val[3]~3_combout\,
	datad => \max_val[0]~0_combout\,
	combout => \max_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X65_Y53_N12
\max_decoder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \max_decoder|Mux0~0_combout\ = (\max_val[0]~0_combout\ & ((\max_val[3]~3_combout\) # (\max_val[2]~2_combout\ $ (\max_val[1]~1_combout\)))) # (!\max_val[0]~0_combout\ & ((\max_val[1]~1_combout\) # (\max_val[2]~2_combout\ $ (\max_val[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \max_val[2]~2_combout\,
	datab => \max_val[1]~1_combout\,
	datac => \max_val[3]~3_combout\,
	datad => \max_val[0]~0_combout\,
	combout => \max_decoder|Mux0~0_combout\);

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

ww_min_seg(0) <= \min_seg[0]~output_o\;

ww_min_seg(1) <= \min_seg[1]~output_o\;

ww_min_seg(2) <= \min_seg[2]~output_o\;

ww_min_seg(3) <= \min_seg[3]~output_o\;

ww_min_seg(4) <= \min_seg[4]~output_o\;

ww_min_seg(5) <= \min_seg[5]~output_o\;

ww_min_seg(6) <= \min_seg[6]~output_o\;

ww_min_seg(7) <= \min_seg[7]~output_o\;

ww_max_seg(0) <= \max_seg[0]~output_o\;

ww_max_seg(1) <= \max_seg[1]~output_o\;

ww_max_seg(2) <= \max_seg[2]~output_o\;

ww_max_seg(3) <= \max_seg[3]~output_o\;

ww_max_seg(4) <= \max_seg[4]~output_o\;

ww_max_seg(5) <= \max_seg[5]~output_o\;

ww_max_seg(6) <= \max_seg[6]~output_o\;

ww_max_seg(7) <= \max_seg[7]~output_o\;
END structure;


