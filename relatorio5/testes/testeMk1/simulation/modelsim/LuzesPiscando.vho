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

-- DATE "12/07/2024 20:11:14"

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

ENTITY 	LuzesPiscando IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	velocidade_btn : IN std_logic;
	leds : OUT std_logic_vector(9 DOWNTO 0)
	);
END LuzesPiscando;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[9]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidade_btn	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_velocidade_btn : std_logic;
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \velocidade_btn~input_o\ : std_logic;
SIGNAL \velocidade[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \velocidade[1]~1_combout\ : std_logic;
SIGNAL \contador_clk[0]~35_combout\ : std_logic;
SIGNAL \contador_clk[30]~37_combout\ : std_logic;
SIGNAL \contador_clk[5]~48\ : std_logic;
SIGNAL \contador_clk[6]~49_combout\ : std_logic;
SIGNAL \contador_clk[6]~50\ : std_logic;
SIGNAL \contador_clk[7]~51_combout\ : std_logic;
SIGNAL \contador_clk[7]~52\ : std_logic;
SIGNAL \contador_clk[8]~53_combout\ : std_logic;
SIGNAL \contador_clk[8]~54\ : std_logic;
SIGNAL \contador_clk[9]~55_combout\ : std_logic;
SIGNAL \contador_clk[9]~56\ : std_logic;
SIGNAL \contador_clk[10]~57_combout\ : std_logic;
SIGNAL \contador_clk[10]~58\ : std_logic;
SIGNAL \contador_clk[11]~59_combout\ : std_logic;
SIGNAL \contador_clk[11]~60\ : std_logic;
SIGNAL \contador_clk[12]~61_combout\ : std_logic;
SIGNAL \contador_clk[12]~62\ : std_logic;
SIGNAL \contador_clk[13]~63_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \contador_clk[13]~64\ : std_logic;
SIGNAL \contador_clk[14]~65_combout\ : std_logic;
SIGNAL \contador_clk[14]~66\ : std_logic;
SIGNAL \contador_clk[15]~67_combout\ : std_logic;
SIGNAL \contador_clk[15]~68\ : std_logic;
SIGNAL \contador_clk[16]~69_combout\ : std_logic;
SIGNAL \contador_clk[16]~70\ : std_logic;
SIGNAL \contador_clk[17]~71_combout\ : std_logic;
SIGNAL \contador_clk[17]~72\ : std_logic;
SIGNAL \contador_clk[18]~73_combout\ : std_logic;
SIGNAL \contador_clk[18]~74\ : std_logic;
SIGNAL \contador_clk[19]~75_combout\ : std_logic;
SIGNAL \contador_clk[19]~76\ : std_logic;
SIGNAL \contador_clk[20]~77_combout\ : std_logic;
SIGNAL \Mux32~6_combout\ : std_logic;
SIGNAL \Mux32~7_combout\ : std_logic;
SIGNAL \contador_clk[20]~78\ : std_logic;
SIGNAL \contador_clk[21]~79_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \contador_clk[21]~80\ : std_logic;
SIGNAL \contador_clk[22]~81_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Mux32~8_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \contador_clk[30]~32_combout\ : std_logic;
SIGNAL \contador_clk[30]~33_combout\ : std_logic;
SIGNAL \contador_clk[30]~34_combout\ : std_logic;
SIGNAL \contador_clk[30]~38_combout\ : std_logic;
SIGNAL \contador_clk[0]~36\ : std_logic;
SIGNAL \contador_clk[1]~39_combout\ : std_logic;
SIGNAL \contador_clk[1]~40\ : std_logic;
SIGNAL \contador_clk[2]~41_combout\ : std_logic;
SIGNAL \contador_clk[2]~42\ : std_logic;
SIGNAL \contador_clk[3]~43_combout\ : std_logic;
SIGNAL \contador_clk[3]~44\ : std_logic;
SIGNAL \contador_clk[4]~45_combout\ : std_logic;
SIGNAL \contador_clk[4]~46\ : std_logic;
SIGNAL \contador_clk[5]~47_combout\ : std_logic;
SIGNAL \contador_clk[22]~82\ : std_logic;
SIGNAL \contador_clk[23]~83_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \contador_clk[23]~84\ : std_logic;
SIGNAL \contador_clk[24]~85_combout\ : std_logic;
SIGNAL \contador_clk[24]~86\ : std_logic;
SIGNAL \contador_clk[25]~87_combout\ : std_logic;
SIGNAL \contador_clk[25]~88\ : std_logic;
SIGNAL \contador_clk[26]~89_combout\ : std_logic;
SIGNAL \contador_clk[26]~90\ : std_logic;
SIGNAL \contador_clk[27]~91_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \contador_clk[27]~92\ : std_logic;
SIGNAL \contador_clk[28]~93_combout\ : std_logic;
SIGNAL \contador_clk[28]~94\ : std_logic;
SIGNAL \contador_clk[29]~95_combout\ : std_logic;
SIGNAL \contador_clk[29]~96\ : std_logic;
SIGNAL \contador_clk[30]~97_combout\ : std_logic;
SIGNAL \contador_clk[30]~98\ : std_logic;
SIGNAL \contador_clk[31]~99_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Mux32~2_combout\ : std_logic;
SIGNAL \Mux32~3_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~4_combout\ : std_logic;
SIGNAL \Mux32~5_combout\ : std_logic;
SIGNAL \clk_div~0_combout\ : std_logic;
SIGNAL \clk_div~feeder_combout\ : std_logic;
SIGNAL \clk_div~q\ : std_logic;
SIGNAL \clk_div~clkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \contador[0]~4_combout\ : std_logic;
SIGNAL \contador[1]~0_combout\ : std_logic;
SIGNAL \contador[2]~1_combout\ : std_logic;
SIGNAL \contador[3]~2_combout\ : std_logic;
SIGNAL \contador[3]~3_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \leds[0]~reg0_q\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \leds[1]~reg0_q\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \leds[2]~reg0_q\ : std_logic;
SIGNAL \leds~18_combout\ : std_logic;
SIGNAL \leds[3]~reg0_q\ : std_logic;
SIGNAL \leds~19_combout\ : std_logic;
SIGNAL \leds[4]~reg0_q\ : std_logic;
SIGNAL \leds~16_combout\ : std_logic;
SIGNAL \leds[5]~reg0_q\ : std_logic;
SIGNAL \leds~20_combout\ : std_logic;
SIGNAL \leds[6]~reg0_q\ : std_logic;
SIGNAL \leds~21_combout\ : std_logic;
SIGNAL \leds[7]~reg0_q\ : std_logic;
SIGNAL \leds~17_combout\ : std_logic;
SIGNAL \leds[8]~reg0_q\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \leds[9]~reg0_q\ : std_logic;
SIGNAL contador_clk : std_logic_vector(31 DOWNTO 0);
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL velocidade : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_velocidade_btn <= velocidade_btn;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_div~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N24
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
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[0]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[1]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[2]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[3]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[4]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[5]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[6]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[7]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[8]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[9]~reg0_q\,
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
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

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X46_Y54_N29
\velocidade_btn~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_velocidade_btn,
	o => \velocidade_btn~input_o\);

