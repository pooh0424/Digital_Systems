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

-- DATE "04/17/2024 20:44:08"

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

ENTITY 	pil8 IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 1);
	LEDG : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END pil8;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pil8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \myclock|CLK_5hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \myclock|count_5hz[0]~23_combout\ : std_logic;
SIGNAL \myclock|count_5hz[0]~24\ : std_logic;
SIGNAL \myclock|count_5hz[1]~25_combout\ : std_logic;
SIGNAL \myclock|count_5hz[1]~26\ : std_logic;
SIGNAL \myclock|count_5hz[2]~27_combout\ : std_logic;
SIGNAL \myclock|count_5hz[2]~28\ : std_logic;
SIGNAL \myclock|count_5hz[3]~29_combout\ : std_logic;
SIGNAL \myclock|count_5hz[3]~30\ : std_logic;
SIGNAL \myclock|count_5hz[4]~31_combout\ : std_logic;
SIGNAL \myclock|count_5hz[4]~32\ : std_logic;
SIGNAL \myclock|count_5hz[5]~33_combout\ : std_logic;
SIGNAL \myclock|count_5hz[5]~34\ : std_logic;
SIGNAL \myclock|count_5hz[6]~35_combout\ : std_logic;
SIGNAL \myclock|count_5hz[6]~36\ : std_logic;
SIGNAL \myclock|count_5hz[7]~37_combout\ : std_logic;
SIGNAL \myclock|count_5hz[7]~38\ : std_logic;
SIGNAL \myclock|count_5hz[8]~39_combout\ : std_logic;
SIGNAL \myclock|count_5hz[8]~40\ : std_logic;
SIGNAL \myclock|count_5hz[9]~41_combout\ : std_logic;
SIGNAL \myclock|count_5hz[9]~42\ : std_logic;
SIGNAL \myclock|count_5hz[10]~43_combout\ : std_logic;
SIGNAL \myclock|count_5hz[10]~44\ : std_logic;
SIGNAL \myclock|count_5hz[11]~45_combout\ : std_logic;
SIGNAL \myclock|count_5hz[11]~feeder_combout\ : std_logic;
SIGNAL \myclock|count_5hz[11]~46\ : std_logic;
SIGNAL \myclock|count_5hz[12]~47_combout\ : std_logic;
SIGNAL \myclock|count_5hz[12]~48\ : std_logic;
SIGNAL \myclock|count_5hz[13]~49_combout\ : std_logic;
SIGNAL \myclock|count_5hz[13]~50\ : std_logic;
SIGNAL \myclock|count_5hz[14]~51_combout\ : std_logic;
SIGNAL \myclock|count_5hz[14]~52\ : std_logic;
SIGNAL \myclock|count_5hz[15]~53_combout\ : std_logic;
SIGNAL \myclock|count_5hz[15]~54\ : std_logic;
SIGNAL \myclock|count_5hz[16]~55_combout\ : std_logic;
SIGNAL \myclock|count_5hz[16]~56\ : std_logic;
SIGNAL \myclock|count_5hz[17]~57_combout\ : std_logic;
SIGNAL \myclock|count_5hz[17]~58\ : std_logic;
SIGNAL \myclock|count_5hz[18]~59_combout\ : std_logic;
SIGNAL \myclock|count_5hz[18]~60\ : std_logic;
SIGNAL \myclock|count_5hz[19]~61_combout\ : std_logic;
SIGNAL \myclock|count_5hz[19]~62\ : std_logic;
SIGNAL \myclock|count_5hz[20]~63_combout\ : std_logic;
SIGNAL \myclock|count_5hz[20]~64\ : std_logic;
SIGNAL \myclock|count_5hz[21]~65_combout\ : std_logic;
SIGNAL \myclock|LessThan0~0_combout\ : std_logic;
SIGNAL \myclock|count_5hz[21]~66\ : std_logic;
SIGNAL \myclock|count_5hz[22]~67_combout\ : std_logic;
SIGNAL \myclock|LessThan0~1_combout\ : std_logic;
SIGNAL \myclock|LessThan0~2_combout\ : std_logic;
SIGNAL \myclock|LessThan0~3_combout\ : std_logic;
SIGNAL \myclock|LessThan0~4_combout\ : std_logic;
SIGNAL \myclock|LessThan0~5_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~feeder_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~q\ : std_logic;
SIGNAL \myclock|CLK_5hz~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~3_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \count[1]~0_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \myclock|count_5hz\ : std_logic_vector(22 DOWNTO 0);
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \myclock|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\myclock|CLK_5hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \myclock|CLK_5hz~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\myclock|ALT_INV_LessThan0~5_combout\ <= NOT \myclock|LessThan0~5_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
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
	i => count(2),
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
	i => \Mux5~0_combout\,
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
	i => \Mux4~0_combout\,
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
	i => \Mux3~0_combout\,
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
	i => \ALT_INV_Mux2~0_combout\,
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
	i => \ALT_INV_Mux1~0_combout\,
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
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X1_Y14_N10
\myclock|count_5hz[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[0]~23_combout\ = \myclock|count_5hz\(0) $ (VCC)
-- \myclock|count_5hz[0]~24\ = CARRY(\myclock|count_5hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(0),
	datad => VCC,
	combout => \myclock|count_5hz[0]~23_combout\,
	cout => \myclock|count_5hz[0]~24\);

-- Location: FF_X1_Y14_N11
\myclock|count_5hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[0]~23_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(0));

