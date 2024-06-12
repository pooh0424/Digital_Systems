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

-- DATE "05/30/2024 16:22:09"

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

ENTITY 	Lab13_1 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	HEX3 : OUT std_logic_vector(0 TO 6)
	);
END Lab13_1;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab13_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \LEDG[8]~output_o\ : std_logic;
SIGNAL \LEDG[9]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Tstep_D.T1~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Tstep_Q.T1~q\ : std_logic;
SIGNAL \Tstep_D.T2~0_combout\ : std_logic;
SIGNAL \Tstep_Q.T2~q\ : std_logic;
SIGNAL \Tstep_Q.T3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Tstep_Q.T0~q\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Ain~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \BusWires[0]~2_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \BusWires[0]~3_combout\ : std_logic;
SIGNAL \BusWires[0]~64_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \reg_4|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \BusWires[0]~4_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \BusWires[0]~5_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \BusWires[0]~6_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \reg_7|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Equal7~1_combout\ : std_logic;
SIGNAL \BusWires[0]~7_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \BusWires[0]~8_combout\ : std_logic;
SIGNAL \BusWires[0]~9_combout\ : std_logic;
SIGNAL \reg_A|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reg_G|Q[0]~10_cout\ : std_logic;
SIGNAL \reg_G|Q[0]~11_combout\ : std_logic;
SIGNAL \BusWires[0]~10_combout\ : std_logic;
SIGNAL \BusWires[0]~11_combout\ : std_logic;
SIGNAL \BusWires[0]~12_combout\ : std_logic;
SIGNAL \BusWires[0]~13_combout\ : std_logic;
SIGNAL \BusWires[0]~14_combout\ : std_logic;
SIGNAL \BusWires[0]~15_combout\ : std_logic;
SIGNAL \reg_2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg_5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \reg_A|Q[1]~feeder_combout\ : std_logic;
SIGNAL \reg_G|Q[0]~12\ : std_logic;
SIGNAL \reg_G|Q[1]~13_combout\ : std_logic;
SIGNAL \BusWires[1]~16_combout\ : std_logic;
SIGNAL \BusWires[1]~17_combout\ : std_logic;
SIGNAL \BusWires[1]~18_combout\ : std_logic;
SIGNAL \BusWires[1]~19_combout\ : std_logic;
SIGNAL \BusWires[1]~20_combout\ : std_logic;
SIGNAL \BusWires[1]~21_combout\ : std_logic;
SIGNAL \reg_1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg_4|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg_7|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg_A|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \reg_G|Q[1]~14\ : std_logic;
SIGNAL \reg_G|Q[2]~15_combout\ : std_logic;
SIGNAL \BusWires[2]~22_combout\ : std_logic;
SIGNAL \BusWires[2]~23_combout\ : std_logic;
SIGNAL \BusWires[2]~24_combout\ : std_logic;
SIGNAL \BusWires[2]~25_combout\ : std_logic;
SIGNAL \BusWires[2]~26_combout\ : std_logic;
SIGNAL \BusWires[2]~27_combout\ : std_logic;
SIGNAL \reg_2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg_5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \reg_A|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg_G|Q[2]~16\ : std_logic;
SIGNAL \reg_G|Q[3]~17_combout\ : std_logic;
SIGNAL \BusWires[3]~28_combout\ : std_logic;
SIGNAL \BusWires[3]~29_combout\ : std_logic;
SIGNAL \BusWires[3]~30_combout\ : std_logic;
SIGNAL \BusWires[3]~31_combout\ : std_logic;
SIGNAL \BusWires[3]~32_combout\ : std_logic;
SIGNAL \BusWires[3]~33_combout\ : std_logic;
SIGNAL \reg_1|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg_4|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg_7|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg_A|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \reg_G|Q[3]~18\ : std_logic;
SIGNAL \reg_G|Q[4]~19_combout\ : std_logic;
SIGNAL \BusWires[4]~34_combout\ : std_logic;
SIGNAL \BusWires[4]~35_combout\ : std_logic;
SIGNAL \BusWires[4]~36_combout\ : std_logic;
SIGNAL \BusWires[4]~37_combout\ : std_logic;
SIGNAL \BusWires[4]~38_combout\ : std_logic;
SIGNAL \BusWires[4]~39_combout\ : std_logic;
SIGNAL \reg_5|Q[5]~feeder_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \reg_A|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg_G|Q[4]~20\ : std_logic;
SIGNAL \reg_G|Q[5]~21_combout\ : std_logic;
SIGNAL \reg_6|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg_7|Q[5]~feeder_combout\ : std_logic;
SIGNAL \BusWires[5]~40_combout\ : std_logic;
SIGNAL \BusWires[5]~41_combout\ : std_logic;
SIGNAL \BusWires[5]~42_combout\ : std_logic;
SIGNAL \BusWires[5]~43_combout\ : std_logic;
SIGNAL \BusWires[5]~44_combout\ : std_logic;
SIGNAL \BusWires[5]~45_combout\ : std_logic;
SIGNAL \reg_1|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_7|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_6|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_A|Q[6]~feeder_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \reg_G|Q[5]~22\ : std_logic;
SIGNAL \reg_G|Q[6]~23_combout\ : std_logic;
SIGNAL \BusWires[6]~46_combout\ : std_logic;
SIGNAL \BusWires[6]~47_combout\ : std_logic;
SIGNAL \BusWires[6]~48_combout\ : std_logic;
SIGNAL \BusWires[6]~49_combout\ : std_logic;
SIGNAL \BusWires[6]~50_combout\ : std_logic;
SIGNAL \BusWires[6]~51_combout\ : std_logic;
SIGNAL \reg_2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \reg_A|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg_G|Q[6]~24\ : std_logic;
SIGNAL \reg_G|Q[7]~25_combout\ : std_logic;
SIGNAL \reg_6|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg_7|Q[7]~feeder_combout\ : std_logic;
SIGNAL \BusWires[7]~52_combout\ : std_logic;
SIGNAL \BusWires[7]~53_combout\ : std_logic;
SIGNAL \BusWires[7]~54_combout\ : std_logic;
SIGNAL \BusWires[7]~55_combout\ : std_logic;
SIGNAL \BusWires[7]~56_combout\ : std_logic;
SIGNAL \BusWires[7]~57_combout\ : std_logic;
SIGNAL \reg_1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg_4|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg_7|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg_A|Q[8]~feeder_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \reg_G|Q[7]~26\ : std_logic;
SIGNAL \reg_G|Q[8]~27_combout\ : std_logic;
SIGNAL \BusWires[8]~58_combout\ : std_logic;
SIGNAL \BusWires[8]~59_combout\ : std_logic;
SIGNAL \BusWires[8]~60_combout\ : std_logic;
SIGNAL \BusWires[8]~61_combout\ : std_logic;
SIGNAL \BusWires[8]~62_combout\ : std_logic;
SIGNAL \BusWires[8]~63_combout\ : std_logic;
SIGNAL \HEX3~0_combout\ : std_logic;
SIGNAL \Done~0_combout\ : std_logic;
SIGNAL \reg_0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_IR|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_A|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_G|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Done~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tstep_Q.T0~q\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Done~0_combout\ <= NOT \Done~0_combout\;
\ALT_INV_Tstep_Q.T0~q\ <= NOT \Tstep_Q.T0~q\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[0]~15_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[1]~21_combout\,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[2]~27_combout\,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[3]~33_combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[4]~39_combout\,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[5]~45_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[6]~51_combout\,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[7]~57_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[8]~63_combout\,
	devoe => ww_devoe,
	o => \LEDG[8]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Selector17~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[9]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\HEX3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tstep_Q.T0~q\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Done~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tstep_Q.T1~q\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\HEX3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tstep_Q.T2~q\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\HEX3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Tstep_Q.T1~q\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N1
\SW[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X5_Y22_N23
\reg_IR|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(8));

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X5_Y22_N15
\reg_IR|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(7));

-- Location: LCCOMB_X5_Y22_N28
\Tstep_D.T1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Tstep_D.T1~0_combout\ = (\SW[9]~input_o\ & !\Tstep_Q.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datad => \Tstep_Q.T0~q\,
	combout => \Tstep_D.T1~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: FF_X5_Y22_N29
\Tstep_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Tstep_D.T1~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T1~q\);

-- Location: LCCOMB_X5_Y22_N4
\Tstep_D.T2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Tstep_D.T2~0_combout\ = (!\Tstep_Q.T3~q\ & (\Tstep_Q.T1~q\ & ((\reg_IR|Q\(8)) # (\reg_IR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T3~q\,
	datab => \reg_IR|Q\(8),
	datac => \reg_IR|Q\(7),
	datad => \Tstep_Q.T1~q\,
	combout => \Tstep_D.T2~0_combout\);

-- Location: FF_X5_Y22_N5
\Tstep_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Tstep_D.T2~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T2~q\);

-- Location: FF_X5_Y22_N7
\Tstep_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \Tstep_Q.T2~q\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T3~q\);

