-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/08/2024 22:50:58"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab10_2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 1);
	GPIO_0 : OUT std_logic_vector(21 DOWNTO 9);
	GPIO_1 : OUT std_logic_vector(21 DOWNTO 9)
	);
END Lab10_2;

-- Design Ports Information
-- GPIO_0[9]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab10_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_GPIO_0 : std_logic_vector(21 DOWNTO 9);
SIGNAL ww_GPIO_1 : std_logic_vector(21 DOWNTO 9);
SIGNAL \KEY[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_U1|CLK_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO_0[9]~output_o\ : std_logic;
SIGNAL \GPIO_0[10]~output_o\ : std_logic;
SIGNAL \GPIO_0[11]~output_o\ : std_logic;
SIGNAL \GPIO_0[12]~output_o\ : std_logic;
SIGNAL \GPIO_0[13]~output_o\ : std_logic;
SIGNAL \GPIO_0[14]~output_o\ : std_logic;
SIGNAL \GPIO_0[15]~output_o\ : std_logic;
SIGNAL \GPIO_0[16]~output_o\ : std_logic;
SIGNAL \GPIO_0[17]~output_o\ : std_logic;
SIGNAL \GPIO_0[18]~output_o\ : std_logic;
SIGNAL \GPIO_0[19]~output_o\ : std_logic;
SIGNAL \GPIO_0[20]~output_o\ : std_logic;
SIGNAL \GPIO_0[21]~output_o\ : std_logic;
SIGNAL \GPIO_1[9]~output_o\ : std_logic;
SIGNAL \GPIO_1[10]~output_o\ : std_logic;
SIGNAL \GPIO_1[11]~output_o\ : std_logic;
SIGNAL \GPIO_1[12]~output_o\ : std_logic;
SIGNAL \GPIO_1[13]~output_o\ : std_logic;
SIGNAL \GPIO_1[14]~output_o\ : std_logic;
SIGNAL \GPIO_1[15]~output_o\ : std_logic;
SIGNAL \GPIO_1[16]~output_o\ : std_logic;
SIGNAL \GPIO_1[17]~output_o\ : std_logic;
SIGNAL \GPIO_1[18]~output_o\ : std_logic;
SIGNAL \GPIO_1[19]~output_o\ : std_logic;
SIGNAL \GPIO_1[20]~output_o\ : std_logic;
SIGNAL \GPIO_1[21]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLK_U1|CLK_out~0_combout\ : std_logic;
SIGNAL \CLK_U1|CLK_out~feeder_combout\ : std_logic;
SIGNAL \CLK_U1|CLK_out~q\ : std_logic;
SIGNAL \CLK_U1|CLK_out~clkctrl_outclk\ : std_logic;
SIGNAL \COUNTER[0]~5_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \COUNTER[2]~10\ : std_logic;
SIGNAL \COUNTER[3]~11_combout\ : std_logic;
SIGNAL \COUNTER[3]~12\ : std_logic;
SIGNAL \COUNTER[4]~13_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \COUNTER[0]~6\ : std_logic;
SIGNAL \COUNTER[1]~7_combout\ : std_logic;
SIGNAL \COUNTER[1]~8\ : std_logic;
SIGNAL \COUNTER[2]~9_combout\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \LCM_RS~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \LINE1[0][6]~15_combout\ : std_logic;
SIGNAL \LINE1[1][0]~1_combout\ : std_logic;
SIGNAL \LINE1[1][0]~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Selector8~9_combout\ : std_logic;
SIGNAL \Selector8~7_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \Selector8~8_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Selector8~12_combout\ : std_logic;
SIGNAL \Selector8~10_combout\ : std_logic;
SIGNAL \Selector8~11_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector8~13_combout\ : std_logic;
SIGNAL \Selector8~14_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector8~5_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Selector8~15_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL LCM_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL COUNTER : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
GPIO_0 <= ww_GPIO_0;
GPIO_1 <= ww_GPIO_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KEY[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[1]~input_o\);

\CLK_U1|CLK_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_U1|CLK_out~q\);
\CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\ <= NOT \CLK_U1|CLK_out~clkctrl_outclk\;

