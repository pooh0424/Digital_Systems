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

-- DATE "05/22/2024 18:57:31"

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

ENTITY 	Lab12_1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	Rout : OUT std_logic_vector(3 DOWNTO 0);
	Gout : OUT std_logic_vector(3 DOWNTO 0);
	Bout : OUT std_logic_vector(3 DOWNTO 0);
	HOR_SYN : OUT std_logic;
	VER_SYN : OUT std_logic
	);
END Lab12_1;

-- Design Ports Information
-- Rout[0]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[1]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[3]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[2]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[2]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOR_SYN	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VER_SYN	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab12_1 IS
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
SIGNAL ww_Rout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Gout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HOR_SYN : std_logic;
SIGNAL ww_VER_SYN : std_logic;
SIGNAL \clock_div1|CLK_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Rout[0]~output_o\ : std_logic;
SIGNAL \Rout[1]~output_o\ : std_logic;
SIGNAL \Rout[2]~output_o\ : std_logic;
SIGNAL \Rout[3]~output_o\ : std_logic;
SIGNAL \Gout[0]~output_o\ : std_logic;
SIGNAL \Gout[1]~output_o\ : std_logic;
SIGNAL \Gout[2]~output_o\ : std_logic;
SIGNAL \Gout[3]~output_o\ : std_logic;
SIGNAL \Bout[0]~output_o\ : std_logic;
SIGNAL \Bout[1]~output_o\ : std_logic;
SIGNAL \Bout[2]~output_o\ : std_logic;
SIGNAL \Bout[3]~output_o\ : std_logic;
SIGNAL \HOR_SYN~output_o\ : std_logic;
SIGNAL \VER_SYN~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clock_div1|CLK_out~0_combout\ : std_logic;
SIGNAL \clock_div1|CLK_out~feeder_combout\ : std_logic;
SIGNAL \clock_div1|CLK_out~q\ : std_logic;
SIGNAL \clock_div1|CLK_out~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_sync1|Add1~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~3_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~1\ : std_logic;
SIGNAL \VGA_sync1|Add0~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~3\ : std_logic;
SIGNAL \VGA_sync1|Add0~4_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~5\ : std_logic;
SIGNAL \VGA_sync1|Add0~6_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~13\ : std_logic;
SIGNAL \VGA_sync1|Add0~14_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~15\ : std_logic;
SIGNAL \VGA_sync1|Add0~16_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~7\ : std_logic;
SIGNAL \VGA_sync1|Add0~8_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~17\ : std_logic;
SIGNAL \VGA_sync1|Add0~18_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~9\ : std_logic;
SIGNAL \VGA_sync1|Add0~10_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~11\ : std_logic;
SIGNAL \VGA_sync1|Add0~12_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~3_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~1\ : std_logic;
SIGNAL \VGA_sync1|Add1~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~3\ : std_logic;
SIGNAL \VGA_sync1|Add1~4_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~15\ : std_logic;
SIGNAL \VGA_sync1|Add1~16_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~17\ : std_logic;
SIGNAL \VGA_sync1|Add1~18_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~5\ : std_logic;
SIGNAL \VGA_sync1|Add1~6_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~7\ : std_logic;
SIGNAL \VGA_sync1|Add1~8_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~9\ : std_logic;
SIGNAL \VGA_sync1|Add1~10_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~11\ : std_logic;
SIGNAL \VGA_sync1|Add1~12_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~13\ : std_logic;
SIGNAL \VGA_sync1|Add1~14_combout\ : std_logic;
SIGNAL \Vbar_display1|LessThan1~0_combout\ : std_logic;
SIGNAL \Vbar_display1|LessThan1~1_combout\ : std_logic;
SIGNAL \Vbar_display1|LessThan1~2_combout\ : std_logic;
SIGNAL \Vbar_display1|LessThan5~0_combout\ : std_logic;
SIGNAL \Vbar_display1|Rout~2_combout\ : std_logic;
SIGNAL \Vbar_display1|Rout~3_combout\ : std_logic;
SIGNAL \Vbar_display1|LessThan5~1_combout\ : std_logic;
SIGNAL \Vbar_display1|LessThan5~2_combout\ : std_logic;
SIGNAL \Vbar_display1|Rout~4_combout\ : std_logic;
SIGNAL \Vbar_display1|process_0~0_combout\ : std_logic;
SIGNAL \Vbar_display1|process_0~1_combout\ : std_logic;
SIGNAL \Vbar_display1|Rout[0]~0_combout\ : std_logic;
SIGNAL \Vbar_display1|Rout[0]~1_combout\ : std_logic;
SIGNAL \VGA_sync1|video_on~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~2_combout\ : std_logic;
SIGNAL \VGA_sync1|video_on~1_combout\ : std_logic;
SIGNAL \Vbar_display1|Rout[0]~5_combout\ : std_logic;
SIGNAL \Vbar_display1|Gout[0]~0_combout\ : std_logic;
SIGNAL \Vbar_display1|Gout[0]~1_combout\ : std_logic;
SIGNAL \Vbar_display1|Gout[0]~2_combout\ : std_logic;
SIGNAL \Vbar_display1|Gout[0]~3_combout\ : std_logic;
SIGNAL \Vbar_display1|Gout[0]~4_combout\ : std_logic;
SIGNAL \Vbar_display1|Bout[0]~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~2_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~1_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_sync1|h_count\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
Rout <= ww_Rout;
Gout <= ww_Gout;
Bout <= ww_Bout;
HOR_SYN <= ww_HOR_SYN;
VER_SYN <= ww_VER_SYN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_div1|CLK_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_div1|CLK_out~q\);