-- Location: LCCOMB_X1_Y14_N12
\myclock|count_5hz[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[1]~25_combout\ = (\myclock|count_5hz\(1) & (!\myclock|count_5hz[0]~24\)) # (!\myclock|count_5hz\(1) & ((\myclock|count_5hz[0]~24\) # (GND)))
-- \myclock|count_5hz[1]~26\ = CARRY((!\myclock|count_5hz[0]~24\) # (!\myclock|count_5hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(1),
	datad => VCC,
	cin => \myclock|count_5hz[0]~24\,
	combout => \myclock|count_5hz[1]~25_combout\,
	cout => \myclock|count_5hz[1]~26\);

-- Location: FF_X1_Y14_N13
\myclock|count_5hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[1]~25_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(1));

-- Location: LCCOMB_X1_Y14_N14
\myclock|count_5hz[2]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[2]~27_combout\ = (\myclock|count_5hz\(2) & (\myclock|count_5hz[1]~26\ $ (GND))) # (!\myclock|count_5hz\(2) & (!\myclock|count_5hz[1]~26\ & VCC))
-- \myclock|count_5hz[2]~28\ = CARRY((\myclock|count_5hz\(2) & !\myclock|count_5hz[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(2),
	datad => VCC,
	cin => \myclock|count_5hz[1]~26\,
	combout => \myclock|count_5hz[2]~27_combout\,
	cout => \myclock|count_5hz[2]~28\);

-- Location: FF_X1_Y14_N15
\myclock|count_5hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[2]~27_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(2));

-- Location: LCCOMB_X1_Y14_N16
\myclock|count_5hz[3]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[3]~29_combout\ = (\myclock|count_5hz\(3) & (!\myclock|count_5hz[2]~28\)) # (!\myclock|count_5hz\(3) & ((\myclock|count_5hz[2]~28\) # (GND)))
-- \myclock|count_5hz[3]~30\ = CARRY((!\myclock|count_5hz[2]~28\) # (!\myclock|count_5hz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(3),
	datad => VCC,
	cin => \myclock|count_5hz[2]~28\,
	combout => \myclock|count_5hz[3]~29_combout\,
	cout => \myclock|count_5hz[3]~30\);

-- Location: FF_X1_Y14_N17
\myclock|count_5hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[3]~29_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(3));

