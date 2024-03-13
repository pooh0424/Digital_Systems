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

-- DATE "03/13/2024 22:54:31"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab4_2 IS
    PORT (
	SW : IN std_logic_vector(5 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	LEDG : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab4_2;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDG : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \HEX0[6]~14_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~0clkctrl_outclk\ : std_logic;
SIGNAL \HEX0[6]$latch~combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \HEX0[5]~15_combout\ : std_logic;
SIGNAL \HEX0[5]$latch~combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \HEX0[4]~16_combout\ : std_logic;
SIGNAL \HEX0[4]$latch~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \HEX0[3]~17_combout\ : std_logic;
SIGNAL \HEX0[3]$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \HEX0[2]~18_combout\ : std_logic;
SIGNAL \HEX0[2]$latch~combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \HEX0[1]~19_combout\ : std_logic;
SIGNAL \HEX0[1]$latch~combout\ : std_logic;
SIGNAL \HEX0[0]~12_combout\ : std_logic;
SIGNAL \HEX0[0]~13_combout\ : std_logic;
SIGNAL \HEX0[0]$latch~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \HEX1[0]~0_combout\ : std_logic;
SIGNAL \HEX1[5]$latch~combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \HEX1[2]$latch~combout\ : std_logic;
SIGNAL \HEX1[1]$latch~combout\ : std_logic;
SIGNAL \LEDG~2_combout\ : std_logic;
SIGNAL \Equal0~0clkctrl_outclk\ : std_logic;
SIGNAL \LEDG[0]$latch~combout\ : std_logic;
SIGNAL \LEDG~5_combout\ : std_logic;
SIGNAL \LEDG[1]$latch~combout\ : std_logic;
SIGNAL \LEDG~3_combout\ : std_logic;
SIGNAL \LEDG[2]$latch~combout\ : std_logic;
SIGNAL \LEDG~4_combout\ : std_logic;
SIGNAL \LEDG[3]$latch~combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Equal0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal0~0_combout\);

\Equal1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Equal1~0_combout\);

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[6]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\HEX0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[5]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\HEX0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[4]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\HEX0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[3]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HEX0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[2]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\HEX0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[1]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\HEX0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[0]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\HEX1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\HEX1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\HEX1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\HEX1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[2]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\HEX1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[1]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\HEX1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[5]$latch~combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[0]$latch~combout\,
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
	i => \LEDG[1]$latch~combout\,
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
	i => \LEDG[2]$latch~combout\,
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
	i => \LEDG[3]$latch~combout\,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

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

