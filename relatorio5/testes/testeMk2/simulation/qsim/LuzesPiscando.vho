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

-- DATE "12/19/2024 13:44:11"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	LuzesPiscando IS
    PORT (
	clock : IN std_logic;
	enable : IN std_logic;
	botaoVelocidade : IN std_logic;
	botaoReset : IN std_logic;
	LEDs : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END LuzesPiscando;

-- Design Ports Information
-- LEDs[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDs[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botaoReset	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- botaoVelocidade	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LuzesPiscando IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_botaoVelocidade : std_logic;
SIGNAL ww_botaoReset : std_logic;
SIGNAL ww_LEDs : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDs[0]~output_o\ : std_logic;
SIGNAL \LEDs[1]~output_o\ : std_logic;
SIGNAL \LEDs[2]~output_o\ : std_logic;
SIGNAL \LEDs[3]~output_o\ : std_logic;
SIGNAL \LEDs[4]~output_o\ : std_logic;
SIGNAL \LEDs[5]~output_o\ : std_logic;
SIGNAL \LEDs[6]~output_o\ : std_logic;
SIGNAL \LEDs[7]~output_o\ : std_logic;
SIGNAL \LEDs[8]~output_o\ : std_logic;
SIGNAL \LEDs[9]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \botaoReset~input_o\ : std_logic;
SIGNAL \botaoResetPrev~feeder_combout\ : std_logic;
SIGNAL \botaoResetPrev~q\ : std_logic;
SIGNAL \resetAtivado~0_combout\ : std_logic;
SIGNAL \resetAtivado~q\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \pausado~0_combout\ : std_logic;
SIGNAL \pausado~1_combout\ : std_logic;
SIGNAL \pausado~q\ : std_logic;
SIGNAL \contador[0]~32_combout\ : std_logic;
SIGNAL \contador[19]~96_combout\ : std_logic;
SIGNAL \contador[0]~33\ : std_logic;
SIGNAL \contador[1]~34_combout\ : std_logic;
SIGNAL \contador[1]~35\ : std_logic;
SIGNAL \contador[2]~36_combout\ : std_logic;
SIGNAL \contador[2]~37\ : std_logic;
SIGNAL \contador[3]~38_combout\ : std_logic;
SIGNAL \contador[3]~39\ : std_logic;
SIGNAL \contador[4]~40_combout\ : std_logic;
SIGNAL \contador[4]~41\ : std_logic;
SIGNAL \contador[5]~42_combout\ : std_logic;
SIGNAL \contador[5]~43\ : std_logic;
SIGNAL \contador[6]~44_combout\ : std_logic;
SIGNAL \contador[6]~45\ : std_logic;
SIGNAL \contador[7]~46_combout\ : std_logic;
SIGNAL \contador[7]~47\ : std_logic;
SIGNAL \contador[8]~48_combout\ : std_logic;
SIGNAL \contador[8]~49\ : std_logic;
SIGNAL \contador[9]~50_combout\ : std_logic;
SIGNAL \contador[9]~51\ : std_logic;
SIGNAL \contador[10]~52_combout\ : std_logic;
SIGNAL \contador[10]~53\ : std_logic;
SIGNAL \contador[11]~54_combout\ : std_logic;
SIGNAL \contador[11]~55\ : std_logic;
SIGNAL \contador[12]~56_combout\ : std_logic;
SIGNAL \contador[12]~57\ : std_logic;
SIGNAL \contador[13]~58_combout\ : std_logic;
SIGNAL \contador[13]~59\ : std_logic;
SIGNAL \contador[14]~60_combout\ : std_logic;
SIGNAL \contador[14]~61\ : std_logic;
SIGNAL \contador[15]~62_combout\ : std_logic;
SIGNAL \contador[15]~63\ : std_logic;
SIGNAL \contador[16]~64_combout\ : std_logic;
SIGNAL \contador[16]~65\ : std_logic;
SIGNAL \contador[17]~66_combout\ : std_logic;
SIGNAL \contador[17]~67\ : std_logic;
SIGNAL \contador[18]~68_combout\ : std_logic;
SIGNAL \contador[18]~69\ : std_logic;
SIGNAL \contador[19]~70_combout\ : std_logic;
SIGNAL \velocidade~2_combout\ : std_logic;
SIGNAL \botaoVelocidade~input_o\ : std_logic;
SIGNAL \botaoVelocidadePrev~0_combout\ : std_logic;
SIGNAL \botaoVelocidadePrev~q\ : std_logic;
SIGNAL \velocidade[0]~1_combout\ : std_logic;
SIGNAL \velocidade~0_combout\ : std_logic;
SIGNAL \contador[19]~71\ : std_logic;
SIGNAL \contador[20]~72_combout\ : std_logic;
SIGNAL \contador[20]~73\ : std_logic;
SIGNAL \contador[21]~74_combout\ : std_logic;
SIGNAL \contador[21]~75\ : std_logic;
SIGNAL \contador[22]~76_combout\ : std_logic;
SIGNAL \contador[22]~77\ : std_logic;
SIGNAL \contador[23]~78_combout\ : std_logic;
SIGNAL \LessThan1~29_combout\ : std_logic;
SIGNAL \LessThan1~28_combout\ : std_logic;
SIGNAL \LessThan1~33_combout\ : std_logic;
SIGNAL \LessThan1~30_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~31_combout\ : std_logic;
SIGNAL \contador[23]~79\ : std_logic;
SIGNAL \contador[24]~80_combout\ : std_logic;
SIGNAL \contador[24]~81\ : std_logic;
SIGNAL \contador[25]~82_combout\ : std_logic;
SIGNAL \contador[25]~83\ : std_logic;
SIGNAL \contador[26]~84_combout\ : std_logic;
SIGNAL \contador[26]~85\ : std_logic;
SIGNAL \contador[27]~86_combout\ : std_logic;
SIGNAL \contador[27]~87\ : std_logic;
SIGNAL \contador[28]~88_combout\ : std_logic;
SIGNAL \contador[28]~89\ : std_logic;
SIGNAL \contador[29]~90_combout\ : std_logic;
SIGNAL \contador[29]~91\ : std_logic;
SIGNAL \contador[30]~92_combout\ : std_logic;
SIGNAL \contador[30]~93\ : std_logic;
SIGNAL \contador[31]~94_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~24_combout\ : std_logic;
SIGNAL \LessThan1~25_combout\ : std_logic;
SIGNAL \LessThan1~22_combout\ : std_logic;
SIGNAL \LessThan1~23_combout\ : std_logic;
SIGNAL \LessThan1~15_combout\ : std_logic;
SIGNAL \LessThan1~16_combout\ : std_logic;
SIGNAL \LessThan1~17_combout\ : std_logic;
SIGNAL \LessThan1~21_combout\ : std_logic;
SIGNAL \LessThan1~19_combout\ : std_logic;
SIGNAL \LessThan1~20_combout\ : std_logic;
SIGNAL \LessThan1~26_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \LessThan1~18_combout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \LessThan1~11_combout\ : std_logic;
SIGNAL \LessThan1~13_combout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \LessThan1~34_combout\ : std_logic;
SIGNAL \LessThan1~35_combout\ : std_logic;
SIGNAL \LessThan1~27_combout\ : std_logic;
SIGNAL \LessThan1~32_combout\ : std_logic;
SIGNAL \indiceLED~0_combout\ : std_logic;
SIGNAL \indiceLED~5_combout\ : std_logic;
SIGNAL \indiceLED~6_combout\ : std_logic;
SIGNAL \LEDs[1]~11_combout\ : std_logic;
SIGNAL \indiceLED~1_combout\ : std_logic;
SIGNAL \direcao~1_combout\ : std_logic;
SIGNAL \direcao~0_combout\ : std_logic;
SIGNAL \direcao~2_combout\ : std_logic;
SIGNAL \direcao~q\ : std_logic;
SIGNAL \indiceLED~4_combout\ : std_logic;
SIGNAL \indiceLED~7_combout\ : std_logic;
SIGNAL \indiceLED~8_combout\ : std_logic;
SIGNAL \indiceLED~2_combout\ : std_logic;
SIGNAL \indiceLED~3_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \LEDs~0_combout\ : std_logic;
SIGNAL \LEDs[1]~1_combout\ : std_logic;
SIGNAL \LEDs[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \LEDs~2_combout\ : std_logic;
SIGNAL \LEDs[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \LEDs~3_combout\ : std_logic;
SIGNAL \LEDs[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \LEDs~4_combout\ : std_logic;
SIGNAL \LEDs[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \LEDs~5_combout\ : std_logic;
SIGNAL \LEDs[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \LEDs~6_combout\ : std_logic;
SIGNAL \LEDs[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \LEDs~7_combout\ : std_logic;
SIGNAL \LEDs[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \LEDs~8_combout\ : std_logic;
SIGNAL \LEDs[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \LEDs~9_combout\ : std_logic;
SIGNAL \LEDs[8]~reg0_q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \LEDs~10_combout\ : std_logic;
SIGNAL \LEDs[9]~reg0_q\ : std_logic;
SIGNAL indiceLED : std_logic_vector(3 DOWNTO 0);
SIGNAL contador : std_logic_vector(31 DOWNTO 0);
SIGNAL velocidade : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_enable <= enable;
ww_botaoVelocidade <= botaoVelocidade;
ww_botaoReset <= botaoReset;
LEDs <= ww_LEDs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X46_Y54_N2
\LEDs[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[0]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDs[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[1]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDs[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[2]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDs[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[3]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDs[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[4]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDs[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[5]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDs[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[6]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDs[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[7]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDs[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[8]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDs[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDs[9]~reg0_q\,
	devoe => ww_devoe,
	o => \LEDs[9]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clock~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G19
\clock~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\botaoReset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botaoReset,
	o => \botaoReset~input_o\);

-- Location: LCCOMB_X64_Y52_N4
\botaoResetPrev~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \botaoResetPrev~feeder_combout\ = \botaoReset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \botaoReset~input_o\,
	combout => \botaoResetPrev~feeder_combout\);

-- Location: FF_X64_Y52_N5
botaoResetPrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \botaoResetPrev~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botaoResetPrev~q\);

-- Location: LCCOMB_X64_Y52_N0
\resetAtivado~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \resetAtivado~0_combout\ = (\resetAtivado~q\) # ((\botaoReset~input_o\ & !\botaoResetPrev~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \botaoReset~input_o\,
	datab => \botaoResetPrev~q\,
	datac => \resetAtivado~q\,
	combout => \resetAtivado~0_combout\);

-- Location: FF_X64_Y52_N1
resetAtivado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \resetAtivado~0_combout\,
	sclr => \resetAtivado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetAtivado~q\);

-- Location: IOIBUF_X69_Y54_N1
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X61_Y53_N4
\pausado~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pausado~0_combout\ = (\resetAtivado~q\) # (\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetAtivado~q\,
	datad => \enable~input_o\,
	combout => \pausado~0_combout\);

-- Location: LCCOMB_X61_Y52_N16
\pausado~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \pausado~1_combout\ = !\pausado~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pausado~0_combout\,
	combout => \pausado~1_combout\);

-- Location: FF_X61_Y52_N17
pausado : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \pausado~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pausado~q\);

-- Location: LCCOMB_X63_Y53_N0
\contador[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[0]~32_combout\ = contador(0) $ (VCC)
-- \contador[0]~33\ = CARRY(contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datad => VCC,
	combout => \contador[0]~32_combout\,
	cout => \contador[0]~33\);

-- Location: LCCOMB_X62_Y52_N0
\contador[19]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[19]~96_combout\ = (\resetAtivado~q\) # (!\LessThan1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datad => \LessThan1~32_combout\,
	combout => \contador[19]~96_combout\);

-- Location: FF_X63_Y53_N1
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[0]~32_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X63_Y53_N2
\contador[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[1]~34_combout\ = (contador(1) & (!\contador[0]~33\)) # (!contador(1) & ((\contador[0]~33\) # (GND)))
-- \contador[1]~35\ = CARRY((!\contador[0]~33\) # (!contador(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(1),
	datad => VCC,
	cin => \contador[0]~33\,
	combout => \contador[1]~34_combout\,
	cout => \contador[1]~35\);

-- Location: FF_X63_Y53_N3
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[1]~34_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X63_Y53_N4
\contador[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[2]~36_combout\ = (contador(2) & (\contador[1]~35\ $ (GND))) # (!contador(2) & (!\contador[1]~35\ & VCC))
-- \contador[2]~37\ = CARRY((contador(2) & !\contador[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => VCC,
	cin => \contador[1]~35\,
	combout => \contador[2]~36_combout\,
	cout => \contador[2]~37\);

-- Location: FF_X63_Y53_N5
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[2]~36_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X63_Y53_N6
\contador[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[3]~38_combout\ = (contador(3) & (!\contador[2]~37\)) # (!contador(3) & ((\contador[2]~37\) # (GND)))
-- \contador[3]~39\ = CARRY((!\contador[2]~37\) # (!contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datad => VCC,
	cin => \contador[2]~37\,
	combout => \contador[3]~38_combout\,
	cout => \contador[3]~39\);

-- Location: FF_X63_Y53_N7
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[3]~38_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X63_Y53_N8
\contador[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[4]~40_combout\ = (contador(4) & (\contador[3]~39\ $ (GND))) # (!contador(4) & (!\contador[3]~39\ & VCC))
-- \contador[4]~41\ = CARRY((contador(4) & !\contador[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(4),
	datad => VCC,
	cin => \contador[3]~39\,
	combout => \contador[4]~40_combout\,
	cout => \contador[4]~41\);

-- Location: FF_X62_Y53_N23
\contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[4]~40_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(4));

-- Location: LCCOMB_X63_Y53_N10
\contador[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[5]~42_combout\ = (contador(5) & (!\contador[4]~41\)) # (!contador(5) & ((\contador[4]~41\) # (GND)))
-- \contador[5]~43\ = CARRY((!\contador[4]~41\) # (!contador(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(5),
	datad => VCC,
	cin => \contador[4]~41\,
	combout => \contador[5]~42_combout\,
	cout => \contador[5]~43\);

-- Location: FF_X62_Y53_N5
\contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[5]~42_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(5));

-- Location: LCCOMB_X63_Y53_N12
\contador[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[6]~44_combout\ = (contador(6) & (\contador[5]~43\ $ (GND))) # (!contador(6) & (!\contador[5]~43\ & VCC))
-- \contador[6]~45\ = CARRY((contador(6) & !\contador[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(6),
	datad => VCC,
	cin => \contador[5]~43\,
	combout => \contador[6]~44_combout\,
	cout => \contador[6]~45\);

-- Location: FF_X62_Y53_N31
\contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[6]~44_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(6));

-- Location: LCCOMB_X63_Y53_N14
\contador[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[7]~46_combout\ = (contador(7) & (!\contador[6]~45\)) # (!contador(7) & ((\contador[6]~45\) # (GND)))
-- \contador[7]~47\ = CARRY((!\contador[6]~45\) # (!contador(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(7),
	datad => VCC,
	cin => \contador[6]~45\,
	combout => \contador[7]~46_combout\,
	cout => \contador[7]~47\);

-- Location: FF_X62_Y53_N13
\contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[7]~46_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(7));

-- Location: LCCOMB_X63_Y53_N16
\contador[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[8]~48_combout\ = (contador(8) & (\contador[7]~47\ $ (GND))) # (!contador(8) & (!\contador[7]~47\ & VCC))
-- \contador[8]~49\ = CARRY((contador(8) & !\contador[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(8),
	datad => VCC,
	cin => \contador[7]~47\,
	combout => \contador[8]~48_combout\,
	cout => \contador[8]~49\);

-- Location: FF_X63_Y53_N17
\contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[8]~48_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(8));

-- Location: LCCOMB_X63_Y53_N18
\contador[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[9]~50_combout\ = (contador(9) & (!\contador[8]~49\)) # (!contador(9) & ((\contador[8]~49\) # (GND)))
-- \contador[9]~51\ = CARRY((!\contador[8]~49\) # (!contador(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(9),
	datad => VCC,
	cin => \contador[8]~49\,
	combout => \contador[9]~50_combout\,
	cout => \contador[9]~51\);

-- Location: FF_X62_Y52_N1
\contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[9]~50_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(9));

-- Location: LCCOMB_X63_Y53_N20
\contador[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[10]~52_combout\ = (contador(10) & (\contador[9]~51\ $ (GND))) # (!contador(10) & (!\contador[9]~51\ & VCC))
-- \contador[10]~53\ = CARRY((contador(10) & !\contador[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(10),
	datad => VCC,
	cin => \contador[9]~51\,
	combout => \contador[10]~52_combout\,
	cout => \contador[10]~53\);

-- Location: FF_X63_Y53_N21
\contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[10]~52_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(10));

-- Location: LCCOMB_X63_Y53_N22
\contador[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[11]~54_combout\ = (contador(11) & (!\contador[10]~53\)) # (!contador(11) & ((\contador[10]~53\) # (GND)))
-- \contador[11]~55\ = CARRY((!\contador[10]~53\) # (!contador(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(11),
	datad => VCC,
	cin => \contador[10]~53\,
	combout => \contador[11]~54_combout\,
	cout => \contador[11]~55\);

-- Location: FF_X63_Y53_N23
\contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[11]~54_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(11));

-- Location: LCCOMB_X63_Y53_N24
\contador[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[12]~56_combout\ = (contador(12) & (\contador[11]~55\ $ (GND))) # (!contador(12) & (!\contador[11]~55\ & VCC))
-- \contador[12]~57\ = CARRY((contador(12) & !\contador[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(12),
	datad => VCC,
	cin => \contador[11]~55\,
	combout => \contador[12]~56_combout\,
	cout => \contador[12]~57\);

-- Location: FF_X62_Y52_N19
\contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[12]~56_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(12));

-- Location: LCCOMB_X63_Y53_N26
\contador[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[13]~58_combout\ = (contador(13) & (!\contador[12]~57\)) # (!contador(13) & ((\contador[12]~57\) # (GND)))
-- \contador[13]~59\ = CARRY((!\contador[12]~57\) # (!contador(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(13),
	datad => VCC,
	cin => \contador[12]~57\,
	combout => \contador[13]~58_combout\,
	cout => \contador[13]~59\);

-- Location: FF_X62_Y53_N17
\contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[13]~58_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(13));

-- Location: LCCOMB_X63_Y53_N28
\contador[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[14]~60_combout\ = (contador(14) & (\contador[13]~59\ $ (GND))) # (!contador(14) & (!\contador[13]~59\ & VCC))
-- \contador[14]~61\ = CARRY((contador(14) & !\contador[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(14),
	datad => VCC,
	cin => \contador[13]~59\,
	combout => \contador[14]~60_combout\,
	cout => \contador[14]~61\);

-- Location: FF_X62_Y52_N5
\contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[14]~60_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(14));

-- Location: LCCOMB_X63_Y53_N30
\contador[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[15]~62_combout\ = (contador(15) & (!\contador[14]~61\)) # (!contador(15) & ((\contador[14]~61\) # (GND)))
-- \contador[15]~63\ = CARRY((!\contador[14]~61\) # (!contador(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(15),
	datad => VCC,
	cin => \contador[14]~61\,
	combout => \contador[15]~62_combout\,
	cout => \contador[15]~63\);

-- Location: FF_X60_Y52_N9
\contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[15]~62_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(15));

-- Location: LCCOMB_X63_Y52_N0
\contador[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[16]~64_combout\ = (contador(16) & (\contador[15]~63\ $ (GND))) # (!contador(16) & (!\contador[15]~63\ & VCC))
-- \contador[16]~65\ = CARRY((contador(16) & !\contador[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(16),
	datad => VCC,
	cin => \contador[15]~63\,
	combout => \contador[16]~64_combout\,
	cout => \contador[16]~65\);

-- Location: FF_X62_Y52_N27
\contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \contador[16]~64_combout\,
	sclr => \contador[19]~96_combout\,
	sload => VCC,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(16));

-- Location: LCCOMB_X63_Y52_N2
\contador[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[17]~66_combout\ = (contador(17) & (!\contador[16]~65\)) # (!contador(17) & ((\contador[16]~65\) # (GND)))
-- \contador[17]~67\ = CARRY((!\contador[16]~65\) # (!contador(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(17),
	datad => VCC,
	cin => \contador[16]~65\,
	combout => \contador[17]~66_combout\,
	cout => \contador[17]~67\);

-- Location: FF_X63_Y52_N3
\contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[17]~66_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(17));

-- Location: LCCOMB_X63_Y52_N4
\contador[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[18]~68_combout\ = (contador(18) & (\contador[17]~67\ $ (GND))) # (!contador(18) & (!\contador[17]~67\ & VCC))
-- \contador[18]~69\ = CARRY((contador(18) & !\contador[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(18),
	datad => VCC,
	cin => \contador[17]~67\,
	combout => \contador[18]~68_combout\,
	cout => \contador[18]~69\);

-- Location: FF_X63_Y52_N5
\contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[18]~68_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(18));

-- Location: LCCOMB_X63_Y52_N6
\contador[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[19]~70_combout\ = (contador(19) & (!\contador[18]~69\)) # (!contador(19) & ((\contador[18]~69\) # (GND)))
-- \contador[19]~71\ = CARRY((!\contador[18]~69\) # (!contador(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datad => VCC,
	cin => \contador[18]~69\,
	combout => \contador[19]~70_combout\,
	cout => \contador[19]~71\);

-- Location: FF_X63_Y52_N7
\contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[19]~70_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(19));

-- Location: LCCOMB_X64_Y52_N22
\velocidade~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \velocidade~2_combout\ = (!velocidade(0) & !\resetAtivado~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => velocidade(0),
	datad => \resetAtivado~q\,
	combout => \velocidade~2_combout\);

-- Location: IOIBUF_X46_Y54_N29
\botaoVelocidade~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_botaoVelocidade,
	o => \botaoVelocidade~input_o\);

-- Location: LCCOMB_X61_Y53_N18
\botaoVelocidadePrev~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \botaoVelocidadePrev~0_combout\ = (\resetAtivado~q\ & (((\botaoVelocidadePrev~q\)))) # (!\resetAtivado~q\ & ((\enable~input_o\ & (\botaoVelocidade~input_o\)) # (!\enable~input_o\ & ((\botaoVelocidadePrev~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datab => \botaoVelocidade~input_o\,
	datac => \botaoVelocidadePrev~q\,
	datad => \enable~input_o\,
	combout => \botaoVelocidadePrev~0_combout\);

-- Location: FF_X61_Y53_N19
botaoVelocidadePrev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \botaoVelocidadePrev~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \botaoVelocidadePrev~q\);

-- Location: LCCOMB_X61_Y53_N8
\velocidade[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \velocidade[0]~1_combout\ = (\resetAtivado~q\) # ((!\botaoVelocidadePrev~q\ & (\botaoVelocidade~input_o\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datab => \botaoVelocidadePrev~q\,
	datac => \botaoVelocidade~input_o\,
	datad => \enable~input_o\,
	combout => \velocidade[0]~1_combout\);

-- Location: FF_X64_Y52_N23
\velocidade[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \velocidade~2_combout\,
	ena => \velocidade[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade(0));

-- Location: LCCOMB_X61_Y52_N10
\velocidade~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \velocidade~0_combout\ = (!\resetAtivado~q\ & (velocidade(0) $ (velocidade(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datab => \resetAtivado~q\,
	datac => velocidade(1),
	combout => \velocidade~0_combout\);

-- Location: FF_X61_Y52_N11
\velocidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \velocidade~0_combout\,
	ena => \velocidade[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade(1));

-- Location: LCCOMB_X63_Y52_N8
\contador[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[20]~72_combout\ = (contador(20) & (\contador[19]~71\ $ (GND))) # (!contador(20) & (!\contador[19]~71\ & VCC))
-- \contador[20]~73\ = CARRY((contador(20) & !\contador[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(20),
	datad => VCC,
	cin => \contador[19]~71\,
	combout => \contador[20]~72_combout\,
	cout => \contador[20]~73\);

-- Location: FF_X63_Y52_N9
\contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[20]~72_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(20));

-- Location: LCCOMB_X63_Y52_N10
\contador[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[21]~74_combout\ = (contador(21) & (!\contador[20]~73\)) # (!contador(21) & ((\contador[20]~73\) # (GND)))
-- \contador[21]~75\ = CARRY((!\contador[20]~73\) # (!contador(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(21),
	datad => VCC,
	cin => \contador[20]~73\,
	combout => \contador[21]~74_combout\,
	cout => \contador[21]~75\);

-- Location: FF_X63_Y52_N11
\contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[21]~74_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(21));

-- Location: LCCOMB_X63_Y52_N12
\contador[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[22]~76_combout\ = (contador(22) & (\contador[21]~75\ $ (GND))) # (!contador(22) & (!\contador[21]~75\ & VCC))
-- \contador[22]~77\ = CARRY((contador(22) & !\contador[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datad => VCC,
	cin => \contador[21]~75\,
	combout => \contador[22]~76_combout\,
	cout => \contador[22]~77\);

-- Location: FF_X63_Y52_N13
\contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[22]~76_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(22));

-- Location: LCCOMB_X63_Y52_N14
\contador[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[23]~78_combout\ = (contador(23) & (!\contador[22]~77\)) # (!contador(23) & ((\contador[22]~77\) # (GND)))
-- \contador[23]~79\ = CARRY((!\contador[22]~77\) # (!contador(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(23),
	datad => VCC,
	cin => \contador[22]~77\,
	combout => \contador[23]~78_combout\,
	cout => \contador[23]~79\);

-- Location: FF_X63_Y52_N15
\contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[23]~78_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(23));

-- Location: LCCOMB_X64_Y52_N28
\LessThan1~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~29_combout\ = (contador(22) & ((velocidade(1)) # ((contador(23))))) # (!contador(22) & ((velocidade(0) & ((contador(23)))) # (!velocidade(0) & (velocidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datab => velocidade(1),
	datac => velocidade(0),
	datad => contador(23),
	combout => \LessThan1~29_combout\);

-- Location: LCCOMB_X64_Y52_N26
\LessThan1~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~28_combout\ = (contador(23)) # ((contador(22) & ((velocidade(1)) # (velocidade(0)))) # (!contador(22) & (velocidade(1) & velocidade(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datab => velocidade(1),
	datac => velocidade(0),
	datad => contador(23),
	combout => \LessThan1~28_combout\);

-- Location: LCCOMB_X64_Y52_N2
\LessThan1~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~33_combout\ = (contador(20)) # (velocidade(0) $ (velocidade(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datac => velocidade(1),
	datad => contador(20),
	combout => \LessThan1~33_combout\);

-- Location: LCCOMB_X64_Y52_N30
\LessThan1~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~30_combout\ = (contador(21) & (!\LessThan1~28_combout\ & ((!\LessThan1~33_combout\) # (!\LessThan1~29_combout\)))) # (!contador(21) & (((!\LessThan1~29_combout\ & !\LessThan1~33_combout\)) # (!\LessThan1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(21),
	datab => \LessThan1~29_combout\,
	datac => \LessThan1~28_combout\,
	datad => \LessThan1~33_combout\,
	combout => \LessThan1~30_combout\);

-- Location: LCCOMB_X64_Y52_N8
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (!contador(21) & ((contador(23) & (!velocidade(0) & contador(20))) # (!contador(23) & (velocidade(0) & !contador(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(23),
	datab => contador(21),
	datac => velocidade(0),
	datad => contador(20),
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X64_Y52_N18
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (contador(21) & (!contador(23) & (!velocidade(0) & !contador(20)))) # (!contador(21) & (contador(20) & (contador(23) $ (velocidade(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(23),
	datab => velocidade(0),
	datac => contador(21),
	datad => contador(20),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X64_Y52_N20
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (contador(22) & (!velocidade(1) & (\LessThan1~5_combout\ & !\LessThan1~6_combout\))) # (!contador(22) & (\LessThan1~6_combout\ & (velocidade(1) $ (\LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(22),
	datab => velocidade(1),
	datac => \LessThan1~5_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X64_Y52_N12
\LessThan1~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~31_combout\ = (\LessThan1~30_combout\) # ((!contador(19) & (!velocidade(1) & \LessThan1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(19),
	datab => velocidade(1),
	datac => \LessThan1~30_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~31_combout\);

-- Location: LCCOMB_X63_Y52_N16
\contador[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[24]~80_combout\ = (contador(24) & (\contador[23]~79\ $ (GND))) # (!contador(24) & (!\contador[23]~79\ & VCC))
-- \contador[24]~81\ = CARRY((contador(24) & !\contador[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(24),
	datad => VCC,
	cin => \contador[23]~79\,
	combout => \contador[24]~80_combout\,
	cout => \contador[24]~81\);

-- Location: FF_X63_Y52_N17
\contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[24]~80_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(24));

-- Location: LCCOMB_X63_Y52_N18
\contador[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[25]~82_combout\ = (contador(25) & (!\contador[24]~81\)) # (!contador(25) & ((\contador[24]~81\) # (GND)))
-- \contador[25]~83\ = CARRY((!\contador[24]~81\) # (!contador(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(25),
	datad => VCC,
	cin => \contador[24]~81\,
	combout => \contador[25]~82_combout\,
	cout => \contador[25]~83\);

-- Location: FF_X63_Y52_N19
\contador[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[25]~82_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(25));

-- Location: LCCOMB_X63_Y52_N20
\contador[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[26]~84_combout\ = (contador(26) & (\contador[25]~83\ $ (GND))) # (!contador(26) & (!\contador[25]~83\ & VCC))
-- \contador[26]~85\ = CARRY((contador(26) & !\contador[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(26),
	datad => VCC,
	cin => \contador[25]~83\,
	combout => \contador[26]~84_combout\,
	cout => \contador[26]~85\);

-- Location: FF_X63_Y52_N21
\contador[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[26]~84_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(26));

-- Location: LCCOMB_X63_Y52_N22
\contador[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[27]~86_combout\ = (contador(27) & (!\contador[26]~85\)) # (!contador(27) & ((\contador[26]~85\) # (GND)))
-- \contador[27]~87\ = CARRY((!\contador[26]~85\) # (!contador(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(27),
	datad => VCC,
	cin => \contador[26]~85\,
	combout => \contador[27]~86_combout\,
	cout => \contador[27]~87\);

-- Location: FF_X63_Y52_N23
\contador[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[27]~86_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(27));

-- Location: LCCOMB_X63_Y52_N24
\contador[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[28]~88_combout\ = (contador(28) & (\contador[27]~87\ $ (GND))) # (!contador(28) & (!\contador[27]~87\ & VCC))
-- \contador[28]~89\ = CARRY((contador(28) & !\contador[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(28),
	datad => VCC,
	cin => \contador[27]~87\,
	combout => \contador[28]~88_combout\,
	cout => \contador[28]~89\);

-- Location: FF_X63_Y52_N25
\contador[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[28]~88_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(28));

-- Location: LCCOMB_X63_Y52_N26
\contador[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[29]~90_combout\ = (contador(29) & (!\contador[28]~89\)) # (!contador(29) & ((\contador[28]~89\) # (GND)))
-- \contador[29]~91\ = CARRY((!\contador[28]~89\) # (!contador(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(29),
	datad => VCC,
	cin => \contador[28]~89\,
	combout => \contador[29]~90_combout\,
	cout => \contador[29]~91\);

-- Location: FF_X63_Y52_N27
\contador[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[29]~90_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(29));

-- Location: LCCOMB_X63_Y52_N28
\contador[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[30]~92_combout\ = (contador(30) & (\contador[29]~91\ $ (GND))) # (!contador(30) & (!\contador[29]~91\ & VCC))
-- \contador[30]~93\ = CARRY((contador(30) & !\contador[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador(30),
	datad => VCC,
	cin => \contador[29]~91\,
	combout => \contador[30]~92_combout\,
	cout => \contador[30]~93\);

-- Location: FF_X63_Y52_N29
\contador[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[30]~92_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(30));

-- Location: LCCOMB_X63_Y52_N30
\contador[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[31]~94_combout\ = contador(31) $ (\contador[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador(31),
	cin => \contador[30]~93\,
	combout => \contador[31]~94_combout\);

-- Location: FF_X63_Y52_N31
\contador[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador[31]~94_combout\,
	sclr => \contador[19]~96_combout\,
	ena => \pausado~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(31));

-- Location: LCCOMB_X61_Y52_N22
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!contador(26) & (!contador(25) & (!contador(27) & !contador(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(26),
	datab => contador(25),
	datac => contador(27),
	datad => contador(24),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X61_Y52_N12
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!contador(29) & (!contador(30) & (\LessThan1~2_combout\ & !contador(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(29),
	datab => contador(30),
	datac => \LessThan1~2_combout\,
	datad => contador(28),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X61_Y52_N8
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = contador(19) $ (velocidade(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(19),
	datad => velocidade(1),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X64_Y52_N24
\LessThan1~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~24_combout\ = (velocidade(0) & (!contador(18))) # (!velocidade(0) & (contador(18) & !contador(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datac => contador(18),
	datad => contador(17),
	combout => \LessThan1~24_combout\);

-- Location: LCCOMB_X62_Y52_N26
\LessThan1~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~25_combout\ = (velocidade(1) & (\LessThan1~24_combout\ & ((!contador(16)) # (!contador(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datab => contador(17),
	datac => contador(16),
	datad => \LessThan1~24_combout\,
	combout => \LessThan1~25_combout\);

-- Location: LCCOMB_X61_Y52_N24
\LessThan1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~22_combout\ = (contador(15)) # ((contador(17)) # (contador(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(15),
	datac => contador(17),
	datad => contador(16),
	combout => \LessThan1~22_combout\);

-- Location: LCCOMB_X61_Y52_N30
\LessThan1~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~23_combout\ = (!contador(18) & ((velocidade(0) & (!velocidade(1))) # (!velocidade(0) & ((velocidade(1)) # (!\LessThan1~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datab => velocidade(1),
	datac => contador(18),
	datad => \LessThan1~22_combout\,
	combout => \LessThan1~23_combout\);

-- Location: LCCOMB_X61_Y52_N14
\LessThan1~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~15_combout\ = (velocidade(1) & ((contador(18)) # ((!contador(16)) # (!contador(17))))) # (!velocidade(1) & (((contador(17)) # (contador(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datab => contador(18),
	datac => contador(17),
	datad => contador(16),
	combout => \LessThan1~15_combout\);

-- Location: LCCOMB_X61_Y52_N28
\LessThan1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~16_combout\ = (velocidade(1) & (contador(17) & (contador(16) $ (contador(18))))) # (!velocidade(1) & (!contador(16) & (contador(18) & !contador(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datab => contador(16),
	datac => contador(18),
	datad => contador(17),
	combout => \LessThan1~16_combout\);

-- Location: LCCOMB_X61_Y52_N6
\LessThan1~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~17_combout\ = (contador(15) & (!velocidade(0) & (!\LessThan1~15_combout\ & !\LessThan1~16_combout\))) # (!contador(15) & (\LessThan1~16_combout\ & (velocidade(0) $ (\LessThan1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(15),
	datab => velocidade(0),
	datac => \LessThan1~15_combout\,
	datad => \LessThan1~16_combout\,
	combout => \LessThan1~17_combout\);

-- Location: LCCOMB_X62_Y52_N8
\LessThan1~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~21_combout\ = (velocidade(0) & (!velocidade(1) & (\LessThan1~17_combout\ & !contador(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datab => velocidade(1),
	datac => \LessThan1~17_combout\,
	datad => contador(14),
	combout => \LessThan1~21_combout\);

-- Location: LCCOMB_X61_Y52_N4
\LessThan1~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~19_combout\ = (velocidade(1) & (velocidade(0) & contador(12))) # (!velocidade(1) & ((velocidade(0)) # (contador(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datac => velocidade(0),
	datad => contador(12),
	combout => \LessThan1~19_combout\);

-- Location: LCCOMB_X61_Y52_N18
\LessThan1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~20_combout\ = (!contador(14) & (!contador(13) & (!\LessThan1~19_combout\ & \LessThan1~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(14),
	datab => contador(13),
	datac => \LessThan1~19_combout\,
	datad => \LessThan1~17_combout\,
	combout => \LessThan1~20_combout\);

-- Location: LCCOMB_X62_Y52_N22
\LessThan1~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~26_combout\ = (\LessThan1~25_combout\) # ((\LessThan1~23_combout\) # ((\LessThan1~21_combout\) # (\LessThan1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~25_combout\,
	datab => \LessThan1~23_combout\,
	datac => \LessThan1~21_combout\,
	datad => \LessThan1~20_combout\,
	combout => \LessThan1~26_combout\);

-- Location: LCCOMB_X64_Y52_N10
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = velocidade(1) $ (velocidade(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => velocidade(1),
	datac => velocidade(0),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X62_Y52_N4
\LessThan1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~18_combout\ = (velocidade(0) & ((contador(13)) # (contador(14) $ (!velocidade(1))))) # (!velocidade(0) & ((contador(14)) # (contador(13) $ (velocidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datab => contador(13),
	datac => contador(14),
	datad => velocidade(1),
	combout => \LessThan1~18_combout\);

-- Location: LCCOMB_X62_Y52_N30
\LessThan1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = (contador(9) & ((velocidade(1)) # ((contador(6)) # (contador(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datab => contador(9),
	datac => contador(6),
	datad => contador(7),
	combout => \LessThan1~12_combout\);

-- Location: LCCOMB_X62_Y53_N14
\LessThan1~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~11_combout\ = (((!contador(5) & !contador(4))) # (!contador(7))) # (!contador(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datab => contador(5),
	datac => contador(4),
	datad => contador(7),
	combout => \LessThan1~11_combout\);

-- Location: LCCOMB_X62_Y52_N28
\LessThan1~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~13_combout\ = (\LessThan1~12_combout\ & ((contador(8)) # ((velocidade(1) & !\LessThan1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datab => contador(8),
	datac => \LessThan1~12_combout\,
	datad => \LessThan1~11_combout\,
	combout => \LessThan1~13_combout\);

-- Location: LCCOMB_X62_Y52_N14
\LessThan1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (velocidade(0) & ((\LessThan1~13_combout\) # ((velocidade(1) & contador(11))))) # (!velocidade(0) & (((contador(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datab => contador(11),
	datac => velocidade(0),
	datad => \LessThan1~13_combout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X62_Y52_N24
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (contador(8) & ((contador(6)) # ((contador(5)) # (!velocidade(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(6),
	datab => velocidade(1),
	datac => contador(5),
	datad => contador(8),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X62_Y52_N10
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (velocidade(0) & (!contador(9))) # (!velocidade(0) & ((contador(9) & ((contador(7)) # (\LessThan1~8_combout\))) # (!contador(9) & (contador(7) & \LessThan1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datab => contador(9),
	datac => contador(7),
	datad => \LessThan1~8_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X62_Y52_N16
\LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (!contador(11) & ((velocidade(1) & (!contador(9) & !\LessThan1~9_combout\)) # (!velocidade(1) & ((!\LessThan1~9_combout\) # (!contador(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(1),
	datab => contador(9),
	datac => contador(11),
	datad => \LessThan1~9_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X62_Y52_N2
\LessThan1~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~34_combout\ = (\LessThan1~17_combout\ & ((\LessThan1~10_combout\) # ((!contador(10) & !\LessThan1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(10),
	datab => \LessThan1~17_combout\,
	datac => \LessThan1~14_combout\,
	datad => \LessThan1~10_combout\,
	combout => \LessThan1~34_combout\);

-- Location: LCCOMB_X62_Y52_N18
\LessThan1~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~35_combout\ = (!\LessThan1~18_combout\ & (\LessThan1~34_combout\ & (\process_0~0_combout\ $ (contador(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \LessThan1~18_combout\,
	datac => contador(12),
	datad => \LessThan1~34_combout\,
	combout => \LessThan1~35_combout\);

-- Location: LCCOMB_X62_Y52_N12
\LessThan1~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~27_combout\ = (\LessThan1~4_combout\ & (\LessThan1~7_combout\ & ((\LessThan1~26_combout\) # (\LessThan1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => \LessThan1~7_combout\,
	datac => \LessThan1~26_combout\,
	datad => \LessThan1~35_combout\,
	combout => \LessThan1~27_combout\);

-- Location: LCCOMB_X62_Y52_N6
\LessThan1~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~32_combout\ = (contador(31)) # ((\LessThan1~3_combout\ & ((\LessThan1~31_combout\) # (\LessThan1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~31_combout\,
	datab => contador(31),
	datac => \LessThan1~3_combout\,
	datad => \LessThan1~27_combout\,
	combout => \LessThan1~32_combout\);

-- Location: LCCOMB_X65_Y52_N8
\indiceLED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~0_combout\ = indiceLED(0) $ (((\enable~input_o\ & !\LessThan1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => indiceLED(0),
	datad => \LessThan1~32_combout\,
	combout => \indiceLED~0_combout\);

-- Location: FF_X65_Y52_N9
\indiceLED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \indiceLED~0_combout\,
	sclr => \resetAtivado~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indiceLED(0));

-- Location: LCCOMB_X65_Y52_N12
\indiceLED~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~5_combout\ = (indiceLED(0) & (!\direcao~q\ & indiceLED(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indiceLED(0),
	datac => \direcao~q\,
	datad => indiceLED(1),
	combout => \indiceLED~5_combout\);

-- Location: LCCOMB_X65_Y52_N28
\indiceLED~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~6_combout\ = indiceLED(2) $ (((\indiceLED~5_combout\) # ((\indiceLED~4_combout\ & !indiceLED(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indiceLED~4_combout\,
	datab => indiceLED(1),
	datac => indiceLED(2),
	datad => \indiceLED~5_combout\,
	combout => \indiceLED~6_combout\);

-- Location: LCCOMB_X65_Y52_N4
\LEDs[1]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs[1]~11_combout\ = (\resetAtivado~q\) # ((\enable~input_o\ & !\LessThan1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datac => \enable~input_o\,
	datad => \LessThan1~32_combout\,
	combout => \LEDs[1]~11_combout\);

-- Location: FF_X65_Y52_N29
\indiceLED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \indiceLED~6_combout\,
	sclr => \resetAtivado~q\,
	ena => \LEDs[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indiceLED(2));

-- Location: LCCOMB_X65_Y52_N24
\indiceLED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~1_combout\ = (!indiceLED(2) & !indiceLED(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => indiceLED(2),
	datad => indiceLED(1),
	combout => \indiceLED~1_combout\);

-- Location: LCCOMB_X65_Y52_N20
\direcao~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direcao~1_combout\ = (\indiceLED~1_combout\ & ((indiceLED(3) & (!\direcao~q\ & indiceLED(0))) # (!indiceLED(3) & (\direcao~q\ & !indiceLED(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(3),
	datab => \direcao~q\,
	datac => indiceLED(0),
	datad => \indiceLED~1_combout\,
	combout => \direcao~1_combout\);

-- Location: LCCOMB_X61_Y52_N2
\direcao~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direcao~0_combout\ = (\enable~input_o\ & !\LessThan1~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \LessThan1~32_combout\,
	combout => \direcao~0_combout\);

-- Location: LCCOMB_X61_Y52_N0
\direcao~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \direcao~2_combout\ = (!\resetAtivado~q\ & (\direcao~q\ $ (((\direcao~1_combout\ & \direcao~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \direcao~1_combout\,
	datab => \resetAtivado~q\,
	datac => \direcao~q\,
	datad => \direcao~0_combout\,
	combout => \direcao~2_combout\);

-- Location: FF_X61_Y52_N1
direcao : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \direcao~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \direcao~q\);

-- Location: LCCOMB_X65_Y52_N22
\indiceLED~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~4_combout\ = (\direcao~q\ & (!indiceLED(0) & ((indiceLED(3)) # (!\indiceLED~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(3),
	datab => \direcao~q\,
	datac => indiceLED(0),
	datad => \indiceLED~1_combout\,
	combout => \indiceLED~4_combout\);

-- Location: LCCOMB_X65_Y52_N18
\indiceLED~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~7_combout\ = (indiceLED(2) & (indiceLED(0) & (!\direcao~q\ & indiceLED(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(2),
	datab => indiceLED(0),
	datac => \direcao~q\,
	datad => indiceLED(1),
	combout => \indiceLED~7_combout\);

-- Location: LCCOMB_X65_Y52_N14
\indiceLED~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~8_combout\ = indiceLED(3) $ (((\indiceLED~7_combout\) # ((\indiceLED~4_combout\ & \indiceLED~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indiceLED~4_combout\,
	datab => \indiceLED~7_combout\,
	datac => indiceLED(3),
	datad => \indiceLED~1_combout\,
	combout => \indiceLED~8_combout\);

-- Location: FF_X65_Y52_N15
\indiceLED[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \indiceLED~8_combout\,
	sclr => \resetAtivado~q\,
	ena => \LEDs[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indiceLED(3));

-- Location: LCCOMB_X65_Y52_N10
\indiceLED~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~2_combout\ = (indiceLED(3) & (!\direcao~q\ & ((!\indiceLED~1_combout\) # (!indiceLED(0))))) # (!indiceLED(3) & (((!indiceLED(0) & \indiceLED~1_combout\)) # (!\direcao~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(3),
	datab => \direcao~q\,
	datac => indiceLED(0),
	datad => \indiceLED~1_combout\,
	combout => \indiceLED~2_combout\);

-- Location: LCCOMB_X65_Y52_N2
\indiceLED~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \indiceLED~3_combout\ = \indiceLED~2_combout\ $ (indiceLED(0) $ (!indiceLED(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indiceLED~2_combout\,
	datab => indiceLED(0),
	datac => indiceLED(1),
	combout => \indiceLED~3_combout\);

-- Location: FF_X65_Y52_N3
\indiceLED[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \indiceLED~3_combout\,
	sclr => \resetAtivado~q\,
	ena => \LEDs[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => indiceLED(1));

-- Location: LCCOMB_X60_Y52_N26
\Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!indiceLED(1) & (!indiceLED(3) & (!indiceLED(0) & !indiceLED(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(1),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X60_Y52_N30
\LEDs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~0_combout\ = (\Decoder0~0_combout\) # ((!\pausado~q\ & \resetAtivado~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pausado~q\,
	datac => \Decoder0~0_combout\,
	datad => \resetAtivado~q\,
	combout => \LEDs~0_combout\);

-- Location: LCCOMB_X62_Y52_N20
\LEDs[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs[1]~1_combout\ = (\resetAtivado~q\) # ((\pausado~q\) # ((\enable~input_o\ & !\LessThan1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datab => \enable~input_o\,
	datac => \pausado~q\,
	datad => \LessThan1~32_combout\,
	combout => \LEDs[1]~1_combout\);

-- Location: FF_X60_Y52_N31
\LEDs[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~0_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[0]~reg0_q\);

-- Location: LCCOMB_X60_Y52_N20
\Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!indiceLED(1) & (!indiceLED(3) & (indiceLED(0) & !indiceLED(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(1),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(2),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X60_Y52_N16
\LEDs~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~2_combout\ = (\Decoder0~1_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datab => \Decoder0~1_combout\,
	datad => \pausado~q\,
	combout => \LEDs~2_combout\);

-- Location: FF_X60_Y52_N17
\LEDs[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~2_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[1]~reg0_q\);

-- Location: LCCOMB_X64_Y52_N6
\Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!indiceLED(2) & (!indiceLED(3) & (!indiceLED(0) & indiceLED(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(2),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(1),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X60_Y52_N2
\LEDs~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~3_combout\ = (\Decoder0~2_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \pausado~q\,
	datad => \resetAtivado~q\,
	combout => \LEDs~3_combout\);

-- Location: FF_X60_Y52_N3
\LEDs[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~3_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[2]~reg0_q\);

-- Location: LCCOMB_X61_Y52_N20
\Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!indiceLED(3) & (!indiceLED(2) & (indiceLED(1) & indiceLED(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(3),
	datab => indiceLED(2),
	datac => indiceLED(1),
	datad => indiceLED(0),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X60_Y52_N24
\LEDs~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~4_combout\ = (\Decoder0~3_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pausado~q\,
	datac => \Decoder0~3_combout\,
	datad => \resetAtivado~q\,
	combout => \LEDs~4_combout\);

-- Location: FF_X60_Y52_N25
\LEDs[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~4_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[3]~reg0_q\);

-- Location: LCCOMB_X64_Y52_N16
\Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (indiceLED(2) & (!indiceLED(3) & (!indiceLED(0) & !indiceLED(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(2),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(1),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X60_Y52_N18
\LEDs~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~5_combout\ = (\Decoder0~4_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pausado~q\,
	datac => \Decoder0~4_combout\,
	datad => \resetAtivado~q\,
	combout => \LEDs~5_combout\);

-- Location: FF_X60_Y52_N19
\LEDs[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~5_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[4]~reg0_q\);

-- Location: LCCOMB_X60_Y52_N14
\Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!indiceLED(1) & (!indiceLED(3) & (indiceLED(0) & indiceLED(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(1),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(2),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X60_Y52_N4
\LEDs~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~6_combout\ = (\Decoder0~5_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pausado~q\,
	datac => \Decoder0~5_combout\,
	datad => \resetAtivado~q\,
	combout => \LEDs~6_combout\);

-- Location: FF_X60_Y52_N5
\LEDs[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~6_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[5]~reg0_q\);

-- Location: LCCOMB_X61_Y52_N26
\Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!indiceLED(3) & (indiceLED(2) & (indiceLED(1) & !indiceLED(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(3),
	datab => indiceLED(2),
	datac => indiceLED(1),
	datad => indiceLED(0),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X60_Y52_N10
\LEDs~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~7_combout\ = (\Decoder0~6_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datab => \Decoder0~6_combout\,
	datad => \pausado~q\,
	combout => \LEDs~7_combout\);

-- Location: FF_X60_Y52_N11
\LEDs[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~7_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[6]~reg0_q\);

-- Location: LCCOMB_X64_Y52_N14
\Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (indiceLED(2) & (!indiceLED(3) & (indiceLED(0) & indiceLED(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(2),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(1),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X60_Y52_N28
\LEDs~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~8_combout\ = (\Decoder0~7_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetAtivado~q\,
	datab => \Decoder0~7_combout\,
	datad => \pausado~q\,
	combout => \LEDs~8_combout\);

-- Location: FF_X60_Y52_N29
\LEDs[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~8_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[7]~reg0_q\);

-- Location: LCCOMB_X60_Y52_N12
\Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (!indiceLED(1) & (indiceLED(3) & (!indiceLED(0) & !indiceLED(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(1),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(2),
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X60_Y52_N6
\LEDs~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~9_combout\ = (\Decoder0~8_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~8_combout\,
	datab => \pausado~q\,
	datad => \resetAtivado~q\,
	combout => \LEDs~9_combout\);

-- Location: FF_X60_Y52_N7
\LEDs[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~9_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[8]~reg0_q\);

-- Location: LCCOMB_X60_Y52_N22
\Decoder0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (!indiceLED(1) & (indiceLED(3) & (indiceLED(0) & !indiceLED(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => indiceLED(1),
	datab => indiceLED(3),
	datac => indiceLED(0),
	datad => indiceLED(2),
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X60_Y52_N0
\LEDs~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LEDs~10_combout\ = (\Decoder0~9_combout\ & ((\pausado~q\) # (!\resetAtivado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pausado~q\,
	datac => \Decoder0~9_combout\,
	datad => \resetAtivado~q\,
	combout => \LEDs~10_combout\);

-- Location: FF_X60_Y52_N1
\LEDs[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \LEDs~10_combout\,
	ena => \LEDs[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDs[9]~reg0_q\);

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

ww_LEDs(0) <= \LEDs[0]~output_o\;

ww_LEDs(1) <= \LEDs[1]~output_o\;

ww_LEDs(2) <= \LEDs[2]~output_o\;

ww_LEDs(3) <= \LEDs[3]~output_o\;

ww_LEDs(4) <= \LEDs[4]~output_o\;

ww_LEDs(5) <= \LEDs[5]~output_o\;

ww_LEDs(6) <= \LEDs[6]~output_o\;

ww_LEDs(7) <= \LEDs[7]~output_o\;

ww_LEDs(8) <= \LEDs[8]~output_o\;

ww_LEDs(9) <= \LEDs[9]~output_o\;
END structure;