-- Location: LCCOMB_X1_Y14_N18
\myclock|count_5hz[4]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[4]~31_combout\ = (\myclock|count_5hz\(4) & (\myclock|count_5hz[3]~30\ $ (GND))) # (!\myclock|count_5hz\(4) & (!\myclock|count_5hz[3]~30\ & VCC))
-- \myclock|count_5hz[4]~32\ = CARRY((\myclock|count_5hz\(4) & !\myclock|count_5hz[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(4),
	datad => VCC,
	cin => \myclock|count_5hz[3]~30\,
	combout => \myclock|count_5hz[4]~31_combout\,
	cout => \myclock|count_5hz[4]~32\);

-- Location: FF_X1_Y14_N19
\myclock|count_5hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[4]~31_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(4));

-- Location: LCCOMB_X1_Y14_N20
\myclock|count_5hz[5]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[5]~33_combout\ = (\myclock|count_5hz\(5) & (!\myclock|count_5hz[4]~32\)) # (!\myclock|count_5hz\(5) & ((\myclock|count_5hz[4]~32\) # (GND)))
-- \myclock|count_5hz[5]~34\ = CARRY((!\myclock|count_5hz[4]~32\) # (!\myclock|count_5hz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(5),
	datad => VCC,
	cin => \myclock|count_5hz[4]~32\,
	combout => \myclock|count_5hz[5]~33_combout\,
	cout => \myclock|count_5hz[5]~34\);

-- Location: FF_X1_Y14_N21
\myclock|count_5hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[5]~33_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(5));

-- Location: LCCOMB_X1_Y14_N22
\myclock|count_5hz[6]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[6]~35_combout\ = (\myclock|count_5hz\(6) & (\myclock|count_5hz[5]~34\ $ (GND))) # (!\myclock|count_5hz\(6) & (!\myclock|count_5hz[5]~34\ & VCC))
-- \myclock|count_5hz[6]~36\ = CARRY((\myclock|count_5hz\(6) & !\myclock|count_5hz[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(6),
	datad => VCC,
	cin => \myclock|count_5hz[5]~34\,
	combout => \myclock|count_5hz[6]~35_combout\,
	cout => \myclock|count_5hz[6]~36\);

-- Location: FF_X1_Y14_N23
\myclock|count_5hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[6]~35_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(6));

-- Location: LCCOMB_X1_Y14_N24
\myclock|count_5hz[7]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[7]~37_combout\ = (\myclock|count_5hz\(7) & (!\myclock|count_5hz[6]~36\)) # (!\myclock|count_5hz\(7) & ((\myclock|count_5hz[6]~36\) # (GND)))
-- \myclock|count_5hz[7]~38\ = CARRY((!\myclock|count_5hz[6]~36\) # (!\myclock|count_5hz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(7),
	datad => VCC,
	cin => \myclock|count_5hz[6]~36\,
	combout => \myclock|count_5hz[7]~37_combout\,
	cout => \myclock|count_5hz[7]~38\);

-- Location: FF_X1_Y14_N25
\myclock|count_5hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[7]~37_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(7));

