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

-- DATE "05/08/2024 23:25:25"

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

ENTITY 	Lab10_1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 1);
	GPIO_0 : OUT std_logic_vector(21 DOWNTO 9);
	GPIO_1 : OUT std_logic_vector(21 DOWNTO 9)
	);
END Lab10_1;

-- Design Ports Information
-- GPIO_0[9]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab10_1 IS
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
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_U1|CLK_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_U1|count[0]~17_combout\ : std_logic;
SIGNAL \CLK_U1|count[0]~18\ : std_logic;
SIGNAL \CLK_U1|count[1]~19_combout\ : std_logic;
SIGNAL \CLK_U1|count[1]~20\ : std_logic;
SIGNAL \CLK_U1|count[2]~21_combout\ : std_logic;
SIGNAL \CLK_U1|count[2]~22\ : std_logic;
SIGNAL \CLK_U1|count[3]~23_combout\ : std_logic;
SIGNAL \CLK_U1|count[3]~24\ : std_logic;
SIGNAL \CLK_U1|count[4]~25_combout\ : std_logic;
SIGNAL \CLK_U1|count[4]~26\ : std_logic;
SIGNAL \CLK_U1|count[5]~27_combout\ : std_logic;
SIGNAL \CLK_U1|count[5]~28\ : std_logic;
SIGNAL \CLK_U1|count[6]~29_combout\ : std_logic;
SIGNAL \CLK_U1|count[6]~30\ : std_logic;
SIGNAL \CLK_U1|count[7]~31_combout\ : std_logic;
SIGNAL \CLK_U1|count[7]~feeder_combout\ : std_logic;
SIGNAL \CLK_U1|count[7]~32\ : std_logic;
SIGNAL \CLK_U1|count[8]~33_combout\ : std_logic;
SIGNAL \CLK_U1|count[8]~34\ : std_logic;
SIGNAL \CLK_U1|count[9]~35_combout\ : std_logic;
SIGNAL \CLK_U1|count[9]~36\ : std_logic;
SIGNAL \CLK_U1|count[10]~37_combout\ : std_logic;
SIGNAL \CLK_U1|count[10]~38\ : std_logic;
SIGNAL \CLK_U1|count[11]~39_combout\ : std_logic;
SIGNAL \CLK_U1|count[11]~40\ : std_logic;
SIGNAL \CLK_U1|count[12]~41_combout\ : std_logic;
SIGNAL \CLK_U1|count[12]~42\ : std_logic;
SIGNAL \CLK_U1|count[13]~43_combout\ : std_logic;
SIGNAL \CLK_U1|count[13]~44\ : std_logic;
SIGNAL \CLK_U1|count[14]~45_combout\ : std_logic;
SIGNAL \CLK_U1|count[14]~46\ : std_logic;
SIGNAL \CLK_U1|count[15]~47_combout\ : std_logic;
SIGNAL \CLK_U1|count[15]~48\ : std_logic;
SIGNAL \CLK_U1|count[16]~49_combout\ : std_logic;
SIGNAL \CLK_U1|LessThan0~4_combout\ : std_logic;
SIGNAL \CLK_U1|LessThan0~0_combout\ : std_logic;
SIGNAL \CLK_U1|LessThan0~1_combout\ : std_logic;
SIGNAL \CLK_U1|LessThan0~2_combout\ : std_logic;
SIGNAL \CLK_U1|LessThan0~3_combout\ : std_logic;
SIGNAL \CLK_U1|LessThan0~5_combout\ : std_logic;
SIGNAL \CLK_U1|CLK_out~0_combout\ : std_logic;
SIGNAL \CLK_U1|CLK_out~feeder_combout\ : std_logic;
SIGNAL \CLK_U1|CLK_out~q\ : std_logic;
SIGNAL \CLK_U1|CLK_out~clkctrl_outclk\ : std_logic;
SIGNAL \COUNTER[0]~6_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \COUNTER[3]~13\ : std_logic;
SIGNAL \COUNTER[4]~14_combout\ : std_logic;
SIGNAL \COUNTER[4]~15\ : std_logic;
SIGNAL \COUNTER[5]~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \COUNTER[0]~7\ : std_logic;
SIGNAL \COUNTER[1]~8_combout\ : std_logic;
SIGNAL \COUNTER[1]~9\ : std_logic;
SIGNAL \COUNTER[2]~10_combout\ : std_logic;
SIGNAL \COUNTER[2]~11\ : std_logic;
SIGNAL \COUNTER[3]~12_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \LCM_RS~q\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \LINE1[0][0]~feeder_combout\ : std_logic;
SIGNAL \LINE1[0][0]~q\ : std_logic;
SIGNAL \Selector8~16_combout\ : std_logic;
SIGNAL \Selector8~17_combout\ : std_logic;
SIGNAL \Selector8~10_combout\ : std_logic;
SIGNAL \Selector8~30_combout\ : std_logic;
SIGNAL \Selector8~12_combout\ : std_logic;
SIGNAL \Selector8~23_combout\ : std_logic;
SIGNAL \Selector8~26_combout\ : std_logic;
SIGNAL \Selector8~15_combout\ : std_logic;
SIGNAL \Selector8~29_combout\ : std_logic;
SIGNAL \Selector8~28_combout\ : std_logic;
SIGNAL \Selector7~9_combout\ : std_logic;
SIGNAL \Selector7~10_combout\ : std_logic;
SIGNAL \Selector8~11_combout\ : std_logic;
SIGNAL \Selector8~13_combout\ : std_logic;
SIGNAL \Selector8~27_combout\ : std_logic;
SIGNAL \Selector8~14_combout\ : std_logic;
SIGNAL \Selector8~31_combout\ : std_logic;
SIGNAL \Selector8~32_combout\ : std_logic;
SIGNAL \Selector8~33_combout\ : std_logic;
SIGNAL \Selector8~24_combout\ : std_logic;
SIGNAL \Selector8~18_combout\ : std_logic;
SIGNAL \Selector8~8_combout\ : std_logic;
SIGNAL \Selector8~25_combout\ : std_logic;
SIGNAL \Selector8~7_combout\ : std_logic;
SIGNAL \Selector8~6_combout\ : std_logic;
SIGNAL \Selector8~9_combout\ : std_logic;
SIGNAL \Selector8~19_combout\ : std_logic;
SIGNAL \Selector8~34_combout\ : std_logic;
SIGNAL \Selector8~35_combout\ : std_logic;
SIGNAL \Selector7~11_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Selector7~14_combout\ : std_logic;
SIGNAL \Selector8~36_combout\ : std_logic;
SIGNAL \Selector7~12_combout\ : std_logic;
SIGNAL \Selector7~13_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector6~17_combout\ : std_logic;
SIGNAL \Selector6~18_combout\ : std_logic;
SIGNAL \Selector6~15_combout\ : std_logic;
SIGNAL \Selector6~16_combout\ : std_logic;
SIGNAL \Selector6~14_combout\ : std_logic;
SIGNAL \Selector5~22_combout\ : std_logic;
SIGNAL \Selector5~37_combout\ : std_logic;
SIGNAL \Selector6~11_combout\ : std_logic;
SIGNAL \Selector6~12_combout\ : std_logic;
SIGNAL \Selector5~13_combout\ : std_logic;
SIGNAL \Selector5~11_combout\ : std_logic;
SIGNAL \Selector5~10_combout\ : std_logic;
SIGNAL \Selector5~38_combout\ : std_logic;
SIGNAL \Selector5~39_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Selector5~35_combout\ : std_logic;
SIGNAL \Selector5~36_combout\ : std_logic;
SIGNAL \Selector6~13_combout\ : std_logic;
SIGNAL \Selector8~21_combout\ : std_logic;
SIGNAL \Selector4~10_combout\ : std_logic;
SIGNAL \Selector4~11_combout\ : std_logic;
SIGNAL \Selector4~9_combout\ : std_logic;
SIGNAL \Selector4~8_combout\ : std_logic;
SIGNAL \Selector8~22_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~11_combout\ : std_logic;
SIGNAL \Selector3~9_combout\ : std_logic;
SIGNAL \Selector3~10_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector8~20_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \LCM_DB~2_combout\ : std_logic;
SIGNAL \LCM_DB~3_combout\ : std_logic;
SIGNAL LCM_DB : std_logic_vector(7 DOWNTO 0);
SIGNAL COUNTER : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLK_U1|count\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \CLK_U1|ALT_INV_LessThan0~5_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
GPIO_0 <= ww_GPIO_0;
GPIO_1 <= ww_GPIO_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\CLK_U1|CLK_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_U1|CLK_out~q\);

