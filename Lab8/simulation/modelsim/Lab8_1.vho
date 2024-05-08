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

-- DATE "04/24/2024 20:11:10"

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

ENTITY 	Lab8_1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 1);
	GPIO_0 : OUT std_logic_vector(21 DOWNTO 9);
	GPIO_1 : OUT std_logic_vector(21 DOWNTO 9)
	);
END Lab8_1;

-- Design Ports Information
-- GPIO_0[9]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab8_1 IS
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
SIGNAL \clkgen|CLK_1Khz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clkgen|count_1Khz[0]~15_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[0]~16\ : std_logic;
SIGNAL \clkgen|count_1Khz[1]~17_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[1]~18\ : std_logic;
SIGNAL \clkgen|count_1Khz[2]~19_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[2]~20\ : std_logic;
SIGNAL \clkgen|count_1Khz[3]~21_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[3]~22\ : std_logic;
SIGNAL \clkgen|count_1Khz[4]~23_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[4]~24\ : std_logic;
SIGNAL \clkgen|count_1Khz[5]~25_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[5]~26\ : std_logic;
SIGNAL \clkgen|count_1Khz[6]~27_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[6]~28\ : std_logic;
SIGNAL \clkgen|count_1Khz[7]~29_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[7]~30\ : std_logic;
SIGNAL \clkgen|count_1Khz[8]~31_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[8]~32\ : std_logic;
SIGNAL \clkgen|count_1Khz[9]~33_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[9]~34\ : std_logic;
SIGNAL \clkgen|count_1Khz[10]~35_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[10]~36\ : std_logic;
SIGNAL \clkgen|count_1Khz[11]~37_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~2_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~0_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~1_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[11]~38\ : std_logic;
SIGNAL \clkgen|count_1Khz[12]~39_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[12]~40\ : std_logic;
SIGNAL \clkgen|count_1Khz[13]~41_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[13]~42\ : std_logic;
SIGNAL \clkgen|count_1Khz[14]~43_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~3_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~4_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~0_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~feeder_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~q\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~clkctrl_outclk\ : std_logic;
SIGNAL \SCANLINE[0]~3_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \SCANLINE[1]~1_combout\ : std_logic;
SIGNAL \SCANLINE[2]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL selrandom : std_logic_vector(2 DOWNTO 0);
SIGNAL SCANLINE : std_logic_vector(2 DOWNTO 0);
SIGNAL \clkgen|count_1Khz\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
GPIO_0 <= ww_GPIO_0;
GPIO_1 <= ww_GPIO_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clkgen|CLK_1Khz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkgen|CLK_1Khz~q\);

\KEY[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[1]~input_o\);
\ALT_INV_Mux0~7_combout\ <= NOT \Mux0~7_combout\;
\ALT_INV_Mux0~6_combout\ <= NOT \Mux0~6_combout\;
\ALT_INV_Mux0~5_combout\ <= NOT \Mux0~5_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux0~1_combout\ <= NOT \Mux0~1_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X26_Y0_N2
\GPIO_0[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[9]~output_o\);

-- Location: IOOBUF_X16_Y29_N2
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