-- Location: LCCOMB_X1_Y14_N26
\myclock|count_5hz[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[8]~39_combout\ = (\myclock|count_5hz\(8) & (\myclock|count_5hz[7]~38\ $ (GND))) # (!\myclock|count_5hz\(8) & (!\myclock|count_5hz[7]~38\ & VCC))
-- \myclock|count_5hz[8]~40\ = CARRY((\myclock|count_5hz\(8) & !\myclock|count_5hz[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(8),
	datad => VCC,
	cin => \myclock|count_5hz[7]~38\,
	combout => \myclock|count_5hz[8]~39_combout\,
	cout => \myclock|count_5hz[8]~40\);

-- Location: FF_X1_Y14_N27
\myclock|count_5hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[8]~39_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(8));

-- Location: LCCOMB_X1_Y14_N28
\myclock|count_5hz[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[9]~41_combout\ = (\myclock|count_5hz\(9) & (!\myclock|count_5hz[8]~40\)) # (!\myclock|count_5hz\(9) & ((\myclock|count_5hz[8]~40\) # (GND)))
-- \myclock|count_5hz[9]~42\ = CARRY((!\myclock|count_5hz[8]~40\) # (!\myclock|count_5hz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(9),
	datad => VCC,
	cin => \myclock|count_5hz[8]~40\,
	combout => \myclock|count_5hz[9]~41_combout\,
	cout => \myclock|count_5hz[9]~42\);

-- Location: FF_X1_Y14_N29
\myclock|count_5hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[9]~41_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(9));

-- Location: LCCOMB_X1_Y14_N30
\myclock|count_5hz[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[10]~43_combout\ = (\myclock|count_5hz\(10) & (\myclock|count_5hz[9]~42\ $ (GND))) # (!\myclock|count_5hz\(10) & (!\myclock|count_5hz[9]~42\ & VCC))
-- \myclock|count_5hz[10]~44\ = CARRY((\myclock|count_5hz\(10) & !\myclock|count_5hz[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(10),
	datad => VCC,
	cin => \myclock|count_5hz[9]~42\,
	combout => \myclock|count_5hz[10]~43_combout\,
	cout => \myclock|count_5hz[10]~44\);

-- Location: FF_X1_Y14_N31
\myclock|count_5hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[10]~43_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(10));

-- Location: LCCOMB_X1_Y13_N0
\myclock|count_5hz[11]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[11]~45_combout\ = (\myclock|count_5hz\(11) & (!\myclock|count_5hz[10]~44\)) # (!\myclock|count_5hz\(11) & ((\myclock|count_5hz[10]~44\) # (GND)))
-- \myclock|count_5hz[11]~46\ = CARRY((!\myclock|count_5hz[10]~44\) # (!\myclock|count_5hz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(11),
	datad => VCC,
	cin => \myclock|count_5hz[10]~44\,
	combout => \myclock|count_5hz[11]~45_combout\,
	cout => \myclock|count_5hz[11]~46\);

-- Location: LCCOMB_X1_Y14_N8
\myclock|count_5hz[11]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[11]~feeder_combout\ = \myclock|count_5hz[11]~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myclock|count_5hz[11]~45_combout\,
	combout => \myclock|count_5hz[11]~feeder_combout\);

-- Location: FF_X1_Y14_N9
\myclock|count_5hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[11]~feeder_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(11));

-- Location: LCCOMB_X1_Y13_N2
\myclock|count_5hz[12]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[12]~47_combout\ = (\myclock|count_5hz\(12) & (\myclock|count_5hz[11]~46\ $ (GND))) # (!\myclock|count_5hz\(12) & (!\myclock|count_5hz[11]~46\ & VCC))
-- \myclock|count_5hz[12]~48\ = CARRY((\myclock|count_5hz\(12) & !\myclock|count_5hz[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(12),
	datad => VCC,
	cin => \myclock|count_5hz[11]~46\,
	combout => \myclock|count_5hz[12]~47_combout\,
	cout => \myclock|count_5hz[12]~48\);

-- Location: FF_X1_Y13_N3
\myclock|count_5hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[12]~47_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(12));

-- Location: LCCOMB_X1_Y13_N4
\myclock|count_5hz[13]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[13]~49_combout\ = (\myclock|count_5hz\(13) & (!\myclock|count_5hz[12]~48\)) # (!\myclock|count_5hz\(13) & ((\myclock|count_5hz[12]~48\) # (GND)))
-- \myclock|count_5hz[13]~50\ = CARRY((!\myclock|count_5hz[12]~48\) # (!\myclock|count_5hz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(13),
	datad => VCC,
	cin => \myclock|count_5hz[12]~48\,
	combout => \myclock|count_5hz[13]~49_combout\,
	cout => \myclock|count_5hz[13]~50\);

-- Location: FF_X2_Y14_N9
\myclock|count_5hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \myclock|count_5hz[13]~49_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(13));

-- Location: LCCOMB_X1_Y13_N6
\myclock|count_5hz[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[14]~51_combout\ = (\myclock|count_5hz\(14) & (\myclock|count_5hz[13]~50\ $ (GND))) # (!\myclock|count_5hz\(14) & (!\myclock|count_5hz[13]~50\ & VCC))
-- \myclock|count_5hz[14]~52\ = CARRY((\myclock|count_5hz\(14) & !\myclock|count_5hz[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(14),
	datad => VCC,
	cin => \myclock|count_5hz[13]~50\,
	combout => \myclock|count_5hz[14]~51_combout\,
	cout => \myclock|count_5hz[14]~52\);

-- Location: FF_X1_Y13_N7
\myclock|count_5hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[14]~51_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(14));

-- Location: LCCOMB_X1_Y13_N8
\myclock|count_5hz[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[15]~53_combout\ = (\myclock|count_5hz\(15) & (!\myclock|count_5hz[14]~52\)) # (!\myclock|count_5hz\(15) & ((\myclock|count_5hz[14]~52\) # (GND)))
-- \myclock|count_5hz[15]~54\ = CARRY((!\myclock|count_5hz[14]~52\) # (!\myclock|count_5hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(15),
	datad => VCC,
	cin => \myclock|count_5hz[14]~52\,
	combout => \myclock|count_5hz[15]~53_combout\,
	cout => \myclock|count_5hz[15]~54\);

-- Location: FF_X1_Y13_N9
\myclock|count_5hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[15]~53_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(15));

-- Location: LCCOMB_X1_Y13_N10
\myclock|count_5hz[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[16]~55_combout\ = (\myclock|count_5hz\(16) & (\myclock|count_5hz[15]~54\ $ (GND))) # (!\myclock|count_5hz\(16) & (!\myclock|count_5hz[15]~54\ & VCC))
-- \myclock|count_5hz[16]~56\ = CARRY((\myclock|count_5hz\(16) & !\myclock|count_5hz[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(16),
	datad => VCC,
	cin => \myclock|count_5hz[15]~54\,
	combout => \myclock|count_5hz[16]~55_combout\,
	cout => \myclock|count_5hz[16]~56\);

-- Location: FF_X1_Y13_N11
\myclock|count_5hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[16]~55_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(16));

-- Location: LCCOMB_X1_Y13_N12
\myclock|count_5hz[17]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[17]~57_combout\ = (\myclock|count_5hz\(17) & (!\myclock|count_5hz[16]~56\)) # (!\myclock|count_5hz\(17) & ((\myclock|count_5hz[16]~56\) # (GND)))
-- \myclock|count_5hz[17]~58\ = CARRY((!\myclock|count_5hz[16]~56\) # (!\myclock|count_5hz\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(17),
	datad => VCC,
	cin => \myclock|count_5hz[16]~56\,
	combout => \myclock|count_5hz[17]~57_combout\,
	cout => \myclock|count_5hz[17]~58\);

-- Location: FF_X1_Y13_N13
\myclock|count_5hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[17]~57_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(17));

-- Location: LCCOMB_X1_Y13_N14
\myclock|count_5hz[18]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[18]~59_combout\ = (\myclock|count_5hz\(18) & (\myclock|count_5hz[17]~58\ $ (GND))) # (!\myclock|count_5hz\(18) & (!\myclock|count_5hz[17]~58\ & VCC))
-- \myclock|count_5hz[18]~60\ = CARRY((\myclock|count_5hz\(18) & !\myclock|count_5hz[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(18),
	datad => VCC,
	cin => \myclock|count_5hz[17]~58\,
	combout => \myclock|count_5hz[18]~59_combout\,
	cout => \myclock|count_5hz[18]~60\);

-- Location: FF_X1_Y13_N15
\myclock|count_5hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[18]~59_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(18));

-- Location: LCCOMB_X1_Y13_N16
\myclock|count_5hz[19]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[19]~61_combout\ = (\myclock|count_5hz\(19) & (!\myclock|count_5hz[18]~60\)) # (!\myclock|count_5hz\(19) & ((\myclock|count_5hz[18]~60\) # (GND)))
-- \myclock|count_5hz[19]~62\ = CARRY((!\myclock|count_5hz[18]~60\) # (!\myclock|count_5hz\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(19),
	datad => VCC,
	cin => \myclock|count_5hz[18]~60\,
	combout => \myclock|count_5hz[19]~61_combout\,
	cout => \myclock|count_5hz[19]~62\);

-- Location: FF_X1_Y13_N17
\myclock|count_5hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[19]~61_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(19));

-- Location: LCCOMB_X1_Y13_N18
\myclock|count_5hz[20]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[20]~63_combout\ = (\myclock|count_5hz\(20) & (\myclock|count_5hz[19]~62\ $ (GND))) # (!\myclock|count_5hz\(20) & (!\myclock|count_5hz[19]~62\ & VCC))
-- \myclock|count_5hz[20]~64\ = CARRY((\myclock|count_5hz\(20) & !\myclock|count_5hz[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(20),
	datad => VCC,
	cin => \myclock|count_5hz[19]~62\,
	combout => \myclock|count_5hz[20]~63_combout\,
	cout => \myclock|count_5hz[20]~64\);

-- Location: FF_X1_Y13_N19
\myclock|count_5hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[20]~63_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(20));

-- Location: LCCOMB_X1_Y13_N20
\myclock|count_5hz[21]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[21]~65_combout\ = (\myclock|count_5hz\(21) & (!\myclock|count_5hz[20]~64\)) # (!\myclock|count_5hz\(21) & ((\myclock|count_5hz[20]~64\) # (GND)))
-- \myclock|count_5hz[21]~66\ = CARRY((!\myclock|count_5hz[20]~64\) # (!\myclock|count_5hz\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(21),
	datad => VCC,
	cin => \myclock|count_5hz[20]~64\,
	combout => \myclock|count_5hz[21]~65_combout\,
	cout => \myclock|count_5hz[21]~66\);

-- Location: FF_X1_Y13_N21
\myclock|count_5hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[21]~65_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(21));

-- Location: LCCOMB_X1_Y13_N24
\myclock|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~0_combout\ = (!\myclock|count_5hz\(21) & (!\myclock|count_5hz\(20) & ((!\myclock|count_5hz\(18)) # (!\myclock|count_5hz\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(21),
	datab => \myclock|count_5hz\(19),
	datac => \myclock|count_5hz\(18),
	datad => \myclock|count_5hz\(20),
	combout => \myclock|LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\myclock|count_5hz[22]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[22]~67_combout\ = \myclock|count_5hz\(22) $ (!\myclock|count_5hz[21]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(22),
	cin => \myclock|count_5hz[21]~66\,
	combout => \myclock|count_5hz[22]~67_combout\);

-- Location: FF_X1_Y13_N23
\myclock|count_5hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|count_5hz[22]~67_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(22));

-- Location: LCCOMB_X1_Y13_N30
\myclock|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~1_combout\ = (\myclock|count_5hz\(16)) # ((\myclock|count_5hz\(20)) # ((\myclock|count_5hz\(15)) # (\myclock|count_5hz\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(16),
	datab => \myclock|count_5hz\(20),
	datac => \myclock|count_5hz\(15),
	datad => \myclock|count_5hz\(21),
	combout => \myclock|LessThan0~1_combout\);

-- Location: LCCOMB_X1_Y14_N2
\myclock|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~2_combout\ = (((!\myclock|count_5hz\(6) & !\myclock|count_5hz\(7))) # (!\myclock|count_5hz\(9))) # (!\myclock|count_5hz\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(6),
	datab => \myclock|count_5hz\(7),
	datac => \myclock|count_5hz\(8),
	datad => \myclock|count_5hz\(9),
	combout => \myclock|LessThan0~2_combout\);

-- Location: LCCOMB_X1_Y14_N6
\myclock|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~3_combout\ = (\myclock|count_5hz\(13)) # ((\myclock|count_5hz\(11) & ((\myclock|count_5hz\(10)) # (!\myclock|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(10),
	datab => \myclock|count_5hz\(11),
	datac => \myclock|count_5hz\(13),
	datad => \myclock|LessThan0~2_combout\,
	combout => \myclock|LessThan0~3_combout\);

-- Location: LCCOMB_X1_Y13_N28
\myclock|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~4_combout\ = (!\myclock|LessThan0~1_combout\ & (((!\myclock|count_5hz\(12) & !\myclock|LessThan0~3_combout\)) # (!\myclock|count_5hz\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(14),
	datab => \myclock|count_5hz\(12),
	datac => \myclock|LessThan0~1_combout\,
	datad => \myclock|LessThan0~3_combout\,
	combout => \myclock|LessThan0~4_combout\);

-- Location: LCCOMB_X1_Y13_N26
\myclock|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~5_combout\ = (\myclock|LessThan0~0_combout\) # (((!\myclock|count_5hz\(17) & \myclock|LessThan0~4_combout\)) # (!\myclock|count_5hz\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(17),
	datab => \myclock|LessThan0~0_combout\,
	datac => \myclock|count_5hz\(22),
	datad => \myclock|LessThan0~4_combout\,
	combout => \myclock|LessThan0~5_combout\);

-- Location: LCCOMB_X1_Y14_N4
\myclock|CLK_5hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_5hz~0_combout\ = \myclock|CLK_5hz~q\ $ (!\myclock|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|CLK_5hz~q\,
	datad => \myclock|LessThan0~5_combout\,
	combout => \myclock|CLK_5hz~0_combout\);

-- Location: LCCOMB_X1_Y14_N0
\myclock|CLK_5hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_5hz~feeder_combout\ = \myclock|CLK_5hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myclock|CLK_5hz~0_combout\,
	combout => \myclock|CLK_5hz~feeder_combout\);

-- Location: FF_X1_Y14_N1
\myclock|CLK_5hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \myclock|CLK_5hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|CLK_5hz~q\);

-- Location: CLKCTRL_G0
\myclock|CLK_5hz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \myclock|CLK_5hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \myclock|CLK_5hz~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N0
\count[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~3_combout\ = !count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(0),
	combout => \count[0]~3_combout\);

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

-- Location: FF_X1_Y24_N1
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \count[0]~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X1_Y24_N18
\count[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~0_combout\ = count(1) $ (count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(1),
	datad => count(0),
	combout => \count[1]~0_combout\);

-- Location: FF_X1_Y24_N19
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \count[1]~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X1_Y24_N24
\count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (count(1) & ((count(2) & ((!count(0)))) # (!count(2) & (!count(3) & count(0))))) # (!count(1) & (((count(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(1),
	datac => count(2),
	datad => count(0),
	combout => \count~1_combout\);

-- Location: FF_X1_Y24_N25
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \count~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y24_N26
\count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (count(1) & ((count(3) & ((!count(0)))) # (!count(3) & (count(2) & count(0))))) # (!count(1) & (((count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(3),
	datad => count(0),
	combout => \count~2_combout\);

-- Location: FF_X1_Y24_N27
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \count~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X1_Y24_N28
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (count(2) & ((count(3)) # (count(0) $ (count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y24_N30
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (count(2)) # ((count(0) & (count(1) & !count(3))) # (!count(0) & (!count(1) & count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y24_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (count(3) & (((count(2)) # (!count(1))))) # (!count(3) & (count(1) $ (((!count(0) & count(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y24_N22
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (count(3) & (((count(2)) # (!count(1))) # (!count(0)))) # (!count(3) & (!count(2) & ((count(0)) # (count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (count(3) & (!count(0) & (!count(1) & !count(2)))) # (!count(3) & ((count(2)) # ((count(0) & count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y24_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = count(3) $ (((count(1)) # (count(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datac => count(1),
	datad => count(2),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (count(2)) # ((count(0) & ((!count(3)) # (!count(1)))) # (!count(0) & ((count(1)) # (count(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(1),
	datac => count(3),
	datad => count(2),
	combout => \Mux0~0_combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;
END structure;