-- Location: LCCOMB_X1_Y21_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\SW[1]~input_o\ & ((\SW[4]~input_o\) # ((\SW[0]~input_o\ & \SW[3]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & (\SW[4]~input_o\ & \SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X1_Y21_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (\SW[2]~input_o\ & ((\SW[5]~input_o\) # (\Add0~2_combout\))) # (!\SW[2]~input_o\ & (\SW[5]~input_o\ & \Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X1_Y21_N6
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \SW[2]~input_o\ $ (\SW[5]~input_o\ $ (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X1_Y21_N16
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \SW[1]~input_o\ $ (\SW[4]~input_o\ $ (((\SW[0]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y21_N24
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \SW[3]~input_o\ $ (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X2_Y21_N12
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Add0~3_combout\ & ((\Add0~4_combout\) # ((!\Add0~0_combout\) # (!\Add0~1_combout\)))) # (!\Add0~3_combout\ & (\Add0~4_combout\ $ ((\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X3_Y21_N22
\HEX0[6]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[6]~14_combout\ = (\KEY[0]~input_o\) # ((!\Mux6~0_combout\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \HEX0[6]~14_combout\);

-- Location: LCCOMB_X1_Y21_N30
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\KEY[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: CLKCTRL_G1
\Equal1~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal1~0clkctrl_outclk\);

-- Location: LCCOMB_X3_Y21_N28
\HEX0[6]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[6]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX0[6]$latch~combout\)) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX0[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX0[6]$latch~combout\,
	datac => \HEX0[6]~14_combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX0[6]$latch~combout\);

-- Location: LCCOMB_X2_Y21_N22
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Add0~4_combout\ & ((\Add0~3_combout\ & (!\Add0~1_combout\)) # (!\Add0~3_combout\ & (\Add0~1_combout\ & \Add0~0_combout\)))) # (!\Add0~4_combout\ & ((\Add0~3_combout\ & (\Add0~1_combout\ & \Add0~0_combout\)) # (!\Add0~3_combout\ & 
-- ((\Add0~1_combout\) # (\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X2_Y21_N10
\HEX0[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[5]~15_combout\ = (\Mux5~0_combout\) # ((\KEY[0]~input_o\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \HEX0[5]~15_combout\);

-- Location: LCCOMB_X2_Y21_N6
\HEX0[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[5]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX0[5]$latch~combout\)) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX0[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0[5]$latch~combout\,
	datac => \HEX0[5]~15_combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX0[5]$latch~combout\);

-- Location: LCCOMB_X2_Y21_N24
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Add0~0_combout\) # ((\Add0~3_combout\ & (\Add0~4_combout\ $ (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X3_Y21_N12
\HEX0[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[4]~16_combout\ = (\KEY[0]~input_o\) # ((\Mux4~0_combout\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \Mux4~0_combout\,
	combout => \HEX0[4]~16_combout\);

-- Location: LCCOMB_X3_Y21_N30
\HEX0[4]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[4]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX0[4]$latch~combout\)) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX0[4]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0[4]$latch~combout\,
	datac => \HEX0[4]~16_combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX0[4]$latch~combout\);

-- Location: LCCOMB_X1_Y21_N10
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Add0~0_combout\ & (\Add0~3_combout\ $ (((\Add0~4_combout\) # (!\Add0~1_combout\))))) # (!\Add0~0_combout\ & (\Add0~3_combout\ & (\Add0~1_combout\ $ (!\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~1_combout\,
	datac => \Add0~0_combout\,
	datad => \Add0~4_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N20
\HEX0[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[3]~17_combout\ = (\Mux3~0_combout\) # ((\KEY[0]~input_o\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \HEX0[3]~17_combout\);

-- Location: LCCOMB_X1_Y21_N4
\HEX0[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[3]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX0[3]$latch~combout\))) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX0[3]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX0[3]~17_combout\,
	datac => \HEX0[3]$latch~combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX0[3]$latch~combout\);

-- Location: LCCOMB_X2_Y21_N2
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\Add0~0_combout\ & ((\Add0~4_combout\ & (\Add0~3_combout\ & !\Add0~1_combout\)) # (!\Add0~4_combout\ & (!\Add0~3_combout\ & \Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X3_Y21_N14
\HEX0[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[2]~18_combout\ = (\KEY[0]~input_o\) # ((\Mux2~0_combout\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \Mux2~0_combout\,
	combout => \HEX0[2]~18_combout\);

-- Location: LCCOMB_X3_Y21_N8
\HEX0[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[2]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX0[2]$latch~combout\))) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX0[2]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX0[2]~18_combout\,
	datac => \HEX0[2]$latch~combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX0[2]$latch~combout\);

-- Location: LCCOMB_X2_Y21_N20
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Add0~3_combout\ & ((\Add0~4_combout\ & (\Add0~1_combout\ & \Add0~0_combout\)) # (!\Add0~4_combout\ & (\Add0~1_combout\ $ (\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N8
\HEX0[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[1]~19_combout\ = ((\Mux1~0_combout\) # (\KEY[0]~input_o\)) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \KEY[0]~input_o\,
	combout => \HEX0[1]~19_combout\);

-- Location: LCCOMB_X1_Y21_N14
\HEX0[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[1]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX0[1]$latch~combout\))) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX0[1]~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX0[1]~19_combout\,
	datac => \HEX0[1]$latch~combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX0[1]$latch~combout\);

-- Location: LCCOMB_X2_Y21_N18
\HEX0[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[0]~12_combout\ = (\Add0~4_combout\ & (\Add0~1_combout\ & (\Add0~3_combout\ $ (\Add0~0_combout\)))) # (!\Add0~4_combout\ & (!\Add0~1_combout\ & (\Add0~3_combout\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~3_combout\,
	datac => \Add0~1_combout\,
	datad => \Add0~0_combout\,
	combout => \HEX0[0]~12_combout\);

-- Location: LCCOMB_X2_Y21_N16
\HEX0[0]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[0]~13_combout\ = (\KEY[0]~input_o\) # ((\HEX0[0]~12_combout\) # (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \HEX0[0]~12_combout\,
	combout => \HEX0[0]~13_combout\);

-- Location: LCCOMB_X2_Y21_N4
\HEX0[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0[0]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX0[0]$latch~combout\)) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX0[0]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \HEX0[0]$latch~combout\,
	datac => \HEX0[0]~13_combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX0[0]$latch~combout\);