-- Location: IOOBUF_X5_Y0_N2
\GPIO_0[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[9]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\GPIO_0[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[10]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\GPIO_0[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[11]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\GPIO_0[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[12]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\GPIO_0[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[13]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\GPIO_0[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LCM_RS~q\,
	devoe => ww_devoe,
	o => \GPIO_0[14]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\GPIO_0[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[15]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\GPIO_0[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[16]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\GPIO_0[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CLK_U1|CLK_out~q\,
	devoe => ww_devoe,
	o => \GPIO_0[17]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\GPIO_0[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[18]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\GPIO_0[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(0),
	devoe => ww_devoe,
	o => \GPIO_0[19]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\GPIO_0[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[20]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\GPIO_0[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(1),
	devoe => ww_devoe,
	o => \GPIO_0[21]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\GPIO_1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(2),
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\GPIO_1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[10]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\GPIO_1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(3),
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X30_Y0_N30
\GPIO_1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\GPIO_1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(4),
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\GPIO_1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(5),
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\GPIO_1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(6),
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\GPIO_1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[16]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\GPIO_1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => LCM_DB(7),
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\GPIO_1[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[18]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\GPIO_1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\GPIO_1[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[20]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
\GPIO_1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[21]~output_o\);

-- Location: IOIBUF_X21_Y0_N8
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LCCOMB_X22_Y1_N30
\CLK_U1|CLK_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|CLK_out~0_combout\ = !\CLK_U1|CLK_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_U1|CLK_out~q\,
	combout => \CLK_U1|CLK_out~0_combout\);

-- Location: LCCOMB_X22_Y1_N14
\CLK_U1|CLK_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|CLK_out~feeder_combout\ = \CLK_U1|CLK_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_U1|CLK_out~0_combout\,
	combout => \CLK_U1|CLK_out~feeder_combout\);

-- Location: FF_X22_Y1_N15
\CLK_U1|CLK_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \CLK_U1|CLK_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|CLK_out~q\);

-- Location: CLKCTRL_G18
\CLK_U1|CLK_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_U1|CLK_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_U1|CLK_out~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y9_N16
\COUNTER[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[0]~5_combout\ = COUNTER(0) $ (VCC)
-- \COUNTER[0]~6\ = CARRY(COUNTER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datad => VCC,
	combout => \COUNTER[0]~5_combout\,
	cout => \COUNTER[0]~6\);

-- Location: LCCOMB_X8_Y9_N4
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X0_Y14_N1
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: CLKCTRL_G4
\KEY[1]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y9_N20
\COUNTER[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[2]~9_combout\ = (COUNTER(2) & (\COUNTER[1]~8\ $ (GND))) # (!COUNTER(2) & (!\COUNTER[1]~8\ & VCC))
-- \COUNTER[2]~10\ = CARRY((COUNTER(2) & !\COUNTER[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datad => VCC,
	cin => \COUNTER[1]~8\,
	combout => \COUNTER[2]~9_combout\,
	cout => \COUNTER[2]~10\);

-- Location: LCCOMB_X7_Y9_N22
\COUNTER[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[3]~11_combout\ = (COUNTER(3) & (!\COUNTER[2]~10\)) # (!COUNTER(3) & ((\COUNTER[2]~10\) # (GND)))
-- \COUNTER[3]~12\ = CARRY((!\COUNTER[2]~10\) # (!COUNTER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(3),
	datad => VCC,
	cin => \COUNTER[2]~10\,
	combout => \COUNTER[3]~11_combout\,
	cout => \COUNTER[3]~12\);

-- Location: FF_X7_Y9_N23
\COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[3]~11_combout\,
	asdata => VCC,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(3));

-- Location: LCCOMB_X7_Y9_N24
\COUNTER[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[4]~13_combout\ = COUNTER(4) $ (!\COUNTER[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	cin => \COUNTER[3]~12\,
	combout => \COUNTER[4]~13_combout\);

-- Location: FF_X7_Y9_N25
\COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[4]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(4));

-- Location: LCCOMB_X8_Y9_N2
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (COUNTER(3) & COUNTER(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(3),
	datad => COUNTER(4),
	combout => \LessThan0~0_combout\);

-- Location: FF_X7_Y9_N17
\COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[0]~5_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(0));

-- Location: LCCOMB_X7_Y9_N18
\COUNTER[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[1]~7_combout\ = (COUNTER(1) & (!\COUNTER[0]~6\)) # (!COUNTER(1) & ((\COUNTER[0]~6\) # (GND)))
-- \COUNTER[1]~8\ = CARRY((!\COUNTER[0]~6\) # (!COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datad => VCC,
	cin => \COUNTER[0]~6\,
	combout => \COUNTER[1]~7_combout\,
	cout => \COUNTER[1]~8\);

-- Location: FF_X7_Y9_N19
\COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[1]~7_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(1));

-- Location: FF_X7_Y9_N21
\COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[2]~9_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(2));

-- Location: LCCOMB_X7_Y9_N14
\Selector8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = (!COUNTER(2) & (COUNTER(0) & (!COUNTER(4) & COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datab => COUNTER(0),
	datac => COUNTER(4),
	datad => COUNTER(3),
	combout => \Selector8~4_combout\);

-- Location: LCCOMB_X8_Y9_N8
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (COUNTER(2)) # ((COUNTER(1) & COUNTER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datac => COUNTER(2),
	datad => COUNTER(3),
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X8_Y9_N6
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (COUNTER(4) & (((!COUNTER(0) & !\Selector0~2_combout\)) # (!COUNTER(3)))) # (!COUNTER(4) & (((\Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(3),
	datac => \Selector0~2_combout\,
	datad => COUNTER(4),
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X8_Y9_N28
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\Selector8~4_combout\ & (((\LCM_RS~q\ & \Selector0~3_combout\)) # (!COUNTER(1)))) # (!\Selector8~4_combout\ & (((\LCM_RS~q\ & \Selector0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~4_combout\,
	datab => COUNTER(1),
	datac => \LCM_RS~q\,
	datad => \Selector0~3_combout\,
	combout => \Selector0~4_combout\);

-- Location: FF_X8_Y9_N29
LCM_RS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCM_RS~q\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X8_Y9_N26
\LINE1[0][6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LINE1[0][6]~15_combout\ = (\KEY[1]~input_o\ & !\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[2]~input_o\,
	combout => \LINE1[0][6]~15_combout\);

-- Location: LCCOMB_X8_Y9_N10
\LINE1[1][0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LINE1[1][0]~1_combout\ = (\KEY[1]~input_o\ & ((\LINE1[0][6]~15_combout\) # (\LINE1[1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[0][6]~15_combout\,
	datac => \KEY[1]~input_o\,
	datad => \LINE1[1][0]~1_combout\,
	combout => \LINE1[1][0]~1_combout\);

-- Location: LCCOMB_X8_Y9_N20
\LINE1[1][0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LINE1[1][0]~2_combout\ = (\KEY[1]~input_o\ & ((\LINE1[0][6]~15_combout\) # (\LINE1[1][0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \LINE1[0][6]~15_combout\,
	datad => \LINE1[1][0]~1_combout\,
	combout => \LINE1[1][0]~2_combout\);

-- Location: LCCOMB_X7_Y9_N6
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!COUNTER(0) & !COUNTER(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datad => COUNTER(1),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X6_Y9_N2
\Selector8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~9_combout\ = (!COUNTER(2) & (!COUNTER(3) & (COUNTER(4) & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datab => COUNTER(3),
	datac => COUNTER(4),
	datad => \Equal1~4_combout\,
	combout => \Selector8~9_combout\);

-- Location: LCCOMB_X7_Y9_N4
\Selector8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~7_combout\ = (!COUNTER(4) & (COUNTER(3) & (COUNTER(2) & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(3),
	datac => COUNTER(2),
	datad => \Equal1~4_combout\,
	combout => \Selector8~7_combout\);

-- Location: LCCOMB_X7_Y9_N28
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!COUNTER(4) & (COUNTER(1) & (COUNTER(3) & COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(1),
	datac => COUNTER(3),
	datad => COUNTER(2),
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X6_Y9_N10
\Selector8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = (COUNTER(0) & (\LINE1[1][0]~2_combout\ & \Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datac => \LINE1[1][0]~2_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector8~6_combout\);

-- Location: LCCOMB_X6_Y9_N4
\Selector8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~8_combout\ = (\Selector8~6_combout\) # ((\LINE1[1][0]~2_combout\ & \Selector8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE1[1][0]~2_combout\,
	datac => \Selector8~7_combout\,
	datad => \Selector8~6_combout\,
	combout => \Selector8~8_combout\);

-- Location: LCCOMB_X7_Y9_N26
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (COUNTER(4)) # (!\LINE1[1][0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE1[1][0]~2_combout\,
	datac => COUNTER(1),
	datad => COUNTER(4),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X7_Y9_N12
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (((\Selector3~0_combout\) # (COUNTER(2))) # (!COUNTER(0))) # (!COUNTER(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(0),
	datac => \Selector3~0_combout\,
	datad => COUNTER(2),
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X7_Y9_N0
\Equal1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!COUNTER(4) & (!COUNTER(3) & COUNTER(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(4),
	datac => COUNTER(3),
	datad => COUNTER(2),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X7_Y9_N30
\Selector8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~12_combout\ = (COUNTER(0) & (!COUNTER(1) & \Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datac => COUNTER(1),
	datad => \Equal1~5_combout\,
	combout => \Selector8~12_combout\);

-- Location: LCCOMB_X7_Y9_N10
\Selector8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~10_combout\ = (!COUNTER(2) & (COUNTER(3) & !COUNTER(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(2),
	datac => COUNTER(3),
	datad => COUNTER(4),
	combout => \Selector8~10_combout\);

-- Location: LCCOMB_X7_Y9_N2
\Selector8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~11_combout\ = (COUNTER(1) & (!COUNTER(0) & \Selector8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datac => COUNTER(0),
	datad => \Selector8~10_combout\,
	combout => \Selector8~11_combout\);

-- Location: LCCOMB_X6_Y9_N8
\Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~1_combout\ & (!\Selector8~12_combout\ & ((!\Selector8~11_combout\) # (!\LINE1[1][0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[1][0]~2_combout\,
	datab => \Selector3~1_combout\,
	datac => \Selector8~12_combout\,
	datad => \Selector8~11_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X6_Y9_N12
\Selector8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~13_combout\ = (\Selector8~8_combout\) # (((\LINE1[1][0]~2_combout\ & \Selector8~9_combout\)) # (!\Selector3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[1][0]~2_combout\,
	datab => \Selector8~9_combout\,
	datac => \Selector8~8_combout\,
	datad => \Selector3~2_combout\,
	combout => \Selector8~13_combout\);

-- Location: FF_X6_Y9_N13
\LCM_DB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector8~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(0));

-- Location: LCCOMB_X6_Y9_N28
\Selector8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~14_combout\ = (COUNTER(0) & (\Equal1~5_combout\ & COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datac => \Equal1~5_combout\,
	datad => COUNTER(1),
	combout => \Selector8~14_combout\);

-- Location: LCCOMB_X6_Y9_N6
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\LINE1[1][0]~2_combout\ & ((\Selector8~9_combout\) # ((COUNTER(1) & \Selector8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[1][0]~2_combout\,
	datab => COUNTER(1),
	datac => \Selector8~4_combout\,
	datad => \Selector8~9_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X6_Y9_N14
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector8~14_combout\) # ((\Selector7~0_combout\) # ((\Selector8~7_combout\ & \LINE1[1][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~7_combout\,
	datab => \LINE1[1][0]~2_combout\,
	datac => \Selector8~14_combout\,
	datad => \Selector7~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X6_Y9_N15
\LCM_DB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(1));

-- Location: LCCOMB_X6_Y9_N18
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!COUNTER(0) & (\LINE1[1][0]~2_combout\ & \Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datac => \LINE1[1][0]~2_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X6_Y9_N16
\Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (!\Selector6~0_combout\ & ((!\Equal1~5_combout\) # (!COUNTER(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datac => \Equal1~5_combout\,
	datad => \Selector6~0_combout\,
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X6_Y9_N24
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ((\LINE1[1][0]~2_combout\ & ((\Selector8~11_combout\) # (\Selector8~9_combout\)))) # (!\Selector3~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~11_combout\,
	datab => \LINE1[1][0]~2_combout\,
	datac => \Selector8~9_combout\,
	datad => \Selector3~3_combout\,
	combout => \Selector6~1_combout\);

-- Location: FF_X6_Y9_N25
\LCM_DB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(2));

-- Location: LCCOMB_X8_Y9_N12
\Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (COUNTER(0) & (((\LINE1[1][0]~2_combout\ & \Selector2~0_combout\)))) # (!COUNTER(0) & (\Equal1~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \LINE1[1][0]~2_combout\,
	datac => COUNTER(0),
	datad => \Selector2~0_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X8_Y9_N14
\Selector8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~5_combout\ = (!COUNTER(1) & \Selector8~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datad => \Selector8~4_combout\,
	combout => \Selector8~5_combout\);

-- Location: LCCOMB_X8_Y9_N0
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!COUNTER(2) & (!COUNTER(3) & !COUNTER(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datab => COUNTER(3),
	datad => COUNTER(4),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X8_Y9_N22
\Selector5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\Selector5~3_combout\) # ((\LessThan3~0_combout\) # ((\LINE1[1][0]~2_combout\ & \Selector8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~3_combout\,
	datab => \LINE1[1][0]~2_combout\,
	datac => \Selector8~5_combout\,
	datad => \LessThan3~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: FF_X8_Y9_N23
\LCM_DB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(3));

-- Location: LCCOMB_X8_Y9_N24
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\LessThan3~0_combout\) # ((\LINE1[1][0]~2_combout\ & \Selector8~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE1[1][0]~2_combout\,
	datac => \Selector8~7_combout\,
	datad => \LessThan3~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X8_Y9_N25
\LCM_DB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(4));

-- Location: LCCOMB_X6_Y9_N30
\Equal1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!COUNTER(0) & (\Equal1~5_combout\ & !COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datac => \Equal1~5_combout\,
	datad => COUNTER(1),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X7_Y9_N8
\Selector8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~15_combout\ = (!COUNTER(4) & (COUNTER(3) & (!COUNTER(2) & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(3),
	datac => COUNTER(2),
	datad => \Equal1~4_combout\,
	combout => \Selector8~15_combout\);

-- Location: LCCOMB_X6_Y9_N26
\Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (!\Equal1~6_combout\ & (!\Selector8~15_combout\ & (\Selector3~2_combout\ & \Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Selector8~15_combout\,
	datac => \Selector3~2_combout\,
	datad => \Selector3~3_combout\,
	combout => \Selector3~4_combout\);

-- Location: FF_X6_Y9_N27
\LCM_DB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(5));

-- Location: LCCOMB_X6_Y9_N22
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\LINE1[1][0]~2_combout\ & \Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE1[1][0]~2_combout\,
	datac => COUNTER(0),
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X6_Y9_N0
\Selector3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\Selector3~1_combout\ & ((!\Selector8~11_combout\) # (!\LINE1[1][0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LINE1[1][0]~2_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector8~11_combout\,
	combout => \Selector3~5_combout\);

-- Location: LCCOMB_X6_Y9_N20
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\) # (((\LINE1[1][0]~2_combout\ & \Selector8~9_combout\)) # (!\Selector3~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \LINE1[1][0]~2_combout\,
	datac => \Selector8~9_combout\,
	datad => \Selector3~5_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X6_Y9_N21
\LCM_DB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(6));

-- Location: FF_X7_Y9_N9
\LCM_DB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector8~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(7));

ww_GPIO_0(9) <= \GPIO_0[9]~output_o\;

ww_GPIO_0(10) <= \GPIO_0[10]~output_o\;

ww_GPIO_0(11) <= \GPIO_0[11]~output_o\;

ww_GPIO_0(12) <= \GPIO_0[12]~output_o\;

ww_GPIO_0(13) <= \GPIO_0[13]~output_o\;

ww_GPIO_0(14) <= \GPIO_0[14]~output_o\;

ww_GPIO_0(15) <= \GPIO_0[15]~output_o\;

ww_GPIO_0(16) <= \GPIO_0[16]~output_o\;

ww_GPIO_0(17) <= \GPIO_0[17]~output_o\;

ww_GPIO_0(18) <= \GPIO_0[18]~output_o\;

ww_GPIO_0(19) <= \GPIO_0[19]~output_o\;

ww_GPIO_0(20) <= \GPIO_0[20]~output_o\;

ww_GPIO_0(21) <= \GPIO_0[21]~output_o\;

ww_GPIO_1(9) <= \GPIO_1[9]~output_o\;

ww_GPIO_1(10) <= \GPIO_1[10]~output_o\;

ww_GPIO_1(11) <= \GPIO_1[11]~output_o\;

ww_GPIO_1(12) <= \GPIO_1[12]~output_o\;

ww_GPIO_1(13) <= \GPIO_1[13]~output_o\;

ww_GPIO_1(14) <= \GPIO_1[14]~output_o\;

ww_GPIO_1(15) <= \GPIO_1[15]~output_o\;

ww_GPIO_1(16) <= \GPIO_1[16]~output_o\;

ww_GPIO_1(17) <= \GPIO_1[17]~output_o\;

ww_GPIO_1(18) <= \GPIO_1[18]~output_o\;

ww_GPIO_1(19) <= \GPIO_1[19]~output_o\;

ww_GPIO_1(20) <= \GPIO_1[20]~output_o\;

ww_GPIO_1(21) <= \GPIO_1[21]~output_o\;
END structure;


