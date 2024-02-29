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

-- DATE "02/29/2024 10:50:19"

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

ENTITY 	Lab2_1_1 IS
    PORT (
	switch : IN STD.STANDARD.bit_vector(3 DOWNTO 0);
	sevensegement : OUT STD.STANDARD.bit_vector(0 TO 6)
	);
END Lab2_1_1;

-- Design Ports Information
-- sevensegement[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement[4]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2_1_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sevensegement : std_logic_vector(0 TO 6);
SIGNAL \sevensegement[6]~output_o\ : std_logic;
SIGNAL \sevensegement[5]~output_o\ : std_logic;
SIGNAL \sevensegement[4]~output_o\ : std_logic;
SIGNAL \sevensegement[3]~output_o\ : std_logic;
SIGNAL \sevensegement[2]~output_o\ : std_logic;
SIGNAL \sevensegement[1]~output_o\ : std_logic;
SIGNAL \sevensegement[0]~output_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \sevensegement~0_combout\ : std_logic;
SIGNAL \sevensegement~1_combout\ : std_logic;
SIGNAL \sevensegement~2_combout\ : std_logic;
SIGNAL \sevensegement~3_combout\ : std_logic;
SIGNAL \sevensegement~4_combout\ : std_logic;
SIGNAL \sevensegement~5_combout\ : std_logic;
SIGNAL \sevensegement~6_combout\ : std_logic;

BEGIN

ww_switch <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(switch);
sevensegement <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_sevensegement);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y10_N9
\sevensegement[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevensegement~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\sevensegement[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevensegement~1_combout\,
	devoe => ww_devoe,
	o => \sevensegement[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\sevensegement[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevensegement~2_combout\,
	devoe => ww_devoe,
	o => \sevensegement[4]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\sevensegement[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevensegement~3_combout\,
	devoe => ww_devoe,
	o => \sevensegement[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\sevensegement[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevensegement~4_combout\,
	devoe => ww_devoe,
	o => \sevensegement[2]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\sevensegement[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevensegement~5_combout\,
	devoe => ww_devoe,
	o => \sevensegement[1]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\sevensegement[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevensegement~6_combout\,
	devoe => ww_devoe,
	o => \sevensegement[0]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\sevensegement~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sevensegement~0_combout\ = (\switch[0]~input_o\ & (!\switch[3]~input_o\ & (\switch[2]~input_o\ $ (!\switch[1]~input_o\)))) # (!\switch[0]~input_o\ & (!\switch[1]~input_o\ & (\switch[3]~input_o\ $ (!\switch[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \sevensegement~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\sevensegement~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sevensegement~1_combout\ = (\switch[2]~input_o\ & (\switch[0]~input_o\ & (\switch[3]~input_o\ $ (\switch[1]~input_o\)))) # (!\switch[2]~input_o\ & (!\switch[3]~input_o\ & ((\switch[0]~input_o\) # (\switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \sevensegement~1_combout\);

-- Location: LCCOMB_X1_Y13_N20
\sevensegement~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sevensegement~2_combout\ = (\switch[1]~input_o\ & (!\switch[3]~input_o\ & ((\switch[0]~input_o\)))) # (!\switch[1]~input_o\ & ((\switch[2]~input_o\ & (!\switch[3]~input_o\)) # (!\switch[2]~input_o\ & ((\switch[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \sevensegement~2_combout\);

-- Location: LCCOMB_X1_Y13_N6
\sevensegement~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sevensegement~3_combout\ = (\switch[0]~input_o\ & ((\switch[2]~input_o\ $ (!\switch[1]~input_o\)))) # (!\switch[0]~input_o\ & ((\switch[3]~input_o\ & (!\switch[2]~input_o\ & \switch[1]~input_o\)) # (!\switch[3]~input_o\ & (\switch[2]~input_o\ & 
-- !\switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \sevensegement~3_combout\);

-- Location: LCCOMB_X1_Y13_N16
\sevensegement~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sevensegement~4_combout\ = (\switch[3]~input_o\ & (\switch[2]~input_o\ & ((\switch[1]~input_o\) # (!\switch[0]~input_o\)))) # (!\switch[3]~input_o\ & (!\switch[2]~input_o\ & (!\switch[0]~input_o\ & \switch[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \sevensegement~4_combout\);

-- Location: LCCOMB_X1_Y13_N10
\sevensegement~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sevensegement~5_combout\ = (\switch[3]~input_o\ & ((\switch[0]~input_o\ & ((\switch[1]~input_o\))) # (!\switch[0]~input_o\ & (\switch[2]~input_o\)))) # (!\switch[3]~input_o\ & (\switch[2]~input_o\ & (\switch[0]~input_o\ $ (\switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \sevensegement~5_combout\);

-- Location: LCCOMB_X1_Y13_N12
\sevensegement~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sevensegement~6_combout\ = (\switch[3]~input_o\ & (\switch[0]~input_o\ & (\switch[2]~input_o\ $ (\switch[1]~input_o\)))) # (!\switch[3]~input_o\ & (!\switch[1]~input_o\ & (\switch[2]~input_o\ $ (\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[0]~input_o\,
	datad => \switch[1]~input_o\,
	combout => \sevensegement~6_combout\);

ww_sevensegement(6) <= \sevensegement[6]~output_o\;

ww_sevensegement(5) <= \sevensegement[5]~output_o\;

ww_sevensegement(4) <= \sevensegement[4]~output_o\;

ww_sevensegement(3) <= \sevensegement[3]~output_o\;

ww_sevensegement(2) <= \sevensegement[2]~output_o\;

ww_sevensegement(1) <= \sevensegement[1]~output_o\;

ww_sevensegement(0) <= \sevensegement[0]~output_o\;
END structure;