\KEY[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[1]~input_o\);
\CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\ <= NOT \CLK_U1|CLK_out~clkctrl_outclk\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\CLK_U1|ALT_INV_LessThan0~5_combout\ <= NOT \CLK_U1|LessThan0~5_combout\;

-- Location: IOOBUF_X3_Y0_N30
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

-- Location: IOOBUF_X1_Y29_N30
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

-- Location: IOOBUF_X26_Y29_N2
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

-- Location: IOOBUF_X5_Y29_N30
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

-- Location: IOOBUF_X37_Y0_N16
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

-- Location: IOOBUF_X39_Y29_N23
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X16_Y29_N30
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

-- Location: IOOBUF_X19_Y29_N30
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

-- Location: IOOBUF_X0_Y26_N2
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

-- Location: IOOBUF_X37_Y29_N23
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

-- Location: IOOBUF_X14_Y0_N23
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

-- Location: IOOBUF_X35_Y29_N2
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

-- Location: IOOBUF_X35_Y29_N23
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

-- Location: IOOBUF_X28_Y29_N2
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

-- Location: IOOBUF_X37_Y29_N16
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X35_Y29_N16
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

-- Location: IOOBUF_X35_Y29_N30
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

-- Location: IOOBUF_X37_Y29_N30
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

-- Location: IOOBUF_X0_Y27_N9
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

-- Location: IOOBUF_X39_Y29_N16
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

-- Location: IOOBUF_X26_Y29_N23
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X16_Y29_N2
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

-- Location: IOOBUF_X5_Y0_N2
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

-- Location: IOIBUF_X0_Y14_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y28_N16
\CLK_U1|count[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[0]~17_combout\ = \CLK_U1|count\(0) $ (VCC)
-- \CLK_U1|count[0]~18\ = CARRY(\CLK_U1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(0),
	datad => VCC,
	combout => \CLK_U1|count[0]~17_combout\,
	cout => \CLK_U1|count[0]~18\);

-- Location: FF_X14_Y28_N17
\CLK_U1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[0]~17_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(0));

-- Location: LCCOMB_X14_Y28_N18
\CLK_U1|count[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[1]~19_combout\ = (\CLK_U1|count\(1) & (!\CLK_U1|count[0]~18\)) # (!\CLK_U1|count\(1) & ((\CLK_U1|count[0]~18\) # (GND)))
-- \CLK_U1|count[1]~20\ = CARRY((!\CLK_U1|count[0]~18\) # (!\CLK_U1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(1),
	datad => VCC,
	cin => \CLK_U1|count[0]~18\,
	combout => \CLK_U1|count[1]~19_combout\,
	cout => \CLK_U1|count[1]~20\);

-- Location: FF_X14_Y28_N19
\CLK_U1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[1]~19_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(1));

-- Location: LCCOMB_X14_Y28_N20
\CLK_U1|count[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[2]~21_combout\ = (\CLK_U1|count\(2) & (\CLK_U1|count[1]~20\ $ (GND))) # (!\CLK_U1|count\(2) & (!\CLK_U1|count[1]~20\ & VCC))
-- \CLK_U1|count[2]~22\ = CARRY((\CLK_U1|count\(2) & !\CLK_U1|count[1]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(2),
	datad => VCC,
	cin => \CLK_U1|count[1]~20\,
	combout => \CLK_U1|count[2]~21_combout\,
	cout => \CLK_U1|count[2]~22\);

-- Location: FF_X14_Y28_N21
\CLK_U1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[2]~21_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(2));

-- Location: LCCOMB_X14_Y28_N22
\CLK_U1|count[3]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[3]~23_combout\ = (\CLK_U1|count\(3) & (!\CLK_U1|count[2]~22\)) # (!\CLK_U1|count\(3) & ((\CLK_U1|count[2]~22\) # (GND)))
-- \CLK_U1|count[3]~24\ = CARRY((!\CLK_U1|count[2]~22\) # (!\CLK_U1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(3),
	datad => VCC,
	cin => \CLK_U1|count[2]~22\,
	combout => \CLK_U1|count[3]~23_combout\,
	cout => \CLK_U1|count[3]~24\);

-- Location: FF_X14_Y28_N23
\CLK_U1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[3]~23_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(3));

-- Location: LCCOMB_X14_Y28_N24
\CLK_U1|count[4]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[4]~25_combout\ = (\CLK_U1|count\(4) & (\CLK_U1|count[3]~24\ $ (GND))) # (!\CLK_U1|count\(4) & (!\CLK_U1|count[3]~24\ & VCC))
-- \CLK_U1|count[4]~26\ = CARRY((\CLK_U1|count\(4) & !\CLK_U1|count[3]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(4),
	datad => VCC,
	cin => \CLK_U1|count[3]~24\,
	combout => \CLK_U1|count[4]~25_combout\,
	cout => \CLK_U1|count[4]~26\);

-- Location: FF_X14_Y28_N25
\CLK_U1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[4]~25_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(4));

-- Location: LCCOMB_X14_Y28_N26
\CLK_U1|count[5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[5]~27_combout\ = (\CLK_U1|count\(5) & (!\CLK_U1|count[4]~26\)) # (!\CLK_U1|count\(5) & ((\CLK_U1|count[4]~26\) # (GND)))
-- \CLK_U1|count[5]~28\ = CARRY((!\CLK_U1|count[4]~26\) # (!\CLK_U1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(5),
	datad => VCC,
	cin => \CLK_U1|count[4]~26\,
	combout => \CLK_U1|count[5]~27_combout\,
	cout => \CLK_U1|count[5]~28\);

-- Location: FF_X14_Y28_N27
\CLK_U1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[5]~27_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(5));

