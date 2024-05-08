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

-- DATE "04/24/2024 21:03:58"

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

ENTITY 	Lab8_2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 2);
	GPIO_0 : OUT std_logic_vector(21 DOWNTO 9);
	GPIO_1 : OUT std_logic_vector(21 DOWNTO 9)
	);
END Lab8_2;

-- Design Ports Information
-- GPIO_0[9]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab8_2 IS
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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 2);
SIGNAL ww_GPIO_0 : std_logic_vector(21 DOWNTO 9);
SIGNAL ww_GPIO_1 : std_logic_vector(21 DOWNTO 9);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkgen|CLK_1Khz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkgen|CLK_2hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clkgen|LessThan0~1_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[7]~30\ : std_logic;
SIGNAL \clkgen|count_1Khz[8]~31_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[8]~32\ : std_logic;
SIGNAL \clkgen|count_1Khz[9]~33_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[9]~34\ : std_logic;
SIGNAL \clkgen|count_1Khz[10]~35_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[10]~36\ : std_logic;
SIGNAL \clkgen|count_1Khz[11]~37_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~2_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[11]~38\ : std_logic;
SIGNAL \clkgen|count_1Khz[12]~39_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[12]~40\ : std_logic;
SIGNAL \clkgen|count_1Khz[13]~41_combout\ : std_logic;
SIGNAL \clkgen|count_1Khz[13]~42\ : std_logic;
SIGNAL \clkgen|count_1Khz[14]~43_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~3_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~0_combout\ : std_logic;
SIGNAL \clkgen|LessThan0~4_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~0_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~feeder_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~q\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~clkctrl_outclk\ : std_logic;
SIGNAL \SCANLINE[0]~2_combout\ : std_logic;
SIGNAL \SCANLINE[1]~0_combout\ : std_logic;
SIGNAL \SCANLINE[2]~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[0]~15_combout\ : std_logic;
SIGNAL \clkgen|LessThan1~0_combout\ : std_logic;
SIGNAL \clkgen|LessThan1~1_combout\ : std_logic;
SIGNAL \clkgen|LessThan1~2_combout\ : std_logic;
SIGNAL \clkgen|LessThan1~3_combout\ : std_logic;
SIGNAL \clkgen|LessThan1~4_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[0]~16\ : std_logic;
SIGNAL \clkgen|count_2hz[1]~17_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[1]~18\ : std_logic;
SIGNAL \clkgen|count_2hz[2]~19_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[2]~20\ : std_logic;
SIGNAL \clkgen|count_2hz[3]~21_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[3]~22\ : std_logic;
SIGNAL \clkgen|count_2hz[4]~23_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[4]~24\ : std_logic;
SIGNAL \clkgen|count_2hz[5]~25_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[5]~26\ : std_logic;
SIGNAL \clkgen|count_2hz[6]~27_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[6]~28\ : std_logic;
SIGNAL \clkgen|count_2hz[7]~29_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[7]~30\ : std_logic;
SIGNAL \clkgen|count_2hz[8]~31_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[8]~32\ : std_logic;
SIGNAL \clkgen|count_2hz[9]~33_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[9]~34\ : std_logic;
SIGNAL \clkgen|count_2hz[10]~35_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[10]~36\ : std_logic;
SIGNAL \clkgen|count_2hz[11]~37_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[11]~38\ : std_logic;
SIGNAL \clkgen|count_2hz[12]~39_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[12]~40\ : std_logic;
SIGNAL \clkgen|count_2hz[13]~41_combout\ : std_logic;
SIGNAL \clkgen|count_2hz[13]~42\ : std_logic;
SIGNAL \clkgen|count_2hz[14]~43_combout\ : std_logic;
SIGNAL \clkgen|CLK_2hz~0_combout\ : std_logic;
SIGNAL \clkgen|CLK_2hz~feeder_combout\ : std_logic;
SIGNAL \clkgen|CLK_2hz~q\ : std_logic;
SIGNAL \clkgen|CLK_2hz~clkctrl_outclk\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \sor~0_combout\ : std_logic;
SIGNAL \sor~q\ : std_logic;
SIGNAL \number[0]~2_combout\ : std_logic;
SIGNAL \number[1]~0_combout\ : std_logic;
SIGNAL \number[2]~1_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL number : std_logic_vector(2 DOWNTO 0);
SIGNAL SCANLINE : std_logic_vector(2 DOWNTO 0);
SIGNAL \clkgen|count_2hz\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \clkgen|count_1Khz\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
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