-- Location: LCCOMB_X1_Y21_N22
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\KEY[1]~input_o\ & !\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y21_N26
\HEX1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1[0]~0_combout\ = ((\Add0~4_combout\ & ((\Add0~1_combout\) # (\Add0~3_combout\)))) # (!\Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~3_combout\,
	datad => \Add0~4_combout\,
	combout => \HEX1[0]~0_combout\);

-- Location: LCCOMB_X2_Y21_N30
\HEX1[5]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1[5]$latch~combout\ = (GLOBAL(\Equal1~0clkctrl_outclk\) & (\HEX1[5]$latch~combout\)) # (!GLOBAL(\Equal1~0clkctrl_outclk\) & ((\HEX1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1[5]$latch~combout\,
	datac => \HEX1[0]~0_combout\,
	datad => \Equal1~0clkctrl_outclk\,
	combout => \HEX1[5]$latch~combout\);

-- Location: LCCOMB_X3_Y21_N0
\comb~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = \KEY[1]~input_o\ $ (\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \comb~0_combout\);

-- Location: LCCOMB_X15_Y22_N16
\HEX1[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1[2]$latch~combout\ = (!\Equal0~0_combout\ & ((\HEX1[2]$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \HEX1[2]$latch~combout\,
	combout => \HEX1[2]$latch~combout\);

-- Location: LCCOMB_X15_Y22_N6
\HEX1[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1[1]$latch~combout\ = (!\Equal0~0_combout\ & ((\HEX1[1]$latch~combout\) # (!\comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~0_combout\,
	datac => \Equal0~0_combout\,
	datad => \HEX1[1]$latch~combout\,
	combout => \HEX1[1]$latch~combout\);

-- Location: LCCOMB_X1_Y21_N2
\LEDG~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG~2_combout\ = (!\KEY[1]~input_o\ & (\KEY[0]~input_o\ & (\SW[0]~input_o\ $ (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \LEDG~2_combout\);

-- Location: CLKCTRL_G0
\Equal0~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Equal0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Equal0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y21_N28
\LEDG[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG[0]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\LEDG[0]$latch~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\LEDG~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDG[0]$latch~combout\,
	datac => \LEDG~2_combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \LEDG[0]$latch~combout\);

-- Location: LCCOMB_X2_Y21_N28
\LEDG~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG~5_combout\ = (!\KEY[1]~input_o\ & (\KEY[0]~input_o\ & \Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \Add0~1_combout\,
	combout => \LEDG~5_combout\);

-- Location: LCCOMB_X2_Y21_N8
\LEDG[1]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG[1]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\LEDG[1]$latch~combout\))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (\LEDG~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDG~5_combout\,
	datac => \LEDG[1]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \LEDG[1]$latch~combout\);

-- Location: LCCOMB_X1_Y21_N0
\LEDG~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG~3_combout\ = (\Equal1~0_combout\ & (\SW[5]~input_o\ $ (\SW[2]~input_o\ $ (\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \Equal1~0_combout\,
	datad => \Add0~2_combout\,
	combout => \LEDG~3_combout\);

-- Location: LCCOMB_X1_Y21_N26
\LEDG[2]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG[2]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & ((\LEDG[2]$latch~combout\))) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & (\LEDG~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LEDG~3_combout\,
	datac => \LEDG[2]$latch~combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \LEDG[2]$latch~combout\);

-- Location: LCCOMB_X2_Y21_N0
\LEDG~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG~4_combout\ = (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & \Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	datad => \Add0~4_combout\,
	combout => \LEDG~4_combout\);

-- Location: LCCOMB_X2_Y21_N14
\LEDG[3]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LEDG[3]$latch~combout\ = (GLOBAL(\Equal0~0clkctrl_outclk\) & (\LEDG[3]$latch~combout\)) # (!GLOBAL(\Equal0~0clkctrl_outclk\) & ((\LEDG~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LEDG[3]$latch~combout\,
	datac => \LEDG~4_combout\,
	datad => \Equal0~0clkctrl_outclk\,
	combout => \LEDG[3]$latch~combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;
END structure;