-- Location: LCCOMB_X14_Y28_N28
\CLK_U1|count[6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[6]~29_combout\ = (\CLK_U1|count\(6) & (\CLK_U1|count[5]~28\ $ (GND))) # (!\CLK_U1|count\(6) & (!\CLK_U1|count[5]~28\ & VCC))
-- \CLK_U1|count[6]~30\ = CARRY((\CLK_U1|count\(6) & !\CLK_U1|count[5]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(6),
	datad => VCC,
	cin => \CLK_U1|count[5]~28\,
	combout => \CLK_U1|count[6]~29_combout\,
	cout => \CLK_U1|count[6]~30\);

-- Location: FF_X14_Y28_N29
\CLK_U1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[6]~29_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(6));

-- Location: LCCOMB_X14_Y28_N30
\CLK_U1|count[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[7]~31_combout\ = (\CLK_U1|count\(7) & (!\CLK_U1|count[6]~30\)) # (!\CLK_U1|count\(7) & ((\CLK_U1|count[6]~30\) # (GND)))
-- \CLK_U1|count[7]~32\ = CARRY((!\CLK_U1|count[6]~30\) # (!\CLK_U1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(7),
	datad => VCC,
	cin => \CLK_U1|count[6]~30\,
	combout => \CLK_U1|count[7]~31_combout\,
	cout => \CLK_U1|count[7]~32\);

-- Location: LCCOMB_X14_Y27_N30
\CLK_U1|count[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[7]~feeder_combout\ = \CLK_U1|count[7]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CLK_U1|count[7]~31_combout\,
	combout => \CLK_U1|count[7]~feeder_combout\);

-- Location: FF_X14_Y27_N31
\CLK_U1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[7]~feeder_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(7));

-- Location: LCCOMB_X14_Y27_N0
\CLK_U1|count[8]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[8]~33_combout\ = (\CLK_U1|count\(8) & (\CLK_U1|count[7]~32\ $ (GND))) # (!\CLK_U1|count\(8) & (!\CLK_U1|count[7]~32\ & VCC))
-- \CLK_U1|count[8]~34\ = CARRY((\CLK_U1|count\(8) & !\CLK_U1|count[7]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(8),
	datad => VCC,
	cin => \CLK_U1|count[7]~32\,
	combout => \CLK_U1|count[8]~33_combout\,
	cout => \CLK_U1|count[8]~34\);

-- Location: FF_X14_Y27_N1
\CLK_U1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[8]~33_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(8));

-- Location: LCCOMB_X14_Y27_N2
\CLK_U1|count[9]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[9]~35_combout\ = (\CLK_U1|count\(9) & (!\CLK_U1|count[8]~34\)) # (!\CLK_U1|count\(9) & ((\CLK_U1|count[8]~34\) # (GND)))
-- \CLK_U1|count[9]~36\ = CARRY((!\CLK_U1|count[8]~34\) # (!\CLK_U1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(9),
	datad => VCC,
	cin => \CLK_U1|count[8]~34\,
	combout => \CLK_U1|count[9]~35_combout\,
	cout => \CLK_U1|count[9]~36\);

-- Location: FF_X14_Y27_N3
\CLK_U1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[9]~35_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(9));

-- Location: LCCOMB_X14_Y27_N4
\CLK_U1|count[10]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[10]~37_combout\ = (\CLK_U1|count\(10) & (\CLK_U1|count[9]~36\ $ (GND))) # (!\CLK_U1|count\(10) & (!\CLK_U1|count[9]~36\ & VCC))
-- \CLK_U1|count[10]~38\ = CARRY((\CLK_U1|count\(10) & !\CLK_U1|count[9]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(10),
	datad => VCC,
	cin => \CLK_U1|count[9]~36\,
	combout => \CLK_U1|count[10]~37_combout\,
	cout => \CLK_U1|count[10]~38\);

-- Location: FF_X14_Y27_N5
\CLK_U1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[10]~37_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(10));

-- Location: LCCOMB_X14_Y27_N6
\CLK_U1|count[11]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[11]~39_combout\ = (\CLK_U1|count\(11) & (!\CLK_U1|count[10]~38\)) # (!\CLK_U1|count\(11) & ((\CLK_U1|count[10]~38\) # (GND)))
-- \CLK_U1|count[11]~40\ = CARRY((!\CLK_U1|count[10]~38\) # (!\CLK_U1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(11),
	datad => VCC,
	cin => \CLK_U1|count[10]~38\,
	combout => \CLK_U1|count[11]~39_combout\,
	cout => \CLK_U1|count[11]~40\);

-- Location: FF_X14_Y27_N7
\CLK_U1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[11]~39_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(11));

-- Location: LCCOMB_X14_Y27_N8
\CLK_U1|count[12]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[12]~41_combout\ = (\CLK_U1|count\(12) & (\CLK_U1|count[11]~40\ $ (GND))) # (!\CLK_U1|count\(12) & (!\CLK_U1|count[11]~40\ & VCC))
-- \CLK_U1|count[12]~42\ = CARRY((\CLK_U1|count\(12) & !\CLK_U1|count[11]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(12),
	datad => VCC,
	cin => \CLK_U1|count[11]~40\,
	combout => \CLK_U1|count[12]~41_combout\,
	cout => \CLK_U1|count[12]~42\);

-- Location: FF_X14_Y27_N9
\CLK_U1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[12]~41_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(12));

-- Location: LCCOMB_X14_Y27_N10
\CLK_U1|count[13]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[13]~43_combout\ = (\CLK_U1|count\(13) & (!\CLK_U1|count[12]~42\)) # (!\CLK_U1|count\(13) & ((\CLK_U1|count[12]~42\) # (GND)))
-- \CLK_U1|count[13]~44\ = CARRY((!\CLK_U1|count[12]~42\) # (!\CLK_U1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(13),
	datad => VCC,
	cin => \CLK_U1|count[12]~42\,
	combout => \CLK_U1|count[13]~43_combout\,
	cout => \CLK_U1|count[13]~44\);

-- Location: FF_X14_Y27_N11
\CLK_U1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[13]~43_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(13));

-- Location: LCCOMB_X14_Y27_N12
\CLK_U1|count[14]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[14]~45_combout\ = (\CLK_U1|count\(14) & (\CLK_U1|count[13]~44\ $ (GND))) # (!\CLK_U1|count\(14) & (!\CLK_U1|count[13]~44\ & VCC))
-- \CLK_U1|count[14]~46\ = CARRY((\CLK_U1|count\(14) & !\CLK_U1|count[13]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(14),
	datad => VCC,
	cin => \CLK_U1|count[13]~44\,
	combout => \CLK_U1|count[14]~45_combout\,
	cout => \CLK_U1|count[14]~46\);

-- Location: FF_X14_Y27_N13
\CLK_U1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[14]~45_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(14));

-- Location: LCCOMB_X14_Y27_N14
\CLK_U1|count[15]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[15]~47_combout\ = (\CLK_U1|count\(15) & (!\CLK_U1|count[14]~46\)) # (!\CLK_U1|count\(15) & ((\CLK_U1|count[14]~46\) # (GND)))
-- \CLK_U1|count[15]~48\ = CARRY((!\CLK_U1|count[14]~46\) # (!\CLK_U1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(15),
	datad => VCC,
	cin => \CLK_U1|count[14]~46\,
	combout => \CLK_U1|count[15]~47_combout\,
	cout => \CLK_U1|count[15]~48\);

-- Location: FF_X14_Y27_N15
\CLK_U1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[15]~47_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(15));