\clkgen|CLK_2hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkgen|CLK_2hz~q\);
\ALT_INV_Mux0~9_combout\ <= NOT \Mux0~9_combout\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux0~7_combout\ <= NOT \Mux0~7_combout\;
\ALT_INV_Mux0~6_combout\ <= NOT \Mux0~6_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X16_Y0_N23
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

-- Location: IOOBUF_X1_Y29_N23
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

-- Location: IOOBUF_X19_Y0_N30
\GPIO_0[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~1_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[11]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
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

-- Location: IOOBUF_X19_Y0_N23
\GPIO_0[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[13]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\GPIO_0[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N9
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

-- Location: IOOBUF_X23_Y0_N30
\GPIO_0[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~4_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[17]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
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

-- Location: IOOBUF_X16_Y0_N2
\GPIO_0[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~2_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[19]~output_o\);

-- Location: IOOBUF_X35_Y29_N23
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

-- Location: IOOBUF_X16_Y0_N30
\GPIO_0[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~0_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[21]~output_o\);

-- Location: IOOBUF_X19_Y29_N30
\GPIO_1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X41_Y5_N16
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

-- Location: IOOBUF_X19_Y0_N16
\GPIO_1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~6_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X41_Y2_N23
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

-- Location: IOOBUF_X21_Y0_N30
\GPIO_1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~3_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\GPIO_1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~7_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\GPIO_1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~3_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
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

-- Location: IOOBUF_X19_Y0_N9
\GPIO_1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~1_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
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

-- Location: IOOBUF_X23_Y0_N2
\GPIO_1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~8_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
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

-- Location: IOOBUF_X23_Y0_N16
\GPIO_1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~9_combout\,
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

-- Location: LCCOMB_X21_Y22_N2
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

-- Location: FF_X21_Y22_N3
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

-- Location: LCCOMB_X21_Y22_N4
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

-- Location: FF_X21_Y22_N5
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

-- Location: LCCOMB_X21_Y22_N6
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

-- Location: FF_X21_Y22_N7
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

-- Location: LCCOMB_X21_Y22_N8
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

-- Location: FF_X21_Y22_N9
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

-- Location: LCCOMB_X21_Y22_N10
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

-- Location: FF_X21_Y22_N11
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

-- Location: LCCOMB_X21_Y22_N12
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

-- Location: FF_X21_Y22_N13
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

-- Location: LCCOMB_X21_Y22_N14
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

-- Location: FF_X21_Y22_N15
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

-- Location: LCCOMB_X21_Y22_N16
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

-- Location: FF_X21_Y22_N17
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

-- Location: LCCOMB_X22_Y22_N30
\clkgen|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~1_combout\ = (\clkgen|count_1Khz\(6)) # ((\clkgen|count_1Khz\(4)) # ((\clkgen|count_1Khz\(7)) # (\clkgen|count_1Khz\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(6),
	datab => \clkgen|count_1Khz\(4),
	datac => \clkgen|count_1Khz\(7),
	datad => \clkgen|count_1Khz\(5),
	combout => \clkgen|LessThan0~1_combout\);

-- Location: LCCOMB_X21_Y22_N18
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

-- Location: FF_X21_Y22_N19
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

-- Location: LCCOMB_X21_Y22_N20
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

-- Location: FF_X21_Y22_N21
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

-- Location: LCCOMB_X21_Y22_N22
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

-- Location: FF_X21_Y22_N23
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

-- Location: LCCOMB_X21_Y22_N24
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

-- Location: FF_X21_Y22_N25
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

-- Location: LCCOMB_X22_Y22_N12
\clkgen|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~2_combout\ = (\clkgen|count_1Khz\(11)) # ((\clkgen|count_1Khz\(8)) # ((\clkgen|count_1Khz\(9)) # (\clkgen|count_1Khz\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_1Khz\(11),
	datab => \clkgen|count_1Khz\(8),
	datac => \clkgen|count_1Khz\(9),
	datad => \clkgen|count_1Khz\(10),
	combout => \clkgen|LessThan0~2_combout\);

-- Location: LCCOMB_X21_Y22_N26
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

-- Location: FF_X21_Y22_N27
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

-- Location: LCCOMB_X21_Y22_N28
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

-- Location: FF_X21_Y22_N29
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

-- Location: LCCOMB_X21_Y22_N30
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

-- Location: FF_X21_Y22_N31
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

-- Location: LCCOMB_X22_Y22_N10
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

-- Location: LCCOMB_X22_Y22_N28
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

-- Location: LCCOMB_X21_Y22_N0
\clkgen|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan0~4_combout\ = (\clkgen|LessThan0~1_combout\) # ((\clkgen|LessThan0~2_combout\) # ((\clkgen|LessThan0~3_combout\) # (\clkgen|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|LessThan0~1_combout\,
	datab => \clkgen|LessThan0~2_combout\,
	datac => \clkgen|LessThan0~3_combout\,
	datad => \clkgen|LessThan0~0_combout\,
	combout => \clkgen|LessThan0~4_combout\);

-- Location: LCCOMB_X20_Y22_N6
\clkgen|CLK_1Khz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|CLK_1Khz~0_combout\ = \clkgen|CLK_1Khz~q\ $ (\clkgen|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|CLK_1Khz~q\,
	datac => \clkgen|LessThan0~4_combout\,
	combout => \clkgen|CLK_1Khz~0_combout\);

-- Location: LCCOMB_X20_Y22_N0
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

-- Location: FF_X20_Y22_N1
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

-- Location: LCCOMB_X21_Y1_N12
\SCANLINE[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[0]~2_combout\ = !SCANLINE(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SCANLINE(0),
	combout => \SCANLINE[0]~2_combout\);

-- Location: FF_X21_Y1_N13
\SCANLINE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(0));

-- Location: LCCOMB_X21_Y1_N6
\SCANLINE[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[1]~0_combout\ = SCANLINE(1) $ (SCANLINE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SCANLINE(1),
	datad => SCANLINE(0),
	combout => \SCANLINE[1]~0_combout\);

-- Location: FF_X21_Y1_N7
\SCANLINE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(1));

-- Location: LCCOMB_X21_Y1_N4
\SCANLINE[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[2]~1_combout\ = SCANLINE(2) $ (((SCANLINE(1) & SCANLINE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datac => SCANLINE(2),
	datad => SCANLINE(0),
	combout => \SCANLINE[2]~1_combout\);

-- Location: FF_X21_Y1_N5
\SCANLINE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(2));

-- Location: LCCOMB_X19_Y1_N4
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!SCANLINE(2) & (!SCANLINE(1) & !SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X39_Y25_N2
\clkgen|count_2hz[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[0]~15_combout\ = \clkgen|count_2hz\(0) $ (VCC)
-- \clkgen|count_2hz[0]~16\ = CARRY(\clkgen|count_2hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(0),
	datad => VCC,
	combout => \clkgen|count_2hz[0]~15_combout\,
	cout => \clkgen|count_2hz[0]~16\);

-- Location: LCCOMB_X40_Y25_N4
\clkgen|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan1~0_combout\ = (!\clkgen|count_2hz\(6) & (!\clkgen|count_2hz\(8) & (!\clkgen|count_2hz\(7) & !\clkgen|count_2hz\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(6),
	datab => \clkgen|count_2hz\(8),
	datac => \clkgen|count_2hz\(7),
	datad => \clkgen|count_2hz\(5),
	combout => \clkgen|LessThan1~0_combout\);

-- Location: LCCOMB_X40_Y25_N30
\clkgen|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan1~1_combout\ = (!\clkgen|count_2hz\(9) & (!\clkgen|count_2hz\(11) & (!\clkgen|count_2hz\(12) & !\clkgen|count_2hz\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(9),
	datab => \clkgen|count_2hz\(11),
	datac => \clkgen|count_2hz\(12),
	datad => \clkgen|count_2hz\(10),
	combout => \clkgen|LessThan1~1_combout\);

-- Location: LCCOMB_X40_Y25_N12
\clkgen|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan1~2_combout\ = (!\clkgen|count_2hz\(3) & (!\clkgen|count_2hz\(2) & ((!\clkgen|count_2hz\(0)) # (!\clkgen|count_2hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(3),
	datab => \clkgen|count_2hz\(2),
	datac => \clkgen|count_2hz\(1),
	datad => \clkgen|count_2hz\(0),
	combout => \clkgen|LessThan1~2_combout\);

-- Location: LCCOMB_X40_Y25_N26
\clkgen|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan1~3_combout\ = (\clkgen|LessThan1~0_combout\ & (\clkgen|LessThan1~1_combout\ & ((\clkgen|LessThan1~2_combout\) # (!\clkgen|count_2hz\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(4),
	datab => \clkgen|LessThan1~0_combout\,
	datac => \clkgen|LessThan1~1_combout\,
	datad => \clkgen|LessThan1~2_combout\,
	combout => \clkgen|LessThan1~3_combout\);

-- Location: LCCOMB_X39_Y25_N0
\clkgen|LessThan1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|LessThan1~4_combout\ = (\clkgen|count_2hz\(13)) # ((\clkgen|count_2hz\(14)) # (!\clkgen|LessThan1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(13),
	datac => \clkgen|count_2hz\(14),
	datad => \clkgen|LessThan1~3_combout\,
	combout => \clkgen|LessThan1~4_combout\);

-- Location: FF_X39_Y25_N3
\clkgen|count_2hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[0]~15_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(0));

-- Location: LCCOMB_X39_Y25_N4
\clkgen|count_2hz[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[1]~17_combout\ = (\clkgen|count_2hz\(1) & (!\clkgen|count_2hz[0]~16\)) # (!\clkgen|count_2hz\(1) & ((\clkgen|count_2hz[0]~16\) # (GND)))
-- \clkgen|count_2hz[1]~18\ = CARRY((!\clkgen|count_2hz[0]~16\) # (!\clkgen|count_2hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(1),
	datad => VCC,
	cin => \clkgen|count_2hz[0]~16\,
	combout => \clkgen|count_2hz[1]~17_combout\,
	cout => \clkgen|count_2hz[1]~18\);

-- Location: FF_X39_Y25_N5
\clkgen|count_2hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[1]~17_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(1));

-- Location: LCCOMB_X39_Y25_N6
\clkgen|count_2hz[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[2]~19_combout\ = (\clkgen|count_2hz\(2) & (\clkgen|count_2hz[1]~18\ $ (GND))) # (!\clkgen|count_2hz\(2) & (!\clkgen|count_2hz[1]~18\ & VCC))
-- \clkgen|count_2hz[2]~20\ = CARRY((\clkgen|count_2hz\(2) & !\clkgen|count_2hz[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(2),
	datad => VCC,
	cin => \clkgen|count_2hz[1]~18\,
	combout => \clkgen|count_2hz[2]~19_combout\,
	cout => \clkgen|count_2hz[2]~20\);

-- Location: FF_X39_Y25_N7
\clkgen|count_2hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[2]~19_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(2));

-- Location: LCCOMB_X39_Y25_N8
\clkgen|count_2hz[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[3]~21_combout\ = (\clkgen|count_2hz\(3) & (!\clkgen|count_2hz[2]~20\)) # (!\clkgen|count_2hz\(3) & ((\clkgen|count_2hz[2]~20\) # (GND)))
-- \clkgen|count_2hz[3]~22\ = CARRY((!\clkgen|count_2hz[2]~20\) # (!\clkgen|count_2hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(3),
	datad => VCC,
	cin => \clkgen|count_2hz[2]~20\,
	combout => \clkgen|count_2hz[3]~21_combout\,
	cout => \clkgen|count_2hz[3]~22\);

-- Location: FF_X39_Y25_N9
\clkgen|count_2hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[3]~21_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(3));

-- Location: LCCOMB_X39_Y25_N10
\clkgen|count_2hz[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[4]~23_combout\ = (\clkgen|count_2hz\(4) & (\clkgen|count_2hz[3]~22\ $ (GND))) # (!\clkgen|count_2hz\(4) & (!\clkgen|count_2hz[3]~22\ & VCC))
-- \clkgen|count_2hz[4]~24\ = CARRY((\clkgen|count_2hz\(4) & !\clkgen|count_2hz[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(4),
	datad => VCC,
	cin => \clkgen|count_2hz[3]~22\,
	combout => \clkgen|count_2hz[4]~23_combout\,
	cout => \clkgen|count_2hz[4]~24\);

-- Location: FF_X39_Y25_N11
\clkgen|count_2hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[4]~23_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(4));

-- Location: LCCOMB_X39_Y25_N12
\clkgen|count_2hz[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[5]~25_combout\ = (\clkgen|count_2hz\(5) & (!\clkgen|count_2hz[4]~24\)) # (!\clkgen|count_2hz\(5) & ((\clkgen|count_2hz[4]~24\) # (GND)))
-- \clkgen|count_2hz[5]~26\ = CARRY((!\clkgen|count_2hz[4]~24\) # (!\clkgen|count_2hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(5),
	datad => VCC,
	cin => \clkgen|count_2hz[4]~24\,
	combout => \clkgen|count_2hz[5]~25_combout\,
	cout => \clkgen|count_2hz[5]~26\);

-- Location: FF_X39_Y25_N13
\clkgen|count_2hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[5]~25_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(5));

-- Location: LCCOMB_X39_Y25_N14
\clkgen|count_2hz[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[6]~27_combout\ = (\clkgen|count_2hz\(6) & (\clkgen|count_2hz[5]~26\ $ (GND))) # (!\clkgen|count_2hz\(6) & (!\clkgen|count_2hz[5]~26\ & VCC))
-- \clkgen|count_2hz[6]~28\ = CARRY((\clkgen|count_2hz\(6) & !\clkgen|count_2hz[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(6),
	datad => VCC,
	cin => \clkgen|count_2hz[5]~26\,
	combout => \clkgen|count_2hz[6]~27_combout\,
	cout => \clkgen|count_2hz[6]~28\);

-- Location: FF_X39_Y25_N15
\clkgen|count_2hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[6]~27_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(6));

-- Location: LCCOMB_X39_Y25_N16
\clkgen|count_2hz[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[7]~29_combout\ = (\clkgen|count_2hz\(7) & (!\clkgen|count_2hz[6]~28\)) # (!\clkgen|count_2hz\(7) & ((\clkgen|count_2hz[6]~28\) # (GND)))
-- \clkgen|count_2hz[7]~30\ = CARRY((!\clkgen|count_2hz[6]~28\) # (!\clkgen|count_2hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(7),
	datad => VCC,
	cin => \clkgen|count_2hz[6]~28\,
	combout => \clkgen|count_2hz[7]~29_combout\,
	cout => \clkgen|count_2hz[7]~30\);

-- Location: FF_X39_Y25_N17
\clkgen|count_2hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[7]~29_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(7));

-- Location: LCCOMB_X39_Y25_N18
\clkgen|count_2hz[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[8]~31_combout\ = (\clkgen|count_2hz\(8) & (\clkgen|count_2hz[7]~30\ $ (GND))) # (!\clkgen|count_2hz\(8) & (!\clkgen|count_2hz[7]~30\ & VCC))
-- \clkgen|count_2hz[8]~32\ = CARRY((\clkgen|count_2hz\(8) & !\clkgen|count_2hz[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(8),
	datad => VCC,
	cin => \clkgen|count_2hz[7]~30\,
	combout => \clkgen|count_2hz[8]~31_combout\,
	cout => \clkgen|count_2hz[8]~32\);

-- Location: FF_X39_Y25_N19
\clkgen|count_2hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[8]~31_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(8));

-- Location: LCCOMB_X39_Y25_N20
\clkgen|count_2hz[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[9]~33_combout\ = (\clkgen|count_2hz\(9) & (!\clkgen|count_2hz[8]~32\)) # (!\clkgen|count_2hz\(9) & ((\clkgen|count_2hz[8]~32\) # (GND)))
-- \clkgen|count_2hz[9]~34\ = CARRY((!\clkgen|count_2hz[8]~32\) # (!\clkgen|count_2hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(9),
	datad => VCC,
	cin => \clkgen|count_2hz[8]~32\,
	combout => \clkgen|count_2hz[9]~33_combout\,
	cout => \clkgen|count_2hz[9]~34\);

-- Location: FF_X39_Y25_N21
\clkgen|count_2hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[9]~33_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(9));

-- Location: LCCOMB_X39_Y25_N22
\clkgen|count_2hz[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[10]~35_combout\ = (\clkgen|count_2hz\(10) & (\clkgen|count_2hz[9]~34\ $ (GND))) # (!\clkgen|count_2hz\(10) & (!\clkgen|count_2hz[9]~34\ & VCC))
-- \clkgen|count_2hz[10]~36\ = CARRY((\clkgen|count_2hz\(10) & !\clkgen|count_2hz[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(10),
	datad => VCC,
	cin => \clkgen|count_2hz[9]~34\,
	combout => \clkgen|count_2hz[10]~35_combout\,
	cout => \clkgen|count_2hz[10]~36\);

-- Location: FF_X39_Y25_N23
\clkgen|count_2hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[10]~35_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(10));

-- Location: LCCOMB_X39_Y25_N24
\clkgen|count_2hz[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[11]~37_combout\ = (\clkgen|count_2hz\(11) & (!\clkgen|count_2hz[10]~36\)) # (!\clkgen|count_2hz\(11) & ((\clkgen|count_2hz[10]~36\) # (GND)))
-- \clkgen|count_2hz[11]~38\ = CARRY((!\clkgen|count_2hz[10]~36\) # (!\clkgen|count_2hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(11),
	datad => VCC,
	cin => \clkgen|count_2hz[10]~36\,
	combout => \clkgen|count_2hz[11]~37_combout\,
	cout => \clkgen|count_2hz[11]~38\);

-- Location: FF_X39_Y25_N25
\clkgen|count_2hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[11]~37_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(11));

-- Location: LCCOMB_X39_Y25_N26
\clkgen|count_2hz[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[12]~39_combout\ = (\clkgen|count_2hz\(12) & (\clkgen|count_2hz[11]~38\ $ (GND))) # (!\clkgen|count_2hz\(12) & (!\clkgen|count_2hz[11]~38\ & VCC))
-- \clkgen|count_2hz[12]~40\ = CARRY((\clkgen|count_2hz\(12) & !\clkgen|count_2hz[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(12),
	datad => VCC,
	cin => \clkgen|count_2hz[11]~38\,
	combout => \clkgen|count_2hz[12]~39_combout\,
	cout => \clkgen|count_2hz[12]~40\);

-- Location: FF_X39_Y25_N27
\clkgen|count_2hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[12]~39_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(12));

-- Location: LCCOMB_X39_Y25_N28
\clkgen|count_2hz[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[13]~41_combout\ = (\clkgen|count_2hz\(13) & (!\clkgen|count_2hz[12]~40\)) # (!\clkgen|count_2hz\(13) & ((\clkgen|count_2hz[12]~40\) # (GND)))
-- \clkgen|count_2hz[13]~42\ = CARRY((!\clkgen|count_2hz[12]~40\) # (!\clkgen|count_2hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clkgen|count_2hz\(13),
	datad => VCC,
	cin => \clkgen|count_2hz[12]~40\,
	combout => \clkgen|count_2hz[13]~41_combout\,
	cout => \clkgen|count_2hz[13]~42\);

-- Location: FF_X39_Y25_N29
\clkgen|count_2hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[13]~41_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(13));

-- Location: LCCOMB_X39_Y25_N30
\clkgen|count_2hz[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|count_2hz[14]~43_combout\ = \clkgen|count_2hz\(14) $ (!\clkgen|count_2hz[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(14),
	cin => \clkgen|count_2hz[13]~42\,
	combout => \clkgen|count_2hz[14]~43_combout\);

-- Location: FF_X39_Y25_N31
\clkgen|count_2hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|count_2hz[14]~43_combout\,
	sclr => \clkgen|LessThan1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|count_2hz\(14));

-- Location: LCCOMB_X40_Y25_N8
\clkgen|CLK_2hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|CLK_2hz~0_combout\ = \clkgen|CLK_2hz~q\ $ (((\clkgen|count_2hz\(14)) # ((\clkgen|count_2hz\(13)) # (!\clkgen|LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|count_2hz\(14),
	datab => \clkgen|count_2hz\(13),
	datac => \clkgen|LessThan1~3_combout\,
	datad => \clkgen|CLK_2hz~q\,
	combout => \clkgen|CLK_2hz~0_combout\);

-- Location: LCCOMB_X40_Y25_N6
\clkgen|CLK_2hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|CLK_2hz~feeder_combout\ = \clkgen|CLK_2hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|CLK_2hz~0_combout\,
	combout => \clkgen|CLK_2hz~feeder_combout\);

-- Location: FF_X40_Y25_N7
\clkgen|CLK_2hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|CLK_2hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|CLK_2hz~q\);

-- Location: CLKCTRL_G5
\clkgen|CLK_2hz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkgen|CLK_2hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkgen|CLK_2hz~clkctrl_outclk\);

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

-- Location: LCCOMB_X20_Y1_N28
\sor~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sor~0_combout\ = !\sor~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sor~q\,
	combout => \sor~0_combout\);

-- Location: FF_X20_Y1_N29
sor : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sor~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sor~q\);

-- Location: LCCOMB_X20_Y1_N26
\number[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number[0]~2_combout\ = \sor~q\ $ (number(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sor~q\,
	datac => number(0),
	combout => \number[0]~2_combout\);

-- Location: FF_X20_Y1_N9
\number[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_2hz~clkctrl_outclk\,
	asdata => \number[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(0));

-- Location: LCCOMB_X20_Y1_N30
\number[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number[1]~0_combout\ = number(1) $ (((\sor~q\ & number(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sor~q\,
	datac => number(0),
	datad => number(1),
	combout => \number[1]~0_combout\);

-- Location: FF_X20_Y1_N17
\number[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_2hz~clkctrl_outclk\,
	asdata => \number[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(1));

-- Location: LCCOMB_X20_Y1_N4
\number[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number[2]~1_combout\ = number(2) $ (((\sor~q\ & (number(0) & number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sor~q\,
	datab => number(0),
	datac => number(2),
	datad => number(1),
	combout => \number[2]~1_combout\);

-- Location: FF_X20_Y1_N15
\number[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_2hz~clkctrl_outclk\,
	asdata => \number[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number(2));

-- Location: LCCOMB_X20_Y1_N14
\Mux23~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (SCANLINE(0) & (!number(2) & (number(0) $ (!SCANLINE(1))))) # (!SCANLINE(0) & (number(0) & (number(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => SCANLINE(0),
	datac => number(2),
	datad => SCANLINE(1),
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X20_Y1_N16
\Mux23~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = ((number(2) & (number(1) & \Mux23~0_combout\)) # (!number(2) & (!number(1) & !\Mux23~0_combout\))) # (!SCANLINE(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datab => number(2),
	datac => number(1),
	datad => \Mux23~0_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X19_Y1_N8
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!SCANLINE(2) & (SCANLINE(1) & !SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X19_Y1_N2
\Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (number(1) & ((number(0) & (!number(2))) # (!number(0) & ((SCANLINE(0)))))) # (!number(1) & (number(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(2),
	datab => number(0),
	datac => SCANLINE(0),
	datad => number(1),
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X19_Y1_N20
\Mux25~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (SCANLINE(2) & (!\Mux23~2_combout\ & SCANLINE(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datab => \Mux23~2_combout\,
	datac => SCANLINE(1),
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X19_Y1_N22
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (number(2) & ((!number(1)) # (!number(0)))) # (!number(2) & ((number(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number(2),
	datac => number(0),
	datad => number(1),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X19_Y1_N26
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!SCANLINE(2) & SCANLINE(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datac => SCANLINE(1),
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X19_Y1_N24
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (number(0) & (\Mux0~1_combout\ & (number(2) $ (!number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(2),
	datab => number(0),
	datac => \Mux0~1_combout\,
	datad => number(1),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X19_Y1_N18
\Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (SCANLINE(2) & (!SCANLINE(1) & ((number(0)) # (number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datab => number(0),
	datac => SCANLINE(1),
	datad => number(1),
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X19_Y1_N28
\Mux25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (SCANLINE(0) & ((\Mux25~0_combout\) # ((!number(2) & \Mux25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(2),
	datab => \Mux25~0_combout\,
	datac => SCANLINE(0),
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X19_Y1_N30
\Mux25~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Mux25~3_combout\) # ((\Mux25~2_combout\) # ((\Mux0~2_combout\ & \Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux25~3_combout\,
	datac => \Mux19~0_combout\,
	datad => \Mux25~2_combout\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X20_Y1_N2
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (SCANLINE(1) & (!SCANLINE(2) & SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => SCANLINE(2),
	datac => SCANLINE(0),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X21_Y1_N26
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!SCANLINE(1) & (SCANLINE(0) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X20_Y1_N12
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (!SCANLINE(1) & SCANLINE(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datac => SCANLINE(2),
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X19_Y1_N16
\Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (SCANLINE(0) & (number(1) $ (((number(2) & !number(0)))))) # (!SCANLINE(0) & (number(2) & ((number(0)) # (number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(2),
	datab => number(0),
	datac => SCANLINE(0),
	datad => number(1),
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X19_Y1_N10
\Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux0~1_combout\ & (number(2) $ (((\Mux26~0_combout\))))) # (!\Mux0~1_combout\ & (!number(2) & (\Mux0~5_combout\ & \Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => number(2),
	datac => \Mux0~5_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X19_Y1_N0
\Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux26~1_combout\) # ((\Mux23~2_combout\ & (SCANLINE(2) & SCANLINE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~1_combout\,
	datab => \Mux23~2_combout\,
	datac => SCANLINE(2),
	datad => SCANLINE(1),
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X20_Y1_N22
\Mux21~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (!number(0) & (number(2) & !number(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datac => number(2),
	datad => number(1),
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X20_Y1_N24
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (number(0) & (!SCANLINE(0) & (number(2) $ (number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => number(2),
	datac => SCANLINE(0),
	datad => number(1),
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X20_Y1_N6
\Mux27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux0~3_combout\ & ((\Mux21~0_combout\) # ((\Mux11~0_combout\ & \Mux0~5_combout\)))) # (!\Mux0~3_combout\ & (((\Mux11~0_combout\ & \Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux21~0_combout\,
	datac => \Mux11~0_combout\,
	datad => \Mux0~5_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X20_Y1_N20
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (!SCANLINE(1) & (SCANLINE(2) & SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => SCANLINE(2),
	datac => SCANLINE(0),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X20_Y1_N10
\Mux24~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (!number(0) & (!number(2) & (SCANLINE(2) & !number(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => number(2),
	datac => SCANLINE(2),
	datad => number(1),
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X21_Y1_N30
\Mux24~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (SCANLINE(1) & (((!SCANLINE(2))))) # (!SCANLINE(1) & ((\Mux24~2_combout\) # ((!SCANLINE(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X21_Y1_N24
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (SCANLINE(1) & (SCANLINE(0) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X19_Y1_N12
\Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (number(0) & (!SCANLINE(0) & (number(2) $ (!number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(2),
	datab => number(0),
	datac => SCANLINE(0),
	datad => number(1),
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X19_Y1_N14
\Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux19~0_combout\ & ((SCANLINE(2) & (SCANLINE(1) & !SCANLINE(0))) # (!SCANLINE(2) & ((SCANLINE(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => SCANLINE(1),
	datac => SCANLINE(2),
	datad => SCANLINE(0),
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X20_Y1_N8
\Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux22~0_combout\) # ((\Mux0~7_combout\ & ((number(0)) # (number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~0_combout\,
	datab => \Mux0~7_combout\,
	datac => number(0),
	datad => number(1),
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X19_Y1_N6
\Mux22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~1_combout\) # ((!SCANLINE(1) & ((\Mux22~2_combout\) # (!SCANLINE(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux22~2_combout\,
	datab => SCANLINE(1),
	datac => SCANLINE(2),
	datad => \Mux22~1_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X20_Y1_N0
\Mux23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (!SCANLINE(0) & ((number(2) & ((!number(1)))) # (!number(2) & (number(0) & number(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number(0),
	datab => number(2),
	datac => SCANLINE(0),
	datad => number(1),
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X20_Y1_N18
\Mux21~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux0~5_combout\ & ((\Mux23~3_combout\) # ((\Mux21~0_combout\ & \Mux0~7_combout\)))) # (!\Mux0~5_combout\ & (\Mux21~0_combout\ & ((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux21~0_combout\,
	datac => \Mux23~3_combout\,
	datad => \Mux0~7_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X21_Y1_N22
\Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (SCANLINE(1) & (!SCANLINE(0) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X21_Y1_N28
\Mux0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (!SCANLINE(1) & (!SCANLINE(0) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~9_combout\);

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