-- Location: IOOBUF_X28_Y0_N2
\GPIO_0[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[11]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
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

-- Location: IOOBUF_X28_Y29_N23
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

-- Location: IOOBUF_X26_Y0_N16
\GPIO_0[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~1_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[14]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
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

-- Location: IOOBUF_X35_Y29_N9
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

-- Location: IOOBUF_X26_Y0_N23
\GPIO_0[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[17]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
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

-- Location: IOOBUF_X7_Y29_N9
\GPIO_0[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[19]~output_o\);

-- Location: IOOBUF_X41_Y18_N9
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

-- Location: IOOBUF_X16_Y29_N16
\GPIO_0[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[21]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\GPIO_1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
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

-- Location: IOOBUF_X26_Y0_N30
\GPIO_1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~4_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
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

-- Location: IOOBUF_X28_Y0_N30
\GPIO_1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~0_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\GPIO_1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~5_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\GPIO_1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
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

-- Location: IOOBUF_X28_Y0_N9
\GPIO_1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X41_Y3_N16
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

-- Location: IOOBUF_X28_Y0_N23
\GPIO_1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~6_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
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

-- Location: IOOBUF_X28_Y0_N16
\GPIO_1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~7_combout\,
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

-- Location: LCCOMB_X23_Y20_N2
\clkgen|count_1Khz[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[0]~15_combout\ = \clkgen|count_1Khz\(0) $ (VCC)
-- \clkgen|count_1Khz[0]~16\ = CARRY(\clkgen|count_1Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(0),
	datad => VCC,
	combout => \clkgen|count_1Khz[0]~15_combout\,
	cout => \clkgen|count_1Khz[0]~16\);

-- Location: FF_X23_Y20_N3
\clkgen|count_1Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[0]~15_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(0));

-- Location: LCCOMB_X23_Y20_N4
\clkgen|count_1Khz[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[1]~17_combout\ = (\clkgen|count_1Khz\(1) & (!\clkgen|count_1Khz[0]~16\)) # (!\clkgen|count_1Khz\(1) & ((\clkgen|count_1Khz[0]~16\) # (GND)))
-- \clkgen|count_1Khz[1]~18\ = CARRY((!\clkgen|count_1Khz[0]~16\) # (!\clkgen|count_1Khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(1),
	datad => VCC,
	cin => \clkgen|count_1Khz[0]~16\,
	combout => \clkgen|count_1Khz[1]~17_combout\,
	cout => \clkgen|count_1Khz[1]~18\);

-- Location: FF_X23_Y20_N5
\clkgen|count_1Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[1]~17_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(1));

-- Location: LCCOMB_X23_Y20_N6
\clkgen|count_1Khz[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[2]~19_combout\ = (\clkgen|count_1Khz\(2) & (\clkgen|count_1Khz[1]~18\ $ (GND))) # (!\clkgen|count_1Khz\(2) & (!\clkgen|count_1Khz[1]~18\ & VCC))
-- \clkgen|count_1Khz[2]~20\ = CARRY((\clkgen|count_1Khz\(2) & !\clkgen|count_1Khz[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(2),
	datad => VCC,
	cin => \clkgen|count_1Khz[1]~18\,
	combout => \clkgen|count_1Khz[2]~19_combout\,
	cout => \clkgen|count_1Khz[2]~20\);

-- Location: FF_X23_Y20_N7
\clkgen|count_1Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[2]~19_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(2));

-- Location: LCCOMB_X23_Y20_N8
\clkgen|count_1Khz[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[3]~21_combout\ = (\clkgen|count_1Khz\(3) & (!\clkgen|count_1Khz[2]~20\)) # (!\clkgen|count_1Khz\(3) & ((\clkgen|count_1Khz[2]~20\) # (GND)))
-- \clkgen|count_1Khz[3]~22\ = CARRY((!\clkgen|count_1Khz[2]~20\) # (!\clkgen|count_1Khz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(3),
	datad => VCC,
	cin => \clkgen|count_1Khz[2]~20\,
	combout => \clkgen|count_1Khz[3]~21_combout\,
	cout => \clkgen|count_1Khz[3]~22\);

-- Location: FF_X23_Y20_N9
\clkgen|count_1Khz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[3]~21_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(3));

-- Location: LCCOMB_X23_Y20_N10
\clkgen|count_1Khz[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[4]~23_combout\ = (\clkgen|count_1Khz\(4) & (\clkgen|count_1Khz[3]~22\ $ (GND))) # (!\clkgen|count_1Khz\(4) & (!\clkgen|count_1Khz[3]~22\ & VCC))
-- \clkgen|count_1Khz[4]~24\ = CARRY((\clkgen|count_1Khz\(4) & !\clkgen|count_1Khz[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(4),
	datad => VCC,
	cin => \clkgen|count_1Khz[3]~22\,
	combout => \clkgen|count_1Khz[4]~23_combout\,
	cout => \clkgen|count_1Khz[4]~24\);

-- Location: FF_X23_Y20_N11
\clkgen|count_1Khz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[4]~23_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(4));

-- Location: LCCOMB_X23_Y20_N12
\clkgen|count_1Khz[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[5]~25_combout\ = (\clkgen|count_1Khz\(5) & (!\clkgen|count_1Khz[4]~24\)) # (!\clkgen|count_1Khz\(5) & ((\clkgen|count_1Khz[4]~24\) # (GND)))
-- \clkgen|count_1Khz[5]~26\ = CARRY((!\clkgen|count_1Khz[4]~24\) # (!\clkgen|count_1Khz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(5),
	datad => VCC,
	cin => \clkgen|count_1Khz[4]~24\,
	combout => \clkgen|count_1Khz[5]~25_combout\,
	cout => \clkgen|count_1Khz[5]~26\);

-- Location: FF_X23_Y20_N13
\clkgen|count_1Khz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[5]~25_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(5));

-- Location: LCCOMB_X23_Y20_N14
\clkgen|count_1Khz[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[6]~27_combout\ = (\clkgen|count_1Khz\(6) & (\clkgen|count_1Khz[5]~26\ $ (GND))) # (!\clkgen|count_1Khz\(6) & (!\clkgen|count_1Khz[5]~26\ & VCC))
-- \clkgen|count_1Khz[6]~28\ = CARRY((\clkgen|count_1Khz\(6) & !\clkgen|count_1Khz[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(6),
	datad => VCC,
	cin => \clkgen|count_1Khz[5]~26\,
	combout => \clkgen|count_1Khz[6]~27_combout\,
	cout => \clkgen|count_1Khz[6]~28\);

-- Location: FF_X23_Y20_N15
\clkgen|count_1Khz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[6]~27_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(6));

-- Location: LCCOMB_X23_Y20_N16
\clkgen|count_1Khz[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[7]~29_combout\ = (\clkgen|count_1Khz\(7) & (!\clkgen|count_1Khz[6]~28\)) # (!\clkgen|count_1Khz\(7) & ((\clkgen|count_1Khz[6]~28\) # (GND)))
-- \clkgen|count_1Khz[7]~30\ = CARRY((!\clkgen|count_1Khz[6]~28\) # (!\clkgen|count_1Khz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(7),
	datad => VCC,
	cin => \clkgen|count_1Khz[6]~28\,
	combout => \clkgen|count_1Khz[7]~29_combout\,
	cout => \clkgen|count_1Khz[7]~30\);

-- Location: FF_X23_Y20_N17
\clkgen|count_1Khz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[7]~29_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(7));

-- Location: LCCOMB_X23_Y20_N18
\clkgen|count_1Khz[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[8]~31_combout\ = (\clkgen|count_1Khz\(8) & (\clkgen|count_1Khz[7]~30\ $ (GND))) # (!\clkgen|count_1Khz\(8) & (!\clkgen|count_1Khz[7]~30\ & VCC))
-- \clkgen|count_1Khz[8]~32\ = CARRY((\clkgen|count_1Khz\(8) & !\clkgen|count_1Khz[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(8),
	datad => VCC,
	cin => \clkgen|count_1Khz[7]~30\,
	combout => \clkgen|count_1Khz[8]~31_combout\,
	cout => \clkgen|count_1Khz[8]~32\);

-- Location: FF_X23_Y20_N19
\clkgen|count_1Khz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[8]~31_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(8));

-- Location: LCCOMB_X23_Y20_N20
\clkgen|count_1Khz[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[9]~33_combout\ = (\clkgen|count_1Khz\(9) & (!\clkgen|count_1Khz[8]~32\)) # (!\clkgen|count_1Khz\(9) & ((\clkgen|count_1Khz[8]~32\) # (GND)))
-- \clkgen|count_1Khz[9]~34\ = CARRY((!\clkgen|count_1Khz[8]~32\) # (!\clkgen|count_1Khz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(9),
	datad => VCC,
	cin => \clkgen|count_1Khz[8]~32\,
	combout => \clkgen|count_1Khz[9]~33_combout\,
	cout => \clkgen|count_1Khz[9]~34\);

-- Location: FF_X23_Y20_N21
\clkgen|count_1Khz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[9]~33_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(9));

-- Location: LCCOMB_X23_Y20_N22
\clkgen|count_1Khz[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[10]~35_combout\ = (\clkgen|count_1Khz\(10) & (\clkgen|count_1Khz[9]~34\ $ (GND))) # (!\clkgen|count_1Khz\(10) & (!\clkgen|count_1Khz[9]~34\ & VCC))
-- \clkgen|count_1Khz[10]~36\ = CARRY((\clkgen|count_1Khz\(10) & !\clkgen|count_1Khz[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(10),
	datad => VCC,
	cin => \clkgen|count_1Khz[9]~34\,
	combout => \clkgen|count_1Khz[10]~35_combout\,
	cout => \clkgen|count_1Khz[10]~36\);

-- Location: FF_X23_Y20_N23
\clkgen|count_1Khz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[10]~35_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(10));

-- Location: LCCOMB_X23_Y20_N24
\clkgen|count_1Khz[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[11]~37_combout\ = (\clkgen|count_1Khz\(11) & (!\clkgen|count_1Khz[10]~36\)) # (!\clkgen|count_1Khz\(11) & ((\clkgen|count_1Khz[10]~36\) # (GND)))
-- \clkgen|count_1Khz[11]~38\ = CARRY((!\clkgen|count_1Khz[10]~36\) # (!\clkgen|count_1Khz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(11),
	datad => VCC,
	cin => \clkgen|count_1Khz[10]~36\,
	combout => \clkgen|count_1Khz[11]~37_combout\,
	cout => \clkgen|count_1Khz[11]~38\);

-- Location: FF_X23_Y20_N25
\clkgen|count_1Khz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[11]~37_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(11));

-- Location: LCCOMB_X22_Y20_N16
\clkgen|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~2_combout\ = (\clkgen|count_1Khz\(9)) # ((\clkgen|count_1Khz\(8)) # ((\clkgen|count_1Khz\(10)) # (\clkgen|count_1Khz\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(9),
	datab => \clkgen|count_1Khz\(8),
	datac => \clkgen|count_1Khz\(10),
	datad => \clkgen|count_1Khz\(11),
	combout => \clkgen|LessThan0~2_combout\);

-- Location: LCCOMB_X24_Y20_N0
\clkgen|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~0_combout\ = (\clkgen|count_1Khz\(0)) # ((\clkgen|count_1Khz\(2)) # ((\clkgen|count_1Khz\(1)) # (\clkgen|count_1Khz\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(0),
	datab => \clkgen|count_1Khz\(2),
	datac => \clkgen|count_1Khz\(1),
	datad => \clkgen|count_1Khz\(3),
	combout => \clkgen|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y20_N6
\clkgen|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~1_combout\ = (\clkgen|count_1Khz\(6)) # ((\clkgen|count_1Khz\(5)) # ((\clkgen|count_1Khz\(4)) # (\clkgen|count_1Khz\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(6),
	datab => \clkgen|count_1Khz\(5),
	datac => \clkgen|count_1Khz\(4),
	datad => \clkgen|count_1Khz\(7),
	combout => \clkgen|LessThan0~1_combout\);

-- Location: LCCOMB_X23_Y20_N26
\clkgen|count_1Khz[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[12]~39_combout\ = (\clkgen|count_1Khz\(12) & (\clkgen|count_1Khz[11]~38\ $ (GND))) # (!\clkgen|count_1Khz\(12) & (!\clkgen|count_1Khz[11]~38\ & VCC))
-- \clkgen|count_1Khz[12]~40\ = CARRY((\clkgen|count_1Khz\(12) & !\clkgen|count_1Khz[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(12),
	datad => VCC,
	cin => \clkgen|count_1Khz[11]~38\,
	combout => \clkgen|count_1Khz[12]~39_combout\,
	cout => \clkgen|count_1Khz[12]~40\);

-- Location: FF_X23_Y20_N27
\clkgen|count_1Khz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[12]~39_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(12));

-- Location: LCCOMB_X23_Y20_N28
\clkgen|count_1Khz[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[13]~41_combout\ = (\clkgen|count_1Khz\(13) & (!\clkgen|count_1Khz[12]~40\)) # (!\clkgen|count_1Khz\(13) & ((\clkgen|count_1Khz[12]~40\) # (GND)))
-- \clkgen|count_1Khz[13]~42\ = CARRY((!\clkgen|count_1Khz[12]~40\) # (!\clkgen|count_1Khz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(13),
	datad => VCC,
	cin => \clkgen|count_1Khz[12]~40\,
	combout => \clkgen|count_1Khz[13]~41_combout\,
	cout => \clkgen|count_1Khz[13]~42\);

-- Location: FF_X23_Y20_N29
\clkgen|count_1Khz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[13]~41_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(13));

-- Location: LCCOMB_X23_Y20_N30
\clkgen|count_1Khz[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_1Khz[14]~43_combout\ = \clkgen|count_1Khz\(14) $ (!\clkgen|count_1Khz[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(14),
	cin => \clkgen|count_1Khz[13]~42\,
	combout => \clkgen|count_1Khz[14]~43_combout\);

-- Location: FF_X23_Y20_N31
\clkgen|count_1Khz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_1Khz[14]~43_combout\,
	sclr => \clkgen|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_1Khz\(14));

-- Location: LCCOMB_X24_Y20_N6
\clkgen|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~3_combout\ = (\clkgen|count_1Khz\(13)) # ((\clkgen|count_1Khz\(12)) # (\clkgen|count_1Khz\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_1Khz\(13),
	datac => \clkgen|count_1Khz\(12),
	datad => \clkgen|count_1Khz\(14),
	combout => \clkgen|LessThan0~3_combout\);

-- Location: LCCOMB_X23_Y20_N0
\clkgen|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~4_combout\ = (\clkgen|LessThan0~2_combout\) # ((\clkgen|LessThan0~0_combout\) # ((\clkgen|LessThan0~1_combout\) # (\clkgen|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|LessThan0~2_combout\,
	datab => \clkgen|LessThan0~0_combout\,
	datac => \clkgen|LessThan0~1_combout\,
	datad => \clkgen|LessThan0~3_combout\,
	combout => \clkgen|LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y20_N2
\clkgen|CLK_1Khz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|CLK_1Khz~0_combout\ = \clkgen|CLK_1Khz~q\ $ (\clkgen|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|CLK_1Khz~q\,
	datac => \clkgen|LessThan0~4_combout\,
	combout => \clkgen|CLK_1Khz~0_combout\);

-- Location: LCCOMB_X22_Y20_N0
\clkgen|CLK_1Khz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|CLK_1Khz~feeder_combout\ = \clkgen|CLK_1Khz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clkgen|CLK_1Khz~0_combout\,
	combout => \clkgen|CLK_1Khz~feeder_combout\);

-- Location: FF_X22_Y20_N1
\clkgen|CLK_1Khz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|CLK_1Khz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|CLK_1Khz~q\);

-- Location: CLKCTRL_G14
\clkgen|CLK_1Khz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkgen|CLK_1Khz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkgen|CLK_1Khz~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N6
\SCANLINE[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[0]~3_combout\ = !SCANLINE(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SCANLINE(0),
	combout => \SCANLINE[0]~3_combout\);

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

-- Location: FF_X27_Y1_N7
\SCANLINE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[0]~3_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(0));

-- Location: LCCOMB_X27_Y1_N12
\SCANLINE[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[1]~1_combout\ = SCANLINE(1) $ (SCANLINE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SCANLINE(1),
	datad => SCANLINE(0),
	combout => \SCANLINE[1]~1_combout\);

-- Location: FF_X27_Y1_N13
\SCANLINE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[1]~1_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(1));

-- Location: LCCOMB_X27_Y1_N24
\SCANLINE[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[2]~0_combout\ = SCANLINE(2) $ (((SCANLINE(1) & SCANLINE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datac => SCANLINE(2),
	datad => SCANLINE(0),
	combout => \SCANLINE[2]~0_combout\);

-- Location: FF_X27_Y1_N25
\SCANLINE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[2]~0_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(2));

-- Location: LCCOMB_X27_Y1_N10
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!SCANLINE(0) & (!SCANLINE(1) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => SCANLINE(2),
	combout => \Mux0~0_combout\);

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

-- Location: LCCOMB_X21_Y1_N24
\selrandom[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- selrandom(0) = (\KEY[1]~input_o\ & ((selrandom(0)) # (!\KEY[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[2]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => selrandom(0),
	combout => selrandom(0));

-- Location: LCCOMB_X28_Y1_N28
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (selrandom(0) & ((SCANLINE(1) & (SCANLINE(0) & !SCANLINE(2))) # (!SCANLINE(1) & (!SCANLINE(0) & SCANLINE(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => selrandom(0),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X27_Y1_N4
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (SCANLINE(0) & (SCANLINE(1) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => SCANLINE(2),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X27_Y1_N14
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (SCANLINE(0) & (!SCANLINE(1) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => SCANLINE(2),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X27_Y1_N16
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!SCANLINE(0) & (SCANLINE(1) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => SCANLINE(2),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X27_Y1_N30
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (SCANLINE(0) & (!SCANLINE(1) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => SCANLINE(2),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X27_Y1_N28
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (SCANLINE(0) & (SCANLINE(1) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => SCANLINE(2),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X28_Y1_N30
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (SCANLINE(1) & (!SCANLINE(0) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X28_Y1_N4
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (!SCANLINE(1) & (!SCANLINE(0) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~7_combout\);

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


