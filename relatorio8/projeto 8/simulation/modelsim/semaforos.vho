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

-- DATE "02/26/2025 08:44:41"

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

ENTITY 	semaforos IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	mode_select : IN std_logic_vector(1 DOWNTO 0);
	semaforo1 : BUFFER std_logic_vector(2 DOWNTO 0);
	semaforo2 : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END semaforos;

-- Design Ports Information
-- semaforo1[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo1[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo1[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo2[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo2[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- semaforo2[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode_select[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode_select[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF semaforos IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode_select : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_semaforo1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_semaforo2 : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clock_div~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \semaforo1[0]~output_o\ : std_logic;
SIGNAL \semaforo1[1]~output_o\ : std_logic;
SIGNAL \semaforo1[2]~output_o\ : std_logic;
SIGNAL \semaforo2[0]~output_o\ : std_logic;
SIGNAL \semaforo2[1]~output_o\ : std_logic;
SIGNAL \semaforo2[2]~output_o\ : std_logic;
SIGNAL \mode_select[1]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \contador_div~11_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \contador_div~10_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \contador_div~9_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \contador_div~8_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \contador_div~7_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \contador_div~6_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \contador_div~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \contador_div~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \contador_div~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \contador_div~2_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \contador_div~1_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \contador_div~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \clock_div~0_combout\ : std_logic;
SIGNAL \clock_div~feeder_combout\ : std_logic;
SIGNAL \clock_div~q\ : std_logic;
SIGNAL \clock_div~clkctrl_outclk\ : std_logic;
SIGNAL \mode_select[0]~input_o\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_GREEN~2_combout\ : std_logic;
SIGNAL \contador~3_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \contador~1_combout\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_YELLOW~0_combout\ : std_logic;
SIGNAL \estado_atual~25_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \estado_atual~22_combout\ : std_logic;
SIGNAL \estado_atual.S1_YELLOW_S2_RED~0_combout\ : std_logic;
SIGNAL \estado_atual.STANDBY_OFF~0_combout\ : std_logic;
SIGNAL \estado_atual.STANDBY_OFF~1_combout\ : std_logic;
SIGNAL \estado_atual.STANDBY_OFF~q\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_GREEN~1_combout\ : std_logic;
SIGNAL \estado_atual.S1_YELLOW_S2_RED~1_combout\ : std_logic;
SIGNAL \estado_atual~33_combout\ : std_logic;
SIGNAL \estado_atual~31_combout\ : std_logic;
SIGNAL \estado_atual~30_combout\ : std_logic;
SIGNAL \estado_atual~32_combout\ : std_logic;
SIGNAL \estado_atual~34_combout\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_YELLOW~1_combout\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_YELLOW~q\ : std_logic;
SIGNAL \estado_atual.S1_YELLOW_S2_RED~2_combout\ : std_logic;
SIGNAL \estado_atual.S1_YELLOW_S2_RED~q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \contador~2_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \contador~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \estado_atual~41_combout\ : std_logic;
SIGNAL \estado_atual~35_combout\ : std_logic;
SIGNAL \estado_atual~42_combout\ : std_logic;
SIGNAL \estado_atual~36_combout\ : std_logic;
SIGNAL \estado_atual~37_combout\ : std_logic;
SIGNAL \estado_atual~38_combout\ : std_logic;
SIGNAL \estado_atual~39_combout\ : std_logic;
SIGNAL \estado_atual.STANDBY_ON~0_combout\ : std_logic;
SIGNAL \estado_atual.STANDBY_ON~q\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_GREEN~0_combout\ : std_logic;
SIGNAL \estado_atual~27_combout\ : std_logic;
SIGNAL \estado_atual~23_combout\ : std_logic;
SIGNAL \estado_atual~28_combout\ : std_logic;
SIGNAL \estado_atual~24_combout\ : std_logic;
SIGNAL \estado_atual~40_combout\ : std_logic;
SIGNAL \estado_atual~26_combout\ : std_logic;
SIGNAL \estado_atual~29_combout\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_GREEN~3_combout\ : std_logic;
SIGNAL \estado_atual.S1_RED_S2_GREEN~q\ : std_logic;
SIGNAL \estado_atual.S1_GREEN_S2_RED~0_combout\ : std_logic;
SIGNAL \estado_atual.S1_GREEN_S2_RED~1_combout\ : std_logic;
SIGNAL \estado_atual.S1_GREEN_S2_RED~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \semaforo1~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \semaforo2~0_combout\ : std_logic;
SIGNAL contador : std_logic_vector(3 DOWNTO 0);
SIGNAL contador_div : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_semaforo1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_mode_select <= mode_select;
semaforo1 <= ww_semaforo1;
semaforo2 <= ww_semaforo2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clock_div~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_div~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_semaforo1~0_combout\ <= NOT \semaforo1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N24
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
\semaforo1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~0_combout\,
	devoe => ww_devoe,
	o => \semaforo1[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\semaforo1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \semaforo1[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\semaforo1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_semaforo1~0_combout\,
	devoe => ww_devoe,
	o => \semaforo1[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\semaforo2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \semaforo2[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\semaforo2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~0_combout\,
	devoe => ww_devoe,
	o => \semaforo2[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\semaforo2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \semaforo2~0_combout\,
	devoe => ww_devoe,
	o => \semaforo2[2]~output_o\);

-- Location: IOIBUF_X51_Y54_N22
\mode_select[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode_select(1),
	o => \mode_select[1]~input_o\);

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

-- Location: LCCOMB_X46_Y52_N8
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = contador_div(0) $ (VCC)
-- \Add0~1\ = CARRY(contador_div(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador_div(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: IOIBUF_X46_Y54_N29
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

-- Location: FF_X46_Y52_N9
\contador_div[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(0));

-- Location: LCCOMB_X46_Y52_N10
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (contador_div(1) & (!\Add0~1\)) # (!contador_div(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!contador_div(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X46_Y52_N11
\contador_div[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(1));

-- Location: LCCOMB_X46_Y52_N12
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (contador_div(2) & (\Add0~3\ $ (GND))) # (!contador_div(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((contador_div(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X46_Y52_N13
\contador_div[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(2));

-- Location: LCCOMB_X46_Y52_N14
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (contador_div(3) & (!\Add0~5\)) # (!contador_div(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!contador_div(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X46_Y52_N15
\contador_div[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(3));

-- Location: LCCOMB_X46_Y52_N16
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (contador_div(4) & (\Add0~7\ $ (GND))) # (!contador_div(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((contador_div(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X46_Y52_N17
\contador_div[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(4));

-- Location: LCCOMB_X46_Y52_N6
\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (contador_div(2) & (contador_div(4) & (contador_div(1) & contador_div(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(2),
	datab => contador_div(4),
	datac => contador_div(1),
	datad => contador_div(3),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X46_Y52_N18
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (contador_div(5) & (!\Add0~9\)) # (!contador_div(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!contador_div(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X46_Y52_N19
\contador_div[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(5));

-- Location: LCCOMB_X46_Y52_N20
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (contador_div(6) & (\Add0~11\ $ (GND))) # (!contador_div(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((contador_div(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X46_Y52_N2
\contador_div~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~11_combout\ = (\Add0~12_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~12_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_div~11_combout\);

-- Location: FF_X46_Y52_N3
\contador_div[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(6));

-- Location: LCCOMB_X46_Y52_N22
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (contador_div(7) & (!\Add0~13\)) # (!contador_div(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!contador_div(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: FF_X46_Y52_N23
\contador_div[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~14_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(7));

-- Location: LCCOMB_X46_Y52_N24
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (contador_div(8) & (\Add0~15\ $ (GND))) # (!contador_div(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((contador_div(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X46_Y52_N25
\contador_div[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(8));

-- Location: LCCOMB_X46_Y52_N0
\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!contador_div(7) & (!contador_div(8) & (contador_div(5) & !contador_div(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(7),
	datab => contador_div(8),
	datac => contador_div(5),
	datad => contador_div(6),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X46_Y52_N26
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (contador_div(9) & (!\Add0~17\)) # (!contador_div(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!contador_div(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X46_Y52_N27
\contador_div[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(9));

-- Location: LCCOMB_X46_Y52_N28
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (contador_div(10) & (\Add0~19\ $ (GND))) # (!contador_div(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((contador_div(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X46_Y52_N29
\contador_div[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(10));

-- Location: LCCOMB_X46_Y52_N30
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (contador_div(11) & (!\Add0~21\)) # (!contador_div(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!contador_div(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X46_Y52_N4
\contador_div~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~10_combout\ = (\Add0~22_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~22_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_div~10_combout\);

-- Location: FF_X46_Y52_N5
\contador_div[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~10_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(11));

-- Location: LCCOMB_X46_Y51_N0
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (contador_div(12) & (\Add0~23\ $ (GND))) # (!contador_div(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((contador_div(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X46_Y51_N26
\contador_div~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~9_combout\ = (!\Equal0~7_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~24_combout\,
	combout => \contador_div~9_combout\);

-- Location: FF_X46_Y51_N27
\contador_div[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~9_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(12));

-- Location: LCCOMB_X46_Y51_N2
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (contador_div(13) & (!\Add0~25\)) # (!contador_div(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!contador_div(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X46_Y51_N28
\contador_div~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~8_combout\ = (!\Equal0~7_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~26_combout\,
	combout => \contador_div~8_combout\);

-- Location: FF_X46_Y51_N29
\contador_div[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(13));

-- Location: LCCOMB_X46_Y51_N4
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (contador_div(14) & (\Add0~27\ $ (GND))) # (!contador_div(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((contador_div(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X46_Y51_N30
\contador_div~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~7_combout\ = (\Add0~28_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_div~7_combout\);

-- Location: FF_X46_Y51_N31
\contador_div[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~7_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(14));

-- Location: LCCOMB_X46_Y51_N6
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (contador_div(15) & (!\Add0~29\)) # (!contador_div(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!contador_div(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: FF_X46_Y51_N7
\contador_div[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~30_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(15));

-- Location: LCCOMB_X46_Y51_N8
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (contador_div(16) & (\Add0~31\ $ (GND))) # (!contador_div(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((contador_div(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X45_Y51_N8
\contador_div~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~6_combout\ = (\Add0~32_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~32_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_div~6_combout\);

-- Location: FF_X45_Y51_N9
\contador_div[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~6_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(16));

-- Location: LCCOMB_X46_Y51_N10
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (contador_div(17) & (!\Add0~33\)) # (!contador_div(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!contador_div(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: FF_X46_Y51_N11
\contador_div[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~34_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(17));

-- Location: LCCOMB_X46_Y51_N12
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (contador_div(18) & (\Add0~35\ $ (GND))) # (!contador_div(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((contador_div(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X45_Y51_N16
\contador_div~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~5_combout\ = (\Add0~36_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~36_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_div~5_combout\);

-- Location: FF_X45_Y51_N17
\contador_div[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~5_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(18));

-- Location: LCCOMB_X46_Y51_N14
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (contador_div(19) & (!\Add0~37\)) # (!contador_div(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!contador_div(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X45_Y51_N30
\contador_div~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~4_combout\ = (\Add0~38_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_div~4_combout\);

-- Location: FF_X45_Y51_N31
\contador_div[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~4_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(19));

-- Location: LCCOMB_X46_Y51_N16
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (contador_div(20) & (\Add0~39\ $ (GND))) # (!contador_div(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((contador_div(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => contador_div(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X45_Y51_N6
\contador_div~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~3_combout\ = (!\Equal0~7_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~40_combout\,
	combout => \contador_div~3_combout\);

-- Location: FF_X45_Y51_N7
\contador_div[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(20));

-- Location: LCCOMB_X45_Y51_N10
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (contador_div(19) & (contador_div(18) & (!contador_div(17) & contador_div(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(19),
	datab => contador_div(18),
	datac => contador_div(17),
	datad => contador_div(20),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X46_Y51_N18
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (contador_div(21) & (!\Add0~41\)) # (!contador_div(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!contador_div(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X45_Y51_N26
\contador_div~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~2_combout\ = (!\Equal0~7_combout\ & \Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~42_combout\,
	combout => \contador_div~2_combout\);

-- Location: FF_X45_Y51_N27
\contador_div[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(21));

-- Location: LCCOMB_X46_Y51_N20
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (contador_div(22) & (\Add0~43\ $ (GND))) # (!contador_div(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((contador_div(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X45_Y51_N12
\contador_div~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~1_combout\ = (\Add0~44_combout\ & !\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~44_combout\,
	datad => \Equal0~7_combout\,
	combout => \contador_div~1_combout\);

-- Location: FF_X45_Y51_N13
\contador_div[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(22));

-- Location: LCCOMB_X46_Y51_N22
\Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (contador_div(23) & (!\Add0~45\)) # (!contador_div(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!contador_div(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: FF_X46_Y51_N23
\contador_div[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~46_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(23));

-- Location: LCCOMB_X46_Y51_N24
\Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \Add0~47\ $ (!contador_div(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => contador_div(24),
	cin => \Add0~47\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X45_Y51_N20
\contador_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador_div~0_combout\ = (!\Equal0~7_combout\ & \Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~7_combout\,
	datad => \Add0~48_combout\,
	combout => \contador_div~0_combout\);

-- Location: FF_X45_Y51_N21
\contador_div[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \contador_div~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador_div(24));

-- Location: LCCOMB_X45_Y51_N4
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (contador_div(22) & (contador_div(24) & (contador_div(21) & !contador_div(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(22),
	datab => contador_div(24),
	datac => contador_div(21),
	datad => contador_div(23),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X45_Y51_N14
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!contador_div(15) & (contador_div(16) & (contador_div(14) & contador_div(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(15),
	datab => contador_div(16),
	datac => contador_div(14),
	datad => contador_div(13),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X45_Y51_N18
\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (contador_div(12) & (contador_div(11) & (!contador_div(10) & !contador_div(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(12),
	datab => contador_div(11),
	datac => contador_div(10),
	datad => contador_div(9),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X45_Y51_N24
\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X45_Y51_N28
\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (contador_div(0) & (\Equal0~6_combout\ & (\Equal0~5_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador_div(0),
	datab => \Equal0~6_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X45_Y51_N2
\clock_div~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div~0_combout\ = \clock_div~q\ $ (\Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div~q\,
	datad => \Equal0~7_combout\,
	combout => \clock_div~0_combout\);

-- Location: LCCOMB_X45_Y51_N0
\clock_div~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clock_div~feeder_combout\ = \clock_div~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div~0_combout\,
	combout => \clock_div~feeder_combout\);

-- Location: FF_X45_Y51_N1
clock_div : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \clock_div~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div~q\);

-- Location: CLKCTRL_G12
\clock_div~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_div~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_div~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\mode_select[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode_select(0),
	o => \mode_select[0]~input_o\);

-- Location: LCCOMB_X51_Y53_N8
\estado_atual.S1_RED_S2_GREEN~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_RED_S2_GREEN~2_combout\ = (\estado_atual.S1_GREEN_S2_RED~q\ & (!\estado_atual.S1_RED_S2_GREEN~q\ & ((\mode_select[0]~input_o\) # (!\mode_select[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \estado_atual.S1_GREEN_S2_RED~q\,
	datac => \mode_select[1]~input_o\,
	datad => \estado_atual.S1_RED_S2_GREEN~q\,
	combout => \estado_atual.S1_RED_S2_GREEN~2_combout\);

-- Location: LCCOMB_X52_Y53_N14
\contador~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador~3_combout\ = (\LessThan0~0_combout\ & (contador(0) $ ((contador(1))))) # (!\LessThan0~0_combout\ & (\LessThan0~3_combout\ & (contador(0) $ (contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => \LessThan0~0_combout\,
	datac => contador(1),
	datad => \LessThan0~3_combout\,
	combout => \contador~3_combout\);

-- Location: FF_X52_Y53_N15
\contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \contador~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(1));

-- Location: LCCOMB_X52_Y53_N20
\LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (!contador(0)) # (!contador(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => contador(1),
	datad => contador(0),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X52_Y53_N18
\contador~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador~1_combout\ = (\LessThan0~0_combout\ & (\LessThan4~0_combout\ $ ((!contador(2))))) # (!\LessThan0~0_combout\ & (\LessThan0~3_combout\ & (\LessThan4~0_combout\ $ (!contador(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~0_combout\,
	datab => \LessThan0~0_combout\,
	datac => contador(2),
	datad => \LessThan0~3_combout\,
	combout => \contador~1_combout\);

-- Location: FF_X52_Y53_N19
\contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \contador~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(2));

-- Location: LCCOMB_X51_Y53_N4
\estado_atual.S1_RED_S2_YELLOW~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_RED_S2_YELLOW~0_combout\ = (\estado_atual.S1_RED_S2_GREEN~q\ & ((\mode_select[1]~input_o\ & (\Mux0~0_combout\ & \mode_select[0]~input_o\)) # (!\mode_select[1]~input_o\ & ((\Mux0~0_combout\) # (\mode_select[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_RED_S2_GREEN~q\,
	datab => \mode_select[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \mode_select[0]~input_o\,
	combout => \estado_atual.S1_RED_S2_YELLOW~0_combout\);

-- Location: LCCOMB_X52_Y53_N8
\estado_atual~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~25_combout\ = (\mode_select[0]~input_o\ & !\mode_select[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datac => \mode_select[1]~input_o\,
	combout => \estado_atual~25_combout\);

-- Location: LCCOMB_X52_Y53_N2
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (contador(0)) # ((contador(1)) # (contador(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datad => contador(2),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y53_N26
\estado_atual~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~22_combout\ = \mode_select[1]~input_o\ $ (\mode_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_select[1]~input_o\,
	datad => \mode_select[0]~input_o\,
	combout => \estado_atual~22_combout\);

-- Location: LCCOMB_X51_Y53_N20
\estado_atual.S1_YELLOW_S2_RED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_YELLOW_S2_RED~0_combout\ = (!\estado_atual.S1_RED_S2_GREEN~q\ & ((\mode_select[0]~input_o\ & ((\mode_select[1]~input_o\) # (!\estado_atual.S1_GREEN_S2_RED~q\))) # (!\mode_select[0]~input_o\ & ((!\mode_select[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \estado_atual.S1_GREEN_S2_RED~q\,
	datac => \mode_select[1]~input_o\,
	datad => \estado_atual.S1_RED_S2_GREEN~q\,
	combout => \estado_atual.S1_YELLOW_S2_RED~0_combout\);

-- Location: LCCOMB_X49_Y53_N12
\estado_atual.STANDBY_OFF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.STANDBY_OFF~0_combout\ = (\mode_select[1]~input_o\ & !\mode_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_select[1]~input_o\,
	datad => \mode_select[0]~input_o\,
	combout => \estado_atual.STANDBY_OFF~0_combout\);

-- Location: LCCOMB_X50_Y53_N22
\estado_atual.STANDBY_OFF~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.STANDBY_OFF~1_combout\ = (\estado_atual~39_combout\ & (((\estado_atual.STANDBY_OFF~q\)))) # (!\estado_atual~39_combout\ & (\estado_atual.STANDBY_OFF~0_combout\ & (\estado_atual.STANDBY_ON~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.STANDBY_OFF~0_combout\,
	datab => \estado_atual.STANDBY_ON~q\,
	datac => \estado_atual.STANDBY_OFF~q\,
	datad => \estado_atual~39_combout\,
	combout => \estado_atual.STANDBY_OFF~1_combout\);

-- Location: FF_X50_Y53_N23
\estado_atual.STANDBY_OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \estado_atual.STANDBY_OFF~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.STANDBY_OFF~q\);

-- Location: LCCOMB_X51_Y53_N26
\estado_atual.S1_RED_S2_GREEN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_RED_S2_GREEN~1_combout\ = (!\estado_atual.STANDBY_ON~q\ & !\estado_atual.STANDBY_OFF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.STANDBY_ON~q\,
	datad => \estado_atual.STANDBY_OFF~q\,
	combout => \estado_atual.S1_RED_S2_GREEN~1_combout\);

-- Location: LCCOMB_X50_Y53_N24
\estado_atual.S1_YELLOW_S2_RED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_YELLOW_S2_RED~1_combout\ = (\estado_atual.S1_YELLOW_S2_RED~0_combout\ & ((\estado_atual~22_combout\) # ((\Mux0~0_combout\ & \estado_atual.S1_RED_S2_GREEN~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~22_combout\,
	datab => \Mux0~0_combout\,
	datac => \estado_atual.S1_YELLOW_S2_RED~0_combout\,
	datad => \estado_atual.S1_RED_S2_GREEN~1_combout\,
	combout => \estado_atual.S1_YELLOW_S2_RED~1_combout\);

-- Location: LCCOMB_X50_Y53_N30
\estado_atual~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~33_combout\ = (\estado_atual.S1_YELLOW_S2_RED~1_combout\ & ((contador(3) & (!\estado_atual~25_combout\ & !\LessThan1~0_combout\)) # (!contador(3) & ((!\LessThan1~0_combout\) # (!\estado_atual~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => \estado_atual~25_combout\,
	datac => \LessThan1~0_combout\,
	datad => \estado_atual.S1_YELLOW_S2_RED~1_combout\,
	combout => \estado_atual~33_combout\);

-- Location: LCCOMB_X52_Y53_N0
\estado_atual~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~31_combout\ = (contador(0) & (!\estado_atual~25_combout\ & ((!contador(2)) # (!contador(1))))) # (!contador(0) & (((!contador(1) & !contador(2))) # (!\estado_atual~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => \estado_atual~25_combout\,
	datac => contador(1),
	datad => contador(2),
	combout => \estado_atual~31_combout\);

-- Location: LCCOMB_X51_Y53_N2
\estado_atual~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~30_combout\ = (!\estado_atual~22_combout\ & (!\Mux0~0_combout\ & (\LessThan4~0_combout\ & !contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~22_combout\,
	datab => \Mux0~0_combout\,
	datac => \LessThan4~0_combout\,
	datad => contador(2),
	combout => \estado_atual~30_combout\);

-- Location: LCCOMB_X51_Y53_N14
\estado_atual~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~32_combout\ = (!contador(3) & ((\estado_atual~30_combout\) # ((\estado_atual~31_combout\ & \estado_atual.S1_RED_S2_YELLOW~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => \estado_atual~31_combout\,
	datac => \estado_atual.S1_RED_S2_YELLOW~0_combout\,
	datad => \estado_atual~30_combout\,
	combout => \estado_atual~32_combout\);

-- Location: LCCOMB_X50_Y53_N16
\estado_atual~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~34_combout\ = (\estado_atual~33_combout\) # ((\LessThan0~0_combout\) # ((\estado_atual~32_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~33_combout\,
	datab => \LessThan0~0_combout\,
	datac => \estado_atual~32_combout\,
	datad => \LessThan0~3_combout\,
	combout => \estado_atual~34_combout\);

-- Location: LCCOMB_X50_Y53_N8
\estado_atual.S1_RED_S2_YELLOW~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_RED_S2_YELLOW~1_combout\ = (\estado_atual~34_combout\ & ((\estado_atual.S1_RED_S2_YELLOW~q\))) # (!\estado_atual~34_combout\ & (\estado_atual.S1_RED_S2_YELLOW~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_RED_S2_YELLOW~0_combout\,
	datac => \estado_atual.S1_RED_S2_YELLOW~q\,
	datad => \estado_atual~34_combout\,
	combout => \estado_atual.S1_RED_S2_YELLOW~1_combout\);

-- Location: FF_X50_Y53_N9
\estado_atual.S1_RED_S2_YELLOW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \estado_atual.S1_RED_S2_YELLOW~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.S1_RED_S2_YELLOW~q\);

-- Location: LCCOMB_X50_Y53_N12
\estado_atual.S1_YELLOW_S2_RED~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_YELLOW_S2_RED~2_combout\ = (\estado_atual~34_combout\ & ((\estado_atual.S1_YELLOW_S2_RED~q\))) # (!\estado_atual~34_combout\ & (\estado_atual.S1_YELLOW_S2_RED~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.S1_YELLOW_S2_RED~1_combout\,
	datac => \estado_atual.S1_YELLOW_S2_RED~q\,
	datad => \estado_atual~34_combout\,
	combout => \estado_atual.S1_YELLOW_S2_RED~2_combout\);

-- Location: FF_X50_Y53_N13
\estado_atual.S1_YELLOW_S2_RED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \estado_atual.S1_YELLOW_S2_RED~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.S1_YELLOW_S2_RED~q\);

-- Location: LCCOMB_X50_Y53_N4
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\estado_atual.S1_RED_S2_YELLOW~q\ & !\estado_atual.S1_YELLOW_S2_RED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.S1_RED_S2_YELLOW~q\,
	datad => \estado_atual.S1_YELLOW_S2_RED~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X50_Y53_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\estado_atual.STANDBY_OFF~q\) # ((\estado_atual.STANDBY_ON~q\) # (!\estado_atual.S1_GREEN_S2_RED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.STANDBY_OFF~q\,
	datac => \estado_atual.STANDBY_ON~q\,
	datad => \estado_atual.S1_GREEN_S2_RED~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X50_Y53_N18
\Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\mode_select[0]~input_o\ & ((\Mux0~0_combout\ $ (!\Mux2~0_combout\)) # (!\mode_select[1]~input_o\))) # (!\mode_select[0]~input_o\ & ((\mode_select[1]~input_o\) # (\Mux0~0_combout\ $ (!\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \mode_select[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X50_Y53_N6
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = contador(2) $ (\Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => contador(2),
	datad => \Add1~2_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X49_Y53_N8
\Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\mode_select[1]~input_o\ & (!\mode_select[0]~input_o\)) # (!\mode_select[1]~input_o\ & (\mode_select[0]~input_o\ & ((\estado_atual.S1_RED_S2_YELLOW~q\) # (\estado_atual.S1_YELLOW_S2_RED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[1]~input_o\,
	datab => \mode_select[0]~input_o\,
	datac => \estado_atual.S1_RED_S2_YELLOW~q\,
	datad => \estado_atual.S1_YELLOW_S2_RED~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X49_Y53_N14
\Add1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = \mode_select[1]~input_o\ $ (\mode_select[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_select[1]~input_o\,
	datad => \mode_select[0]~input_o\,
	combout => \Add1~3_combout\);

-- Location: LCCOMB_X49_Y53_N24
\Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (\Add1~3_combout\) # ((\estado_atual.STANDBY_OFF~q\) # ((\estado_atual.STANDBY_ON~q\) # (!\estado_atual.S1_GREEN_S2_RED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~3_combout\,
	datab => \estado_atual.STANDBY_OFF~q\,
	datac => \estado_atual.STANDBY_ON~q\,
	datad => \estado_atual.S1_GREEN_S2_RED~q\,
	combout => \Add1~4_combout\);

-- Location: LCCOMB_X49_Y53_N22
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (contador(1) & (!contador(0) & (!\Mux3~0_combout\ & !\Add1~4_combout\))) # (!contador(1) & (((!contador(0) & !\Mux3~0_combout\)) # (!\Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(1),
	datab => contador(0),
	datac => \Mux3~0_combout\,
	datad => \Add1~4_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X50_Y53_N26
\Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!\mode_select[1]~input_o\ & (\mode_select[0]~input_o\ & ((\estado_atual.STANDBY_OFF~q\) # (\estado_atual.STANDBY_ON~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.STANDBY_OFF~q\,
	datab => \mode_select[1]~input_o\,
	datac => \estado_atual.STANDBY_ON~q\,
	datad => \mode_select[0]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X50_Y53_N2
\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ((\Mux2~0_combout\) # (\mode_select[0]~input_o\ $ (\mode_select[1]~input_o\))) # (!\Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \mode_select[1]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \Mux2~0_combout\,
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X50_Y53_N20
\Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \Add1~0_combout\ $ (((\Mux0~1_combout\) # ((!\estado_atual~22_combout\ & \Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~22_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \Add1~0_combout\,
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X51_Y53_N18
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (contador(3) & (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & !\Add1~1_combout\))) # (!contador(3) & (((\LessThan0~1_combout\ & \LessThan0~2_combout\)) # (!\Add1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~2_combout\,
	datad => \Add1~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X52_Y53_N12
\contador~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador~2_combout\ = (!contador(0) & ((\LessThan0~0_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => contador(0),
	datad => \LessThan0~3_combout\,
	combout => \contador~2_combout\);

-- Location: FF_X52_Y53_N13
\contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \contador~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(0));

-- Location: LCCOMB_X52_Y53_N6
\LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ((!contador(2)) # (!contador(1))) # (!contador(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datac => contador(1),
	datad => contador(2),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X51_Y53_N16
\contador~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \contador~0_combout\ = (\LessThan0~0_combout\ & (\LessThan5~0_combout\ $ ((!contador(3))))) # (!\LessThan0~0_combout\ & (\LessThan0~3_combout\ & (\LessThan5~0_combout\ $ (!contador(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \LessThan5~0_combout\,
	datac => contador(3),
	datad => \LessThan0~3_combout\,
	combout => \contador~0_combout\);

-- Location: FF_X51_Y53_N17
\contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \contador~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => contador(3));

-- Location: LCCOMB_X50_Y53_N0
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!contador(2) & (!\Add1~2_combout\ & (contador(3) $ (\Add1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => contador(2),
	datac => \Add1~2_combout\,
	datad => \Add1~1_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X52_Y53_N10
\estado_atual~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~41_combout\ = (\mode_select[0]~input_o\ & (!\mode_select[1]~input_o\ & ((contador(3)) # (\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => \mode_select[0]~input_o\,
	datac => \mode_select[1]~input_o\,
	datad => \LessThan1~0_combout\,
	combout => \estado_atual~41_combout\);

-- Location: LCCOMB_X51_Y53_N24
\estado_atual~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~35_combout\ = (\estado_atual.S1_RED_S2_GREEN~q\) # (!\estado_atual.S1_GREEN_S2_RED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_RED_S2_GREEN~q\,
	datad => \estado_atual.S1_GREEN_S2_RED~q\,
	combout => \estado_atual~35_combout\);

-- Location: LCCOMB_X51_Y53_N22
\estado_atual~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~42_combout\ = (\mode_select[0]~input_o\ & ((\mode_select[1]~input_o\ & (\estado_atual.S1_RED_S2_GREEN~1_combout\)) # (!\mode_select[1]~input_o\ & ((\estado_atual~35_combout\))))) # (!\mode_select[0]~input_o\ & (!\mode_select[1]~input_o\ & 
-- (\estado_atual.S1_RED_S2_GREEN~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \mode_select[1]~input_o\,
	datac => \estado_atual.S1_RED_S2_GREEN~1_combout\,
	datad => \estado_atual~35_combout\,
	combout => \estado_atual~42_combout\);

-- Location: LCCOMB_X52_Y53_N22
\estado_atual~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~36_combout\ = (\estado_atual.S1_RED_S2_GREEN~q\ & (((!contador(2)) # (!contador(1))) # (!contador(0)))) # (!\estado_atual.S1_RED_S2_GREEN~q\ & (!contador(2) & ((!contador(1)) # (!contador(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(0),
	datab => contador(1),
	datac => \estado_atual.S1_RED_S2_GREEN~q\,
	datad => contador(2),
	combout => \estado_atual~36_combout\);

-- Location: LCCOMB_X52_Y53_N16
\estado_atual~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~37_combout\ = (contador(3) & (!\estado_atual.S1_GREEN_S2_RED~q\ & ((!\LessThan1~0_combout\)))) # (!contador(3) & (((\estado_atual~36_combout\)) # (!\estado_atual.S1_GREEN_S2_RED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(3),
	datab => \estado_atual.S1_GREEN_S2_RED~q\,
	datac => \estado_atual~36_combout\,
	datad => \LessThan1~0_combout\,
	combout => \estado_atual~37_combout\);

-- Location: LCCOMB_X51_Y53_N30
\estado_atual~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~38_combout\ = (!\estado_atual~41_combout\ & (\estado_atual~42_combout\ & ((\estado_atual~25_combout\) # (\estado_atual~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~25_combout\,
	datab => \estado_atual~41_combout\,
	datac => \estado_atual~42_combout\,
	datad => \estado_atual~37_combout\,
	combout => \estado_atual~38_combout\);

-- Location: LCCOMB_X50_Y53_N10
\estado_atual~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~39_combout\ = (\LessThan0~0_combout\) # ((\estado_atual~38_combout\) # (\LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \estado_atual~38_combout\,
	datad => \LessThan0~3_combout\,
	combout => \estado_atual~39_combout\);

-- Location: LCCOMB_X50_Y53_N14
\estado_atual.STANDBY_ON~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.STANDBY_ON~0_combout\ = (\estado_atual.STANDBY_ON~q\ & (((\estado_atual~39_combout\)))) # (!\estado_atual.STANDBY_ON~q\ & (!\mode_select[0]~input_o\ & (\mode_select[1]~input_o\ & !\estado_atual~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \mode_select[1]~input_o\,
	datac => \estado_atual.STANDBY_ON~q\,
	datad => \estado_atual~39_combout\,
	combout => \estado_atual.STANDBY_ON~0_combout\);

-- Location: FF_X50_Y53_N15
\estado_atual.STANDBY_ON\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \estado_atual.STANDBY_ON~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.STANDBY_ON~q\);

-- Location: LCCOMB_X49_Y53_N20
\estado_atual.S1_RED_S2_GREEN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_RED_S2_GREEN~0_combout\ = (!\estado_atual.STANDBY_ON~q\ & (!\estado_atual.S1_RED_S2_YELLOW~q\ & !\estado_atual.STANDBY_OFF~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado_atual.STANDBY_ON~q\,
	datac => \estado_atual.S1_RED_S2_YELLOW~q\,
	datad => \estado_atual.STANDBY_OFF~q\,
	combout => \estado_atual.S1_RED_S2_GREEN~0_combout\);

-- Location: LCCOMB_X52_Y53_N30
\estado_atual~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~27_combout\ = (!contador(2) & (!contador(3) & ((!contador(0)) # (!contador(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => contador(1),
	datac => contador(3),
	datad => contador(0),
	combout => \estado_atual~27_combout\);

-- Location: LCCOMB_X51_Y53_N0
\estado_atual~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~23_combout\ = (\mode_select[0]~input_o\ & (((\estado_atual.S1_RED_S2_GREEN~q\)) # (!\estado_atual.S1_GREEN_S2_RED~q\))) # (!\mode_select[0]~input_o\ & (!\mode_select[1]~input_o\ & ((\estado_atual.S1_RED_S2_GREEN~q\) # 
-- (!\estado_atual.S1_GREEN_S2_RED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \estado_atual.S1_GREEN_S2_RED~q\,
	datac => \mode_select[1]~input_o\,
	datad => \estado_atual.S1_RED_S2_GREEN~q\,
	combout => \estado_atual~23_combout\);

-- Location: LCCOMB_X51_Y53_N12
\estado_atual~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~28_combout\ = (\estado_atual.S1_RED_S2_GREEN~1_combout\ & (!\estado_atual~22_combout\ & (\estado_atual~27_combout\ & !\estado_atual~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_RED_S2_GREEN~1_combout\,
	datab => \estado_atual~22_combout\,
	datac => \estado_atual~27_combout\,
	datad => \estado_atual~23_combout\,
	combout => \estado_atual~28_combout\);

-- Location: LCCOMB_X52_Y53_N26
\estado_atual~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~24_combout\ = (!contador(3) & (((\LessThan4~0_combout\) # (!\estado_atual.S1_RED_S2_GREEN~q\)) # (!contador(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => contador(2),
	datab => \estado_atual.S1_RED_S2_GREEN~q\,
	datac => contador(3),
	datad => \LessThan4~0_combout\,
	combout => \estado_atual~24_combout\);

-- Location: LCCOMB_X52_Y53_N24
\estado_atual~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~40_combout\ = (\mode_select[0]~input_o\ & (((!\estado_atual.S1_RED_S2_GREEN~q\ & !\LessThan1~0_combout\)) # (!\mode_select[1]~input_o\))) # (!\mode_select[0]~input_o\ & (!\estado_atual.S1_RED_S2_GREEN~q\ & ((!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \estado_atual.S1_RED_S2_GREEN~q\,
	datac => \mode_select[1]~input_o\,
	datad => \LessThan1~0_combout\,
	combout => \estado_atual~40_combout\);

-- Location: LCCOMB_X52_Y53_N28
\estado_atual~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~26_combout\ = (\estado_atual~23_combout\ & (!\estado_atual~41_combout\ & ((\estado_atual~24_combout\) # (\estado_atual~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~24_combout\,
	datab => \estado_atual~40_combout\,
	datac => \estado_atual~23_combout\,
	datad => \estado_atual~41_combout\,
	combout => \estado_atual~26_combout\);

-- Location: LCCOMB_X51_Y53_N10
\estado_atual~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual~29_combout\ = (\estado_atual~28_combout\) # ((\estado_atual~26_combout\) # ((\LessThan0~0_combout\) # (\LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual~28_combout\,
	datab => \estado_atual~26_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~3_combout\,
	combout => \estado_atual~29_combout\);

-- Location: LCCOMB_X51_Y53_N6
\estado_atual.S1_RED_S2_GREEN~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_RED_S2_GREEN~3_combout\ = (\estado_atual~29_combout\ & (((\estado_atual.S1_RED_S2_GREEN~q\)))) # (!\estado_atual~29_combout\ & (\estado_atual.S1_RED_S2_GREEN~2_combout\ & (\estado_atual.S1_RED_S2_GREEN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_RED_S2_GREEN~2_combout\,
	datab => \estado_atual.S1_RED_S2_GREEN~0_combout\,
	datac => \estado_atual.S1_RED_S2_GREEN~q\,
	datad => \estado_atual~29_combout\,
	combout => \estado_atual.S1_RED_S2_GREEN~3_combout\);

-- Location: FF_X51_Y53_N7
\estado_atual.S1_RED_S2_GREEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \estado_atual.S1_RED_S2_GREEN~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.S1_RED_S2_GREEN~q\);

-- Location: LCCOMB_X52_Y53_N4
\estado_atual.S1_GREEN_S2_RED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_GREEN_S2_RED~0_combout\ = (\estado_atual.S1_RED_S2_GREEN~q\) # (((!\mode_select[0]~input_o\ & \mode_select[1]~input_o\)) # (!\estado_atual.S1_GREEN_S2_RED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[0]~input_o\,
	datab => \estado_atual.S1_RED_S2_GREEN~q\,
	datac => \mode_select[1]~input_o\,
	datad => \estado_atual.S1_GREEN_S2_RED~q\,
	combout => \estado_atual.S1_GREEN_S2_RED~0_combout\);

-- Location: LCCOMB_X51_Y53_N28
\estado_atual.S1_GREEN_S2_RED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \estado_atual.S1_GREEN_S2_RED~1_combout\ = (\estado_atual~29_combout\ & (((\estado_atual.S1_GREEN_S2_RED~q\)))) # (!\estado_atual~29_combout\ & ((\estado_atual.S1_GREEN_S2_RED~0_combout\) # ((\estado_atual.S1_RED_S2_GREEN~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_GREEN_S2_RED~0_combout\,
	datab => \estado_atual.S1_RED_S2_GREEN~0_combout\,
	datac => \estado_atual.S1_GREEN_S2_RED~q\,
	datad => \estado_atual~29_combout\,
	combout => \estado_atual.S1_GREEN_S2_RED~1_combout\);

-- Location: FF_X51_Y53_N29
\estado_atual.S1_GREEN_S2_RED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div~clkctrl_outclk\,
	d => \estado_atual.S1_GREEN_S2_RED~1_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.S1_GREEN_S2_RED~q\);

-- Location: LCCOMB_X49_Y53_N0
\Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\mode_select[1]~input_o\ & (((\mode_select[0]~input_o\)))) # (!\mode_select[1]~input_o\ & (\estado_atual.S1_GREEN_S2_RED~q\ & (!\estado_atual.S1_YELLOW_S2_RED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[1]~input_o\,
	datab => \estado_atual.S1_GREEN_S2_RED~q\,
	datac => \estado_atual.S1_YELLOW_S2_RED~q\,
	datad => \mode_select[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X49_Y53_N30
\Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\mode_select[1]~input_o\ & (!\estado_atual.STANDBY_OFF~q\ & ((!\mode_select[0]~input_o\)))) # (!\mode_select[1]~input_o\ & (((\estado_atual.S1_YELLOW_S2_RED~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode_select[1]~input_o\,
	datab => \estado_atual.STANDBY_OFF~q\,
	datac => \estado_atual.S1_YELLOW_S2_RED~q\,
	datad => \mode_select[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X49_Y53_N4
\semaforo1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \semaforo1~0_combout\ = (\mode_select[1]~input_o\) # (\estado_atual.S1_GREEN_S2_RED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode_select[1]~input_o\,
	datad => \estado_atual.S1_GREEN_S2_RED~q\,
	combout => \semaforo1~0_combout\);

-- Location: LCCOMB_X49_Y53_N2
\Mux13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\mode_select[1]~input_o\ & (((\mode_select[0]~input_o\)))) # (!\mode_select[1]~input_o\ & (!\estado_atual.S1_RED_S2_GREEN~q\ & ((!\estado_atual.S1_RED_S2_YELLOW~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_RED_S2_GREEN~q\,
	datab => \mode_select[0]~input_o\,
	datac => \estado_atual.S1_RED_S2_YELLOW~q\,
	datad => \mode_select[1]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X49_Y53_N16
\Mux12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\mode_select[1]~input_o\ & (((!\estado_atual.STANDBY_OFF~q\ & !\mode_select[0]~input_o\)))) # (!\mode_select[1]~input_o\ & (\estado_atual.S1_RED_S2_YELLOW~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado_atual.S1_RED_S2_YELLOW~q\,
	datab => \mode_select[1]~input_o\,
	datac => \estado_atual.STANDBY_OFF~q\,
	datad => \mode_select[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X49_Y53_N18
\semaforo2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \semaforo2~0_combout\ = (!\mode_select[1]~input_o\ & \estado_atual.S1_RED_S2_GREEN~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode_select[1]~input_o\,
	datad => \estado_atual.S1_RED_S2_GREEN~q\,
	combout => \semaforo2~0_combout\);

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

ww_semaforo1(0) <= \semaforo1[0]~output_o\;

ww_semaforo1(1) <= \semaforo1[1]~output_o\;

ww_semaforo1(2) <= \semaforo1[2]~output_o\;

ww_semaforo2(0) <= \semaforo2[0]~output_o\;

ww_semaforo2(1) <= \semaforo2[1]~output_o\;

ww_semaforo2(2) <= \semaforo2[2]~output_o\;
END structure;