-- Location: LCCOMB_X5_Y22_N22
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Tstep_Q.T1~q\ & ((\Tstep_Q.T3~q\) # ((!\reg_IR|Q\(7) & !\reg_IR|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(7),
	datab => \Tstep_Q.T3~q\,
	datac => \reg_IR|Q\(8),
	datad => \Tstep_Q.T1~q\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X5_Y22_N18
\Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (!\Tstep_Q.T3~q\ & (!\Selector0~0_combout\ & ((\SW[9]~input_o\) # (\Tstep_Q.T0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \Tstep_Q.T3~q\,
	datac => \Tstep_Q.T0~q\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X5_Y22_N19
\Tstep_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Selector0~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T0~q\);

-- Location: FF_X4_Y22_N15
\reg_IR|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(1));

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X4_Y22_N3
\reg_IR|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(2));

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X5_Y22_N27
\reg_IR|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(3));

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X5_Y22_N17
\reg_IR|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(4));

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X5_Y22_N9
\reg_IR|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(5));

-- Location: LCCOMB_X5_Y22_N6
\Ain~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ain~0_combout\ = (\Tstep_Q.T1~q\ & ((\reg_IR|Q\(8)) # (\reg_IR|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(8),
	datab => \reg_IR|Q\(7),
	datad => \Tstep_Q.T1~q\,
	combout => \Ain~0_combout\);

-- Location: LCCOMB_X5_Y22_N8
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\reg_IR|Q\(3) & (\reg_IR|Q\(4) & (!\reg_IR|Q\(5) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Ain~0_combout\,
	combout => \Selector4~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X4_Y22_N21
\reg_IR|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(0));

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X4_Y22_N29
\reg_IR|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \ALT_INV_Tstep_Q.T0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_IR|Q\(6));

-- Location: LCCOMB_X5_Y22_N24
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (!\reg_IR|Q\(7) & (!\reg_IR|Q\(8) & \Tstep_Q.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(7),
	datac => \reg_IR|Q\(8),
	datad => \Tstep_Q.T1~q\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X4_Y22_N28
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\reg_IR|Q\(0) & ((\Tstep_Q.T2~q\) # ((!\reg_IR|Q\(6) & \Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(0),
	datab => \Tstep_Q.T2~q\,
	datac => \reg_IR|Q\(6),
	datad => \Selector17~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X4_Y22_N16
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\reg_IR|Q\(1) & (!\reg_IR|Q\(2) & \Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \Selector4~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X5_Y22_N2
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (!\reg_IR|Q\(5) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Ain~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X4_Y22_N14
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~1_combout\) # ((!\reg_IR|Q\(2) & (!\reg_IR|Q\(1) & \Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \reg_IR|Q\(2),
	datac => \reg_IR|Q\(1),
	datad => \Selector2~0_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X5_Y22_N16
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\reg_IR|Q\(3) & (!\reg_IR|Q\(5) & (\reg_IR|Q\(4) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(5),
	datac => \reg_IR|Q\(4),
	datad => \Ain~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X4_Y22_N20
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\reg_IR|Q\(0) & ((\Tstep_Q.T2~q\) # ((!\reg_IR|Q\(6) & \Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \reg_IR|Q\(6),
	datac => \reg_IR|Q\(0),
	datad => \Selector17~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X4_Y22_N2
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\reg_IR|Q\(1) & (!\reg_IR|Q\(2) & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \Selector3~0_combout\,
	datac => \reg_IR|Q\(2),
	datad => \Selector1~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X3_Y23_N4
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\Selector4~1_combout\ & (\Selector2~2_combout\ & !\Selector3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \Selector2~2_combout\,
	datad => \Selector3~1_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X3_Y22_N14
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\reg_IR|Q\(4) & (\reg_IR|Q\(5) & (\reg_IR|Q\(3) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(4),
	datab => \reg_IR|Q\(5),
	datac => \reg_IR|Q\(3),
	datad => \Ain~0_combout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X3_Y22_N28
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((\reg_IR|Q\(1) & (\reg_IR|Q\(2) & \Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \Selector8~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X5_Y22_N20
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\Tstep_Q.T3~q\ & ((!\Selector17~0_combout\) # (!\reg_IR|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(6),
	datac => \Tstep_Q.T3~q\,
	datad => \Selector17~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X4_Y22_N22
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (!\Selector4~1_combout\ & (!\Selector2~2_combout\ & !\Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Selector4~1_combout\,
	datac => \Selector2~2_combout\,
	datad => \Selector3~1_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X5_Y22_N0
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (\reg_IR|Q\(5) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Ain~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X4_Y22_N30
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((!\reg_IR|Q\(1) & (\reg_IR|Q\(2) & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \Selector5~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X5_Y22_N10
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (\reg_IR|Q\(5) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Ain~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X4_Y22_N0
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((!\reg_IR|Q\(1) & (\reg_IR|Q\(2) & \Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \Selector6~0_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X5_Y22_N12
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (!\reg_IR|Q\(5) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Ain~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X4_Y22_N12
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~1_combout\) # ((!\reg_IR|Q\(1) & (!\reg_IR|Q\(2) & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \Selector1~1_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X5_Y22_N30
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\reg_IR|Q\(3) & (\reg_IR|Q\(4) & (\reg_IR|Q\(5) & \Ain~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Ain~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X4_Y22_N10
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\reg_IR|Q\(1) & (\reg_IR|Q\(2) & \Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \Selector7~0_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X3_Y22_N4
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\Selector5~1_combout\ & (!\Selector6~1_combout\ & (\Selector1~2_combout\ & !\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \Selector1~2_combout\,
	datad => \Selector7~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X2_Y23_N0
\Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\Selector8~1_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~1_combout\,
	datab => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X4_Y22_N4
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\Selector1~2_combout\ & (!\Selector6~1_combout\ & (!\Selector5~1_combout\ & !\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \Selector6~1_combout\,
	datac => \Selector5~1_combout\,
	datad => \Selector7~1_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X3_Y22_N26
\Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (!\Selector8~1_combout\ & (\Equal0~0_combout\ & \Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal7~0_combout\,
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X2_Y23_N30
\BusWires[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~2_combout\ = (\Equal0~3_combout\) # ((\Equal1~0_combout\ & \Equal3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal0~3_combout\,
	datad => \Equal3~0_combout\,
	combout => \BusWires[0]~2_combout\);

-- Location: LCCOMB_X5_Y22_N14
\Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (!\Tstep_Q.T3~q\ & ((\reg_IR|Q\(8)) # ((\reg_IR|Q\(7)) # (!\Tstep_Q.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T3~q\,
	datab => \reg_IR|Q\(8),
	datac => \reg_IR|Q\(7),
	datad => \Tstep_Q.T1~q\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X1_Y23_N28
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (!\reg_IR|Q\(5) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Selector17~1_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X3_Y23_N5
\reg_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~15_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(0));

-- Location: LCCOMB_X1_Y23_N16
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (!\reg_IR|Q\(5) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Selector17~1_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X3_Y23_N15
\reg_0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[0]~15_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(0));

-- Location: LCCOMB_X3_Y22_N8
\BusWires[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~3_combout\ = (\Selector3~1_combout\ & (!\Selector2~2_combout\ & (\Equal3~0_combout\ & !\Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector2~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \BusWires[0]~3_combout\);

-- Location: LCCOMB_X3_Y22_N22
\BusWires[0]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~64_combout\ = (\BusWires[0]~3_combout\) # ((!\Selector8~1_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~1_combout\,
	datab => \BusWires[0]~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \BusWires[0]~64_combout\);

-- Location: LCCOMB_X1_Y23_N26
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\reg_IR|Q\(3) & (\reg_IR|Q\(4) & (!\reg_IR|Q\(5) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Selector17~1_combout\,
	combout => \Selector11~0_combout\);

-- Location: FF_X2_Y23_N25
\reg_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~15_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(0));

-- Location: LCCOMB_X5_Y23_N20
\reg_4|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_4|Q[0]~feeder_combout\ = \BusWires[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[0]~15_combout\,
	combout => \reg_4|Q[0]~feeder_combout\);

-- Location: LCCOMB_X1_Y23_N8
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (\reg_IR|Q\(5) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Selector17~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X5_Y23_N21
\reg_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_4|Q[0]~feeder_combout\,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(0));

-- Location: LCCOMB_X3_Y22_N24
\BusWires[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~4_combout\ = (\Selector5~1_combout\ & (!\Selector7~1_combout\ & (!\Selector6~1_combout\ & !\Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \Selector7~1_combout\,
	datac => \Selector6~1_combout\,
	datad => \Selector8~1_combout\,
	combout => \BusWires[0]~4_combout\);

-- Location: LCCOMB_X3_Y22_N30
\Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (!\Selector3~1_combout\ & (!\Selector2~2_combout\ & (\Equal3~0_combout\ & \Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector2~2_combout\,
	datac => \Equal3~0_combout\,
	datad => \Selector4~1_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X3_Y22_N10
\BusWires[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~5_combout\ = (\Equal3~1_combout\) # ((!\Selector1~2_combout\ & (\BusWires[0]~4_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \BusWires[0]~4_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal0~1_combout\,
	combout => \BusWires[0]~5_combout\);

-- Location: LCCOMB_X1_Y23_N14
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\reg_IR|Q\(3) & (\reg_IR|Q\(4) & (!\reg_IR|Q\(5) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Selector17~1_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X2_Y23_N19
\reg_3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~15_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(0));

-- Location: LCCOMB_X4_Y22_N6
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!\Selector1~2_combout\ & (!\Selector5~1_combout\ & (\Equal0~1_combout\ & !\Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \Selector5~1_combout\,
	datac => \Equal0~1_combout\,
	datad => \Selector8~1_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X3_Y22_N18
\BusWires[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~6_combout\ = (\Equal3~1_combout\) # ((\Selector6~1_combout\ & (!\Selector7~1_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \Selector7~1_combout\,
	datac => \Equal3~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \BusWires[0]~6_combout\);

-- Location: LCCOMB_X1_Y23_N22
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\reg_IR|Q\(3) & (!\reg_IR|Q\(4) & (\reg_IR|Q\(5) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Selector17~1_combout\,
	combout => \Selector14~0_combout\);

-- Location: FF_X3_Y22_N1
\reg_5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~15_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(0));

-- Location: LCCOMB_X1_Y25_N16
\reg_7|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[0]~feeder_combout\ = \BusWires[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[0]~15_combout\,
	combout => \reg_7|Q[0]~feeder_combout\);

-- Location: LCCOMB_X1_Y23_N24
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\reg_IR|Q\(3) & (\reg_IR|Q\(4) & (\reg_IR|Q\(5) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(5),
	datad => \Selector17~1_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X1_Y25_N17
\reg_7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[0]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(0));

-- Location: LCCOMB_X4_Y22_N8
\Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~1_combout\ = (\Equal0~1_combout\ & (\Equal7~0_combout\ & \Selector8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \Selector8~1_combout\,
	combout => \Equal7~1_combout\);

-- Location: LCCOMB_X4_Y22_N18
\BusWires[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~7_combout\ = (\Equal7~1_combout\) # ((\Selector7~1_combout\ & (!\Selector6~1_combout\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \Equal7~1_combout\,
	datad => \Equal6~0_combout\,
	combout => \BusWires[0]~7_combout\);

-- Location: LCCOMB_X5_Y22_N26
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\reg_IR|Q\(5) & (\reg_IR|Q\(4) & (!\reg_IR|Q\(3) & !\Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(5),
	datab => \reg_IR|Q\(4),
	datac => \reg_IR|Q\(3),
	datad => \Selector17~1_combout\,
	combout => \Selector15~0_combout\);

-- Location: FF_X3_Y22_N3
\reg_6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~15_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(0));

-- Location: LCCOMB_X4_Y22_N24
\BusWires[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~8_combout\ = (!\Selector1~2_combout\ & (\Selector7~1_combout\ & (\Equal0~1_combout\ & !\Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~2_combout\,
	datab => \Selector7~1_combout\,
	datac => \Equal0~1_combout\,
	datad => \Selector8~1_combout\,
	combout => \BusWires[0]~8_combout\);

-- Location: LCCOMB_X4_Y22_N26
\BusWires[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~9_combout\ = (\Tstep_Q.T3~q\) # ((!\Selector6~1_combout\ & (!\Selector5~1_combout\ & \BusWires[0]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T3~q\,
	datab => \Selector6~1_combout\,
	datac => \Selector5~1_combout\,
	datad => \BusWires[0]~8_combout\,
	combout => \BusWires[0]~9_combout\);

-- Location: LCCOMB_X5_Y23_N30
\reg_A|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[0]~feeder_combout\ = \BusWires[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[0]~15_combout\,
	combout => \reg_A|Q[0]~feeder_combout\);

-- Location: FF_X5_Y23_N31
\reg_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[0]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(0));

-- Location: LCCOMB_X6_Y22_N0
\Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\reg_IR|Q\(6)) # ((\reg_IR|Q\(8)) # (!\reg_IR|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datac => \reg_IR|Q\(7),
	datad => \reg_IR|Q\(8),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X4_Y23_N28
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \BusWires[0]~15_combout\ $ (((\Tstep_Q.T2~q\ & \Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T2~q\,
	datac => \Mux19~0_combout\,
	datad => \BusWires[0]~15_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X4_Y23_N0
\reg_G|Q[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[0]~10_cout\ = CARRY((\Mux19~0_combout\ & \Tstep_Q.T2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Tstep_Q.T2~q\,
	datad => VCC,
	cout => \reg_G|Q[0]~10_cout\);

-- Location: LCCOMB_X4_Y23_N2
\reg_G|Q[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[0]~11_combout\ = (\reg_A|Q\(0) & ((\Add0~0_combout\ & (\reg_G|Q[0]~10_cout\ & VCC)) # (!\Add0~0_combout\ & (!\reg_G|Q[0]~10_cout\)))) # (!\reg_A|Q\(0) & ((\Add0~0_combout\ & (!\reg_G|Q[0]~10_cout\)) # (!\Add0~0_combout\ & ((\reg_G|Q[0]~10_cout\) 
-- # (GND)))))
-- \reg_G|Q[0]~12\ = CARRY((\reg_A|Q\(0) & (!\Add0~0_combout\ & !\reg_G|Q[0]~10_cout\)) # (!\reg_A|Q\(0) & ((!\reg_G|Q[0]~10_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \reg_G|Q[0]~10_cout\,
	combout => \reg_G|Q[0]~11_combout\,
	cout => \reg_G|Q[0]~12\);

-- Location: FF_X4_Y23_N3
\reg_G|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[0]~11_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(0));

-- Location: LCCOMB_X3_Y22_N12
\BusWires[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~10_combout\ = (\BusWires[0]~9_combout\ & (((\reg_G|Q\(0)) # (\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & (\SW[0]~input_o\ & ((!\BusWires[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \BusWires[0]~9_combout\,
	datac => \reg_G|Q\(0),
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[0]~10_combout\);

-- Location: LCCOMB_X3_Y22_N2
\BusWires[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~11_combout\ = (\BusWires[0]~7_combout\ & ((\BusWires[0]~10_combout\ & ((\reg_6|Q\(0)))) # (!\BusWires[0]~10_combout\ & (\reg_7|Q\(0))))) # (!\BusWires[0]~7_combout\ & (((\BusWires[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(0),
	datab => \BusWires[0]~7_combout\,
	datac => \reg_6|Q\(0),
	datad => \BusWires[0]~10_combout\,
	combout => \BusWires[0]~11_combout\);

-- Location: LCCOMB_X3_Y22_N0
\BusWires[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~12_combout\ = (\BusWires[0]~5_combout\ & (\BusWires[0]~6_combout\)) # (!\BusWires[0]~5_combout\ & ((\BusWires[0]~6_combout\ & (\reg_5|Q\(0))) # (!\BusWires[0]~6_combout\ & ((\BusWires[0]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~5_combout\,
	datab => \BusWires[0]~6_combout\,
	datac => \reg_5|Q\(0),
	datad => \BusWires[0]~11_combout\,
	combout => \BusWires[0]~12_combout\);

-- Location: LCCOMB_X2_Y23_N18
\BusWires[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~13_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[0]~12_combout\ & ((\reg_3|Q\(0)))) # (!\BusWires[0]~12_combout\ & (\reg_4|Q\(0))))) # (!\BusWires[0]~5_combout\ & (((\BusWires[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_4|Q\(0),
	datab => \BusWires[0]~5_combout\,
	datac => \reg_3|Q\(0),
	datad => \BusWires[0]~12_combout\,
	combout => \BusWires[0]~13_combout\);

-- Location: LCCOMB_X2_Y23_N24
\BusWires[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~14_combout\ = (\BusWires[0]~2_combout\ & (\BusWires[0]~64_combout\)) # (!\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\ & (\reg_2|Q\(0))) # (!\BusWires[0]~64_combout\ & ((\BusWires[0]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_2|Q\(0),
	datad => \BusWires[0]~13_combout\,
	combout => \BusWires[0]~14_combout\);

-- Location: LCCOMB_X3_Y23_N14
\BusWires[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~15_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[0]~14_combout\ & ((\reg_0|Q\(0)))) # (!\BusWires[0]~14_combout\ & (\reg_1|Q\(0))))) # (!\BusWires[0]~2_combout\ & (((\BusWires[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \reg_1|Q\(0),
	datac => \reg_0|Q\(0),
	datad => \BusWires[0]~14_combout\,
	combout => \BusWires[0]~15_combout\);

-- Location: LCCOMB_X2_Y23_N16
\reg_2|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[1]~feeder_combout\ = \BusWires[1]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[1]~21_combout\,
	combout => \reg_2|Q[1]~feeder_combout\);

-- Location: FF_X2_Y23_N17
\reg_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[1]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(1));

-- Location: FF_X3_Y23_N19
\reg_0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[1]~21_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(1));

-- Location: FF_X3_Y23_N17
\reg_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~21_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(1));

-- Location: LCCOMB_X2_Y24_N20
\reg_5|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_5|Q[1]~feeder_combout\ = \BusWires[1]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[1]~21_combout\,
	combout => \reg_5|Q[1]~feeder_combout\);

-- Location: FF_X2_Y24_N21
\reg_5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_5|Q[1]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(1));

-- Location: FF_X2_Y23_N11
\reg_3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~21_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(1));

-- Location: FF_X2_Y22_N1
\reg_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~21_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(1));

-- Location: LCCOMB_X3_Y23_N26
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \BusWires[1]~21_combout\ $ (((\Tstep_Q.T2~q\ & \Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T2~q\,
	datac => \Mux19~0_combout\,
	datad => \BusWires[1]~21_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X3_Y24_N14
\reg_A|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[1]~feeder_combout\ = \BusWires[1]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[1]~21_combout\,
	combout => \reg_A|Q[1]~feeder_combout\);

-- Location: FF_X3_Y24_N15
\reg_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[1]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(1));

-- Location: LCCOMB_X4_Y23_N4
\reg_G|Q[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[1]~13_combout\ = ((\Add0~1_combout\ $ (\reg_A|Q\(1) $ (!\reg_G|Q[0]~12\)))) # (GND)
-- \reg_G|Q[1]~14\ = CARRY((\Add0~1_combout\ & ((\reg_A|Q\(1)) # (!\reg_G|Q[0]~12\))) # (!\Add0~1_combout\ & (\reg_A|Q\(1) & !\reg_G|Q[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \reg_A|Q\(1),
	datad => VCC,
	cin => \reg_G|Q[0]~12\,
	combout => \reg_G|Q[1]~13_combout\,
	cout => \reg_G|Q[1]~14\);

-- Location: FF_X4_Y23_N5
\reg_G|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[1]~13_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(1));

-- Location: FF_X1_Y22_N11
\reg_6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~21_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(1));

-- Location: FF_X1_Y22_N13
\reg_7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~21_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(1));

-- Location: LCCOMB_X1_Y22_N12
\BusWires[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~16_combout\ = (\BusWires[0]~9_combout\ & (((\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & ((\BusWires[0]~7_combout\ & ((\reg_7|Q\(1)))) # (!\BusWires[0]~7_combout\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~9_combout\,
	datab => \SW[1]~input_o\,
	datac => \reg_7|Q\(1),
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[1]~16_combout\);

-- Location: LCCOMB_X1_Y22_N10
\BusWires[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~17_combout\ = (\BusWires[0]~9_combout\ & ((\BusWires[1]~16_combout\ & ((\reg_6|Q\(1)))) # (!\BusWires[1]~16_combout\ & (\reg_G|Q\(1))))) # (!\BusWires[0]~9_combout\ & (((\BusWires[1]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~9_combout\,
	datab => \reg_G|Q\(1),
	datac => \reg_6|Q\(1),
	datad => \BusWires[1]~16_combout\,
	combout => \BusWires[1]~17_combout\);

-- Location: LCCOMB_X2_Y22_N0
\BusWires[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~18_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[0]~6_combout\) # ((\reg_4|Q\(1))))) # (!\BusWires[0]~5_combout\ & (!\BusWires[0]~6_combout\ & ((\BusWires[1]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~5_combout\,
	datab => \BusWires[0]~6_combout\,
	datac => \reg_4|Q\(1),
	datad => \BusWires[1]~17_combout\,
	combout => \BusWires[1]~18_combout\);

-- Location: LCCOMB_X2_Y23_N10
\BusWires[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~19_combout\ = (\BusWires[0]~6_combout\ & ((\BusWires[1]~18_combout\ & ((\reg_3|Q\(1)))) # (!\BusWires[1]~18_combout\ & (\reg_5|Q\(1))))) # (!\BusWires[0]~6_combout\ & (((\BusWires[1]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~6_combout\,
	datab => \reg_5|Q\(1),
	datac => \reg_3|Q\(1),
	datad => \BusWires[1]~18_combout\,
	combout => \BusWires[1]~19_combout\);

-- Location: LCCOMB_X3_Y23_N16
\BusWires[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~20_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\) # ((\reg_1|Q\(1))))) # (!\BusWires[0]~2_combout\ & (!\BusWires[0]~64_combout\ & ((\BusWires[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_1|Q\(1),
	datad => \BusWires[1]~19_combout\,
	combout => \BusWires[1]~20_combout\);

-- Location: LCCOMB_X3_Y23_N18
\BusWires[1]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~21_combout\ = (\BusWires[0]~64_combout\ & ((\BusWires[1]~20_combout\ & ((\reg_0|Q\(1)))) # (!\BusWires[1]~20_combout\ & (\reg_2|Q\(1))))) # (!\BusWires[0]~64_combout\ & (((\BusWires[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(1),
	datab => \BusWires[0]~64_combout\,
	datac => \reg_0|Q\(1),
	datad => \BusWires[1]~20_combout\,
	combout => \BusWires[1]~21_combout\);

-- Location: LCCOMB_X3_Y23_N28
\reg_1|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_1|Q[2]~feeder_combout\ = \BusWires[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[2]~27_combout\,
	combout => \reg_1|Q[2]~feeder_combout\);

-- Location: FF_X3_Y23_N29
\reg_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_1|Q[2]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(2));

-- Location: FF_X3_Y23_N31
\reg_0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[2]~27_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(2));

-- Location: FF_X2_Y23_N9
\reg_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~27_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(2));

-- Location: LCCOMB_X1_Y24_N8
\reg_4|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_4|Q[2]~feeder_combout\ = \BusWires[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[2]~27_combout\,
	combout => \reg_4|Q[2]~feeder_combout\);

-- Location: FF_X1_Y24_N9
\reg_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_4|Q[2]~feeder_combout\,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(2));

-- Location: FF_X2_Y23_N7
\reg_3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~27_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(2));

-- Location: FF_X3_Y22_N17
\reg_5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~27_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(2));

-- Location: LCCOMB_X1_Y25_N18
\reg_7|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[2]~feeder_combout\ = \BusWires[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[2]~27_combout\,
	combout => \reg_7|Q[2]~feeder_combout\);

-- Location: FF_X1_Y25_N19
\reg_7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[2]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(2));

-- Location: FF_X3_Y22_N21
\reg_6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~27_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(2));

-- Location: LCCOMB_X5_Y23_N8
\reg_A|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[2]~feeder_combout\ = \BusWires[2]~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[2]~27_combout\,
	combout => \reg_A|Q[2]~feeder_combout\);

-- Location: FF_X5_Y23_N9
\reg_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[2]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(2));

-- Location: LCCOMB_X4_Y23_N24
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \BusWires[2]~27_combout\ $ (((\Mux19~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Tstep_Q.T2~q\,
	datad => \BusWires[2]~27_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X4_Y23_N6
\reg_G|Q[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[2]~15_combout\ = (\reg_A|Q\(2) & ((\Add0~2_combout\ & (\reg_G|Q[1]~14\ & VCC)) # (!\Add0~2_combout\ & (!\reg_G|Q[1]~14\)))) # (!\reg_A|Q\(2) & ((\Add0~2_combout\ & (!\reg_G|Q[1]~14\)) # (!\Add0~2_combout\ & ((\reg_G|Q[1]~14\) # (GND)))))
-- \reg_G|Q[2]~16\ = CARRY((\reg_A|Q\(2) & (!\Add0~2_combout\ & !\reg_G|Q[1]~14\)) # (!\reg_A|Q\(2) & ((!\reg_G|Q[1]~14\) # (!\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(2),
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \reg_G|Q[1]~14\,
	combout => \reg_G|Q[2]~15_combout\,
	cout => \reg_G|Q[2]~16\);

-- Location: FF_X4_Y23_N7
\reg_G|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[2]~15_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(2));

-- Location: LCCOMB_X3_Y22_N6
\BusWires[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~22_combout\ = (\BusWires[0]~9_combout\ & (((\reg_G|Q\(2)) # (\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & (\SW[2]~input_o\ & ((!\BusWires[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \BusWires[0]~9_combout\,
	datac => \reg_G|Q\(2),
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[2]~22_combout\);

-- Location: LCCOMB_X3_Y22_N20
\BusWires[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~23_combout\ = (\BusWires[0]~7_combout\ & ((\BusWires[2]~22_combout\ & ((\reg_6|Q\(2)))) # (!\BusWires[2]~22_combout\ & (\reg_7|Q\(2))))) # (!\BusWires[0]~7_combout\ & (((\BusWires[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(2),
	datab => \BusWires[0]~7_combout\,
	datac => \reg_6|Q\(2),
	datad => \BusWires[2]~22_combout\,
	combout => \BusWires[2]~23_combout\);

-- Location: LCCOMB_X3_Y22_N16
\BusWires[2]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~24_combout\ = (\BusWires[0]~5_combout\ & (\BusWires[0]~6_combout\)) # (!\BusWires[0]~5_combout\ & ((\BusWires[0]~6_combout\ & (\reg_5|Q\(2))) # (!\BusWires[0]~6_combout\ & ((\BusWires[2]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~5_combout\,
	datab => \BusWires[0]~6_combout\,
	datac => \reg_5|Q\(2),
	datad => \BusWires[2]~23_combout\,
	combout => \BusWires[2]~24_combout\);

-- Location: LCCOMB_X2_Y23_N6
\BusWires[2]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~25_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[2]~24_combout\ & ((\reg_3|Q\(2)))) # (!\BusWires[2]~24_combout\ & (\reg_4|Q\(2))))) # (!\BusWires[0]~5_combout\ & (((\BusWires[2]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_4|Q\(2),
	datab => \BusWires[0]~5_combout\,
	datac => \reg_3|Q\(2),
	datad => \BusWires[2]~24_combout\,
	combout => \BusWires[2]~25_combout\);

-- Location: LCCOMB_X2_Y23_N8
\BusWires[2]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~26_combout\ = (\BusWires[0]~2_combout\ & (\BusWires[0]~64_combout\)) # (!\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\ & (\reg_2|Q\(2))) # (!\BusWires[0]~64_combout\ & ((\BusWires[2]~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_2|Q\(2),
	datad => \BusWires[2]~25_combout\,
	combout => \BusWires[2]~26_combout\);

-- Location: LCCOMB_X3_Y23_N30
\BusWires[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~27_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[2]~26_combout\ & ((\reg_0|Q\(2)))) # (!\BusWires[2]~26_combout\ & (\reg_1|Q\(2))))) # (!\BusWires[0]~2_combout\ & (((\BusWires[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \reg_1|Q\(2),
	datac => \reg_0|Q\(2),
	datad => \BusWires[2]~26_combout\,
	combout => \BusWires[2]~27_combout\);

-- Location: LCCOMB_X2_Y23_N4
\reg_2|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[3]~feeder_combout\ = \BusWires[3]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[3]~33_combout\,
	combout => \reg_2|Q[3]~feeder_combout\);

-- Location: FF_X2_Y23_N5
\reg_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[3]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(3));

-- Location: FF_X3_Y23_N13
\reg_0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[3]~33_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(3));

-- Location: FF_X3_Y23_N1
\reg_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~33_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(3));

-- Location: FF_X4_Y23_N25
\reg_3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~33_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(3));

-- Location: LCCOMB_X3_Y24_N12
\reg_5|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_5|Q[3]~feeder_combout\ = \BusWires[3]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[3]~33_combout\,
	combout => \reg_5|Q[3]~feeder_combout\);

-- Location: FF_X3_Y24_N13
\reg_5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_5|Q[3]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(3));

-- Location: FF_X2_Y22_N23
\reg_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~33_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(3));

-- Location: LCCOMB_X4_Y23_N22
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \BusWires[3]~33_combout\ $ (((\Tstep_Q.T2~q\ & \Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T2~q\,
	datac => \Mux19~0_combout\,
	datad => \BusWires[3]~33_combout\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X5_Y23_N2
\reg_A|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[3]~feeder_combout\ = \BusWires[3]~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[3]~33_combout\,
	combout => \reg_A|Q[3]~feeder_combout\);

-- Location: FF_X5_Y23_N3
\reg_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[3]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(3));

-- Location: LCCOMB_X4_Y23_N8
\reg_G|Q[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[3]~17_combout\ = ((\Add0~3_combout\ $ (\reg_A|Q\(3) $ (!\reg_G|Q[2]~16\)))) # (GND)
-- \reg_G|Q[3]~18\ = CARRY((\Add0~3_combout\ & ((\reg_A|Q\(3)) # (!\reg_G|Q[2]~16\))) # (!\Add0~3_combout\ & (\reg_A|Q\(3) & !\reg_G|Q[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \reg_A|Q\(3),
	datad => VCC,
	cin => \reg_G|Q[2]~16\,
	combout => \reg_G|Q[3]~17_combout\,
	cout => \reg_G|Q[3]~18\);

-- Location: FF_X4_Y23_N9
\reg_G|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[3]~17_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(3));

-- Location: FF_X1_Y22_N15
\reg_6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~33_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(3));

-- Location: FF_X1_Y22_N1
\reg_7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~33_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(3));

-- Location: LCCOMB_X1_Y22_N0
\BusWires[3]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~28_combout\ = (\BusWires[0]~9_combout\ & (((\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & ((\BusWires[0]~7_combout\ & ((\reg_7|Q\(3)))) # (!\BusWires[0]~7_combout\ & (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \BusWires[0]~9_combout\,
	datac => \reg_7|Q\(3),
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[3]~28_combout\);

-- Location: LCCOMB_X1_Y22_N14
\BusWires[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~29_combout\ = (\BusWires[0]~9_combout\ & ((\BusWires[3]~28_combout\ & ((\reg_6|Q\(3)))) # (!\BusWires[3]~28_combout\ & (\reg_G|Q\(3))))) # (!\BusWires[0]~9_combout\ & (((\BusWires[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~9_combout\,
	datab => \reg_G|Q\(3),
	datac => \reg_6|Q\(3),
	datad => \BusWires[3]~28_combout\,
	combout => \BusWires[3]~29_combout\);

-- Location: LCCOMB_X2_Y22_N22
\BusWires[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~30_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[0]~6_combout\) # ((\reg_4|Q\(3))))) # (!\BusWires[0]~5_combout\ & (!\BusWires[0]~6_combout\ & ((\BusWires[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~5_combout\,
	datab => \BusWires[0]~6_combout\,
	datac => \reg_4|Q\(3),
	datad => \BusWires[3]~29_combout\,
	combout => \BusWires[3]~30_combout\);

-- Location: LCCOMB_X3_Y23_N10
\BusWires[3]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~31_combout\ = (\BusWires[0]~6_combout\ & ((\BusWires[3]~30_combout\ & (\reg_3|Q\(3))) # (!\BusWires[3]~30_combout\ & ((\reg_5|Q\(3)))))) # (!\BusWires[0]~6_combout\ & (((\BusWires[3]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~6_combout\,
	datab => \reg_3|Q\(3),
	datac => \reg_5|Q\(3),
	datad => \BusWires[3]~30_combout\,
	combout => \BusWires[3]~31_combout\);

-- Location: LCCOMB_X3_Y23_N0
\BusWires[3]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~32_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\) # ((\reg_1|Q\(3))))) # (!\BusWires[0]~2_combout\ & (!\BusWires[0]~64_combout\ & ((\BusWires[3]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_1|Q\(3),
	datad => \BusWires[3]~31_combout\,
	combout => \BusWires[3]~32_combout\);

-- Location: LCCOMB_X3_Y23_N12
\BusWires[3]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~33_combout\ = (\BusWires[0]~64_combout\ & ((\BusWires[3]~32_combout\ & ((\reg_0|Q\(3)))) # (!\BusWires[3]~32_combout\ & (\reg_2|Q\(3))))) # (!\BusWires[0]~64_combout\ & (((\BusWires[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(3),
	datab => \BusWires[0]~64_combout\,
	datac => \reg_0|Q\(3),
	datad => \BusWires[3]~32_combout\,
	combout => \BusWires[3]~33_combout\);

-- Location: LCCOMB_X3_Y23_N22
\reg_1|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_1|Q[4]~feeder_combout\ = \BusWires[4]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[4]~39_combout\,
	combout => \reg_1|Q[4]~feeder_combout\);

-- Location: FF_X3_Y23_N23
\reg_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_1|Q[4]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(4));

-- Location: FF_X3_Y23_N21
\reg_0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[4]~39_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(4));

-- Location: FF_X2_Y23_N15
\reg_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~39_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(4));

-- Location: LCCOMB_X5_Y23_N14
\reg_4|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_4|Q[4]~feeder_combout\ = \BusWires[4]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[4]~39_combout\,
	combout => \reg_4|Q[4]~feeder_combout\);

-- Location: FF_X5_Y23_N15
\reg_4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_4|Q[4]~feeder_combout\,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(4));

-- Location: FF_X2_Y23_N13
\reg_3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~39_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(4));

-- Location: FF_X2_Y22_N17
\reg_5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~39_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(4));

-- Location: LCCOMB_X1_Y22_N4
\reg_7|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[4]~feeder_combout\ = \BusWires[4]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[4]~39_combout\,
	combout => \reg_7|Q[4]~feeder_combout\);

-- Location: FF_X1_Y22_N5
\reg_7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[4]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(4));

-- Location: FF_X1_Y22_N9
\reg_6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~39_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(4));

-- Location: LCCOMB_X5_Y23_N4
\reg_A|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[4]~feeder_combout\ = \BusWires[4]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[4]~39_combout\,
	combout => \reg_A|Q[4]~feeder_combout\);

-- Location: FF_X5_Y23_N5
\reg_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[4]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(4));

-- Location: LCCOMB_X4_Y23_N20
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \BusWires[4]~39_combout\ $ (((\Tstep_Q.T2~q\ & \Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T2~q\,
	datac => \Mux19~0_combout\,
	datad => \BusWires[4]~39_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X4_Y23_N10
\reg_G|Q[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[4]~19_combout\ = (\reg_A|Q\(4) & ((\Add0~4_combout\ & (\reg_G|Q[3]~18\ & VCC)) # (!\Add0~4_combout\ & (!\reg_G|Q[3]~18\)))) # (!\reg_A|Q\(4) & ((\Add0~4_combout\ & (!\reg_G|Q[3]~18\)) # (!\Add0~4_combout\ & ((\reg_G|Q[3]~18\) # (GND)))))
-- \reg_G|Q[4]~20\ = CARRY((\reg_A|Q\(4) & (!\Add0~4_combout\ & !\reg_G|Q[3]~18\)) # (!\reg_A|Q\(4) & ((!\reg_G|Q[3]~18\) # (!\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(4),
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \reg_G|Q[3]~18\,
	combout => \reg_G|Q[4]~19_combout\,
	cout => \reg_G|Q[4]~20\);

-- Location: FF_X4_Y23_N11
\reg_G|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[4]~19_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(4));

-- Location: LCCOMB_X1_Y22_N2
\BusWires[4]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~34_combout\ = (\BusWires[0]~9_combout\ & ((\reg_G|Q\(4)) # ((\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & (((\SW[4]~input_o\ & !\BusWires[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(4),
	datab => \SW[4]~input_o\,
	datac => \BusWires[0]~9_combout\,
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[4]~34_combout\);

-- Location: LCCOMB_X1_Y22_N8
\BusWires[4]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~35_combout\ = (\BusWires[0]~7_combout\ & ((\BusWires[4]~34_combout\ & ((\reg_6|Q\(4)))) # (!\BusWires[4]~34_combout\ & (\reg_7|Q\(4))))) # (!\BusWires[0]~7_combout\ & (((\BusWires[4]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(4),
	datab => \BusWires[0]~7_combout\,
	datac => \reg_6|Q\(4),
	datad => \BusWires[4]~34_combout\,
	combout => \BusWires[4]~35_combout\);

-- Location: LCCOMB_X2_Y22_N16
\BusWires[4]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~36_combout\ = (\BusWires[0]~6_combout\ & ((\BusWires[0]~5_combout\) # ((\reg_5|Q\(4))))) # (!\BusWires[0]~6_combout\ & (!\BusWires[0]~5_combout\ & ((\BusWires[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~6_combout\,
	datab => \BusWires[0]~5_combout\,
	datac => \reg_5|Q\(4),
	datad => \BusWires[4]~35_combout\,
	combout => \BusWires[4]~36_combout\);

-- Location: LCCOMB_X2_Y23_N12
\BusWires[4]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~37_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[4]~36_combout\ & ((\reg_3|Q\(4)))) # (!\BusWires[4]~36_combout\ & (\reg_4|Q\(4))))) # (!\BusWires[0]~5_combout\ & (((\BusWires[4]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_4|Q\(4),
	datab => \BusWires[0]~5_combout\,
	datac => \reg_3|Q\(4),
	datad => \BusWires[4]~36_combout\,
	combout => \BusWires[4]~37_combout\);

-- Location: LCCOMB_X2_Y23_N14
\BusWires[4]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~38_combout\ = (\BusWires[0]~2_combout\ & (\BusWires[0]~64_combout\)) # (!\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\ & (\reg_2|Q\(4))) # (!\BusWires[0]~64_combout\ & ((\BusWires[4]~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_2|Q\(4),
	datad => \BusWires[4]~37_combout\,
	combout => \BusWires[4]~38_combout\);

-- Location: LCCOMB_X3_Y23_N20
\BusWires[4]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~39_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[4]~38_combout\ & ((\reg_0|Q\(4)))) # (!\BusWires[4]~38_combout\ & (\reg_1|Q\(4))))) # (!\BusWires[0]~2_combout\ & (((\BusWires[4]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \reg_1|Q\(4),
	datac => \reg_0|Q\(4),
	datad => \BusWires[4]~38_combout\,
	combout => \BusWires[4]~39_combout\);

-- Location: FF_X2_Y23_N1
\reg_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~45_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(5));

-- Location: FF_X3_Y23_N25
\reg_0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[5]~45_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(5));

-- Location: FF_X3_Y23_N7
\reg_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~45_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(5));

-- Location: LCCOMB_X3_Y24_N6
\reg_5|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_5|Q[5]~feeder_combout\ = \BusWires[5]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[5]~45_combout\,
	combout => \reg_5|Q[5]~feeder_combout\);

-- Location: FF_X3_Y24_N7
\reg_5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_5|Q[5]~feeder_combout\,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(5));

-- Location: FF_X4_Y23_N27
\reg_3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~45_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(5));

-- Location: FF_X2_Y22_N27
\reg_4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~45_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(5));

-- Location: LCCOMB_X4_Y23_N30
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \BusWires[5]~45_combout\ $ (((\Tstep_Q.T2~q\ & \Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T2~q\,
	datac => \Mux19~0_combout\,
	datad => \BusWires[5]~45_combout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X5_Y23_N18
\reg_A|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[5]~feeder_combout\ = \BusWires[5]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[5]~45_combout\,
	combout => \reg_A|Q[5]~feeder_combout\);

-- Location: FF_X5_Y23_N19
\reg_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[5]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(5));

-- Location: LCCOMB_X4_Y23_N12
\reg_G|Q[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[5]~21_combout\ = ((\Add0~5_combout\ $ (\reg_A|Q\(5) $ (!\reg_G|Q[4]~20\)))) # (GND)
-- \reg_G|Q[5]~22\ = CARRY((\Add0~5_combout\ & ((\reg_A|Q\(5)) # (!\reg_G|Q[4]~20\))) # (!\Add0~5_combout\ & (\reg_A|Q\(5) & !\reg_G|Q[4]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \reg_A|Q\(5),
	datad => VCC,
	cin => \reg_G|Q[4]~20\,
	combout => \reg_G|Q[5]~21_combout\,
	cout => \reg_G|Q[5]~22\);

-- Location: FF_X4_Y23_N13
\reg_G|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[5]~21_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(5));

-- Location: LCCOMB_X1_Y22_N28
\reg_6|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_6|Q[5]~feeder_combout\ = \BusWires[5]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[5]~45_combout\,
	combout => \reg_6|Q[5]~feeder_combout\);

-- Location: FF_X1_Y22_N29
\reg_6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_6|Q[5]~feeder_combout\,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(5));

-- Location: LCCOMB_X1_Y22_N6
\reg_7|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[5]~feeder_combout\ = \BusWires[5]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[5]~45_combout\,
	combout => \reg_7|Q[5]~feeder_combout\);

-- Location: FF_X1_Y22_N7
\reg_7|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[5]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(5));

-- Location: LCCOMB_X2_Y22_N12
\BusWires[5]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~40_combout\ = (\BusWires[0]~9_combout\ & (((\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & ((\BusWires[0]~7_combout\ & ((\reg_7|Q\(5)))) # (!\BusWires[0]~7_combout\ & (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \reg_7|Q\(5),
	datac => \BusWires[0]~9_combout\,
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[5]~40_combout\);

-- Location: LCCOMB_X2_Y22_N6
\BusWires[5]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~41_combout\ = (\BusWires[0]~9_combout\ & ((\BusWires[5]~40_combout\ & ((\reg_6|Q\(5)))) # (!\BusWires[5]~40_combout\ & (\reg_G|Q\(5))))) # (!\BusWires[0]~9_combout\ & (((\BusWires[5]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(5),
	datab => \reg_6|Q\(5),
	datac => \BusWires[0]~9_combout\,
	datad => \BusWires[5]~40_combout\,
	combout => \BusWires[5]~41_combout\);

-- Location: LCCOMB_X2_Y22_N26
\BusWires[5]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~42_combout\ = (\BusWires[0]~6_combout\ & (\BusWires[0]~5_combout\)) # (!\BusWires[0]~6_combout\ & ((\BusWires[0]~5_combout\ & (\reg_4|Q\(5))) # (!\BusWires[0]~5_combout\ & ((\BusWires[5]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~6_combout\,
	datab => \BusWires[0]~5_combout\,
	datac => \reg_4|Q\(5),
	datad => \BusWires[5]~41_combout\,
	combout => \BusWires[5]~42_combout\);

-- Location: LCCOMB_X3_Y24_N4
\BusWires[5]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~43_combout\ = (\BusWires[0]~6_combout\ & ((\BusWires[5]~42_combout\ & ((\reg_3|Q\(5)))) # (!\BusWires[5]~42_combout\ & (\reg_5|Q\(5))))) # (!\BusWires[0]~6_combout\ & (((\BusWires[5]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(5),
	datab => \reg_3|Q\(5),
	datac => \BusWires[0]~6_combout\,
	datad => \BusWires[5]~42_combout\,
	combout => \BusWires[5]~43_combout\);

-- Location: LCCOMB_X3_Y23_N6
\BusWires[5]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~44_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\) # ((\reg_1|Q\(5))))) # (!\BusWires[0]~2_combout\ & (!\BusWires[0]~64_combout\ & ((\BusWires[5]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_1|Q\(5),
	datad => \BusWires[5]~43_combout\,
	combout => \BusWires[5]~44_combout\);

-- Location: LCCOMB_X3_Y23_N24
\BusWires[5]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~45_combout\ = (\BusWires[0]~64_combout\ & ((\BusWires[5]~44_combout\ & ((\reg_0|Q\(5)))) # (!\BusWires[5]~44_combout\ & (\reg_2|Q\(5))))) # (!\BusWires[0]~64_combout\ & (((\BusWires[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(5),
	datab => \BusWires[0]~64_combout\,
	datac => \reg_0|Q\(5),
	datad => \BusWires[5]~44_combout\,
	combout => \BusWires[5]~45_combout\);

-- Location: LCCOMB_X1_Y23_N20
\reg_1|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_1|Q[6]~feeder_combout\ = \BusWires[6]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~51_combout\,
	combout => \reg_1|Q[6]~feeder_combout\);

-- Location: FF_X1_Y23_N21
\reg_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_1|Q[6]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(6));

-- Location: FF_X1_Y23_N11
\reg_0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[6]~51_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(6));

-- Location: FF_X2_Y23_N23
\reg_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~51_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(6));

-- Location: LCCOMB_X5_Y23_N12
\reg_4|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_4|Q[6]~feeder_combout\ = \BusWires[6]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~51_combout\,
	combout => \reg_4|Q[6]~feeder_combout\);

-- Location: FF_X5_Y23_N13
\reg_4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_4|Q[6]~feeder_combout\,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(6));

-- Location: FF_X2_Y23_N21
\reg_3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~51_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(6));

-- Location: FF_X2_Y22_N9
\reg_5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~51_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(6));

-- Location: LCCOMB_X1_Y22_N18
\reg_7|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[6]~feeder_combout\ = \BusWires[6]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~51_combout\,
	combout => \reg_7|Q[6]~feeder_combout\);

-- Location: FF_X1_Y22_N19
\reg_7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[6]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(6));

-- Location: LCCOMB_X1_Y22_N16
\reg_6|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_6|Q[6]~feeder_combout\ = \BusWires[6]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~51_combout\,
	combout => \reg_6|Q[6]~feeder_combout\);

-- Location: FF_X1_Y22_N17
\reg_6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_6|Q[6]~feeder_combout\,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(6));

-- Location: LCCOMB_X1_Y24_N16
\reg_A|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[6]~feeder_combout\ = \BusWires[6]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~51_combout\,
	combout => \reg_A|Q[6]~feeder_combout\);

-- Location: FF_X1_Y24_N17
\reg_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[6]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(6));

-- Location: LCCOMB_X1_Y23_N18
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \BusWires[6]~51_combout\ $ (((\Tstep_Q.T2~q\ & \Mux19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T2~q\,
	datac => \Mux19~0_combout\,
	datad => \BusWires[6]~51_combout\,
	combout => \Add0~6_combout\);

-- Location: LCCOMB_X4_Y23_N14
\reg_G|Q[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[6]~23_combout\ = (\reg_A|Q\(6) & ((\Add0~6_combout\ & (\reg_G|Q[5]~22\ & VCC)) # (!\Add0~6_combout\ & (!\reg_G|Q[5]~22\)))) # (!\reg_A|Q\(6) & ((\Add0~6_combout\ & (!\reg_G|Q[5]~22\)) # (!\Add0~6_combout\ & ((\reg_G|Q[5]~22\) # (GND)))))
-- \reg_G|Q[6]~24\ = CARRY((\reg_A|Q\(6) & (!\Add0~6_combout\ & !\reg_G|Q[5]~22\)) # (!\reg_A|Q\(6) & ((!\reg_G|Q[5]~22\) # (!\Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(6),
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \reg_G|Q[5]~22\,
	combout => \reg_G|Q[6]~23_combout\,
	cout => \reg_G|Q[6]~24\);

-- Location: FF_X4_Y23_N15
\reg_G|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[6]~23_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(6));

-- Location: LCCOMB_X2_Y22_N18
\BusWires[6]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~46_combout\ = (\BusWires[0]~9_combout\ & ((\reg_G|Q\(6)) # ((\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & (((\SW[6]~input_o\ & !\BusWires[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(6),
	datab => \SW[6]~input_o\,
	datac => \BusWires[0]~9_combout\,
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[6]~46_combout\);

-- Location: LCCOMB_X2_Y22_N24
\BusWires[6]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~47_combout\ = (\BusWires[0]~7_combout\ & ((\BusWires[6]~46_combout\ & ((\reg_6|Q\(6)))) # (!\BusWires[6]~46_combout\ & (\reg_7|Q\(6))))) # (!\BusWires[0]~7_combout\ & (((\BusWires[6]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(6),
	datab => \BusWires[0]~7_combout\,
	datac => \reg_6|Q\(6),
	datad => \BusWires[6]~46_combout\,
	combout => \BusWires[6]~47_combout\);

-- Location: LCCOMB_X2_Y22_N8
\BusWires[6]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~48_combout\ = (\BusWires[0]~5_combout\ & (\BusWires[0]~6_combout\)) # (!\BusWires[0]~5_combout\ & ((\BusWires[0]~6_combout\ & (\reg_5|Q\(6))) # (!\BusWires[0]~6_combout\ & ((\BusWires[6]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~5_combout\,
	datab => \BusWires[0]~6_combout\,
	datac => \reg_5|Q\(6),
	datad => \BusWires[6]~47_combout\,
	combout => \BusWires[6]~48_combout\);

-- Location: LCCOMB_X2_Y23_N20
\BusWires[6]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~49_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[6]~48_combout\ & ((\reg_3|Q\(6)))) # (!\BusWires[6]~48_combout\ & (\reg_4|Q\(6))))) # (!\BusWires[0]~5_combout\ & (((\BusWires[6]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_4|Q\(6),
	datab => \BusWires[0]~5_combout\,
	datac => \reg_3|Q\(6),
	datad => \BusWires[6]~48_combout\,
	combout => \BusWires[6]~49_combout\);

-- Location: LCCOMB_X2_Y23_N22
\BusWires[6]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~50_combout\ = (\BusWires[0]~2_combout\ & (\BusWires[0]~64_combout\)) # (!\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\ & (\reg_2|Q\(6))) # (!\BusWires[0]~64_combout\ & ((\BusWires[6]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_2|Q\(6),
	datad => \BusWires[6]~49_combout\,
	combout => \BusWires[6]~50_combout\);

-- Location: LCCOMB_X1_Y23_N10
\BusWires[6]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~51_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[6]~50_combout\ & ((\reg_0|Q\(6)))) # (!\BusWires[6]~50_combout\ & (\reg_1|Q\(6))))) # (!\BusWires[0]~2_combout\ & (((\BusWires[6]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \reg_1|Q\(6),
	datac => \reg_0|Q\(6),
	datad => \BusWires[6]~50_combout\,
	combout => \BusWires[6]~51_combout\);

-- Location: LCCOMB_X2_Y23_N26
\reg_2|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[7]~feeder_combout\ = \BusWires[7]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[7]~57_combout\,
	combout => \reg_2|Q[7]~feeder_combout\);

-- Location: FF_X2_Y23_N27
\reg_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[7]~feeder_combout\,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(7));

-- Location: FF_X3_Y23_N9
\reg_0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[7]~57_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(7));

-- Location: FF_X3_Y23_N3
\reg_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~57_combout\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(7));

-- Location: FF_X2_Y23_N31
\reg_3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~57_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(7));

-- Location: FF_X2_Y22_N11
\reg_5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~57_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(7));

-- Location: FF_X2_Y22_N21
\reg_4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~57_combout\,
	sload => VCC,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(7));

-- Location: LCCOMB_X4_Y23_N26
\Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \BusWires[7]~57_combout\ $ (((\Mux19~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Tstep_Q.T2~q\,
	datad => \BusWires[7]~57_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X5_Y23_N24
\reg_A|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[7]~feeder_combout\ = \BusWires[7]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[7]~57_combout\,
	combout => \reg_A|Q[7]~feeder_combout\);

-- Location: FF_X5_Y23_N25
\reg_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[7]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(7));

-- Location: LCCOMB_X4_Y23_N16
\reg_G|Q[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[7]~25_combout\ = ((\Add0~7_combout\ $ (\reg_A|Q\(7) $ (!\reg_G|Q[6]~24\)))) # (GND)
-- \reg_G|Q[7]~26\ = CARRY((\Add0~7_combout\ & ((\reg_A|Q\(7)) # (!\reg_G|Q[6]~24\))) # (!\Add0~7_combout\ & (\reg_A|Q\(7) & !\reg_G|Q[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \reg_A|Q\(7),
	datad => VCC,
	cin => \reg_G|Q[6]~24\,
	combout => \reg_G|Q[7]~25_combout\,
	cout => \reg_G|Q[7]~26\);

-- Location: FF_X4_Y23_N17
\reg_G|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[7]~25_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(7));

-- Location: LCCOMB_X1_Y22_N24
\reg_6|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_6|Q[7]~feeder_combout\ = \BusWires[7]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[7]~57_combout\,
	combout => \reg_6|Q[7]~feeder_combout\);

-- Location: FF_X1_Y22_N25
\reg_6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_6|Q[7]~feeder_combout\,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(7));

-- Location: LCCOMB_X1_Y22_N22
\reg_7|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[7]~feeder_combout\ = \BusWires[7]~57_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[7]~57_combout\,
	combout => \reg_7|Q[7]~feeder_combout\);

-- Location: FF_X1_Y22_N23
\reg_7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[7]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(7));

-- Location: LCCOMB_X2_Y22_N2
\BusWires[7]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~52_combout\ = (\BusWires[0]~9_combout\ & (((\BusWires[0]~7_combout\)))) # (!\BusWires[0]~9_combout\ & ((\BusWires[0]~7_combout\ & ((\reg_7|Q\(7)))) # (!\BusWires[0]~7_combout\ & (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \reg_7|Q\(7),
	datac => \BusWires[0]~9_combout\,
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[7]~52_combout\);

-- Location: LCCOMB_X2_Y22_N28
\BusWires[7]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~53_combout\ = (\BusWires[0]~9_combout\ & ((\BusWires[7]~52_combout\ & ((\reg_6|Q\(7)))) # (!\BusWires[7]~52_combout\ & (\reg_G|Q\(7))))) # (!\BusWires[0]~9_combout\ & (((\BusWires[7]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(7),
	datab => \reg_6|Q\(7),
	datac => \BusWires[0]~9_combout\,
	datad => \BusWires[7]~52_combout\,
	combout => \BusWires[7]~53_combout\);

-- Location: LCCOMB_X2_Y22_N20
\BusWires[7]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~54_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[0]~6_combout\) # ((\reg_4|Q\(7))))) # (!\BusWires[0]~5_combout\ & (!\BusWires[0]~6_combout\ & ((\BusWires[7]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~5_combout\,
	datab => \BusWires[0]~6_combout\,
	datac => \reg_4|Q\(7),
	datad => \BusWires[7]~53_combout\,
	combout => \BusWires[7]~54_combout\);

-- Location: LCCOMB_X2_Y22_N10
\BusWires[7]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~55_combout\ = (\BusWires[0]~6_combout\ & ((\BusWires[7]~54_combout\ & (\reg_3|Q\(7))) # (!\BusWires[7]~54_combout\ & ((\reg_5|Q\(7)))))) # (!\BusWires[0]~6_combout\ & (((\BusWires[7]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(7),
	datab => \BusWires[0]~6_combout\,
	datac => \reg_5|Q\(7),
	datad => \BusWires[7]~54_combout\,
	combout => \BusWires[7]~55_combout\);

-- Location: LCCOMB_X3_Y23_N2
\BusWires[7]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~56_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\) # ((\reg_1|Q\(7))))) # (!\BusWires[0]~2_combout\ & (!\BusWires[0]~64_combout\ & ((\BusWires[7]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_1|Q\(7),
	datad => \BusWires[7]~55_combout\,
	combout => \BusWires[7]~56_combout\);

-- Location: LCCOMB_X3_Y23_N8
\BusWires[7]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~57_combout\ = (\BusWires[0]~64_combout\ & ((\BusWires[7]~56_combout\ & ((\reg_0|Q\(7)))) # (!\BusWires[7]~56_combout\ & (\reg_2|Q\(7))))) # (!\BusWires[0]~64_combout\ & (((\BusWires[7]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(7),
	datab => \BusWires[0]~64_combout\,
	datac => \reg_0|Q\(7),
	datad => \BusWires[7]~56_combout\,
	combout => \BusWires[7]~57_combout\);

-- Location: LCCOMB_X1_Y23_N0
\reg_1|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_1|Q[8]~feeder_combout\ = \BusWires[8]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[8]~63_combout\,
	combout => \reg_1|Q[8]~feeder_combout\);

-- Location: FF_X1_Y23_N1
\reg_1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_1|Q[8]~feeder_combout\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(8));

-- Location: FF_X1_Y23_N31
\reg_0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[8]~63_combout\,
	ena => \Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(8));

-- Location: FF_X2_Y23_N29
\reg_2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~63_combout\,
	sload => VCC,
	ena => \Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(8));

-- Location: LCCOMB_X1_Y24_N6
\reg_4|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_4|Q[8]~feeder_combout\ = \BusWires[8]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[8]~63_combout\,
	combout => \reg_4|Q[8]~feeder_combout\);

-- Location: FF_X1_Y24_N7
\reg_4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_4|Q[8]~feeder_combout\,
	ena => \Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(8));

-- Location: FF_X2_Y23_N3
\reg_3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~63_combout\,
	sload => VCC,
	ena => \Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(8));

-- Location: FF_X2_Y22_N15
\reg_5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~63_combout\,
	sload => VCC,
	ena => \Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(8));

-- Location: LCCOMB_X1_Y22_N26
\reg_7|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[8]~feeder_combout\ = \BusWires[8]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[8]~63_combout\,
	combout => \reg_7|Q[8]~feeder_combout\);

-- Location: FF_X1_Y22_N27
\reg_7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[8]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(8));

-- Location: FF_X1_Y22_N31
\reg_6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~63_combout\,
	sload => VCC,
	ena => \Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(8));

-- Location: LCCOMB_X5_Y23_N22
\reg_A|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_A|Q[8]~feeder_combout\ = \BusWires[8]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[8]~63_combout\,
	combout => \reg_A|Q[8]~feeder_combout\);

-- Location: FF_X5_Y23_N23
\reg_A|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_A|Q[8]~feeder_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(8));

-- Location: LCCOMB_X1_Y23_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \BusWires[8]~63_combout\ $ (((\Mux19~0_combout\ & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~0_combout\,
	datab => \Tstep_Q.T2~q\,
	datac => \BusWires[8]~63_combout\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X4_Y23_N18
\reg_G|Q[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[8]~27_combout\ = \reg_A|Q\(8) $ (\reg_G|Q[7]~26\ $ (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \reg_A|Q\(8),
	datad => \Add0~8_combout\,
	cin => \reg_G|Q[7]~26\,
	combout => \reg_G|Q[8]~27_combout\);

-- Location: FF_X4_Y23_N19
\reg_G|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[8]~27_combout\,
	ena => \Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(8));

-- Location: LCCOMB_X1_Y22_N20
\BusWires[8]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~58_combout\ = (\BusWires[0]~7_combout\ & (((\BusWires[0]~9_combout\)))) # (!\BusWires[0]~7_combout\ & ((\BusWires[0]~9_combout\ & ((\reg_G|Q\(8)))) # (!\BusWires[0]~9_combout\ & (\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \reg_G|Q\(8),
	datac => \BusWires[0]~7_combout\,
	datad => \BusWires[0]~9_combout\,
	combout => \BusWires[8]~58_combout\);

-- Location: LCCOMB_X1_Y22_N30
\BusWires[8]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~59_combout\ = (\BusWires[0]~7_combout\ & ((\BusWires[8]~58_combout\ & ((\reg_6|Q\(8)))) # (!\BusWires[8]~58_combout\ & (\reg_7|Q\(8))))) # (!\BusWires[0]~7_combout\ & (((\BusWires[8]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(8),
	datab => \BusWires[0]~7_combout\,
	datac => \reg_6|Q\(8),
	datad => \BusWires[8]~58_combout\,
	combout => \BusWires[8]~59_combout\);

-- Location: LCCOMB_X2_Y22_N14
\BusWires[8]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~60_combout\ = (\BusWires[0]~5_combout\ & (\BusWires[0]~6_combout\)) # (!\BusWires[0]~5_combout\ & ((\BusWires[0]~6_combout\ & (\reg_5|Q\(8))) # (!\BusWires[0]~6_combout\ & ((\BusWires[8]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~5_combout\,
	datab => \BusWires[0]~6_combout\,
	datac => \reg_5|Q\(8),
	datad => \BusWires[8]~59_combout\,
	combout => \BusWires[8]~60_combout\);

-- Location: LCCOMB_X2_Y23_N2
\BusWires[8]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~61_combout\ = (\BusWires[0]~5_combout\ & ((\BusWires[8]~60_combout\ & ((\reg_3|Q\(8)))) # (!\BusWires[8]~60_combout\ & (\reg_4|Q\(8))))) # (!\BusWires[0]~5_combout\ & (((\BusWires[8]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_4|Q\(8),
	datab => \BusWires[0]~5_combout\,
	datac => \reg_3|Q\(8),
	datad => \BusWires[8]~60_combout\,
	combout => \BusWires[8]~61_combout\);

-- Location: LCCOMB_X2_Y23_N28
\BusWires[8]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~62_combout\ = (\BusWires[0]~2_combout\ & (\BusWires[0]~64_combout\)) # (!\BusWires[0]~2_combout\ & ((\BusWires[0]~64_combout\ & (\reg_2|Q\(8))) # (!\BusWires[0]~64_combout\ & ((\BusWires[8]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \BusWires[0]~64_combout\,
	datac => \reg_2|Q\(8),
	datad => \BusWires[8]~61_combout\,
	combout => \BusWires[8]~62_combout\);

-- Location: LCCOMB_X1_Y23_N30
\BusWires[8]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~63_combout\ = (\BusWires[0]~2_combout\ & ((\BusWires[8]~62_combout\ & ((\reg_0|Q\(8)))) # (!\BusWires[8]~62_combout\ & (\reg_1|Q\(8))))) # (!\BusWires[0]~2_combout\ & (((\BusWires[8]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~2_combout\,
	datab => \reg_1|Q\(8),
	datac => \reg_0|Q\(8),
	datad => \BusWires[8]~62_combout\,
	combout => \BusWires[8]~63_combout\);

-- Location: LCCOMB_X33_Y26_N24
\HEX3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX3~0_combout\ = (\Tstep_Q.T1~q\) # (!\Tstep_Q.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Tstep_Q.T1~q\,
	datad => \Tstep_Q.T0~q\,
	combout => \HEX3~0_combout\);

-- Location: LCCOMB_X33_Y26_N6
\Done~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Done~0_combout\ = (\Tstep_Q.T2~q\) # (!\Tstep_Q.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T0~q\,
	datad => \Tstep_Q.T2~q\,
	combout => \Done~0_combout\);

-- Location: IOIBUF_X0_Y21_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_LEDG(8) <= \LEDG[8]~output_o\;

ww_LEDG(9) <= \LEDG[9]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;
END structure;


