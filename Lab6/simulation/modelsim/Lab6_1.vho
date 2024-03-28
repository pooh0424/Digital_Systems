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

-- DATE "03/27/2024 18:46:25"

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

ENTITY 	Lab6_1 IS
    PORT (
	KEY : IN std_logic_vector(2 DOWNTO 1);
	HEX0 : BUFFER std_logic_vector(0 TO 6);
	HEX3 : BUFFER std_logic_vector(0 TO 6)
	);
END Lab6_1;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 1);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \temp2[0]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \temp2~1_combout\ : std_logic;
SIGNAL \temp2~0_combout\ : std_logic;
SIGNAL \Digit0|WideOr5~2_combout\ : std_logic;
SIGNAL \Digit0|WideOr5~combout\ : std_logic;
SIGNAL \Digit0|WideOr4~2_combout\ : std_logic;
SIGNAL \Digit0|WideOr4~3_combout\ : std_logic;
SIGNAL \Digit0|Equal6~0_combout\ : std_logic;
SIGNAL \Digit0|WideOr3~8_combout\ : std_logic;
SIGNAL \Digit0|WideOr2~0_combout\ : std_logic;
SIGNAL \Digit0|WideOr2~1_combout\ : std_logic;
SIGNAL \Digit0|HEX[2]~2_combout\ : std_logic;
SIGNAL \Digit0|WideOr1~4_combout\ : std_logic;
SIGNAL \Digit0|WideOr1~5_combout\ : std_logic;
SIGNAL \Digit0|WideOr0~2_combout\ : std_logic;
SIGNAL \Digit0|WideOr0~combout\ : std_logic;
SIGNAL \temp1~2_combout\ : std_logic;
SIGNAL \temp1~3_combout\ : std_logic;
SIGNAL \temp1[2]~0_combout\ : std_logic;
SIGNAL \temp1~1_combout\ : std_logic;
SIGNAL \Digit3|WideOr5~2_combout\ : std_logic;
SIGNAL \Digit3|WideOr5~combout\ : std_logic;
SIGNAL \Digit3|WideOr4~2_combout\ : std_logic;
SIGNAL \Digit3|WideOr4~3_combout\ : std_logic;
SIGNAL \Digit3|Equal6~0_combout\ : std_logic;
SIGNAL \Digit3|WideOr3~8_combout\ : std_logic;
SIGNAL \Digit3|WideOr2~0_combout\ : std_logic;
SIGNAL \Digit3|WideOr2~1_combout\ : std_logic;
SIGNAL \Digit3|HEX[2]~2_combout\ : std_logic;
SIGNAL \Digit3|WideOr1~2_combout\ : std_logic;
SIGNAL \Digit3|WideOr1~3_combout\ : std_logic;
SIGNAL \Digit3|WideOr0~2_combout\ : std_logic;
SIGNAL \Digit3|WideOr0~combout\ : std_logic;
SIGNAL \Digit0|HEX\ : std_logic_vector(0 TO 6);
SIGNAL temp2 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Digit3|HEX\ : std_logic_vector(0 TO 6);
SIGNAL temp1 : std_logic_vector(3 DOWNTO 0);
SIGNAL \Digit3|ALT_INV_WideOr3~8_combout\ : std_logic;
SIGNAL \Digit0|ALT_INV_WideOr3~8_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Digit3|ALT_INV_WideOr3~8_combout\ <= NOT \Digit3|WideOr3~8_combout\;
\Digit0|ALT_INV_WideOr3~8_combout\ <= NOT \Digit0|WideOr3~8_combout\;

-- Location: IOOBUF_X26_Y29_N16
\HEX0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digit0|WideOr5~combout\,
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
	i => \Digit0|WideOr4~3_combout\,
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
	i => \Digit0|ALT_INV_WideOr3~8_combout\,
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
	i => \Digit0|WideOr2~1_combout\,
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
	i => \Digit0|HEX\(2),
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
	i => \Digit0|WideOr1~5_combout\,
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
	i => \Digit0|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digit3|WideOr5~combout\,
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
	i => \Digit3|WideOr4~3_combout\,
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
	i => \Digit3|ALT_INV_WideOr3~8_combout\,
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
	i => \Digit3|WideOr2~1_combout\,
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
	i => \Digit3|HEX\(2),
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
	i => \Digit3|WideOr1~3_combout\,
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
	i => \Digit3|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

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

