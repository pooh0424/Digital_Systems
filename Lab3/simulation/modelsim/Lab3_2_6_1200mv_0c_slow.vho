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

-- DATE "03/06/2024 19:00:37"

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

ENTITY 	Lab3_2 IS
    PORT (
	switch : IN STD.STANDARD.bit_vector(1 DOWNTO 0);
	sevensegement0 : OUT STD.STANDARD.bit_vector(0 TO 6);
	sevensegement1 : OUT STD.STANDARD.bit_vector(0 TO 6);
	sevensegement2 : OUT STD.STANDARD.bit_vector(0 TO 6);
	sevensegement3 : OUT STD.STANDARD.bit_vector(0 TO 6)
	);
END Lab3_2;

-- Design Ports Information
-- sevensegement0[6]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement0[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement0[4]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement0[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement0[2]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement0[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement0[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement1[6]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement1[5]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement1[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement1[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement1[2]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement1[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement1[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement2[6]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement2[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement2[4]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement2[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement2[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement2[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement2[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement3[6]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement3[5]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement3[4]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement3[3]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement3[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement3[1]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sevensegement3[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab3_2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_switch : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_sevensegement0 : std_logic_vector(0 TO 6);
SIGNAL ww_sevensegement1 : std_logic_vector(0 TO 6);
SIGNAL ww_sevensegement2 : std_logic_vector(0 TO 6);
SIGNAL ww_sevensegement3 : std_logic_vector(0 TO 6);
SIGNAL \sevensegement0[6]~output_o\ : std_logic;
SIGNAL \sevensegement0[5]~output_o\ : std_logic;
SIGNAL \sevensegement0[4]~output_o\ : std_logic;
SIGNAL \sevensegement0[3]~output_o\ : std_logic;
SIGNAL \sevensegement0[2]~output_o\ : std_logic;
SIGNAL \sevensegement0[1]~output_o\ : std_logic;
SIGNAL \sevensegement0[0]~output_o\ : std_logic;
SIGNAL \sevensegement1[6]~output_o\ : std_logic;
SIGNAL \sevensegement1[5]~output_o\ : std_logic;
SIGNAL \sevensegement1[4]~output_o\ : std_logic;
SIGNAL \sevensegement1[3]~output_o\ : std_logic;
SIGNAL \sevensegement1[2]~output_o\ : std_logic;
SIGNAL \sevensegement1[1]~output_o\ : std_logic;
SIGNAL \sevensegement1[0]~output_o\ : std_logic;
SIGNAL \sevensegement2[6]~output_o\ : std_logic;
SIGNAL \sevensegement2[5]~output_o\ : std_logic;
SIGNAL \sevensegement2[4]~output_o\ : std_logic;
SIGNAL \sevensegement2[3]~output_o\ : std_logic;
SIGNAL \sevensegement2[2]~output_o\ : std_logic;
SIGNAL \sevensegement2[1]~output_o\ : std_logic;
SIGNAL \sevensegement2[0]~output_o\ : std_logic;
SIGNAL \sevensegement3[6]~output_o\ : std_logic;
SIGNAL \sevensegement3[5]~output_o\ : std_logic;
SIGNAL \sevensegement3[4]~output_o\ : std_logic;
SIGNAL \sevensegement3[3]~output_o\ : std_logic;
SIGNAL \sevensegement3[2]~output_o\ : std_logic;
SIGNAL \sevensegement3[1]~output_o\ : std_logic;
SIGNAL \sevensegement3[0]~output_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;

BEGIN

ww_switch <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(switch);
sevensegement0 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_sevensegement0);
sevensegement1 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_sevensegement1);
sevensegement2 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_sevensegement2);
sevensegement3 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_sevensegement3);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y12_N16
\sevensegement0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement0[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\sevensegement0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement0[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N30
\sevensegement0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement0[4]~output_o\);

-- Location: IOOBUF_X35_Y0_N30
\sevensegement0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement0[3]~output_o\);

-- Location: IOOBUF_X41_Y3_N9
\sevensegement0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement0[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N30
\sevensegement0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement0[1]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sevensegement0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement0[0]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\sevensegement1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement1[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\sevensegement1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement1[5]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\sevensegement1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement1[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N16
\sevensegement1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement1[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\sevensegement1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement1[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\sevensegement1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement1[1]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\sevensegement1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement1[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\sevensegement2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement2[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\sevensegement2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement2[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\sevensegement2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement2[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sevensegement2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement2[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\sevensegement2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement2[2]~output_o\);

-- Location: IOOBUF_X37_Y0_N30
\sevensegement2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement2[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\sevensegement2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement2[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\sevensegement3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement3[6]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\sevensegement3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement3[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\sevensegement3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement3[4]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\sevensegement3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement3[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\sevensegement3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement3[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\sevensegement3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~0_combout\,
	devoe => ww_devoe,
	o => \sevensegement3[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\sevensegement3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \sevensegement3[0]~output_o\);

-- Location: IOIBUF_X21_Y0_N1
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X20_Y1_N24
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\switch[0]~input_o\) # (!\switch[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X20_Y1_N26
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (\switch[1]~input_o\) # (!\switch[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X20_Y1_N28
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (\switch[1]~input_o\) # (\switch[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \switch[1]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \Mux10~0_combout\);

ww_sevensegement0(6) <= \sevensegement0[6]~output_o\;

ww_sevensegement0(5) <= \sevensegement0[5]~output_o\;

ww_sevensegement0(4) <= \sevensegement0[4]~output_o\;

ww_sevensegement0(3) <= \sevensegement0[3]~output_o\;

ww_sevensegement0(2) <= \sevensegement0[2]~output_o\;

ww_sevensegement0(1) <= \sevensegement0[1]~output_o\;

ww_sevensegement0(0) <= \sevensegement0[0]~output_o\;

ww_sevensegement1(6) <= \sevensegement1[6]~output_o\;

ww_sevensegement1(5) <= \sevensegement1[5]~output_o\;

ww_sevensegement1(4) <= \sevensegement1[4]~output_o\;

ww_sevensegement1(3) <= \sevensegement1[3]~output_o\;

ww_sevensegement1(2) <= \sevensegement1[2]~output_o\;

ww_sevensegement1(1) <= \sevensegement1[1]~output_o\;

ww_sevensegement1(0) <= \sevensegement1[0]~output_o\;

ww_sevensegement2(6) <= \sevensegement2[6]~output_o\;

ww_sevensegement2(5) <= \sevensegement2[5]~output_o\;

ww_sevensegement2(4) <= \sevensegement2[4]~output_o\;

ww_sevensegement2(3) <= \sevensegement2[3]~output_o\;

ww_sevensegement2(2) <= \sevensegement2[2]~output_o\;

ww_sevensegement2(1) <= \sevensegement2[1]~output_o\;

ww_sevensegement2(0) <= \sevensegement2[0]~output_o\;

ww_sevensegement3(6) <= \sevensegement3[6]~output_o\;

ww_sevensegement3(5) <= \sevensegement3[5]~output_o\;

ww_sevensegement3(4) <= \sevensegement3[4]~output_o\;

ww_sevensegement3(3) <= \sevensegement3[3]~output_o\;

ww_sevensegement3(2) <= \sevensegement3[2]~output_o\;

ww_sevensegement3(1) <= \sevensegement3[1]~output_o\;

ww_sevensegement3(0) <= \sevensegement3[0]~output_o\;
END structure;


