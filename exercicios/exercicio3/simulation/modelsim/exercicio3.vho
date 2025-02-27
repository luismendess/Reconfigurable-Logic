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

-- DATE "12/06/2024 16:46:23"

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


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exercicio3 IS
    PORT (
	clk : IN std_logic;
	count1 : BUFFER std_logic_vector(3 DOWNTO 0);
	count2 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END exercicio3;

-- Design Ports Information
-- count1[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count1[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count1[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count1[3]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count2[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count2[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count2[2]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- count2[3]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_count1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_count2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \count1[0]~output_o\ : std_logic;
SIGNAL \count1[1]~output_o\ : std_logic;
SIGNAL \count1[2]~output_o\ : std_logic;
SIGNAL \count1[3]~output_o\ : std_logic;
SIGNAL \count2[0]~output_o\ : std_logic;
SIGNAL \count2[1]~output_o\ : std_logic;
SIGNAL \count2[2]~output_o\ : std_logic;
SIGNAL \count2[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \internal_count1[2]~2_combout\ : std_logic;
SIGNAL \internal_count1~1_combout\ : std_logic;
SIGNAL \internal_count1~3_combout\ : std_logic;
SIGNAL \internal_count1~0_combout\ : std_logic;
SIGNAL \counter2:var[0]~0_combout\ : std_logic;
SIGNAL \counter2:var[0]~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \counter2:var[2]~q\ : std_logic;
SIGNAL \var~1_combout\ : std_logic;
SIGNAL \counter2:var[3]~q\ : std_logic;
SIGNAL \var~0_combout\ : std_logic;
SIGNAL \counter2:var[1]~q\ : std_logic;
SIGNAL internal_count1 : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
count1 <= ww_count1;
count2 <= ww_count2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N24
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

-- Location: IOOBUF_X26_Y39_N30
\count1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_count1(0),
	devoe => ww_devoe,
	o => \count1[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\count1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_count1(1),
	devoe => ww_devoe,
	o => \count1[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\count1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_count1(2),
	devoe => ww_devoe,
	o => \count1[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\count1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_count1(3),
	devoe => ww_devoe,
	o => \count1[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\count2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2:var[0]~q\,
	devoe => ww_devoe,
	o => \count2[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\count2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2:var[1]~q\,
	devoe => ww_devoe,
	o => \count2[1]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\count2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2:var[2]~q\,
	devoe => ww_devoe,
	o => \count2[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\count2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \counter2:var[3]~q\,
	devoe => ww_devoe,
	o => \count2[3]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X25_Y38_N24
\internal_count1[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \internal_count1[2]~2_combout\ = internal_count1(2) $ (((internal_count1(1) & internal_count1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => internal_count1(1),
	datac => internal_count1(2),
	datad => internal_count1(0),
	combout => \internal_count1[2]~2_combout\);

-- Location: FF_X25_Y38_N25
\internal_count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_count1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_count1(2));

-- Location: LCCOMB_X25_Y38_N18
\internal_count1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \internal_count1~1_combout\ = (internal_count1(1) & (!internal_count1(0) & ((internal_count1(2)) # (!internal_count1(3))))) # (!internal_count1(1) & (((internal_count1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_count1(3),
	datab => internal_count1(2),
	datac => internal_count1(1),
	datad => internal_count1(0),
	combout => \internal_count1~1_combout\);

-- Location: FF_X25_Y38_N19
\internal_count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_count1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_count1(1));

-- Location: LCCOMB_X25_Y38_N22
\internal_count1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \internal_count1~3_combout\ = (internal_count1(0) & (internal_count1(3) $ (((internal_count1(1) & internal_count1(2)))))) # (!internal_count1(0) & (internal_count1(3) & ((internal_count1(2)) # (!internal_count1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_count1(0),
	datab => internal_count1(1),
	datac => internal_count1(3),
	datad => internal_count1(2),
	combout => \internal_count1~3_combout\);

-- Location: FF_X25_Y38_N23
\internal_count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_count1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_count1(3));

-- Location: LCCOMB_X25_Y38_N12
\internal_count1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \internal_count1~0_combout\ = (!internal_count1(0) & (((internal_count1(2)) # (!internal_count1(1))) # (!internal_count1(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => internal_count1(3),
	datab => internal_count1(1),
	datac => internal_count1(0),
	datad => internal_count1(2),
	combout => \internal_count1~0_combout\);

-- Location: FF_X25_Y38_N13
\internal_count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \internal_count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_count1(0));

-- Location: LCCOMB_X15_Y1_N12
\counter2:var[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \counter2:var[0]~0_combout\ = !\counter2:var[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \counter2:var[0]~q\,
	combout => \counter2:var[0]~0_combout\);

-- Location: FF_X15_Y1_N13
\counter2:var[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter2:var[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2:var[0]~q\);

-- Location: LCCOMB_X15_Y1_N16
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \counter2:var[2]~q\ $ (((\counter2:var[1]~q\ & \counter2:var[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter2:var[1]~q\,
	datac => \counter2:var[2]~q\,
	datad => \counter2:var[0]~q\,
	combout => \Add1~0_combout\);

-- Location: FF_X15_Y1_N17
\counter2:var[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2:var[2]~q\);

-- Location: LCCOMB_X15_Y1_N30
\var~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \var~1_combout\ = (\counter2:var[0]~q\ & ((\counter2:var[1]~q\ & (\counter2:var[3]~q\ $ (\counter2:var[2]~q\))) # (!\counter2:var[1]~q\ & (\counter2:var[3]~q\ & \counter2:var[2]~q\)))) # (!\counter2:var[0]~q\ & (((\counter2:var[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2:var[0]~q\,
	datab => \counter2:var[1]~q\,
	datac => \counter2:var[3]~q\,
	datad => \counter2:var[2]~q\,
	combout => \var~1_combout\);

-- Location: FF_X15_Y1_N31
\counter2:var[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2:var[3]~q\);

-- Location: LCCOMB_X15_Y1_N2
\var~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \var~0_combout\ = (\counter2:var[1]~q\ & (((!\counter2:var[0]~q\)))) # (!\counter2:var[1]~q\ & (\counter2:var[0]~q\ & ((\counter2:var[2]~q\) # (!\counter2:var[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter2:var[3]~q\,
	datab => \counter2:var[2]~q\,
	datac => \counter2:var[1]~q\,
	datad => \counter2:var[0]~q\,
	combout => \var~0_combout\);

-- Location: FF_X15_Y1_N3
\counter2:var[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \var~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter2:var[1]~q\);

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

ww_count1(0) <= \count1[0]~output_o\;

ww_count1(1) <= \count1[1]~output_o\;

ww_count1(2) <= \count1[2]~output_o\;

ww_count1(3) <= \count1[3]~output_o\;

ww_count2(0) <= \count2[0]~output_o\;

ww_count2(1) <= \count2[1]~output_o\;

ww_count2(2) <= \count2[2]~output_o\;

ww_count2(3) <= \count2[3]~output_o\;
END structure;