-- Location: LCCOMB_X45_Y51_N12
\velocidade[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \velocidade[0]~0_combout\ = (velocidade(0) & ((!\velocidade_btn~input_o\))) # (!velocidade(0) & (!velocidade(1) & \velocidade_btn~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => velocidade(1),
	datac => velocidade(0),
	datad => \velocidade_btn~input_o\,
	combout => \velocidade[0]~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X45_Y51_N13
\velocidade[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \velocidade[0]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade(0));

-- Location: LCCOMB_X45_Y51_N24
\velocidade[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \velocidade[1]~1_combout\ = velocidade(1) $ (((\velocidade_btn~input_o\ & !velocidade(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \velocidade_btn~input_o\,
	datac => velocidade(1),
	datad => velocidade(0),
	combout => \velocidade[1]~1_combout\);

-- Location: FF_X45_Y51_N25
\velocidade[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \velocidade[1]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => velocidade(1));

-- Location: LCCOMB_X47_Y51_N0
\contador_clk[0]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[0]~35_combout\ = contador_clk(0) $ (VCC)
-- \contador_clk[0]~36\ = CARRY(contador_clk(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(0),
	datad => VCC,
	combout => \contador_clk[0]~35_combout\,
	cout => \contador_clk[0]~36\);

-- Location: LCCOMB_X45_Y51_N14
\contador_clk[30]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[30]~37_combout\ = (velocidade(1) & !velocidade(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => velocidade(1),
	datad => velocidade(0),
	combout => \contador_clk[30]~37_combout\);

-- Location: LCCOMB_X47_Y51_N10
\contador_clk[5]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[5]~47_combout\ = (contador_clk(5) & (!\contador_clk[4]~46\)) # (!contador_clk(5) & ((\contador_clk[4]~46\) # (GND)))
-- \contador_clk[5]~48\ = CARRY((!\contador_clk[4]~46\) # (!contador_clk(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(5),
	datad => VCC,
	cin => \contador_clk[4]~46\,
	combout => \contador_clk[5]~47_combout\,
	cout => \contador_clk[5]~48\);

-- Location: LCCOMB_X47_Y51_N12
\contador_clk[6]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[6]~49_combout\ = (contador_clk(6) & (\contador_clk[5]~48\ $ (GND))) # (!contador_clk(6) & (!\contador_clk[5]~48\ & VCC))
-- \contador_clk[6]~50\ = CARRY((contador_clk(6) & !\contador_clk[5]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(6),
	datad => VCC,
	cin => \contador_clk[5]~48\,
	combout => \contador_clk[6]~49_combout\,
	cout => \contador_clk[6]~50\);

-- Location: FF_X47_Y51_N13
\contador_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[6]~49_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(6));

-- Location: LCCOMB_X47_Y51_N14
\contador_clk[7]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[7]~51_combout\ = (contador_clk(7) & (!\contador_clk[6]~50\)) # (!contador_clk(7) & ((\contador_clk[6]~50\) # (GND)))
-- \contador_clk[7]~52\ = CARRY((!\contador_clk[6]~50\) # (!contador_clk(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(7),
	datad => VCC,
	cin => \contador_clk[6]~50\,
	combout => \contador_clk[7]~51_combout\,
	cout => \contador_clk[7]~52\);

-- Location: FF_X47_Y51_N15
\contador_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[7]~51_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(7));

-- Location: LCCOMB_X47_Y51_N16
\contador_clk[8]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[8]~53_combout\ = (contador_clk(8) & (\contador_clk[7]~52\ $ (GND))) # (!contador_clk(8) & (!\contador_clk[7]~52\ & VCC))
-- \contador_clk[8]~54\ = CARRY((contador_clk(8) & !\contador_clk[7]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(8),
	datad => VCC,
	cin => \contador_clk[7]~52\,
	combout => \contador_clk[8]~53_combout\,
	cout => \contador_clk[8]~54\);

-- Location: FF_X47_Y51_N17
\contador_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[8]~53_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(8));

-- Location: LCCOMB_X47_Y51_N18
\contador_clk[9]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[9]~55_combout\ = (contador_clk(9) & (!\contador_clk[8]~54\)) # (!contador_clk(9) & ((\contador_clk[8]~54\) # (GND)))
-- \contador_clk[9]~56\ = CARRY((!\contador_clk[8]~54\) # (!contador_clk(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(9),
	datad => VCC,
	cin => \contador_clk[8]~54\,
	combout => \contador_clk[9]~55_combout\,
	cout => \contador_clk[9]~56\);

-- Location: FF_X46_Y51_N3
\contador_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[9]~55_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(9));

-- Location: LCCOMB_X47_Y51_N20
\contador_clk[10]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[10]~57_combout\ = (contador_clk(10) & (\contador_clk[9]~56\ $ (GND))) # (!contador_clk(10) & (!\contador_clk[9]~56\ & VCC))
-- \contador_clk[10]~58\ = CARRY((contador_clk(10) & !\contador_clk[9]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(10),
	datad => VCC,
	cin => \contador_clk[9]~56\,
	combout => \contador_clk[10]~57_combout\,
	cout => \contador_clk[10]~58\);

-- Location: FF_X47_Y51_N21
\contador_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[10]~57_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(10));

-- Location: LCCOMB_X47_Y51_N22
\contador_clk[11]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[11]~59_combout\ = (contador_clk(11) & (!\contador_clk[10]~58\)) # (!contador_clk(11) & ((\contador_clk[10]~58\) # (GND)))
-- \contador_clk[11]~60\ = CARRY((!\contador_clk[10]~58\) # (!contador_clk(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(11),
	datad => VCC,
	cin => \contador_clk[10]~58\,
	combout => \contador_clk[11]~59_combout\,
	cout => \contador_clk[11]~60\);

-- Location: FF_X47_Y51_N23
\contador_clk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[11]~59_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(11));

-- Location: LCCOMB_X47_Y51_N24
\contador_clk[12]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[12]~61_combout\ = (contador_clk(12) & (\contador_clk[11]~60\ $ (GND))) # (!contador_clk(12) & (!\contador_clk[11]~60\ & VCC))
-- \contador_clk[12]~62\ = CARRY((contador_clk(12) & !\contador_clk[11]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(12),
	datad => VCC,
	cin => \contador_clk[11]~60\,
	combout => \contador_clk[12]~61_combout\,
	cout => \contador_clk[12]~62\);

-- Location: FF_X47_Y51_N25
\contador_clk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[12]~61_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(12));

-- Location: LCCOMB_X47_Y51_N26
\contador_clk[13]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[13]~63_combout\ = (contador_clk(13) & (!\contador_clk[12]~62\)) # (!contador_clk(13) & ((\contador_clk[12]~62\) # (GND)))
-- \contador_clk[13]~64\ = CARRY((!\contador_clk[12]~62\) # (!contador_clk(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(13),
	datad => VCC,
	cin => \contador_clk[12]~62\,
	combout => \contador_clk[13]~63_combout\,
	cout => \contador_clk[13]~64\);

-- Location: FF_X47_Y51_N27
\contador_clk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[13]~63_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(13));

-- Location: LCCOMB_X46_Y51_N6
\Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!contador_clk(3) & (!contador_clk(1) & (contador_clk(6) & !contador_clk(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(3),
	datab => contador_clk(1),
	datac => contador_clk(6),
	datad => contador_clk(13),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X47_Y51_N28
\contador_clk[14]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[14]~65_combout\ = (contador_clk(14) & (\contador_clk[13]~64\ $ (GND))) # (!contador_clk(14) & (!\contador_clk[13]~64\ & VCC))
-- \contador_clk[14]~66\ = CARRY((contador_clk(14) & !\contador_clk[13]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(14),
	datad => VCC,
	cin => \contador_clk[13]~64\,
	combout => \contador_clk[14]~65_combout\,
	cout => \contador_clk[14]~66\);

-- Location: FF_X47_Y51_N29
\contador_clk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[14]~65_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(14));

-- Location: LCCOMB_X47_Y51_N30
\contador_clk[15]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[15]~67_combout\ = (contador_clk(15) & (!\contador_clk[14]~66\)) # (!contador_clk(15) & ((\contador_clk[14]~66\) # (GND)))
-- \contador_clk[15]~68\ = CARRY((!\contador_clk[14]~66\) # (!contador_clk(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(15),
	datad => VCC,
	cin => \contador_clk[14]~66\,
	combout => \contador_clk[15]~67_combout\,
	cout => \contador_clk[15]~68\);

-- Location: FF_X46_Y51_N13
\contador_clk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[15]~67_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(15));

-- Location: LCCOMB_X47_Y50_N0
\contador_clk[16]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[16]~69_combout\ = (contador_clk(16) & (\contador_clk[15]~68\ $ (GND))) # (!contador_clk(16) & (!\contador_clk[15]~68\ & VCC))
-- \contador_clk[16]~70\ = CARRY((contador_clk(16) & !\contador_clk[15]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(16),
	datad => VCC,
	cin => \contador_clk[15]~68\,
	combout => \contador_clk[16]~69_combout\,
	cout => \contador_clk[16]~70\);

-- Location: FF_X46_Y50_N1
\contador_clk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[16]~69_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(16));

-- Location: LCCOMB_X47_Y50_N2
\contador_clk[17]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[17]~71_combout\ = (contador_clk(17) & (!\contador_clk[16]~70\)) # (!contador_clk(17) & ((\contador_clk[16]~70\) # (GND)))
-- \contador_clk[17]~72\ = CARRY((!\contador_clk[16]~70\) # (!contador_clk(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(17),
	datad => VCC,
	cin => \contador_clk[16]~70\,
	combout => \contador_clk[17]~71_combout\,
	cout => \contador_clk[17]~72\);

-- Location: FF_X47_Y50_N3
\contador_clk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[17]~71_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(17));

-- Location: LCCOMB_X47_Y50_N4
\contador_clk[18]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[18]~73_combout\ = (contador_clk(18) & (\contador_clk[17]~72\ $ (GND))) # (!contador_clk(18) & (!\contador_clk[17]~72\ & VCC))
-- \contador_clk[18]~74\ = CARRY((contador_clk(18) & !\contador_clk[17]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(18),
	datad => VCC,
	cin => \contador_clk[17]~72\,
	combout => \contador_clk[18]~73_combout\,
	cout => \contador_clk[18]~74\);

-- Location: FF_X45_Y51_N29
\contador_clk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[18]~73_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(18));

-- Location: LCCOMB_X47_Y50_N6
\contador_clk[19]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[19]~75_combout\ = (contador_clk(19) & (!\contador_clk[18]~74\)) # (!contador_clk(19) & ((\contador_clk[18]~74\) # (GND)))
-- \contador_clk[19]~76\ = CARRY((!\contador_clk[18]~74\) # (!contador_clk(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(19),
	datad => VCC,
	cin => \contador_clk[18]~74\,
	combout => \contador_clk[19]~75_combout\,
	cout => \contador_clk[19]~76\);

-- Location: FF_X45_Y51_N23
\contador_clk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[19]~75_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(19));

-- Location: LCCOMB_X47_Y50_N8
\contador_clk[20]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[20]~77_combout\ = (contador_clk(20) & (\contador_clk[19]~76\ $ (GND))) # (!contador_clk(20) & (!\contador_clk[19]~76\ & VCC))
-- \contador_clk[20]~78\ = CARRY((contador_clk(20) & !\contador_clk[19]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(20),
	datad => VCC,
	cin => \contador_clk[19]~76\,
	combout => \contador_clk[20]~77_combout\,
	cout => \contador_clk[20]~78\);

-- Location: FF_X47_Y50_N9
\contador_clk[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[20]~77_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(20));

-- Location: LCCOMB_X46_Y51_N26
\Mux32~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~6_combout\ = (contador_clk(10) & (contador_clk(0) & (contador_clk(4) & velocidade(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(10),
	datab => contador_clk(0),
	datac => contador_clk(4),
	datad => velocidade(0),
	combout => \Mux32~6_combout\);

-- Location: LCCOMB_X46_Y51_N24
\Mux32~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~7_combout\ = (contador_clk(20) & (contador_clk(12) & (\Mux32~6_combout\ & contador_clk(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(20),
	datab => contador_clk(12),
	datac => \Mux32~6_combout\,
	datad => contador_clk(17),
	combout => \Mux32~7_combout\);

-- Location: LCCOMB_X47_Y50_N10
\contador_clk[21]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[21]~79_combout\ = (contador_clk(21) & (!\contador_clk[20]~78\)) # (!contador_clk(21) & ((\contador_clk[20]~78\) # (GND)))
-- \contador_clk[21]~80\ = CARRY((!\contador_clk[20]~78\) # (!contador_clk(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(21),
	datad => VCC,
	cin => \contador_clk[20]~78\,
	combout => \contador_clk[21]~79_combout\,
	cout => \contador_clk[21]~80\);

-- Location: FF_X45_Y51_N31
\contador_clk[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[21]~79_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(21));

-- Location: LCCOMB_X45_Y51_N2
\Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (contador_clk(21) & (contador_clk(15) & (!contador_clk(19) & !contador_clk(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(21),
	datab => contador_clk(15),
	datac => contador_clk(19),
	datad => contador_clk(18),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X46_Y51_N2
\Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (contador_clk(2) & (!contador_clk(8) & (!contador_clk(9) & contador_clk(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(2),
	datab => contador_clk(8),
	datac => contador_clk(9),
	datad => contador_clk(7),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X47_Y50_N12
\contador_clk[22]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[22]~81_combout\ = (contador_clk(22) & (\contador_clk[21]~80\ $ (GND))) # (!contador_clk(22) & (!\contador_clk[21]~80\ & VCC))
-- \contador_clk[22]~82\ = CARRY((contador_clk(22) & !\contador_clk[21]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(22),
	datad => VCC,
	cin => \contador_clk[21]~80\,
	combout => \contador_clk[22]~81_combout\,
	cout => \contador_clk[22]~82\);

-- Location: FF_X46_Y51_N19
\contador_clk[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[22]~81_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(22));

-- Location: LCCOMB_X46_Y51_N18
\Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal3~1_combout\ & (\Equal3~0_combout\ & (!contador_clk(22) & \Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~1_combout\,
	datab => \Equal3~0_combout\,
	datac => contador_clk(22),
	datad => \Equal1~6_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X46_Y51_N14
\Mux32~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~8_combout\ = (\Equal1~2_combout\ & (\Mux32~7_combout\ & (!contador_clk(16) & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Mux32~7_combout\,
	datac => contador_clk(16),
	datad => \Equal3~2_combout\,
	combout => \Mux32~8_combout\);

-- Location: LCCOMB_X46_Y51_N12
\Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!contador_clk(17) & !contador_clk(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(17),
	datad => contador_clk(20),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X46_Y51_N8
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!contador_clk(10) & (!contador_clk(0) & (!contador_clk(4) & !contador_clk(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(10),
	datab => contador_clk(0),
	datac => contador_clk(4),
	datad => contador_clk(12),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X45_Y51_N10
\contador_clk[30]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[30]~32_combout\ = (!velocidade(0) & (velocidade(1) & (contador_clk(1) & contador_clk(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => velocidade(0),
	datab => velocidade(1),
	datac => contador_clk(1),
	datad => contador_clk(3),
	combout => \contador_clk[30]~32_combout\);

-- Location: LCCOMB_X45_Y51_N26
\contador_clk[30]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[30]~33_combout\ = (contador_clk(16) & (!contador_clk(6) & (contador_clk(13) & \contador_clk[30]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(16),
	datab => contador_clk(6),
	datac => contador_clk(13),
	datad => \contador_clk[30]~32_combout\,
	combout => \contador_clk[30]~33_combout\);

-- Location: LCCOMB_X46_Y51_N16
\contador_clk[30]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[30]~34_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & (\contador_clk[30]~33_combout\ & \Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \contador_clk[30]~33_combout\,
	datad => \Equal3~2_combout\,
	combout => \contador_clk[30]~34_combout\);

-- Location: LCCOMB_X46_Y51_N30
\contador_clk[30]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[30]~38_combout\ = (\contador_clk[30]~34_combout\) # ((!\contador_clk[30]~37_combout\ & ((\Mux32~4_combout\) # (\Mux32~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contador_clk[30]~37_combout\,
	datab => \Mux32~4_combout\,
	datac => \Mux32~8_combout\,
	datad => \contador_clk[30]~34_combout\,
	combout => \contador_clk[30]~38_combout\);

-- Location: FF_X47_Y51_N1
\contador_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[0]~35_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(0));

-- Location: LCCOMB_X47_Y51_N2
\contador_clk[1]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[1]~39_combout\ = (contador_clk(1) & (!\contador_clk[0]~36\)) # (!contador_clk(1) & ((\contador_clk[0]~36\) # (GND)))
-- \contador_clk[1]~40\ = CARRY((!\contador_clk[0]~36\) # (!contador_clk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(1),
	datad => VCC,
	cin => \contador_clk[0]~36\,
	combout => \contador_clk[1]~39_combout\,
	cout => \contador_clk[1]~40\);

-- Location: FF_X47_Y51_N3
\contador_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[1]~39_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(1));

-- Location: LCCOMB_X47_Y51_N4
\contador_clk[2]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[2]~41_combout\ = (contador_clk(2) & (\contador_clk[1]~40\ $ (GND))) # (!contador_clk(2) & (!\contador_clk[1]~40\ & VCC))
-- \contador_clk[2]~42\ = CARRY((contador_clk(2) & !\contador_clk[1]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(2),
	datad => VCC,
	cin => \contador_clk[1]~40\,
	combout => \contador_clk[2]~41_combout\,
	cout => \contador_clk[2]~42\);

-- Location: FF_X47_Y51_N5
\contador_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[2]~41_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(2));

-- Location: LCCOMB_X47_Y51_N6
\contador_clk[3]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[3]~43_combout\ = (contador_clk(3) & (!\contador_clk[2]~42\)) # (!contador_clk(3) & ((\contador_clk[2]~42\) # (GND)))
-- \contador_clk[3]~44\ = CARRY((!\contador_clk[2]~42\) # (!contador_clk(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(3),
	datad => VCC,
	cin => \contador_clk[2]~42\,
	combout => \contador_clk[3]~43_combout\,
	cout => \contador_clk[3]~44\);

-- Location: FF_X47_Y51_N7
\contador_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[3]~43_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(3));

-- Location: LCCOMB_X47_Y51_N8
\contador_clk[4]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[4]~45_combout\ = (contador_clk(4) & (\contador_clk[3]~44\ $ (GND))) # (!contador_clk(4) & (!\contador_clk[3]~44\ & VCC))
-- \contador_clk[4]~46\ = CARRY((contador_clk(4) & !\contador_clk[3]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(4),
	datad => VCC,
	cin => \contador_clk[3]~44\,
	combout => \contador_clk[4]~45_combout\,
	cout => \contador_clk[4]~46\);

-- Location: FF_X47_Y51_N9
\contador_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[4]~45_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(4));

-- Location: FF_X47_Y51_N11
\contador_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[5]~47_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(5));

-- Location: LCCOMB_X47_Y50_N14
\contador_clk[23]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[23]~83_combout\ = (contador_clk(23) & (!\contador_clk[22]~82\)) # (!contador_clk(23) & ((\contador_clk[22]~82\) # (GND)))
-- \contador_clk[23]~84\ = CARRY((!\contador_clk[22]~82\) # (!contador_clk(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(23),
	datad => VCC,
	cin => \contador_clk[22]~82\,
	combout => \contador_clk[23]~83_combout\,
	cout => \contador_clk[23]~84\);

-- Location: FF_X46_Y51_N5
\contador_clk[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \contador_clk[23]~83_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(23));

-- Location: LCCOMB_X46_Y51_N4
\Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!contador_clk(5) & (contador_clk(14) & (!contador_clk(23) & contador_clk(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(5),
	datab => contador_clk(14),
	datac => contador_clk(23),
	datad => contador_clk(11),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X47_Y50_N16
\contador_clk[24]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[24]~85_combout\ = (contador_clk(24) & (\contador_clk[23]~84\ $ (GND))) # (!contador_clk(24) & (!\contador_clk[23]~84\ & VCC))
-- \contador_clk[24]~86\ = CARRY((contador_clk(24) & !\contador_clk[23]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(24),
	datad => VCC,
	cin => \contador_clk[23]~84\,
	combout => \contador_clk[24]~85_combout\,
	cout => \contador_clk[24]~86\);

-- Location: FF_X47_Y50_N17
\contador_clk[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[24]~85_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(24));

-- Location: LCCOMB_X47_Y50_N18
\contador_clk[25]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[25]~87_combout\ = (contador_clk(25) & (!\contador_clk[24]~86\)) # (!contador_clk(25) & ((\contador_clk[24]~86\) # (GND)))
-- \contador_clk[25]~88\ = CARRY((!\contador_clk[24]~86\) # (!contador_clk(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(25),
	datad => VCC,
	cin => \contador_clk[24]~86\,
	combout => \contador_clk[25]~87_combout\,
	cout => \contador_clk[25]~88\);

-- Location: FF_X47_Y50_N19
\contador_clk[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[25]~87_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(25));

-- Location: LCCOMB_X47_Y50_N20
\contador_clk[26]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[26]~89_combout\ = (contador_clk(26) & (\contador_clk[25]~88\ $ (GND))) # (!contador_clk(26) & (!\contador_clk[25]~88\ & VCC))
-- \contador_clk[26]~90\ = CARRY((contador_clk(26) & !\contador_clk[25]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(26),
	datad => VCC,
	cin => \contador_clk[25]~88\,
	combout => \contador_clk[26]~89_combout\,
	cout => \contador_clk[26]~90\);

-- Location: FF_X47_Y50_N21
\contador_clk[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[26]~89_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(26));

-- Location: LCCOMB_X47_Y50_N22
\contador_clk[27]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[27]~91_combout\ = (contador_clk(27) & (!\contador_clk[26]~90\)) # (!contador_clk(27) & ((\contador_clk[26]~90\) # (GND)))
-- \contador_clk[27]~92\ = CARRY((!\contador_clk[26]~90\) # (!contador_clk(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(27),
	datad => VCC,
	cin => \contador_clk[26]~90\,
	combout => \contador_clk[27]~91_combout\,
	cout => \contador_clk[27]~92\);

-- Location: FF_X47_Y50_N23
\contador_clk[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[27]~91_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(27));

-- Location: LCCOMB_X46_Y51_N22
\Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!contador_clk(24) & (!contador_clk(27) & (!contador_clk(25) & !contador_clk(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(24),
	datab => contador_clk(27),
	datac => contador_clk(25),
	datad => contador_clk(26),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X47_Y50_N24
\contador_clk[28]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[28]~93_combout\ = (contador_clk(28) & (\contador_clk[27]~92\ $ (GND))) # (!contador_clk(28) & (!\contador_clk[27]~92\ & VCC))
-- \contador_clk[28]~94\ = CARRY((contador_clk(28) & !\contador_clk[27]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(28),
	datad => VCC,
	cin => \contador_clk[27]~92\,
	combout => \contador_clk[28]~93_combout\,
	cout => \contador_clk[28]~94\);

-- Location: FF_X47_Y50_N25
\contador_clk[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[28]~93_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(28));

-- Location: LCCOMB_X47_Y50_N26
\contador_clk[29]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[29]~95_combout\ = (contador_clk(29) & (!\contador_clk[28]~94\)) # (!contador_clk(29) & ((\contador_clk[28]~94\) # (GND)))
-- \contador_clk[29]~96\ = CARRY((!\contador_clk[28]~94\) # (!contador_clk(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(29),
	datad => VCC,
	cin => \contador_clk[28]~94\,
	combout => \contador_clk[29]~95_combout\,
	cout => \contador_clk[29]~96\);

-- Location: FF_X47_Y50_N27
\contador_clk[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[29]~95_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(29));

-- Location: LCCOMB_X47_Y50_N28
\contador_clk[30]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[30]~97_combout\ = (contador_clk(30) & (\contador_clk[29]~96\ $ (GND))) # (!contador_clk(30) & (!\contador_clk[29]~96\ & VCC))
-- \contador_clk[30]~98\ = CARRY((contador_clk(30) & !\contador_clk[29]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(30),
	datad => VCC,
	cin => \contador_clk[29]~96\,
	combout => \contador_clk[30]~97_combout\,
	cout => \contador_clk[30]~98\);

-- Location: FF_X47_Y50_N29
\contador_clk[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[30]~97_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(30));

-- Location: LCCOMB_X47_Y50_N30
\contador_clk[31]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_clk[31]~99_combout\ = contador_clk(31) $ (\contador_clk[30]~98\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(31),
	cin => \contador_clk[30]~98\,
	combout => \contador_clk[31]~99_combout\);

-- Location: FF_X47_Y50_N31
\contador_clk[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \contador_clk[31]~99_combout\,
	clrn => \reset~input_o\,
	sclr => \contador_clk[30]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_clk(31));

-- Location: LCCOMB_X46_Y51_N0
\Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!contador_clk(30) & (!contador_clk(29) & (!contador_clk(28) & !contador_clk(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(30),
	datab => contador_clk(29),
	datac => contador_clk(28),
	datad => contador_clk(31),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X46_Y51_N10
\Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (\Equal1~3_combout\ & (\Equal1~4_combout\ & \Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~3_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X45_Y51_N20
\Mux32~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (!contador_clk(7) & (!velocidade(0) & (contador_clk(8) & !contador_clk(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(7),
	datab => velocidade(0),
	datac => contador_clk(8),
	datad => contador_clk(2),
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X45_Y51_N18
\Mux32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~2_combout\ = (contador_clk(19) & (contador_clk(18) & (!contador_clk(15) & contador_clk(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_clk(19),
	datab => contador_clk(18),
	datac => contador_clk(15),
	datad => contador_clk(9),
	combout => \Mux32~2_combout\);

-- Location: LCCOMB_X45_Y51_N4
\Mux32~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~3_combout\ = (contador_clk(22) & (!contador_clk(21) & \Mux32~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_clk(22),
	datac => contador_clk(21),
	datad => \Mux32~2_combout\,
	combout => \Mux32~3_combout\);

-- Location: LCCOMB_X46_Y51_N20
\Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Equal1~1_combout\ & (!contador_clk(16) & (\Equal1~0_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => contador_clk(16),
	datac => \Equal1~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X46_Y51_N28
\Mux32~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~4_combout\ = (\Equal1~6_combout\ & (\Mux32~1_combout\ & (\Mux32~3_combout\ & \Mux32~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Mux32~1_combout\,
	datac => \Mux32~3_combout\,
	datad => \Mux32~0_combout\,
	combout => \Mux32~4_combout\);

-- Location: LCCOMB_X45_Y51_N6
\Mux32~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux32~5_combout\ = (!velocidade(1) & \Mux32~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => velocidade(1),
	datad => \Mux32~4_combout\,
	combout => \Mux32~5_combout\);

-- Location: LCCOMB_X45_Y51_N8
\clk_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~0_combout\ = \clk_div~q\ $ (((\Mux32~5_combout\) # ((\Mux32~8_combout\) # (\contador_clk[30]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux32~5_combout\,
	datab => \clk_div~q\,
	datac => \Mux32~8_combout\,
	datad => \contador_clk[30]~34_combout\,
	combout => \clk_div~0_combout\);

-- Location: LCCOMB_X45_Y51_N16
\clk_div~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_div~feeder_combout\ = \clk_div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_div~0_combout\,
	combout => \clk_div~feeder_combout\);

-- Location: FF_X45_Y51_N17
clk_div : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_div~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_div~q\);

-- Location: CLKCTRL_G12
\clk_div~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_div~clkctrl_outclk\);

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

-- Location: LCCOMB_X52_Y53_N16
\contador[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[0]~4_combout\ = !contador(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(0),
	combout => \contador[0]~4_combout\);

-- Location: FF_X52_Y53_N17
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \contador[0]~4_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X52_Y53_N26
\contador[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[1]~0_combout\ = contador(1) $ (((\enable~input_o\ & contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => contador(1),
	datad => contador(0),
	combout => \contador[1]~0_combout\);

-- Location: FF_X52_Y53_N27
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \contador[1]~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X52_Y53_N8
\contador[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[2]~1_combout\ = contador(2) $ (((contador(1) & (\enable~input_o\ & contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => \enable~input_o\,
	datac => contador(2),
	datad => contador(0),
	combout => \contador[2]~1_combout\);

-- Location: FF_X52_Y53_N9
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \contador[2]~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X52_Y53_N12
\contador[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[3]~2_combout\ = (contador(1) & (\enable~input_o\ & (contador(2) & contador(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => \enable~input_o\,
	datac => contador(2),
	datad => contador(0),
	combout => \contador[3]~2_combout\);

-- Location: LCCOMB_X52_Y53_N10
\contador[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador[3]~3_combout\ = contador(3) $ (\contador[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(3),
	datad => \contador[3]~2_combout\,
	combout => \contador[3]~3_combout\);

-- Location: FF_X52_Y53_N11
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \contador[3]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X52_Y53_N20
\Decoder1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!contador(3) & (!contador(0) & (!contador(1) & !contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(0),
	datac => contador(1),
	datad => contador(2),
	combout => \Decoder1~0_combout\);

-- Location: FF_X52_Y53_N21
\leds[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Decoder1~0_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[0]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N6
\Decoder1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (!contador(3) & (contador(0) & (!contador(1) & !contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(0),
	datac => contador(1),
	datad => contador(2),
	combout => \Decoder1~1_combout\);

-- Location: FF_X52_Y53_N7
\leds[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Decoder1~1_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[1]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N0
\Decoder1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (!contador(3) & (!contador(0) & (contador(1) & !contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(0),
	datac => contador(1),
	datad => contador(2),
	combout => \Decoder1~2_combout\);

-- Location: FF_X52_Y53_N1
\leds[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Decoder1~2_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[2]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N30
\leds~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~18_combout\ = (contador(0) & (contador(1) & (contador(3) $ (!contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(0),
	datac => contador(1),
	datad => contador(2),
	combout => \leds~18_combout\);

-- Location: FF_X52_Y53_N31
\leds[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \leds~18_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[3]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N4
\leds~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~19_combout\ = (contador(2) & (!contador(0) & (contador(3) $ (!contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(2),
	datac => contador(1),
	datad => contador(0),
	combout => \leds~19_combout\);

-- Location: FF_X52_Y53_N5
\leds[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \leds~19_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[4]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N14
\leds~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~16_combout\ = (contador(0) & (!contador(1) & contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(0),
	datac => contador(1),
	datad => contador(2),
	combout => \leds~16_combout\);

-- Location: FF_X52_Y53_N15
\leds[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \leds~16_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[5]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N28
\leds~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~20_combout\ = (!contador(0) & (contador(2) & (contador(3) $ (contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(0),
	datac => contador(1),
	datad => contador(2),
	combout => \leds~20_combout\);

-- Location: FF_X52_Y53_N29
\leds[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \leds~20_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[6]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N18
\leds~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~21_combout\ = (contador(0) & (contador(1) & (contador(2) $ (contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datac => contador(1),
	datad => contador(3),
	combout => \leds~21_combout\);

-- Location: FF_X52_Y53_N19
\leds[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \leds~21_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[7]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N24
\leds~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~17_combout\ = (!contador(2) & (!contador(0) & contador(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(0),
	datad => contador(3),
	combout => \leds~17_combout\);

-- Location: FF_X52_Y53_N25
\leds[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \leds~17_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[8]~reg0_q\);

-- Location: LCCOMB_X52_Y53_N22
\Decoder1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (!contador(2) & (!contador(1) & (contador(0) & contador(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(1),
	datac => contador(0),
	datad => contador(3),
	combout => \Decoder1~3_combout\);

-- Location: FF_X52_Y53_N23
\leds[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_div~clkctrl_outclk\,
	d => \Decoder1~3_combout\,
	clrn => \reset~input_o\,
	ena => \enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \leds[9]~reg0_q\);

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

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;
END structure;