-- Location: IOOBUF_X41_Y19_N2
\Rout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Rout[0]~5_combout\,
	devoe => ww_devoe,
	o => \Rout[0]~output_o\);

-- Location: IOOBUF_X41_Y20_N16
\Rout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Rout[0]~5_combout\,
	devoe => ww_devoe,
	o => \Rout[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\Rout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Rout[0]~5_combout\,
	devoe => ww_devoe,
	o => \Rout[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N9
\Rout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Rout[0]~5_combout\,
	devoe => ww_devoe,
	o => \Rout[3]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\Gout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Gout[0]~4_combout\,
	devoe => ww_devoe,
	o => \Gout[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\Gout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Gout[0]~4_combout\,
	devoe => ww_devoe,
	o => \Gout[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\Gout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Gout[0]~4_combout\,
	devoe => ww_devoe,
	o => \Gout[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\Gout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Gout[0]~4_combout\,
	devoe => ww_devoe,
	o => \Gout[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\Bout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Bout[0]~0_combout\,
	devoe => ww_devoe,
	o => \Bout[0]~output_o\);

-- Location: IOOBUF_X41_Y21_N2
\Bout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Bout[0]~0_combout\,
	devoe => ww_devoe,
	o => \Bout[1]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\Bout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Bout[0]~0_combout\,
	devoe => ww_devoe,
	o => \Bout[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\Bout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Vbar_display1|Bout[0]~0_combout\,
	devoe => ww_devoe,
	o => \Bout[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\HOR_SYN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_sync1|process_2~2_combout\,
	devoe => ww_devoe,
	o => \HOR_SYN~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\VER_SYN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_sync1|process_3~1_combout\,
	devoe => ww_devoe,
	o => \VER_SYN~output_o\);

-- Location: IOIBUF_X19_Y29_N29
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LCCOMB_X19_Y28_N18
\clock_div1|CLK_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_div1|CLK_out~0_combout\ = !\clock_div1|CLK_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div1|CLK_out~q\,
	combout => \clock_div1|CLK_out~0_combout\);

-- Location: LCCOMB_X19_Y28_N0
\clock_div1|CLK_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_div1|CLK_out~feeder_combout\ = \clock_div1|CLK_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock_div1|CLK_out~0_combout\,
	combout => \clock_div1|CLK_out~feeder_combout\);

-- Location: FF_X19_Y28_N1
\clock_div1|CLK_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \clock_div1|CLK_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div1|CLK_out~q\);

-- Location: CLKCTRL_G10
\clock_div1|CLK_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_div1|CLK_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_div1|CLK_out~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y20_N8
\VGA_sync1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~0_combout\ = \VGA_sync1|v_count\(0) $ (VCC)
-- \VGA_sync1|Add1~1\ = CARRY(\VGA_sync1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(0),
	datad => VCC,
	combout => \VGA_sync1|Add1~0_combout\,
	cout => \VGA_sync1|Add1~1\);

-- Location: LCCOMB_X29_Y20_N0
\VGA_sync1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~0_combout\ = (!\VGA_sync1|v_count\(5) & (!\VGA_sync1|v_count\(4) & !\VGA_sync1|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(5),
	datac => \VGA_sync1|v_count\(4),
	datad => \VGA_sync1|v_count\(6),
	combout => \VGA_sync1|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y20_N2
\VGA_sync1|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~3_combout\ = (\VGA_sync1|Add1~0_combout\ & (((!\VGA_sync1|Equal1~2_combout\) # (!\VGA_sync1|Equal1~0_combout\)) # (!\VGA_sync1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Add1~0_combout\,
	datab => \VGA_sync1|v_count\(9),
	datac => \VGA_sync1|Equal1~0_combout\,
	datad => \VGA_sync1|Equal1~2_combout\,
	combout => \VGA_sync1|v_count~3_combout\);

-- Location: LCCOMB_X27_Y20_N4
\VGA_sync1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~0_combout\ = \VGA_sync1|h_count\(0) $ (VCC)
-- \VGA_sync1|Add0~1\ = CARRY(\VGA_sync1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(0),
	datad => VCC,
	combout => \VGA_sync1|Add0~0_combout\,
	cout => \VGA_sync1|Add0~1\);

-- Location: FF_X27_Y20_N5
\VGA_sync1|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(0));

-- Location: LCCOMB_X27_Y20_N6
\VGA_sync1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~2_combout\ = (\VGA_sync1|h_count\(1) & (!\VGA_sync1|Add0~1\)) # (!\VGA_sync1|h_count\(1) & ((\VGA_sync1|Add0~1\) # (GND)))
-- \VGA_sync1|Add0~3\ = CARRY((!\VGA_sync1|Add0~1\) # (!\VGA_sync1|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(1),
	datad => VCC,
	cin => \VGA_sync1|Add0~1\,
	combout => \VGA_sync1|Add0~2_combout\,
	cout => \VGA_sync1|Add0~3\);

-- Location: FF_X27_Y20_N7
\VGA_sync1|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(1));

-- Location: LCCOMB_X27_Y20_N8
\VGA_sync1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~4_combout\ = (\VGA_sync1|h_count\(2) & (\VGA_sync1|Add0~3\ $ (GND))) # (!\VGA_sync1|h_count\(2) & (!\VGA_sync1|Add0~3\ & VCC))
-- \VGA_sync1|Add0~5\ = CARRY((\VGA_sync1|h_count\(2) & !\VGA_sync1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(2),
	datad => VCC,
	cin => \VGA_sync1|Add0~3\,
	combout => \VGA_sync1|Add0~4_combout\,
	cout => \VGA_sync1|Add0~5\);

-- Location: FF_X27_Y20_N9
\VGA_sync1|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(2));

-- Location: LCCOMB_X27_Y20_N10
\VGA_sync1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~6_combout\ = (\VGA_sync1|h_count\(3) & (!\VGA_sync1|Add0~5\)) # (!\VGA_sync1|h_count\(3) & ((\VGA_sync1|Add0~5\) # (GND)))
-- \VGA_sync1|Add0~7\ = CARRY((!\VGA_sync1|Add0~5\) # (!\VGA_sync1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(3),
	datad => VCC,
	cin => \VGA_sync1|Add0~5\,
	combout => \VGA_sync1|Add0~6_combout\,
	cout => \VGA_sync1|Add0~7\);

-- Location: FF_X27_Y20_N11
\VGA_sync1|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(3));

-- Location: LCCOMB_X27_Y20_N16
\VGA_sync1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~12_combout\ = (\VGA_sync1|h_count\(6) & (\VGA_sync1|Add0~11\ $ (GND))) # (!\VGA_sync1|h_count\(6) & (!\VGA_sync1|Add0~11\ & VCC))
-- \VGA_sync1|Add0~13\ = CARRY((\VGA_sync1|h_count\(6) & !\VGA_sync1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(6),
	datad => VCC,
	cin => \VGA_sync1|Add0~11\,
	combout => \VGA_sync1|Add0~12_combout\,
	cout => \VGA_sync1|Add0~13\);

-- Location: LCCOMB_X27_Y20_N18
\VGA_sync1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~14_combout\ = (\VGA_sync1|h_count\(7) & (!\VGA_sync1|Add0~13\)) # (!\VGA_sync1|h_count\(7) & ((\VGA_sync1|Add0~13\) # (GND)))
-- \VGA_sync1|Add0~15\ = CARRY((!\VGA_sync1|Add0~13\) # (!\VGA_sync1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(7),
	datad => VCC,
	cin => \VGA_sync1|Add0~13\,
	combout => \VGA_sync1|Add0~14_combout\,
	cout => \VGA_sync1|Add0~15\);

-- Location: FF_X27_Y20_N19
\VGA_sync1|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(7));

-- Location: LCCOMB_X27_Y20_N20
\VGA_sync1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~16_combout\ = (\VGA_sync1|h_count\(8) & (\VGA_sync1|Add0~15\ $ (GND))) # (!\VGA_sync1|h_count\(8) & (!\VGA_sync1|Add0~15\ & VCC))
-- \VGA_sync1|Add0~17\ = CARRY((\VGA_sync1|h_count\(8) & !\VGA_sync1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(8),
	datad => VCC,
	cin => \VGA_sync1|Add0~15\,
	combout => \VGA_sync1|Add0~16_combout\,
	cout => \VGA_sync1|Add0~17\);

-- Location: LCCOMB_X27_Y20_N24
\VGA_sync1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~0_combout\ = (\VGA_sync1|Add0~16_combout\ & (((!\VGA_sync1|h_count\(9)) # (!\VGA_sync1|Equal0~2_combout\)) # (!\VGA_sync1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Equal0~0_combout\,
	datab => \VGA_sync1|Equal0~2_combout\,
	datac => \VGA_sync1|h_count\(9),
	datad => \VGA_sync1|Add0~16_combout\,
	combout => \VGA_sync1|h_count~0_combout\);

-- Location: FF_X27_Y20_N25
\VGA_sync1|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(8));

-- Location: LCCOMB_X27_Y20_N12
\VGA_sync1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~8_combout\ = (\VGA_sync1|h_count\(4) & (\VGA_sync1|Add0~7\ $ (GND))) # (!\VGA_sync1|h_count\(4) & (!\VGA_sync1|Add0~7\ & VCC))
-- \VGA_sync1|Add0~9\ = CARRY((\VGA_sync1|h_count\(4) & !\VGA_sync1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(4),
	datad => VCC,
	cin => \VGA_sync1|Add0~7\,
	combout => \VGA_sync1|Add0~8_combout\,
	cout => \VGA_sync1|Add0~9\);

-- Location: FF_X27_Y20_N13
\VGA_sync1|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(4));

-- Location: LCCOMB_X27_Y20_N0
\VGA_sync1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~1_combout\ = (\VGA_sync1|h_count\(3) & (\VGA_sync1|h_count\(8) & (\VGA_sync1|h_count\(2) & \VGA_sync1|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(3),
	datab => \VGA_sync1|h_count\(8),
	datac => \VGA_sync1|h_count\(2),
	datad => \VGA_sync1|h_count\(4),
	combout => \VGA_sync1|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y20_N2
\VGA_sync1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~2_combout\ = (\VGA_sync1|h_count\(0) & (\VGA_sync1|h_count\(1) & \VGA_sync1|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(0),
	datac => \VGA_sync1|h_count\(1),
	datad => \VGA_sync1|Equal0~1_combout\,
	combout => \VGA_sync1|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y20_N22
\VGA_sync1|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~18_combout\ = \VGA_sync1|Add0~17\ $ (\VGA_sync1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_sync1|h_count\(9),
	cin => \VGA_sync1|Add0~17\,
	combout => \VGA_sync1|Add0~18_combout\);

-- Location: LCCOMB_X27_Y20_N26
\VGA_sync1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~2_combout\ = (\VGA_sync1|Add0~18_combout\ & (((!\VGA_sync1|h_count\(9)) # (!\VGA_sync1|Equal0~2_combout\)) # (!\VGA_sync1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Equal0~0_combout\,
	datab => \VGA_sync1|Equal0~2_combout\,
	datac => \VGA_sync1|h_count\(9),
	datad => \VGA_sync1|Add0~18_combout\,
	combout => \VGA_sync1|h_count~2_combout\);

-- Location: FF_X27_Y20_N27
\VGA_sync1|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(9));

-- Location: LCCOMB_X27_Y20_N14
\VGA_sync1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~10_combout\ = (\VGA_sync1|h_count\(5) & (!\VGA_sync1|Add0~9\)) # (!\VGA_sync1|h_count\(5) & ((\VGA_sync1|Add0~9\) # (GND)))
-- \VGA_sync1|Add0~11\ = CARRY((!\VGA_sync1|Add0~9\) # (!\VGA_sync1|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(5),
	datad => VCC,
	cin => \VGA_sync1|Add0~9\,
	combout => \VGA_sync1|Add0~10_combout\,
	cout => \VGA_sync1|Add0~11\);

-- Location: LCCOMB_X27_Y20_N30
\VGA_sync1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~1_combout\ = (\VGA_sync1|Add0~10_combout\ & (((!\VGA_sync1|Equal0~2_combout\) # (!\VGA_sync1|Equal0~0_combout\)) # (!\VGA_sync1|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(9),
	datab => \VGA_sync1|Equal0~0_combout\,
	datac => \VGA_sync1|Add0~10_combout\,
	datad => \VGA_sync1|Equal0~2_combout\,
	combout => \VGA_sync1|h_count~1_combout\);

-- Location: FF_X27_Y20_N31
\VGA_sync1|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(5));

-- Location: FF_X27_Y20_N17
\VGA_sync1|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|h_count\(6));

-- Location: LCCOMB_X27_Y20_N28
\VGA_sync1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~0_combout\ = (!\VGA_sync1|h_count\(6) & (!\VGA_sync1|h_count\(5) & !\VGA_sync1|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(6),
	datac => \VGA_sync1|h_count\(5),
	datad => \VGA_sync1|h_count\(7),
	combout => \VGA_sync1|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y20_N4
\VGA_sync1|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~3_combout\ = (\VGA_sync1|Equal0~0_combout\ & (\VGA_sync1|h_count\(9) & \VGA_sync1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|Equal0~0_combout\,
	datac => \VGA_sync1|h_count\(9),
	datad => \VGA_sync1|Equal0~2_combout\,
	combout => \VGA_sync1|Equal0~3_combout\);

-- Location: FF_X28_Y20_N3
\VGA_sync1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~3_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(0));

-- Location: LCCOMB_X28_Y20_N10
\VGA_sync1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~2_combout\ = (\VGA_sync1|v_count\(1) & (!\VGA_sync1|Add1~1\)) # (!\VGA_sync1|v_count\(1) & ((\VGA_sync1|Add1~1\) # (GND)))
-- \VGA_sync1|Add1~3\ = CARRY((!\VGA_sync1|Add1~1\) # (!\VGA_sync1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(1),
	datad => VCC,
	cin => \VGA_sync1|Add1~1\,
	combout => \VGA_sync1|Add1~2_combout\,
	cout => \VGA_sync1|Add1~3\);

-- Location: FF_X28_Y20_N11
\VGA_sync1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~2_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(1));

-- Location: LCCOMB_X28_Y20_N12
\VGA_sync1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~4_combout\ = (\VGA_sync1|v_count\(2) & (\VGA_sync1|Add1~3\ $ (GND))) # (!\VGA_sync1|v_count\(2) & (!\VGA_sync1|Add1~3\ & VCC))
-- \VGA_sync1|Add1~5\ = CARRY((\VGA_sync1|v_count\(2) & !\VGA_sync1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(2),
	datad => VCC,
	cin => \VGA_sync1|Add1~3\,
	combout => \VGA_sync1|Add1~4_combout\,
	cout => \VGA_sync1|Add1~5\);

-- Location: LCCOMB_X28_Y20_N0
\VGA_sync1|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~2_combout\ = (\VGA_sync1|Add1~4_combout\ & (((!\VGA_sync1|Equal1~2_combout\) # (!\VGA_sync1|Equal1~0_combout\)) # (!\VGA_sync1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Add1~4_combout\,
	datab => \VGA_sync1|v_count\(9),
	datac => \VGA_sync1|Equal1~0_combout\,
	datad => \VGA_sync1|Equal1~2_combout\,
	combout => \VGA_sync1|v_count~2_combout\);

-- Location: FF_X28_Y20_N1
\VGA_sync1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~2_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(2));

-- Location: LCCOMB_X28_Y20_N22
\VGA_sync1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~14_combout\ = (\VGA_sync1|v_count\(7) & (!\VGA_sync1|Add1~13\)) # (!\VGA_sync1|v_count\(7) & ((\VGA_sync1|Add1~13\) # (GND)))
-- \VGA_sync1|Add1~15\ = CARRY((!\VGA_sync1|Add1~13\) # (!\VGA_sync1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datad => VCC,
	cin => \VGA_sync1|Add1~13\,
	combout => \VGA_sync1|Add1~14_combout\,
	cout => \VGA_sync1|Add1~15\);

-- Location: LCCOMB_X28_Y20_N24
\VGA_sync1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~16_combout\ = (\VGA_sync1|v_count\(8) & (\VGA_sync1|Add1~15\ $ (GND))) # (!\VGA_sync1|v_count\(8) & (!\VGA_sync1|Add1~15\ & VCC))
-- \VGA_sync1|Add1~17\ = CARRY((\VGA_sync1|v_count\(8) & !\VGA_sync1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(8),
	datad => VCC,
	cin => \VGA_sync1|Add1~15\,
	combout => \VGA_sync1|Add1~16_combout\,
	cout => \VGA_sync1|Add1~17\);

-- Location: FF_X28_Y20_N25
\VGA_sync1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~16_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(8));

-- Location: LCCOMB_X29_Y20_N6
\VGA_sync1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~1_combout\ = (!\VGA_sync1|v_count\(1) & (!\VGA_sync1|v_count\(7) & (!\VGA_sync1|v_count\(0) & !\VGA_sync1|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(1),
	datab => \VGA_sync1|v_count\(7),
	datac => \VGA_sync1|v_count\(0),
	datad => \VGA_sync1|v_count\(8),
	combout => \VGA_sync1|Equal1~1_combout\);

-- Location: LCCOMB_X28_Y20_N6
\VGA_sync1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~2_combout\ = (\VGA_sync1|v_count\(3) & (\VGA_sync1|v_count\(2) & \VGA_sync1|Equal1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(3),
	datac => \VGA_sync1|v_count\(2),
	datad => \VGA_sync1|Equal1~1_combout\,
	combout => \VGA_sync1|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y20_N26
\VGA_sync1|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~18_combout\ = \VGA_sync1|Add1~17\ $ (\VGA_sync1|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_sync1|v_count\(9),
	cin => \VGA_sync1|Add1~17\,
	combout => \VGA_sync1|Add1~18_combout\);

-- Location: LCCOMB_X28_Y20_N28
\VGA_sync1|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~0_combout\ = (\VGA_sync1|Add1~18_combout\ & (((!\VGA_sync1|v_count\(9)) # (!\VGA_sync1|Equal1~0_combout\)) # (!\VGA_sync1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Equal1~2_combout\,
	datab => \VGA_sync1|Equal1~0_combout\,
	datac => \VGA_sync1|v_count\(9),
	datad => \VGA_sync1|Add1~18_combout\,
	combout => \VGA_sync1|v_count~0_combout\);

-- Location: FF_X28_Y20_N29
\VGA_sync1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~0_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(9));

-- Location: LCCOMB_X28_Y20_N14
\VGA_sync1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~6_combout\ = (\VGA_sync1|v_count\(3) & (!\VGA_sync1|Add1~5\)) # (!\VGA_sync1|v_count\(3) & ((\VGA_sync1|Add1~5\) # (GND)))
-- \VGA_sync1|Add1~7\ = CARRY((!\VGA_sync1|Add1~5\) # (!\VGA_sync1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(3),
	datad => VCC,
	cin => \VGA_sync1|Add1~5\,
	combout => \VGA_sync1|Add1~6_combout\,
	cout => \VGA_sync1|Add1~7\);

-- Location: LCCOMB_X28_Y20_N30
\VGA_sync1|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~1_combout\ = (\VGA_sync1|Add1~6_combout\ & (((!\VGA_sync1|Equal1~2_combout\) # (!\VGA_sync1|Equal1~0_combout\)) # (!\VGA_sync1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(9),
	datab => \VGA_sync1|Equal1~0_combout\,
	datac => \VGA_sync1|Add1~6_combout\,
	datad => \VGA_sync1|Equal1~2_combout\,
	combout => \VGA_sync1|v_count~1_combout\);

-- Location: FF_X28_Y20_N31
\VGA_sync1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~1_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(3));

-- Location: LCCOMB_X28_Y20_N16
\VGA_sync1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~8_combout\ = (\VGA_sync1|v_count\(4) & (\VGA_sync1|Add1~7\ $ (GND))) # (!\VGA_sync1|v_count\(4) & (!\VGA_sync1|Add1~7\ & VCC))
-- \VGA_sync1|Add1~9\ = CARRY((\VGA_sync1|v_count\(4) & !\VGA_sync1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(4),
	datad => VCC,
	cin => \VGA_sync1|Add1~7\,
	combout => \VGA_sync1|Add1~8_combout\,
	cout => \VGA_sync1|Add1~9\);

-- Location: FF_X28_Y20_N17
\VGA_sync1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~8_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(4));

-- Location: LCCOMB_X28_Y20_N18
\VGA_sync1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~10_combout\ = (\VGA_sync1|v_count\(5) & (!\VGA_sync1|Add1~9\)) # (!\VGA_sync1|v_count\(5) & ((\VGA_sync1|Add1~9\) # (GND)))
-- \VGA_sync1|Add1~11\ = CARRY((!\VGA_sync1|Add1~9\) # (!\VGA_sync1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(5),
	datad => VCC,
	cin => \VGA_sync1|Add1~9\,
	combout => \VGA_sync1|Add1~10_combout\,
	cout => \VGA_sync1|Add1~11\);

-- Location: FF_X28_Y20_N19
\VGA_sync1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~10_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(5));

-- Location: LCCOMB_X28_Y20_N20
\VGA_sync1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~12_combout\ = (\VGA_sync1|v_count\(6) & (\VGA_sync1|Add1~11\ $ (GND))) # (!\VGA_sync1|v_count\(6) & (!\VGA_sync1|Add1~11\ & VCC))
-- \VGA_sync1|Add1~13\ = CARRY((\VGA_sync1|v_count\(6) & !\VGA_sync1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(6),
	datad => VCC,
	cin => \VGA_sync1|Add1~11\,
	combout => \VGA_sync1|Add1~12_combout\,
	cout => \VGA_sync1|Add1~13\);

-- Location: FF_X28_Y20_N21
\VGA_sync1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~12_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(6));

-- Location: FF_X28_Y20_N23
\VGA_sync1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~14_combout\,
	ena => \VGA_sync1|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(7));

-- Location: LCCOMB_X29_Y20_N8
\Vbar_display1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|LessThan1~0_combout\ = (\VGA_sync1|v_count\(2) & (\VGA_sync1|v_count\(0) & (\VGA_sync1|v_count\(4) & \VGA_sync1|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(2),
	datab => \VGA_sync1|v_count\(0),
	datac => \VGA_sync1|v_count\(4),
	datad => \VGA_sync1|v_count\(1),
	combout => \Vbar_display1|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y20_N18
\Vbar_display1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|LessThan1~1_combout\ = (\VGA_sync1|v_count\(5)) # ((\VGA_sync1|v_count\(6)) # ((\VGA_sync1|v_count\(4) & \VGA_sync1|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(4),
	datab => \VGA_sync1|v_count\(5),
	datac => \VGA_sync1|v_count\(3),
	datad => \VGA_sync1|v_count\(6),
	combout => \Vbar_display1|LessThan1~1_combout\);

-- Location: LCCOMB_X29_Y20_N12
\Vbar_display1|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|LessThan1~2_combout\ = (\VGA_sync1|v_count\(8)) # ((\VGA_sync1|v_count\(7) & ((\Vbar_display1|LessThan1~0_combout\) # (\Vbar_display1|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \VGA_sync1|v_count\(8),
	datac => \Vbar_display1|LessThan1~0_combout\,
	datad => \Vbar_display1|LessThan1~1_combout\,
	combout => \Vbar_display1|LessThan1~2_combout\);

-- Location: LCCOMB_X29_Y20_N20
\Vbar_display1|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|LessThan5~0_combout\ = (!\VGA_sync1|v_count\(2) & ((!\VGA_sync1|v_count\(1)) # (!\VGA_sync1|v_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(0),
	datac => \VGA_sync1|v_count\(2),
	datad => \VGA_sync1|v_count\(1),
	combout => \Vbar_display1|LessThan5~0_combout\);

-- Location: LCCOMB_X29_Y20_N22
\Vbar_display1|Rout~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Rout~2_combout\ = (\VGA_sync1|v_count\(4) & (\VGA_sync1|v_count\(5) & ((\VGA_sync1|v_count\(3)) # (!\Vbar_display1|LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(4),
	datab => \VGA_sync1|v_count\(5),
	datac => \VGA_sync1|v_count\(3),
	datad => \Vbar_display1|LessThan5~0_combout\,
	combout => \Vbar_display1|Rout~2_combout\);

-- Location: LCCOMB_X29_Y20_N10
\Vbar_display1|Rout~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Rout~3_combout\ = (!\Vbar_display1|LessThan1~2_combout\ & ((\VGA_sync1|v_count\(7)) # ((\Vbar_display1|Rout~2_combout\) # (\VGA_sync1|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vbar_display1|LessThan1~2_combout\,
	datab => \VGA_sync1|v_count\(7),
	datac => \Vbar_display1|Rout~2_combout\,
	datad => \VGA_sync1|v_count\(6),
	combout => \Vbar_display1|Rout~3_combout\);

-- Location: LCCOMB_X29_Y20_N4
\Vbar_display1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|LessThan5~1_combout\ = (\VGA_sync1|v_count\(7) & (\VGA_sync1|v_count\(6) & (\VGA_sync1|v_count\(3) & \VGA_sync1|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \VGA_sync1|v_count\(6),
	datac => \VGA_sync1|v_count\(3),
	datad => \VGA_sync1|v_count\(5),
	combout => \Vbar_display1|LessThan5~1_combout\);

-- Location: LCCOMB_X30_Y20_N2
\Vbar_display1|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|LessThan5~2_combout\ = (\VGA_sync1|v_count\(8)) # ((\VGA_sync1|v_count\(4) & (\Vbar_display1|LessThan5~1_combout\ & !\Vbar_display1|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(4),
	datab => \VGA_sync1|v_count\(8),
	datac => \Vbar_display1|LessThan5~1_combout\,
	datad => \Vbar_display1|LessThan5~0_combout\,
	combout => \Vbar_display1|LessThan5~2_combout\);

-- Location: LCCOMB_X30_Y20_N16
\Vbar_display1|Rout~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Rout~4_combout\ = (\Vbar_display1|LessThan1~2_combout\ & !\Vbar_display1|LessThan5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vbar_display1|LessThan1~2_combout\,
	datad => \Vbar_display1|LessThan5~2_combout\,
	combout => \Vbar_display1|Rout~4_combout\);

-- Location: LCCOMB_X26_Y20_N0
\Vbar_display1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|process_0~0_combout\ = (!\VGA_sync1|h_count\(2) & (!\VGA_sync1|h_count\(3) & (!\VGA_sync1|h_count\(4) & !\VGA_sync1|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(2),
	datab => \VGA_sync1|h_count\(3),
	datac => \VGA_sync1|h_count\(4),
	datad => \VGA_sync1|h_count\(8),
	combout => \Vbar_display1|process_0~0_combout\);

-- Location: LCCOMB_X26_Y20_N2
\Vbar_display1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|process_0~1_combout\ = (!\VGA_sync1|h_count\(1) & (!\VGA_sync1|h_count\(0) & \Vbar_display1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(1),
	datac => \VGA_sync1|h_count\(0),
	datad => \Vbar_display1|process_0~0_combout\,
	combout => \Vbar_display1|process_0~1_combout\);

-- Location: LCCOMB_X26_Y20_N22
\Vbar_display1|Rout[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Rout[0]~0_combout\ = (!\VGA_sync1|v_count\(9) & (((!\VGA_sync1|h_count\(7) & !\VGA_sync1|h_count\(8))) # (!\VGA_sync1|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(9),
	datab => \VGA_sync1|h_count\(7),
	datac => \VGA_sync1|h_count\(9),
	datad => \VGA_sync1|h_count\(8),
	combout => \Vbar_display1|Rout[0]~0_combout\);

-- Location: LCCOMB_X26_Y20_N20
\Vbar_display1|Rout[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Rout[0]~1_combout\ = (\Vbar_display1|Rout[0]~0_combout\ & ((\VGA_sync1|h_count\(9)) # ((!\VGA_sync1|Equal0~0_combout\) # (!\Vbar_display1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(9),
	datab => \Vbar_display1|process_0~1_combout\,
	datac => \Vbar_display1|Rout[0]~0_combout\,
	datad => \VGA_sync1|Equal0~0_combout\,
	combout => \Vbar_display1|Rout[0]~1_combout\);

-- Location: LCCOMB_X26_Y20_N16
\VGA_sync1|video_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|video_on~0_combout\ = ((\VGA_sync1|h_count\(8) & (!\VGA_sync1|Equal0~0_combout\)) # (!\VGA_sync1|h_count\(8) & ((!\VGA_sync1|h_count\(7))))) # (!\VGA_sync1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Equal0~0_combout\,
	datab => \VGA_sync1|h_count\(7),
	datac => \VGA_sync1|h_count\(9),
	datad => \VGA_sync1|h_count\(8),
	combout => \VGA_sync1|video_on~0_combout\);

-- Location: LCCOMB_X29_Y20_N16
\VGA_sync1|process_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~0_combout\ = (\VGA_sync1|v_count\(9) & (((\VGA_sync1|v_count\(7))))) # (!\VGA_sync1|v_count\(9) & (((!\VGA_sync1|v_count\(5))) # (!\VGA_sync1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(6),
	datab => \VGA_sync1|v_count\(5),
	datac => \VGA_sync1|v_count\(7),
	datad => \VGA_sync1|v_count\(9),
	combout => \VGA_sync1|process_4~0_combout\);

-- Location: LCCOMB_X29_Y20_N30
\VGA_sync1|process_4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~1_combout\ = (\VGA_sync1|v_count\(2) & (\VGA_sync1|v_count\(3) & ((\VGA_sync1|v_count\(0)) # (\VGA_sync1|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(2),
	datab => \VGA_sync1|v_count\(0),
	datac => \VGA_sync1|v_count\(3),
	datad => \VGA_sync1|v_count\(1),
	combout => \VGA_sync1|process_4~1_combout\);

-- Location: LCCOMB_X29_Y20_N14
\VGA_sync1|process_4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~2_combout\ = (\VGA_sync1|process_4~0_combout\) # ((!\VGA_sync1|v_count\(8) & ((\VGA_sync1|process_4~1_combout\) # (!\VGA_sync1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(8),
	datab => \VGA_sync1|process_4~0_combout\,
	datac => \VGA_sync1|process_4~1_combout\,
	datad => \VGA_sync1|Equal1~0_combout\,
	combout => \VGA_sync1|process_4~2_combout\);

-- Location: LCCOMB_X30_Y20_N0
\VGA_sync1|video_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|video_on~1_combout\ = (\VGA_sync1|video_on~0_combout\ & ((\VGA_sync1|process_4~2_combout\) # ((\VGA_sync1|v_count\(8) & !\VGA_sync1|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|video_on~0_combout\,
	datab => \VGA_sync1|v_count\(8),
	datac => \VGA_sync1|v_count\(7),
	datad => \VGA_sync1|process_4~2_combout\,
	combout => \VGA_sync1|video_on~1_combout\);

-- Location: LCCOMB_X30_Y20_N30
\Vbar_display1|Rout[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Rout[0]~5_combout\ = (\Vbar_display1|Rout[0]~1_combout\ & (\VGA_sync1|video_on~1_combout\ & ((\Vbar_display1|Rout~3_combout\) # (\Vbar_display1|Rout~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vbar_display1|Rout~3_combout\,
	datab => \Vbar_display1|Rout~4_combout\,
	datac => \Vbar_display1|Rout[0]~1_combout\,
	datad => \VGA_sync1|video_on~1_combout\,
	combout => \Vbar_display1|Rout[0]~5_combout\);

-- Location: LCCOMB_X29_Y20_N26
\Vbar_display1|Gout[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Gout[0]~0_combout\ = (\VGA_sync1|v_count\(7)) # ((\VGA_sync1|v_count\(6) & \VGA_sync1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(6),
	datac => \VGA_sync1|v_count\(7),
	datad => \VGA_sync1|v_count\(5),
	combout => \Vbar_display1|Gout[0]~0_combout\);

-- Location: LCCOMB_X29_Y20_N24
\Vbar_display1|Gout[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Gout[0]~1_combout\ = (\VGA_sync1|v_count\(2) & (\VGA_sync1|v_count\(6) & (\VGA_sync1|v_count\(4) & \VGA_sync1|v_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(2),
	datab => \VGA_sync1|v_count\(6),
	datac => \VGA_sync1|v_count\(4),
	datad => \VGA_sync1|v_count\(1),
	combout => \Vbar_display1|Gout[0]~1_combout\);

-- Location: LCCOMB_X29_Y20_N2
\Vbar_display1|Gout[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Gout[0]~2_combout\ = (\VGA_sync1|v_count\(8) & ((\Vbar_display1|Gout[0]~0_combout\) # ((\VGA_sync1|v_count\(3) & \Vbar_display1|Gout[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vbar_display1|Gout[0]~0_combout\,
	datab => \VGA_sync1|v_count\(8),
	datac => \VGA_sync1|v_count\(3),
	datad => \Vbar_display1|Gout[0]~1_combout\,
	combout => \Vbar_display1|Gout[0]~2_combout\);

-- Location: LCCOMB_X30_Y20_N12
\Vbar_display1|Gout[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Gout[0]~3_combout\ = (\VGA_sync1|video_on~1_combout\ & ((\Vbar_display1|Gout[0]~2_combout\) # ((!\Vbar_display1|Rout[0]~1_combout\) # (!\Vbar_display1|LessThan5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vbar_display1|Gout[0]~2_combout\,
	datab => \Vbar_display1|LessThan5~2_combout\,
	datac => \Vbar_display1|Rout[0]~1_combout\,
	datad => \VGA_sync1|video_on~1_combout\,
	combout => \Vbar_display1|Gout[0]~3_combout\);

-- Location: LCCOMB_X30_Y20_N14
\Vbar_display1|Gout[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Gout[0]~4_combout\ = (\Vbar_display1|LessThan1~2_combout\ & (!\Vbar_display1|LessThan5~2_combout\ & (\Vbar_display1|Rout[0]~1_combout\ & \Vbar_display1|Gout[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vbar_display1|LessThan1~2_combout\,
	datab => \Vbar_display1|LessThan5~2_combout\,
	datac => \Vbar_display1|Rout[0]~1_combout\,
	datad => \Vbar_display1|Gout[0]~3_combout\,
	combout => \Vbar_display1|Gout[0]~4_combout\);

-- Location: LCCOMB_X30_Y20_N24
\Vbar_display1|Bout[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Vbar_display1|Bout[0]~0_combout\ = (\Vbar_display1|Gout[0]~3_combout\ & (\Vbar_display1|Rout~4_combout\ & (\Vbar_display1|Rout[0]~1_combout\))) # (!\Vbar_display1|Gout[0]~3_combout\ & (((\VGA_sync1|video_on~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Vbar_display1|Gout[0]~3_combout\,
	datab => \Vbar_display1|Rout~4_combout\,
	datac => \Vbar_display1|Rout[0]~1_combout\,
	datad => \VGA_sync1|video_on~1_combout\,
	combout => \Vbar_display1|Bout[0]~0_combout\);

-- Location: LCCOMB_X26_Y20_N10
\VGA_sync1|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~0_combout\ = (\VGA_sync1|h_count\(8)) # ((!\VGA_sync1|h_count\(7)) # (!\VGA_sync1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(8),
	datac => \VGA_sync1|h_count\(9),
	datad => \VGA_sync1|h_count\(7),
	combout => \VGA_sync1|process_2~0_combout\);

-- Location: LCCOMB_X26_Y20_N12
\VGA_sync1|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~1_combout\ = (\VGA_sync1|h_count\(4) & ((\VGA_sync1|h_count\(3)) # (\VGA_sync1|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(3),
	datac => \VGA_sync1|h_count\(4),
	datad => \VGA_sync1|h_count\(2),
	combout => \VGA_sync1|process_2~1_combout\);

-- Location: LCCOMB_X26_Y20_N6
\VGA_sync1|process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~2_combout\ = (\VGA_sync1|process_2~0_combout\) # ((\VGA_sync1|h_count\(6) & (\VGA_sync1|h_count\(5) & \VGA_sync1|process_2~1_combout\)) # (!\VGA_sync1|h_count\(6) & (!\VGA_sync1|h_count\(5) & !\VGA_sync1|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|process_2~0_combout\,
	datab => \VGA_sync1|h_count\(6),
	datac => \VGA_sync1|h_count\(5),
	datad => \VGA_sync1|process_2~1_combout\,
	combout => \VGA_sync1|process_2~2_combout\);

-- Location: LCCOMB_X29_Y20_N28
\VGA_sync1|process_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~0_combout\ = ((\VGA_sync1|v_count\(9)) # (\VGA_sync1|v_count\(1) $ (!\VGA_sync1|v_count\(0)))) # (!\VGA_sync1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(1),
	datab => \VGA_sync1|v_count\(0),
	datac => \VGA_sync1|v_count\(2),
	datad => \VGA_sync1|v_count\(9),
	combout => \VGA_sync1|process_3~0_combout\);

-- Location: LCCOMB_X30_Y20_N22
\VGA_sync1|process_3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~1_combout\ = (\VGA_sync1|v_count\(4)) # (((\VGA_sync1|process_3~0_combout\) # (!\Vbar_display1|LessThan5~1_combout\)) # (!\VGA_sync1|v_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(4),
	datab => \VGA_sync1|v_count\(8),
	datac => \Vbar_display1|LessThan5~1_combout\,
	datad => \VGA_sync1|process_3~0_combout\,
	combout => \VGA_sync1|process_3~1_combout\);

ww_Rout(0) <= \Rout[0]~output_o\;

ww_Rout(1) <= \Rout[1]~output_o\;

ww_Rout(2) <= \Rout[2]~output_o\;

ww_Rout(3) <= \Rout[3]~output_o\;

ww_Gout(0) <= \Gout[0]~output_o\;

ww_Gout(1) <= \Gout[1]~output_o\;

ww_Gout(2) <= \Gout[2]~output_o\;

ww_Gout(3) <= \Gout[3]~output_o\;

ww_Bout(0) <= \Bout[0]~output_o\;

ww_Bout(1) <= \Bout[1]~output_o\;

ww_Bout(2) <= \Bout[2]~output_o\;

ww_Bout(3) <= \Bout[3]~output_o\;

ww_HOR_SYN <= \HOR_SYN~output_o\;

ww_VER_SYN <= \VER_SYN~output_o\;
END structure;