-- Location: LCCOMB_X14_Y27_N16
\CLK_U1|count[16]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|count[16]~49_combout\ = \CLK_U1|count[15]~48\ $ (!\CLK_U1|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLK_U1|count\(16),
	cin => \CLK_U1|count[15]~48\,
	combout => \CLK_U1|count[16]~49_combout\);

-- Location: FF_X14_Y27_N17
\CLK_U1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|count[16]~49_combout\,
	sclr => \CLK_U1|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|count\(16));

-- Location: LCCOMB_X14_Y27_N28
\CLK_U1|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|LessThan0~4_combout\ = (!\CLK_U1|count\(13) & (!\CLK_U1|count\(12) & (!\CLK_U1|count\(10) & !\CLK_U1|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(13),
	datab => \CLK_U1|count\(12),
	datac => \CLK_U1|count\(10),
	datad => \CLK_U1|count\(11),
	combout => \CLK_U1|LessThan0~4_combout\);

-- Location: LCCOMB_X14_Y27_N20
\CLK_U1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|LessThan0~0_combout\ = (!\CLK_U1|count\(16) & ((!\CLK_U1|count\(14)) # (!\CLK_U1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_U1|count\(16),
	datac => \CLK_U1|count\(15),
	datad => \CLK_U1|count\(14),
	combout => \CLK_U1|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y28_N0
\CLK_U1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|LessThan0~1_combout\ = (((!\CLK_U1|count\(2)) # (!\CLK_U1|count\(3))) # (!\CLK_U1|count\(0))) # (!\CLK_U1|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(1),
	datab => \CLK_U1|count\(0),
	datac => \CLK_U1|count\(3),
	datad => \CLK_U1|count\(2),
	combout => \CLK_U1|LessThan0~1_combout\);

-- Location: LCCOMB_X14_Y28_N2
\CLK_U1|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|LessThan0~2_combout\ = (\CLK_U1|count\(6) & ((\CLK_U1|count\(5)) # ((\CLK_U1|count\(4)) # (!\CLK_U1|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(5),
	datab => \CLK_U1|count\(4),
	datac => \CLK_U1|count\(6),
	datad => \CLK_U1|LessThan0~1_combout\,
	combout => \CLK_U1|LessThan0~2_combout\);

-- Location: LCCOMB_X14_Y27_N18
\CLK_U1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|LessThan0~3_combout\ = (((!\CLK_U1|count\(7) & !\CLK_U1|LessThan0~2_combout\)) # (!\CLK_U1|count\(9))) # (!\CLK_U1|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(7),
	datab => \CLK_U1|count\(8),
	datac => \CLK_U1|count\(9),
	datad => \CLK_U1|LessThan0~2_combout\,
	combout => \CLK_U1|LessThan0~3_combout\);

-- Location: LCCOMB_X14_Y27_N22
\CLK_U1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|LessThan0~5_combout\ = (\CLK_U1|LessThan0~0_combout\) # ((!\CLK_U1|count\(16) & (\CLK_U1|LessThan0~4_combout\ & \CLK_U1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_U1|count\(16),
	datab => \CLK_U1|LessThan0~4_combout\,
	datac => \CLK_U1|LessThan0~0_combout\,
	datad => \CLK_U1|LessThan0~3_combout\,
	combout => \CLK_U1|LessThan0~5_combout\);

-- Location: LCCOMB_X15_Y27_N4
\CLK_U1|CLK_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \CLK_U1|CLK_out~0_combout\ = \CLK_U1|CLK_out~q\ $ (!\CLK_U1|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK_U1|CLK_out~q\,
	datad => \CLK_U1|LessThan0~5_combout\,
	combout => \CLK_U1|CLK_out~0_combout\);

-- Location: LCCOMB_X15_Y27_N14
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

-- Location: FF_X15_Y27_N15
\CLK_U1|CLK_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CLK_U1|CLK_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_U1|CLK_out~q\);

-- Location: CLKCTRL_G11
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

-- Location: LCCOMB_X36_Y28_N14
\COUNTER[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[0]~6_combout\ = COUNTER(0) $ (VCC)
-- \COUNTER[0]~7\ = CARRY(COUNTER(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datad => VCC,
	combout => \COUNTER[0]~6_combout\,
	cout => \COUNTER[0]~7\);

-- Location: LCCOMB_X36_Y27_N0
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

-- Location: IOIBUF_X0_Y14_N8
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X36_Y28_N20
\COUNTER[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[3]~12_combout\ = (COUNTER(3) & (!\COUNTER[2]~11\)) # (!COUNTER(3) & ((\COUNTER[2]~11\) # (GND)))
-- \COUNTER[3]~13\ = CARRY((!\COUNTER[2]~11\) # (!COUNTER(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(3),
	datad => VCC,
	cin => \COUNTER[2]~11\,
	combout => \COUNTER[3]~12_combout\,
	cout => \COUNTER[3]~13\);

-- Location: LCCOMB_X36_Y28_N22
\COUNTER[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[4]~14_combout\ = (COUNTER(4) & (\COUNTER[3]~13\ $ (GND))) # (!COUNTER(4) & (!\COUNTER[3]~13\ & VCC))
-- \COUNTER[4]~15\ = CARRY((COUNTER(4) & !\COUNTER[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(4),
	datad => VCC,
	cin => \COUNTER[3]~13\,
	combout => \COUNTER[4]~14_combout\,
	cout => \COUNTER[4]~15\);

-- Location: FF_X36_Y28_N23
\COUNTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[4]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(4));

-- Location: LCCOMB_X36_Y28_N24
\COUNTER[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[5]~16_combout\ = COUNTER(5) $ (\COUNTER[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	cin => \COUNTER[4]~15\,
	combout => \COUNTER[5]~16_combout\);

-- Location: FF_X36_Y28_N25
\COUNTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[5]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(5));

-- Location: LCCOMB_X40_Y28_N6
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!COUNTER(4) & (!COUNTER(2) & (!COUNTER(0) & !COUNTER(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(2),
	datac => COUNTER(0),
	datad => COUNTER(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y28_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (COUNTER(5) & (!\LessThan0~0_combout\ & ((COUNTER(3)) # (COUNTER(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(5),
	datac => COUNTER(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X36_Y28_N15
\COUNTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[0]~6_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(0));

-- Location: LCCOMB_X36_Y28_N16
\COUNTER[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[1]~8_combout\ = (COUNTER(1) & (!\COUNTER[0]~7\)) # (!COUNTER(1) & ((\COUNTER[0]~7\) # (GND)))
-- \COUNTER[1]~9\ = CARRY((!\COUNTER[0]~7\) # (!COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datad => VCC,
	cin => \COUNTER[0]~7\,
	combout => \COUNTER[1]~8_combout\,
	cout => \COUNTER[1]~9\);

-- Location: FF_X36_Y28_N17
\COUNTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[1]~8_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(1));

-- Location: LCCOMB_X36_Y28_N18
\COUNTER[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \COUNTER[2]~10_combout\ = (COUNTER(2) & (\COUNTER[1]~9\ $ (GND))) # (!COUNTER(2) & (!\COUNTER[1]~9\ & VCC))
-- \COUNTER[2]~11\ = CARRY((COUNTER(2) & !\COUNTER[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datad => VCC,
	cin => \COUNTER[1]~9\,
	combout => \COUNTER[2]~10_combout\,
	cout => \COUNTER[2]~11\);

-- Location: FF_X36_Y28_N19
\COUNTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[2]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(2));

-- Location: FF_X36_Y28_N21
\COUNTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|CLK_out~clkctrl_outclk\,
	d => \COUNTER[3]~12_combout\,
	asdata => VCC,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => COUNTER(3));

-- Location: LCCOMB_X40_Y28_N22
\Selector0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (!COUNTER(2) & ((COUNTER(4) & (!COUNTER(0) & COUNTER(1))) # (!COUNTER(4) & (COUNTER(0) & !COUNTER(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(0),
	datac => COUNTER(1),
	datad => COUNTER(2),
	combout => \Selector0~3_combout\);

-- Location: LCCOMB_X40_Y28_N8
\Selector0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\LCM_RS~q\ & (((!COUNTER(2) & !COUNTER(1))) # (!COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(2),
	datac => COUNTER(1),
	datad => \LCM_RS~q\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X40_Y28_N4
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (COUNTER(3) & ((COUNTER(1)) # ((!COUNTER(0) & COUNTER(4))))) # (!COUNTER(3) & (((COUNTER(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(0),
	datac => COUNTER(4),
	datad => COUNTER(1),
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X40_Y28_N10
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!COUNTER(5) & (\LCM_RS~q\ & ((COUNTER(2)) # (\Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datab => COUNTER(5),
	datac => \Selector0~0_combout\,
	datad => \LCM_RS~q\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X40_Y28_N18
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\Selector0~1_combout\) # ((!COUNTER(4) & (COUNTER(5) & \Selector0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(5),
	datac => \Selector0~2_combout\,
	datad => \Selector0~1_combout\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X40_Y28_N0
\Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~4_combout\) # ((COUNTER(3) & (!COUNTER(5) & \Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(5),
	datac => \Selector0~3_combout\,
	datad => \Selector0~4_combout\,
	combout => \Selector0~5_combout\);

-- Location: FF_X40_Y28_N1
LCM_RS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LCM_RS~q\);

-- Location: IOIBUF_X21_Y0_N8
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X37_Y28_N16
\LINE1[0][0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LINE1[0][0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \LINE1[0][0]~feeder_combout\);

-- Location: FF_X37_Y28_N17
\LINE1[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[2]~input_o\,
	d => \LINE1[0][0]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LINE1[0][0]~q\);

-- Location: LCCOMB_X36_Y28_N30
\Selector8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~16_combout\ = (!COUNTER(4) & (!COUNTER(2) & (!COUNTER(5) & COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(2),
	datac => COUNTER(5),
	datad => COUNTER(3),
	combout => \Selector8~16_combout\);

-- Location: LCCOMB_X37_Y28_N12
\Selector8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~17_combout\ = (COUNTER(0) & (\LINE1[0][0]~q\ & (COUNTER(1) & \Selector8~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(1),
	datad => \Selector8~16_combout\,
	combout => \Selector8~17_combout\);

-- Location: LCCOMB_X36_Y28_N10
\Selector8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~10_combout\ = (COUNTER(4) & (COUNTER(2) & (!COUNTER(5) & COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(2),
	datac => COUNTER(5),
	datad => COUNTER(3),
	combout => \Selector8~10_combout\);

-- Location: LCCOMB_X37_Y28_N24
\Selector8~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~30_combout\ = (!COUNTER(0) & (\LINE1[0][0]~q\ & (!COUNTER(1) & \Selector8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(1),
	datad => \Selector8~10_combout\,
	combout => \Selector8~30_combout\);

-- Location: LCCOMB_X36_Y28_N2
\Selector8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~12_combout\ = (!COUNTER(4) & (!COUNTER(2) & (COUNTER(5) & !COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(2),
	datac => COUNTER(5),
	datad => COUNTER(3),
	combout => \Selector8~12_combout\);

-- Location: LCCOMB_X37_Y28_N14
\Selector8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~23_combout\ = (COUNTER(1) & (\LINE1[0][0]~q\ & (COUNTER(0) & \Selector8~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(0),
	datad => \Selector8~12_combout\,
	combout => \Selector8~23_combout\);

-- Location: LCCOMB_X37_Y28_N28
\Selector8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~26_combout\ = (!COUNTER(3) & (COUNTER(4) & (!COUNTER(2) & !COUNTER(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(4),
	datac => COUNTER(2),
	datad => COUNTER(5),
	combout => \Selector8~26_combout\);

-- Location: LCCOMB_X37_Y28_N0
\Selector8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~15_combout\ = (COUNTER(0) & (!COUNTER(1) & \LINE1[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datac => COUNTER(1),
	datad => \LINE1[0][0]~q\,
	combout => \Selector8~15_combout\);

-- Location: LCCOMB_X37_Y28_N22
\Selector8~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~29_combout\ = (!COUNTER(0) & (!COUNTER(1) & \LINE1[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datac => COUNTER(1),
	datad => \LINE1[0][0]~q\,
	combout => \Selector8~29_combout\);

-- Location: LCCOMB_X38_Y28_N16
\Selector8~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~28_combout\ = (!COUNTER(3) & (COUNTER(5) & (!COUNTER(4) & COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(5),
	datac => COUNTER(4),
	datad => COUNTER(2),
	combout => \Selector8~28_combout\);

-- Location: LCCOMB_X37_Y28_N6
\Selector7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~9_combout\ = (\Selector8~26_combout\ & (!\Selector8~29_combout\ & ((!\Selector8~28_combout\) # (!\Selector8~15_combout\)))) # (!\Selector8~26_combout\ & (((!\Selector8~28_combout\)) # (!\Selector8~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~26_combout\,
	datab => \Selector8~15_combout\,
	datac => \Selector8~29_combout\,
	datad => \Selector8~28_combout\,
	combout => \Selector7~9_combout\);

-- Location: LCCOMB_X37_Y28_N30
\Selector7~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~10_combout\ = (!\Selector8~17_combout\ & (!\Selector8~30_combout\ & (!\Selector8~23_combout\ & \Selector7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~17_combout\,
	datab => \Selector8~30_combout\,
	datac => \Selector8~23_combout\,
	datad => \Selector7~9_combout\,
	combout => \Selector7~10_combout\);

-- Location: LCCOMB_X36_Y28_N12
\Selector8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~11_combout\ = (COUNTER(4) & (!COUNTER(2) & (!COUNTER(5) & COUNTER(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(2),
	datac => COUNTER(5),
	datad => COUNTER(3),
	combout => \Selector8~11_combout\);

-- Location: LCCOMB_X36_Y28_N4
\Selector8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~13_combout\ = (\Selector8~11_combout\) # ((\Selector8~12_combout\) # (\Selector8~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~11_combout\,
	datab => \Selector8~12_combout\,
	datad => \Selector8~10_combout\,
	combout => \Selector8~13_combout\);

-- Location: LCCOMB_X38_Y28_N6
\Selector8~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~27_combout\ = (!COUNTER(0) & (\LINE1[0][0]~q\ & COUNTER(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datac => \LINE1[0][0]~q\,
	datad => COUNTER(1),
	combout => \Selector8~27_combout\);

-- Location: LCCOMB_X37_Y28_N18
\Selector8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~14_combout\ = (\Selector8~29_combout\ & ((\Selector8~28_combout\) # ((\Selector8~13_combout\ & \Selector8~27_combout\)))) # (!\Selector8~29_combout\ & (((\Selector8~13_combout\ & \Selector8~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~29_combout\,
	datab => \Selector8~28_combout\,
	datac => \Selector8~13_combout\,
	datad => \Selector8~27_combout\,
	combout => \Selector8~14_combout\);

-- Location: LCCOMB_X37_Y28_N10
\Selector8~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~31_combout\ = (COUNTER(0) & (\LINE1[0][0]~q\ & (COUNTER(1) & \Selector8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(1),
	datad => \Selector8~10_combout\,
	combout => \Selector8~31_combout\);

-- Location: LCCOMB_X37_Y28_N20
\Selector8~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~32_combout\ = (COUNTER(0) & (\LINE1[0][0]~q\ & (COUNTER(1) & \Selector8~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(1),
	datad => \Selector8~11_combout\,
	combout => \Selector8~32_combout\);

-- Location: LCCOMB_X37_Y28_N26
\Selector8~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~33_combout\ = (COUNTER(0) & (\LINE1[0][0]~q\ & (!COUNTER(1) & \Selector8~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(1),
	datad => \Selector8~16_combout\,
	combout => \Selector8~33_combout\);

-- Location: LCCOMB_X36_Y28_N28
\Selector8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~24_combout\ = (COUNTER(1) & (!COUNTER(0) & (\Selector8~16_combout\ & \LINE1[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(0),
	datac => \Selector8~16_combout\,
	datad => \LINE1[0][0]~q\,
	combout => \Selector8~24_combout\);

-- Location: LCCOMB_X37_Y28_N4
\Selector8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~18_combout\ = (!\Selector8~31_combout\ & (!\Selector8~32_combout\ & (!\Selector8~33_combout\ & !\Selector8~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~31_combout\,
	datab => \Selector8~32_combout\,
	datac => \Selector8~33_combout\,
	datad => \Selector8~24_combout\,
	combout => \Selector8~18_combout\);

-- Location: LCCOMB_X38_Y28_N24
\Selector8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~8_combout\ = (COUNTER(0) & !COUNTER(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => COUNTER(0),
	datad => COUNTER(1),
	combout => \Selector8~8_combout\);

-- Location: LCCOMB_X38_Y28_N4
\Selector8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~25_combout\ = (!COUNTER(4) & (!COUNTER(5) & (COUNTER(3) & COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(5),
	datac => COUNTER(3),
	datad => COUNTER(2),
	combout => \Selector8~25_combout\);

-- Location: LCCOMB_X38_Y28_N22
\Selector8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~7_combout\ = (COUNTER(0) & ((\Selector8~26_combout\) # ((COUNTER(1) & \Selector8~25_combout\)))) # (!COUNTER(0) & (!COUNTER(1) & (\Selector8~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(1),
	datac => \Selector8~25_combout\,
	datad => \Selector8~26_combout\,
	combout => \Selector8~7_combout\);

-- Location: LCCOMB_X35_Y28_N4
\Selector8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~6_combout\ = (!COUNTER(3) & (!COUNTER(5) & (!COUNTER(4) & COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(5),
	datac => COUNTER(4),
	datad => COUNTER(2),
	combout => \Selector8~6_combout\);

-- Location: LCCOMB_X38_Y28_N18
\Selector8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~9_combout\ = (\LINE1[0][0]~q\ & ((\Selector8~7_combout\) # ((\Selector8~8_combout\ & \Selector8~6_combout\)))) # (!\LINE1[0][0]~q\ & (\Selector8~8_combout\ & ((\Selector8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[0][0]~q\,
	datab => \Selector8~8_combout\,
	datac => \Selector8~7_combout\,
	datad => \Selector8~6_combout\,
	combout => \Selector8~9_combout\);

-- Location: LCCOMB_X37_Y28_N8
\Selector8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~19_combout\ = ((\Selector8~14_combout\) # ((\Selector8~9_combout\) # (!\Selector8~18_combout\))) # (!\Selector7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~10_combout\,
	datab => \Selector8~14_combout\,
	datac => \Selector8~18_combout\,
	datad => \Selector8~9_combout\,
	combout => \Selector8~19_combout\);

-- Location: FF_X37_Y28_N9
\LCM_DB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector8~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(0));

-- Location: LCCOMB_X38_Y28_N14
\Selector8~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~34_combout\ = (!COUNTER(1) & \LINE1[0][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datac => \LINE1[0][0]~q\,
	combout => \Selector8~34_combout\);

-- Location: LCCOMB_X39_Y28_N22
\Selector8~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~35_combout\ = (COUNTER(5) & (!COUNTER(2) & (COUNTER(3) & !COUNTER(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datab => COUNTER(2),
	datac => COUNTER(3),
	datad => COUNTER(4),
	combout => \Selector8~35_combout\);

-- Location: LCCOMB_X38_Y28_N20
\Selector7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~11_combout\ = (\Selector8~34_combout\ & ((\Selector8~35_combout\) # ((!COUNTER(0) & \Selector8~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => \Selector8~25_combout\,
	datac => \Selector8~34_combout\,
	datad => \Selector8~35_combout\,
	combout => \Selector7~11_combout\);

-- Location: LCCOMB_X39_Y28_N8
\Selector7~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (COUNTER(5) & (!COUNTER(4) & (COUNTER(1)))) # (!COUNTER(5) & (COUNTER(4) & ((COUNTER(1)) # (COUNTER(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datab => COUNTER(4),
	datac => COUNTER(1),
	datad => COUNTER(0),
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X39_Y28_N2
\Selector7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~14_combout\ = (!COUNTER(3) & (COUNTER(2) & (\Selector7~4_combout\ & \LINE1[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(2),
	datac => \Selector7~4_combout\,
	datad => \LINE1[0][0]~q\,
	combout => \Selector7~14_combout\);

-- Location: LCCOMB_X35_Y28_N18
\Selector8~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~36_combout\ = (!COUNTER(0) & (\Selector8~11_combout\ & \LINE1[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(0),
	datac => \Selector8~11_combout\,
	datad => \LINE1[0][0]~q\,
	combout => \Selector8~36_combout\);

-- Location: LCCOMB_X35_Y28_N10
\Selector7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~12_combout\ = (\Selector8~36_combout\) # ((COUNTER(0) & (COUNTER(1) & \Selector8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(1),
	datac => \Selector8~6_combout\,
	datad => \Selector8~36_combout\,
	combout => \Selector7~12_combout\);

-- Location: LCCOMB_X37_Y28_N2
\Selector7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~13_combout\ = (\Selector7~11_combout\) # ((\Selector7~14_combout\) # ((\Selector7~12_combout\) # (!\Selector7~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~11_combout\,
	datab => \Selector7~14_combout\,
	datac => \Selector7~10_combout\,
	datad => \Selector7~12_combout\,
	combout => \Selector7~13_combout\);

-- Location: FF_X37_Y28_N3
\LCM_DB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector7~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(1));

-- Location: LCCOMB_X38_Y28_N28
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\Selector8~12_combout\ & (!\Selector8~15_combout\ & ((!\Selector8~27_combout\) # (!\Selector8~25_combout\)))) # (!\Selector8~12_combout\ & (((!\Selector8~27_combout\)) # (!\Selector8~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~12_combout\,
	datab => \Selector8~25_combout\,
	datac => \Selector8~15_combout\,
	datad => \Selector8~27_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X35_Y28_N26
\Selector6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~17_combout\ = (COUNTER(2) & (COUNTER(3) & (COUNTER(4) & !COUNTER(5)))) # (!COUNTER(2) & ((COUNTER(4) $ (COUNTER(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(2),
	datac => COUNTER(4),
	datad => COUNTER(5),
	combout => \Selector6~17_combout\);

-- Location: LCCOMB_X35_Y28_N0
\Selector6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~18_combout\ = (\Selector6~17_combout\ & ((COUNTER(3) & (COUNTER(1) $ (!COUNTER(2)))) # (!COUNTER(3) & (COUNTER(1) & !COUNTER(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(1),
	datac => \Selector6~17_combout\,
	datad => COUNTER(2),
	combout => \Selector6~18_combout\);

-- Location: LCCOMB_X39_Y28_N12
\Selector6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~15_combout\ = (COUNTER(1) & (COUNTER(2) & (COUNTER(3) $ (COUNTER(5))))) # (!COUNTER(1) & (COUNTER(3) & (COUNTER(5) $ (COUNTER(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(3),
	datac => COUNTER(5),
	datad => COUNTER(2),
	combout => \Selector6~15_combout\);

-- Location: LCCOMB_X39_Y28_N14
\Selector6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~16_combout\ = (\Selector6~15_combout\ & ((COUNTER(4) & (COUNTER(2) & COUNTER(3))) # (!COUNTER(4) & (COUNTER(2) $ (COUNTER(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(2),
	datac => COUNTER(3),
	datad => \Selector6~15_combout\,
	combout => \Selector6~16_combout\);

-- Location: LCCOMB_X36_Y28_N26
\Selector6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~14_combout\ = (\LINE1[0][0]~q\ & ((COUNTER(0) & ((\Selector6~16_combout\))) # (!COUNTER(0) & (\Selector6~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[0][0]~q\,
	datab => COUNTER(0),
	datac => \Selector6~18_combout\,
	datad => \Selector6~16_combout\,
	combout => \Selector6~14_combout\);

-- Location: LCCOMB_X39_Y28_N20
\Selector5~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~22_combout\ = (COUNTER(4) & (((COUNTER(5))))) # (!COUNTER(4) & (((COUNTER(0)) # (!COUNTER(5))) # (!COUNTER(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(4),
	datac => COUNTER(5),
	datad => COUNTER(0),
	combout => \Selector5~22_combout\);

-- Location: LCCOMB_X39_Y28_N10
\Selector5~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~37_combout\ = (COUNTER(3)) # (((\Selector5~22_combout\) # (!\LINE1[0][0]~q\)) # (!COUNTER(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(2),
	datac => \LINE1[0][0]~q\,
	datad => \Selector5~22_combout\,
	combout => \Selector5~37_combout\);

-- Location: LCCOMB_X36_Y28_N0
\Selector6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~11_combout\ = (((COUNTER(1) & \Selector8~6_combout\)) # (!\Selector7~9_combout\)) # (!\Selector5~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => \Selector8~6_combout\,
	datac => \Selector5~37_combout\,
	datad => \Selector7~9_combout\,
	combout => \Selector6~11_combout\);

-- Location: LCCOMB_X36_Y28_N8
\Selector6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~12_combout\ = ((\Selector8~24_combout\) # ((\Selector6~14_combout\) # (\Selector6~11_combout\))) # (!\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector8~24_combout\,
	datac => \Selector6~14_combout\,
	datad => \Selector6~11_combout\,
	combout => \Selector6~12_combout\);

-- Location: FF_X36_Y28_N9
\LCM_DB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector6~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(2));

-- Location: LCCOMB_X39_Y28_N4
\Selector5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~13_combout\ = (COUNTER(1) & (\LINE1[0][0]~q\ & (!COUNTER(5) & COUNTER(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(5),
	datad => COUNTER(0),
	combout => \Selector5~13_combout\);

-- Location: LCCOMB_X39_Y28_N28
\Selector5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~11_combout\ = (COUNTER(5) & (\LINE1[0][0]~q\ & ((COUNTER(1)) # (!COUNTER(0))))) # (!COUNTER(5) & (!COUNTER(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(5),
	datac => COUNTER(1),
	datad => \LINE1[0][0]~q\,
	combout => \Selector5~11_combout\);

-- Location: LCCOMB_X39_Y28_N26
\Selector5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~10_combout\ = (COUNTER(4) & (!COUNTER(5) & (\LINE1[0][0]~q\))) # (!COUNTER(4) & (((\Selector5~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datab => \LINE1[0][0]~q\,
	datac => COUNTER(4),
	datad => \Selector5~11_combout\,
	combout => \Selector5~10_combout\);

-- Location: LCCOMB_X39_Y28_N0
\Selector5~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~38_combout\ = (COUNTER(1) & (!COUNTER(5) & (COUNTER(4) & COUNTER(0)))) # (!COUNTER(1) & (COUNTER(4) $ (((COUNTER(5)) # (COUNTER(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(1),
	datab => COUNTER(5),
	datac => COUNTER(4),
	datad => COUNTER(0),
	combout => \Selector5~38_combout\);

-- Location: LCCOMB_X39_Y28_N30
\Selector5~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~39_combout\ = (\LINE1[0][0]~q\ & \Selector5~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \LINE1[0][0]~q\,
	datad => \Selector5~38_combout\,
	combout => \Selector5~39_combout\);

-- Location: LCCOMB_X39_Y28_N24
\Selector5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (COUNTER(0) & (!COUNTER(5) & (!COUNTER(1) & \LINE1[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(5),
	datac => COUNTER(1),
	datad => \LINE1[0][0]~q\,
	combout => \Selector5~5_combout\);

-- Location: LCCOMB_X39_Y28_N18
\Selector5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (COUNTER(4) & ((\Selector5~5_combout\))) # (!COUNTER(4) & (!COUNTER(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datac => COUNTER(5),
	datad => \Selector5~5_combout\,
	combout => \Selector5~3_combout\);

-- Location: LCCOMB_X39_Y28_N6
\Selector5~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~35_combout\ = (COUNTER(3) & ((COUNTER(2)) # ((\Selector5~39_combout\)))) # (!COUNTER(3) & (!COUNTER(2) & ((\Selector5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(2),
	datac => \Selector5~39_combout\,
	datad => \Selector5~3_combout\,
	combout => \Selector5~35_combout\);

-- Location: LCCOMB_X39_Y28_N16
\Selector5~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~36_combout\ = (COUNTER(2) & ((\Selector5~35_combout\ & (\Selector5~13_combout\)) # (!\Selector5~35_combout\ & ((\Selector5~10_combout\))))) # (!COUNTER(2) & (((\Selector5~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~13_combout\,
	datab => COUNTER(2),
	datac => \Selector5~10_combout\,
	datad => \Selector5~35_combout\,
	combout => \Selector5~36_combout\);

-- Location: FF_X39_Y28_N17
\LCM_DB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector5~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(3));

-- Location: LCCOMB_X35_Y28_N22
\Selector6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~13_combout\ = (\LINE1[0][0]~q\ & (COUNTER(0) & (\Selector8~10_combout\ & !COUNTER(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[0][0]~q\,
	datab => COUNTER(0),
	datac => \Selector8~10_combout\,
	datad => COUNTER(1),
	combout => \Selector6~13_combout\);

-- Location: LCCOMB_X35_Y28_N28
\Selector8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~21_combout\ = (!COUNTER(4) & (!COUNTER(5) & (!COUNTER(3) & !COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(5),
	datac => COUNTER(3),
	datad => COUNTER(2),
	combout => \Selector8~21_combout\);

-- Location: LCCOMB_X35_Y28_N30
\Selector4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~10_combout\ = (COUNTER(2) & (COUNTER(3) & (!COUNTER(0) & !COUNTER(1)))) # (!COUNTER(2) & (COUNTER(1) & ((COUNTER(3)) # (!COUNTER(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(2),
	datac => COUNTER(0),
	datad => COUNTER(1),
	combout => \Selector4~10_combout\);

-- Location: LCCOMB_X35_Y28_N12
\Selector4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~11_combout\ = (\Selector4~10_combout\ & ((COUNTER(2) & ((!COUNTER(1)))) # (!COUNTER(2) & (COUNTER(4) & COUNTER(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(2),
	datac => \Selector4~10_combout\,
	datad => COUNTER(1),
	combout => \Selector4~11_combout\);

-- Location: LCCOMB_X35_Y28_N24
\Selector4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~9_combout\ = (\LINE1[0][0]~q\ & (!COUNTER(5) & \Selector4~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[0][0]~q\,
	datab => COUNTER(5),
	datad => \Selector4~11_combout\,
	combout => \Selector4~9_combout\);

-- Location: LCCOMB_X35_Y28_N16
\Selector4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~8_combout\ = (\Selector6~13_combout\) # ((\Selector8~21_combout\) # ((\Selector8~23_combout\) # (\Selector4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~13_combout\,
	datab => \Selector8~21_combout\,
	datac => \Selector8~23_combout\,
	datad => \Selector4~9_combout\,
	combout => \Selector4~8_combout\);

-- Location: FF_X35_Y28_N17
\LCM_DB[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(4));

-- Location: LCCOMB_X36_Y28_N6
\Selector8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~22_combout\ = (!COUNTER(1) & (COUNTER(0) & \Selector8~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => COUNTER(1),
	datac => COUNTER(0),
	datad => \Selector8~11_combout\,
	combout => \Selector8~22_combout\);

-- Location: LCCOMB_X35_Y28_N6
\Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (COUNTER(0) & (!COUNTER(2) & ((\LINE1[0][0]~q\)))) # (!COUNTER(0) & ((COUNTER(1) & ((\LINE1[0][0]~q\))) # (!COUNTER(1) & (!COUNTER(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(2),
	datab => COUNTER(1),
	datac => COUNTER(0),
	datad => \LINE1[0][0]~q\,
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X35_Y28_N8
\Selector3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~11_combout\ = (!COUNTER(4) & (!COUNTER(5) & (COUNTER(3) & \Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(5),
	datac => COUNTER(3),
	datad => \Selector3~4_combout\,
	combout => \Selector3~11_combout\);

-- Location: LCCOMB_X35_Y28_N20
\Selector3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~9_combout\ = (\Selector8~6_combout\) # ((\Selector8~15_combout\ & \Selector8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~6_combout\,
	datac => \Selector8~15_combout\,
	datad => \Selector8~12_combout\,
	combout => \Selector3~9_combout\);

-- Location: LCCOMB_X35_Y28_N2
\Selector3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~10_combout\ = (!\Selector8~22_combout\ & (!\Selector3~11_combout\ & !\Selector3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~22_combout\,
	datac => \Selector3~11_combout\,
	datad => \Selector3~9_combout\,
	combout => \Selector3~10_combout\);

-- Location: FF_X35_Y28_N3
\LCM_DB[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector3~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(5));

-- Location: LCCOMB_X38_Y28_N8
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector8~10_combout\ & (COUNTER(0) $ (((COUNTER(1)))))) # (!\Selector8~10_combout\ & (!COUNTER(0) & (\Selector8~12_combout\ & COUNTER(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~10_combout\,
	datab => COUNTER(0),
	datac => \Selector8~12_combout\,
	datad => COUNTER(1),
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X38_Y28_N26
\Selector8~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~20_combout\ = (!COUNTER(5) & (COUNTER(4) & (!COUNTER(3) & COUNTER(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(5),
	datab => COUNTER(4),
	datac => COUNTER(3),
	datad => COUNTER(2),
	combout => \Selector8~20_combout\);

-- Location: LCCOMB_X38_Y28_N30
\Selector2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (!COUNTER(1) & (!COUNTER(0) & ((\Selector8~20_combout\) # (\Selector8~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~20_combout\,
	datab => COUNTER(1),
	datac => COUNTER(0),
	datad => \Selector8~28_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X38_Y28_N0
\Selector2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (COUNTER(0) & ((\Selector8~26_combout\) # ((COUNTER(1) & \Selector8~25_combout\)))) # (!COUNTER(0) & (COUNTER(1) & ((\Selector8~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(0),
	datab => COUNTER(1),
	datac => \Selector8~25_combout\,
	datad => \Selector8~26_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X38_Y28_N10
\Selector2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\LINE1[0][0]~q\ & ((\Selector2~2_combout\) # ((\Selector2~3_combout\) # (\Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LINE1[0][0]~q\,
	datab => \Selector2~2_combout\,
	datac => \Selector2~3_combout\,
	datad => \Selector2~4_combout\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X38_Y28_N2
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector8~22_combout\) # (((\Selector8~27_combout\ & \Selector8~28_combout\)) # (!\Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~27_combout\,
	datab => \Selector8~28_combout\,
	datac => \Selector8~22_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X38_Y28_N12
\Selector2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\Selector2~5_combout\) # ((\Selector2~1_combout\) # ((!\Selector7~10_combout\) # (!\Selector8~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~5_combout\,
	datab => \Selector2~1_combout\,
	datac => \Selector8~18_combout\,
	datad => \Selector7~10_combout\,
	combout => \Selector2~6_combout\);

-- Location: FF_X38_Y28_N13
\LCM_DB[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \Selector2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LCM_DB(6));

-- Location: LCCOMB_X40_Y28_N12
\LCM_DB~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCM_DB~2_combout\ = (!COUNTER(1) & (!COUNTER(2) & (COUNTER(4) $ (!COUNTER(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(4),
	datab => COUNTER(0),
	datac => COUNTER(1),
	datad => COUNTER(2),
	combout => \LCM_DB~2_combout\);

-- Location: LCCOMB_X40_Y28_N2
\LCM_DB~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LCM_DB~3_combout\ = (COUNTER(3) & (!COUNTER(5) & \LCM_DB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => COUNTER(3),
	datab => COUNTER(5),
	datad => \LCM_DB~2_combout\,
	combout => \LCM_DB~3_combout\);

-- Location: FF_X40_Y28_N3
\LCM_DB[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_U1|ALT_INV_CLK_out~clkctrl_outclk\,
	d => \LCM_DB~3_combout\,
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