-- Location: LCCOMB_X22_Y27_N26
\temp2[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp2[0]~2_combout\ = !temp2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp2(0),
	combout => \temp2[0]~2_combout\);

-- Location: FF_X22_Y27_N27
\temp2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \temp2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(0));

-- Location: LCCOMB_X22_Y27_N8
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = temp2(2) $ (((temp2(1) & temp2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(1),
	datac => temp2(2),
	datad => temp2(0),
	combout => \Add1~0_combout\);

-- Location: FF_X22_Y27_N9
\temp2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Add1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(2));

-- Location: LCCOMB_X22_Y27_N12
\temp2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp2~1_combout\ = (temp2(0) & ((temp2(2) & (temp2(3) $ (temp2(1)))) # (!temp2(2) & (temp2(3) & temp2(1))))) # (!temp2(0) & (((temp2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => temp2(2),
	datac => temp2(3),
	datad => temp2(1),
	combout => \temp2~1_combout\);

-- Location: FF_X22_Y27_N13
\temp2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \temp2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(3));

-- Location: LCCOMB_X22_Y27_N6
\temp2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp2~0_combout\ = (temp2(1) & (((!temp2(0))))) # (!temp2(1) & (temp2(0) & ((temp2(2)) # (!temp2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(3),
	datab => temp2(2),
	datac => temp2(1),
	datad => temp2(0),
	combout => \temp2~0_combout\);

-- Location: FF_X22_Y27_N7
\temp2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \temp2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp2(1));

