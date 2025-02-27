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

-- DATE "12/05/2024 16:26:41"

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

ENTITY 	projeto3 IS
    PORT (
	switches1 : IN std_logic_vector(3 DOWNTO 0);
	switches2 : IN std_logic_vector(3 DOWNTO 0);
	SSD1 : BUFFER std_logic_vector(7 DOWNTO 0);
	SSD2 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END projeto3;

-- Design Ports Information
-- SSD1[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD1[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD1[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD1[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD1[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD1[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD1[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD1[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD2[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches1[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches1[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches1[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches1[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches2[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches2[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches2[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switches2[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projeto3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switches1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_switches2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SSD1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SSD2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \SSD1[0]~output_o\ : std_logic;
SIGNAL \SSD1[1]~output_o\ : std_logic;
SIGNAL \SSD1[2]~output_o\ : std_logic;
SIGNAL \SSD1[3]~output_o\ : std_logic;
SIGNAL \SSD1[4]~output_o\ : std_logic;
SIGNAL \SSD1[5]~output_o\ : std_logic;
SIGNAL \SSD1[6]~output_o\ : std_logic;
SIGNAL \SSD1[7]~output_o\ : std_logic;
SIGNAL \SSD2[0]~output_o\ : std_logic;
SIGNAL \SSD2[1]~output_o\ : std_logic;
SIGNAL \SSD2[2]~output_o\ : std_logic;
SIGNAL \SSD2[3]~output_o\ : std_logic;
SIGNAL \SSD2[4]~output_o\ : std_logic;
SIGNAL \SSD2[5]~output_o\ : std_logic;
SIGNAL \SSD2[6]~output_o\ : std_logic;
SIGNAL \SSD2[7]~output_o\ : std_logic;
SIGNAL \switches1[0]~input_o\ : std_logic;
SIGNAL \switches1[1]~input_o\ : std_logic;
SIGNAL \switches1[2]~input_o\ : std_logic;
SIGNAL \switches1[3]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \switches2[2]~input_o\ : std_logic;
SIGNAL \switches2[0]~input_o\ : std_logic;
SIGNAL \switches2[1]~input_o\ : std_logic;
SIGNAL \switches2[3]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_switches1 <= switches1;
ww_switches2 <= switches2;
SSD1 <= ww_SSD1;
SSD2 <= ww_SSD2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_Mux9~0_combout\ <= NOT \Mux9~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
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

-- Location: IOOBUF_X58_Y54_N16
\SSD1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\SSD1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\SSD1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\SSD1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\SSD1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SSD1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\SSD1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\SSD1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \SSD1[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\SSD2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\SSD2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\SSD2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\SSD2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\SSD2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\SSD2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\SSD2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\SSD2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~0_combout\,
	devoe => ww_devoe,
	o => \SSD2[7]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\switches1[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches1(0),
	o => \switches1[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\switches1[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches1(1),
	o => \switches1[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\switches1[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches1(2),
	o => \switches1[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\switches1[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches1(3),
	o => \switches1[3]~input_o\);

-- Location: LCCOMB_X63_Y53_N24
\Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\switches1[1]~input_o\ & (!\switches1[3]~input_o\ & (\switches1[0]~input_o\ $ (\switches1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches1[0]~input_o\,
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X63_Y53_N10
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\switches1[2]~input_o\ & (!\switches1[3]~input_o\ & (\switches1[0]~input_o\ $ (\switches1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches1[0]~input_o\,
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X63_Y53_N12
\Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\switches1[0]~input_o\ & (\switches1[1]~input_o\ & (!\switches1[2]~input_o\ & !\switches1[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches1[0]~input_o\,
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X63_Y53_N22
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\switches1[3]~input_o\ & ((\switches1[0]~input_o\ & (\switches1[1]~input_o\ $ (!\switches1[2]~input_o\))) # (!\switches1[0]~input_o\ & (!\switches1[1]~input_o\ & \switches1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches1[0]~input_o\,
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X63_Y53_N16
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\switches1[1]~input_o\ & (\switches1[0]~input_o\ & ((!\switches1[3]~input_o\)))) # (!\switches1[1]~input_o\ & ((\switches1[2]~input_o\ & ((!\switches1[3]~input_o\))) # (!\switches1[2]~input_o\ & (\switches1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches1[0]~input_o\,
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X63_Y53_N2
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\switches1[3]~input_o\ & ((\switches1[0]~input_o\ & ((\switches1[1]~input_o\) # (!\switches1[2]~input_o\))) # (!\switches1[0]~input_o\ & (\switches1[1]~input_o\ & !\switches1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches1[0]~input_o\,
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X63_Y53_N20
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\switches1[3]~input_o\) # ((\switches1[1]~input_o\ & ((!\switches1[2]~input_o\) # (!\switches1[0]~input_o\))) # (!\switches1[1]~input_o\ & ((\switches1[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches1[0]~input_o\,
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X63_Y53_N6
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ((!\switches1[1]~input_o\ & !\switches1[2]~input_o\)) # (!\switches1[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switches1[1]~input_o\,
	datac => \switches1[2]~input_o\,
	datad => \switches1[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: IOIBUF_X54_Y54_N15
\switches2[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches2(2),
	o => \switches2[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\switches2[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches2(0),
	o => \switches2[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\switches2[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches2(1),
	o => \switches2[1]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\switches2[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switches2(3),
	o => \switches2[3]~input_o\);

-- Location: LCCOMB_X65_Y53_N16
\Mux15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!\switches2[1]~input_o\ & (!\switches2[3]~input_o\ & (\switches2[2]~input_o\ $ (\switches2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datab => \switches2[0]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X65_Y53_N10
\Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\switches2[2]~input_o\ & (!\switches2[3]~input_o\ & (\switches2[0]~input_o\ $ (\switches2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datab => \switches2[0]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X65_Y53_N20
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\switches2[2]~input_o\ & (!\switches2[0]~input_o\ & (\switches2[1]~input_o\ & !\switches2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datab => \switches2[0]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X65_Y53_N22
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (!\switches2[3]~input_o\ & ((\switches2[2]~input_o\ & (\switches2[0]~input_o\ $ (!\switches2[1]~input_o\))) # (!\switches2[2]~input_o\ & (\switches2[0]~input_o\ & !\switches2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datab => \switches2[0]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X65_Y53_N24
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\switches2[1]~input_o\ & (((\switches2[0]~input_o\ & !\switches2[3]~input_o\)))) # (!\switches2[1]~input_o\ & ((\switches2[2]~input_o\ & ((!\switches2[3]~input_o\))) # (!\switches2[2]~input_o\ & (\switches2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datab => \switches2[0]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X65_Y53_N26
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\switches2[3]~input_o\ & ((\switches2[2]~input_o\ & (\switches2[0]~input_o\ & \switches2[1]~input_o\)) # (!\switches2[2]~input_o\ & ((\switches2[0]~input_o\) # (\switches2[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datab => \switches2[0]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X65_Y53_N28
\Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\switches2[3]~input_o\) # ((\switches2[2]~input_o\ & ((!\switches2[1]~input_o\) # (!\switches2[0]~input_o\))) # (!\switches2[2]~input_o\ & ((\switches2[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datab => \switches2[0]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X65_Y53_N6
\Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ((!\switches2[2]~input_o\ & !\switches2[1]~input_o\)) # (!\switches2[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switches2[2]~input_o\,
	datac => \switches2[1]~input_o\,
	datad => \switches2[3]~input_o\,
	combout => \Mux8~0_combout\);

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

ww_SSD1(0) <= \SSD1[0]~output_o\;

ww_SSD1(1) <= \SSD1[1]~output_o\;

ww_SSD1(2) <= \SSD1[2]~output_o\;

ww_SSD1(3) <= \SSD1[3]~output_o\;

ww_SSD1(4) <= \SSD1[4]~output_o\;

ww_SSD1(5) <= \SSD1[5]~output_o\;

ww_SSD1(6) <= \SSD1[6]~output_o\;

ww_SSD1(7) <= \SSD1[7]~output_o\;

ww_SSD2(0) <= \SSD2[0]~output_o\;

ww_SSD2(1) <= \SSD2[1]~output_o\;

ww_SSD2(2) <= \SSD2[2]~output_o\;

ww_SSD2(3) <= \SSD2[3]~output_o\;

ww_SSD2(4) <= \SSD2[4]~output_o\;

ww_SSD2(5) <= \SSD2[5]~output_o\;

ww_SSD2(6) <= \SSD2[6]~output_o\;

ww_SSD2(7) <= \SSD2[7]~output_o\;
END structure;


