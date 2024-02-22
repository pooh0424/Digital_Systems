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

-- DATE "02/21/2024 19:49:12"

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

ENTITY 	Lab1_2 IS
    PORT (
	S1 : OUT std_logic;
	A1 : IN std_logic;
	B1 : IN std_logic;
	M : IN std_logic;
	S2 : OUT std_logic;
	A2 : IN std_logic;
	B2 : IN std_logic;
	S3 : OUT std_logic;
	A3 : IN std_logic;
	B3 : IN std_logic;
	S4 : OUT std_logic;
	A4 : IN std_logic;
	B4 : IN std_logic;
	carry : OUT std_logic
	);
END Lab1_2;

-- Design Ports Information
-- S1	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S3	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S4	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carry	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A1	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B1	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- M	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A2	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B2	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A3	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B3	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A4	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B4	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab1_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_M : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_A3 : std_logic;
SIGNAL ww_B3 : std_logic;
SIGNAL ww_S4 : std_logic;
SIGNAL ww_A4 : std_logic;
SIGNAL ww_B4 : std_logic;
SIGNAL ww_carry : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S4~output_o\ : std_logic;
SIGNAL \carry~output_o\ : std_logic;
SIGNAL \B1~input_o\ : std_logic;
SIGNAL \A1~input_o\ : std_logic;
SIGNAL \inst|inst|1~0_combout\ : std_logic;
SIGNAL \B2~input_o\ : std_logic;
SIGNAL \A2~input_o\ : std_logic;
SIGNAL \M~input_o\ : std_logic;
SIGNAL \inst|inst5~0_combout\ : std_logic;
SIGNAL \inst1|inst|1~combout\ : std_logic;
SIGNAL \A3~input_o\ : std_logic;
SIGNAL \B3~input_o\ : std_logic;
SIGNAL \inst1|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst|1~0_combout\ : std_logic;
SIGNAL \B4~input_o\ : std_logic;
SIGNAL \A4~input_o\ : std_logic;
SIGNAL \inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst3|inst|1~0_combout\ : std_logic;
SIGNAL \inst3|inst5~0_combout\ : std_logic;

BEGIN

S1 <= ww_S1;
ww_A1 <= A1;
ww_B1 <= B1;
ww_M <= M;
S2 <= ww_S2;
ww_A2 <= A2;
ww_B2 <= B2;
S3 <= ww_S3;
ww_A3 <= A3;
ww_B3 <= B3;
S4 <= ww_S4;
ww_A4 <= A4;
ww_B4 <= B4;
carry <= ww_carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y13_N9
\S1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst|1~0_combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\S2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst|1~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\S3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst|1~0_combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\S4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst|1~0_combout\,
	devoe => ww_devoe,
	o => \S4~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\carry~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst5~0_combout\,
	devoe => ww_devoe,
	o => \carry~output_o\);

-- Location: IOIBUF_X0_Y22_N1
\B1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B1,
	o => \B1~input_o\);

-- Location: IOIBUF_X0_Y12_N22
\A1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A1,
	o => \A1~input_o\);

-- Location: LCCOMB_X1_Y13_N16
\inst|inst|1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst|1~0_combout\ = \B1~input_o\ $ (\A1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B1~input_o\,
	datad => \A1~input_o\,
	combout => \inst|inst|1~0_combout\);

-- Location: IOIBUF_X0_Y13_N15
\B2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B2,
	o => \B2~input_o\);

-- Location: IOIBUF_X0_Y9_N15
\A2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A2,
	o => \A2~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\M~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M,
	o => \M~input_o\);

-- Location: LCCOMB_X1_Y13_N10
\inst|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|inst5~0_combout\ = (\B1~input_o\ & ((\A1~input_o\))) # (!\B1~input_o\ & (\M~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M~input_o\,
	datac => \B1~input_o\,
	datad => \A1~input_o\,
	combout => \inst|inst5~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\inst1|inst|1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst|1~combout\ = \B2~input_o\ $ (\A2~input_o\ $ (\M~input_o\ $ (\inst|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \A2~input_o\,
	datac => \M~input_o\,
	datad => \inst|inst5~0_combout\,
	combout => \inst1|inst|1~combout\);

-- Location: IOIBUF_X0_Y21_N8
\A3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A3,
	o => \A3~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\B3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B3,
	o => \B3~input_o\);

-- Location: LCCOMB_X1_Y13_N6
\inst1|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inst5~0_combout\ = (\A2~input_o\ & ((\inst|inst5~0_combout\) # (\B2~input_o\ $ (\M~input_o\)))) # (!\A2~input_o\ & (\inst|inst5~0_combout\ & (\B2~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B2~input_o\,
	datab => \A2~input_o\,
	datac => \M~input_o\,
	datad => \inst|inst5~0_combout\,
	combout => \inst1|inst5~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\inst2|inst|1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst|1~0_combout\ = \A3~input_o\ $ (\B3~input_o\ $ (\M~input_o\ $ (\inst1|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B3~input_o\,
	datac => \M~input_o\,
	datad => \inst1|inst5~0_combout\,
	combout => \inst2|inst|1~0_combout\);

-- Location: IOIBUF_X0_Y7_N8
\B4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B4,
	o => \B4~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\A4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A4,
	o => \A4~input_o\);

-- Location: LCCOMB_X1_Y13_N2
\inst2|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|inst5~0_combout\ = (\A3~input_o\ & ((\inst1|inst5~0_combout\) # (\B3~input_o\ $ (\M~input_o\)))) # (!\A3~input_o\ & (\inst1|inst5~0_combout\ & (\B3~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A3~input_o\,
	datab => \B3~input_o\,
	datac => \M~input_o\,
	datad => \inst1|inst5~0_combout\,
	combout => \inst2|inst5~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\inst3|inst|1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst|1~0_combout\ = \B4~input_o\ $ (\M~input_o\ $ (\A4~input_o\ $ (\inst2|inst5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4~input_o\,
	datab => \M~input_o\,
	datac => \A4~input_o\,
	datad => \inst2|inst5~0_combout\,
	combout => \inst3|inst|1~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\inst3|inst5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|inst5~0_combout\ = (\A4~input_o\ & ((\inst2|inst5~0_combout\) # (\B4~input_o\ $ (\M~input_o\)))) # (!\A4~input_o\ & (\inst2|inst5~0_combout\ & (\B4~input_o\ $ (\M~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B4~input_o\,
	datab => \M~input_o\,
	datac => \A4~input_o\,
	datad => \inst2|inst5~0_combout\,
	combout => \inst3|inst5~0_combout\);

ww_S1 <= \S1~output_o\;

ww_S2 <= \S2~output_o\;

ww_S3 <= \S3~output_o\;

ww_S4 <= \S4~output_o\;

ww_carry <= \carry~output_o\;
END structure;