-- Location: LCCOMB_X22_Y27_N28
\Digit0|WideOr5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr5~2_combout\ = (temp2(1) & ((temp2(0) & ((temp2(2)) # (temp2(3)))) # (!temp2(0) & (temp2(2) & temp2(3))))) # (!temp2(1) & ((temp2(2) $ (!temp2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => temp2(1),
	datac => temp2(2),
	datad => temp2(3),
	combout => \Digit0|WideOr5~2_combout\);

-- Location: LCCOMB_X22_Y27_N30
\Digit0|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr5~combout\ = (\Digit0|WideOr5~2_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit0|WideOr5~2_combout\,
	combout => \Digit0|WideOr5~combout\);

-- Location: LCCOMB_X22_Y27_N24
\Digit0|WideOr4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr4~2_combout\ = (temp2(0) & ((temp2(1)) # (temp2(2) $ (!temp2(3))))) # (!temp2(0) & ((temp2(2) & ((temp2(3)))) # (!temp2(2) & (temp2(1) & !temp2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => temp2(1),
	datac => temp2(2),
	datad => temp2(3),
	combout => \Digit0|WideOr4~2_combout\);

-- Location: LCCOMB_X22_Y27_N14
\Digit0|WideOr4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr4~3_combout\ = (\KEY[1]~input_o\ & \Digit0|WideOr4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit0|WideOr4~2_combout\,
	combout => \Digit0|WideOr4~3_combout\);

-- Location: LCCOMB_X22_Y27_N16
\Digit0|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal6~0_combout\ = (temp2(1) & (\KEY[1]~input_o\ & !temp2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp2(1),
	datac => \KEY[1]~input_o\,
	datad => temp2(3),
	combout => \Digit0|Equal6~0_combout\);

-- Location: LCCOMB_X22_Y27_N10
\Digit0|WideOr3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr3~8_combout\ = ((!temp2(0) & ((\Digit0|Equal6~0_combout\) # (!temp2(2))))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => \KEY[1]~input_o\,
	datac => temp2(2),
	datad => \Digit0|Equal6~0_combout\,
	combout => \Digit0|WideOr3~8_combout\);

-- Location: LCCOMB_X22_Y27_N22
\Digit0|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr2~0_combout\ = (temp2(0) & ((temp2(3)) # (temp2(1) $ (!temp2(2))))) # (!temp2(0) & ((temp2(1) & ((temp2(3)))) # (!temp2(1) & (temp2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => temp2(1),
	datac => temp2(2),
	datad => temp2(3),
	combout => \Digit0|WideOr2~0_combout\);

-- Location: LCCOMB_X22_Y27_N20
\Digit0|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr2~1_combout\ = (\KEY[1]~input_o\ & \Digit0|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit0|WideOr2~0_combout\,
	combout => \Digit0|WideOr2~1_combout\);

-- Location: LCCOMB_X22_Y27_N18
\Digit0|HEX[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|HEX[2]~2_combout\ = (temp2(2) & (((temp2(3))))) # (!temp2(2) & (temp2(1) & (temp2(0) $ (!temp2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => temp2(1),
	datac => temp2(2),
	datad => temp2(3),
	combout => \Digit0|HEX[2]~2_combout\);

-- Location: LCCOMB_X22_Y27_N4
\Digit0|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|HEX\(2) = (\KEY[1]~input_o\ & \Digit0|HEX[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit0|HEX[2]~2_combout\,
	combout => \Digit0|HEX\(2));

-- Location: LCCOMB_X22_Y27_N2
\Digit0|WideOr1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr1~4_combout\ = (temp2(0) & ((temp2(1) & ((temp2(3)))) # (!temp2(1) & (temp2(2))))) # (!temp2(0) & (temp2(2) & ((temp2(1)) # (temp2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => temp2(1),
	datac => temp2(2),
	datad => temp2(3),
	combout => \Digit0|WideOr1~4_combout\);

-- Location: LCCOMB_X22_Y28_N10
\Digit0|WideOr1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr1~5_combout\ = (\KEY[1]~input_o\ & \Digit0|WideOr1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit0|WideOr1~4_combout\,
	combout => \Digit0|WideOr1~5_combout\);

-- Location: LCCOMB_X22_Y27_N0
\Digit0|WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr0~2_combout\ = (temp2(0) & (temp2(3) $ (((!temp2(1) & !temp2(2)))))) # (!temp2(0) & (temp2(2) & ((temp2(3)) # (!temp2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp2(0),
	datab => temp2(1),
	datac => temp2(2),
	datad => temp2(3),
	combout => \Digit0|WideOr0~2_combout\);

-- Location: LCCOMB_X22_Y28_N0
\Digit0|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr0~combout\ = (\KEY[1]~input_o\ & \Digit0|WideOr0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit0|WideOr0~2_combout\,
	combout => \Digit0|WideOr0~combout\);

-- Location: LCCOMB_X33_Y27_N20
\temp1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp1~2_combout\ = (temp1(1) & ((temp1(0) & (temp1(3) $ (temp1(2)))) # (!temp1(0) & (temp1(3) & temp1(2))))) # (!temp1(1) & (((temp1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(0),
	datac => temp1(3),
	datad => temp1(2),
	combout => \temp1~2_combout\);

-- Location: FF_X33_Y27_N21
\temp1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \temp1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp1(3));

-- Location: LCCOMB_X33_Y27_N18
\temp1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp1~3_combout\ = (!temp1(0) & (((temp1(2)) # (!temp1(3))) # (!temp1(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(3),
	datac => temp1(0),
	datad => temp1(2),
	combout => \temp1~3_combout\);

-- Location: FF_X33_Y27_N19
\temp1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \temp1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp1(0));

-- Location: LCCOMB_X33_Y27_N12
\temp1[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp1[2]~0_combout\ = temp1(2) $ (((temp1(1) & temp1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datac => temp1(2),
	datad => temp1(0),
	combout => \temp1[2]~0_combout\);

-- Location: FF_X33_Y27_N13
\temp1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \temp1[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp1(2));

-- Location: LCCOMB_X33_Y27_N26
\temp1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp1~1_combout\ = (temp1(1) & (!temp1(0) & ((temp1(2)) # (!temp1(3))))) # (!temp1(1) & (((temp1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(2),
	datab => temp1(3),
	datac => temp1(1),
	datad => temp1(0),
	combout => \temp1~1_combout\);

-- Location: FF_X33_Y27_N27
\temp1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \temp1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp1(1));

-- Location: LCCOMB_X33_Y27_N0
\Digit3|WideOr5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr5~2_combout\ = (temp1(1) & ((temp1(2) & ((temp1(0)) # (temp1(3)))) # (!temp1(2) & (temp1(0) & temp1(3))))) # (!temp1(1) & (temp1(2) $ (((!temp1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(2),
	datac => temp1(0),
	datad => temp1(3),
	combout => \Digit3|WideOr5~2_combout\);

-- Location: LCCOMB_X33_Y28_N4
\Digit3|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr5~combout\ = (\Digit3|WideOr5~2_combout\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit3|WideOr5~2_combout\,
	combout => \Digit3|WideOr5~combout\);

-- Location: LCCOMB_X33_Y27_N24
\Digit3|WideOr4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr4~2_combout\ = (temp1(1) & ((temp1(0)) # (temp1(2) $ (!temp1(3))))) # (!temp1(1) & ((temp1(2) & ((temp1(3)))) # (!temp1(2) & (temp1(0) & !temp1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(2),
	datac => temp1(0),
	datad => temp1(3),
	combout => \Digit3|WideOr4~2_combout\);

-- Location: LCCOMB_X33_Y27_N22
\Digit3|WideOr4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr4~3_combout\ = (\Digit3|WideOr4~2_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit3|WideOr4~2_combout\,
	datac => \KEY[1]~input_o\,
	combout => \Digit3|WideOr4~3_combout\);

-- Location: LCCOMB_X33_Y27_N28
\Digit3|Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|Equal6~0_combout\ = (temp1(1) & (!temp1(3) & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(3),
	datac => \KEY[1]~input_o\,
	combout => \Digit3|Equal6~0_combout\);

-- Location: LCCOMB_X33_Y27_N2
\Digit3|WideOr3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr3~8_combout\ = ((!temp1(0) & ((\Digit3|Equal6~0_combout\) # (!temp1(2))))) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(0),
	datab => \Digit3|Equal6~0_combout\,
	datac => \KEY[1]~input_o\,
	datad => temp1(2),
	combout => \Digit3|WideOr3~8_combout\);

-- Location: LCCOMB_X33_Y27_N30
\Digit3|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr2~0_combout\ = (temp1(2) & ((temp1(3)) # (temp1(1) $ (!temp1(0))))) # (!temp1(2) & ((temp1(1) & ((temp1(3)))) # (!temp1(1) & (temp1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(2),
	datac => temp1(0),
	datad => temp1(3),
	combout => \Digit3|WideOr2~0_combout\);

-- Location: LCCOMB_X33_Y27_N4
\Digit3|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr2~1_combout\ = (\Digit3|WideOr2~0_combout\ & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit3|WideOr2~0_combout\,
	datac => \KEY[1]~input_o\,
	combout => \Digit3|WideOr2~1_combout\);

-- Location: LCCOMB_X33_Y27_N8
\Digit3|HEX[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|HEX[2]~2_combout\ = (temp1(2) & (((temp1(3))))) # (!temp1(2) & (temp1(1) & (temp1(0) $ (!temp1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(2),
	datac => temp1(0),
	datad => temp1(3),
	combout => \Digit3|HEX[2]~2_combout\);

-- Location: LCCOMB_X33_Y27_N6
\Digit3|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|HEX\(2) = (\KEY[1]~input_o\ & \Digit3|HEX[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit3|HEX[2]~2_combout\,
	combout => \Digit3|HEX\(2));

-- Location: LCCOMB_X33_Y27_N16
\Digit3|WideOr1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr1~2_combout\ = (temp1(1) & ((temp1(0) & ((temp1(3)))) # (!temp1(0) & (temp1(2))))) # (!temp1(1) & (temp1(2) & ((temp1(0)) # (temp1(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(2),
	datac => temp1(0),
	datad => temp1(3),
	combout => \Digit3|WideOr1~2_combout\);

-- Location: LCCOMB_X33_Y27_N10
\Digit3|WideOr1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr1~3_combout\ = (\KEY[1]~input_o\ & \Digit3|WideOr1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit3|WideOr1~2_combout\,
	combout => \Digit3|WideOr1~3_combout\);

-- Location: LCCOMB_X33_Y27_N14
\Digit3|WideOr0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr0~2_combout\ = (temp1(1) & (temp1(3) & ((temp1(2)) # (temp1(0))))) # (!temp1(1) & (temp1(2) $ (((temp1(0) & !temp1(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp1(1),
	datab => temp1(2),
	datac => temp1(0),
	datad => temp1(3),
	combout => \Digit3|WideOr0~2_combout\);

-- Location: LCCOMB_X33_Y28_N6
\Digit3|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit3|WideOr0~combout\ = (\KEY[1]~input_o\ & \Digit3|WideOr0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \Digit3|WideOr0~2_combout\,
	combout => \Digit3|WideOr0~combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;
END structure;


