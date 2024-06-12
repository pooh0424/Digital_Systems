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

-- DATE "06/04/2024 18:42:24"

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

ENTITY 	Lab13_2 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	HEX3 : OUT std_logic_vector(0 TO 6)
	);
END Lab13_2;

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


ARCHITECTURE structure OF Lab13_2 IS
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
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \DINout~0_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Tstep_D.T3~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Tstep_Q.T3~q\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Tstep_D.T2~0_combout\ : std_logic;
SIGNAL \Tstep_Q.T2~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Tstep_Q.T0~q\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Tstep_D.T1~0_combout\ : std_logic;
SIGNAL \Tstep_Q.T1~q\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \decY|Mux0~5_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \decY|Mux0~3_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \decY|Mux0~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \decY|Mux0~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \one~0_combout\ : std_logic;
SIGNAL \cout~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \decY|Mux0~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \decY|Mux0~6_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \decY|Mux0~4_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \BusWires[2]~13_combout\ : std_logic;
SIGNAL \Selector9~4_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \BusWires[2]~12_combout\ : std_logic;
SIGNAL \Selector9~2_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \reg_C|Q[8]~3_combout\ : std_logic;
SIGNAL \Bin~0_combout\ : std_logic;
SIGNAL \reg_C|Q[8]~0_combout\ : std_logic;
SIGNAL \reg_5|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_5|Q[2]~feeder_combout\ : std_logic;
SIGNAL \Mux58~0_combout\ : std_logic;
SIGNAL \reg_7|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Mux60~0_combout\ : std_logic;
SIGNAL \Mux60~1_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Equal9~3_combout\ : std_logic;
SIGNAL \BusWires[2]~14_combout\ : std_logic;
SIGNAL \Equal9~4_combout\ : std_logic;
SIGNAL \BusWires[2]~15_combout\ : std_logic;
SIGNAL \BusWires[2]~16_combout\ : std_logic;
SIGNAL \Ain~0_combout\ : std_logic;
SIGNAL \Gin~0_combout\ : std_logic;
SIGNAL \addxor~combout\ : std_logic;
SIGNAL \alu~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \BusWires[2]~4_combout\ : std_logic;
SIGNAL \BusWires[0]~10_combout\ : std_logic;
SIGNAL \Selector9~3_combout\ : std_logic;
SIGNAL \reg_3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Selector12~2_combout\ : std_logic;
SIGNAL \BusWires[2]~5_combout\ : std_logic;
SIGNAL \BusWires[2]~88_combout\ : std_logic;
SIGNAL \BusWires[2]~6_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \reg_2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \BusWires[1]~24_combout\ : std_logic;
SIGNAL \BusWires[1]~25_combout\ : std_logic;
SIGNAL \BusWires[1]~26_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \reg_5|Q[0]~feeder_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \reg_G|Q[0]~10_cout\ : std_logic;
SIGNAL \reg_G|Q[0]~11_combout\ : std_logic;
SIGNAL \reg_2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \BusWires[0]~7_combout\ : std_logic;
SIGNAL \BusWires[0]~8_combout\ : std_logic;
SIGNAL \BusWires[0]~11_combout\ : std_logic;
SIGNAL \Sum~0_combout\ : std_logic;
SIGNAL \BusWires[2]~89_combout\ : std_logic;
SIGNAL \BusWires[2]~17_combout\ : std_logic;
SIGNAL \BusWires[0]~18_combout\ : std_logic;
SIGNAL \BusWires[0]~19_combout\ : std_logic;
SIGNAL \BusWires[0]~20_combout\ : std_logic;
SIGNAL \BusWires[0]~21_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \reg_G|Q[0]~12\ : std_logic;
SIGNAL \reg_G|Q[1]~13_combout\ : std_logic;
SIGNAL \Sum~1_combout\ : std_logic;
SIGNAL \BusWires[1]~27_combout\ : std_logic;
SIGNAL \BusWires[1]~28_combout\ : std_logic;
SIGNAL \BusWires[1]~29_combout\ : std_logic;
SIGNAL \BusWires[1]~30_combout\ : std_logic;
SIGNAL \BusWires[1]~31_combout\ : std_logic;
SIGNAL \Mux59~0_combout\ : std_logic;
SIGNAL \Mux59~1_combout\ : std_logic;
SIGNAL \reg_2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \BusWires[2]~32_combout\ : std_logic;
SIGNAL \BusWires[2]~33_combout\ : std_logic;
SIGNAL \BusWires[2]~34_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \reg_G|Q[1]~14\ : std_logic;
SIGNAL \reg_G|Q[2]~15_combout\ : std_logic;
SIGNAL \Sum~2_combout\ : std_logic;
SIGNAL \BusWires[2]~35_combout\ : std_logic;
SIGNAL \BusWires[2]~36_combout\ : std_logic;
SIGNAL \BusWires[2]~37_combout\ : std_logic;
SIGNAL \BusWires[2]~38_combout\ : std_logic;
SIGNAL \BusWires[2]~39_combout\ : std_logic;
SIGNAL \Mux55~2_combout\ : std_logic;
SIGNAL \reg_5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \Mux57~1_combout\ : std_logic;
SIGNAL \reg_3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \reg_2|Q[3]~feeder_combout\ : std_logic;
SIGNAL \BusWires[3]~40_combout\ : std_logic;
SIGNAL \BusWires[3]~41_combout\ : std_logic;
SIGNAL \BusWires[3]~42_combout\ : std_logic;
SIGNAL \reg_7|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Mux58~1_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \reg_G|Q[2]~16\ : std_logic;
SIGNAL \reg_G|Q[3]~17_combout\ : std_logic;
SIGNAL \Sum~3_combout\ : std_logic;
SIGNAL \BusWires[3]~43_combout\ : std_logic;
SIGNAL \BusWires[3]~44_combout\ : std_logic;
SIGNAL \BusWires[3]~45_combout\ : std_logic;
SIGNAL \BusWires[3]~46_combout\ : std_logic;
SIGNAL \BusWires[3]~47_combout\ : std_logic;
SIGNAL \reg_B|Q[3]~feeder_combout\ : std_logic;
SIGNAL \Mux57~0_combout\ : std_logic;
SIGNAL \Mux57~2_combout\ : std_logic;
SIGNAL \Mux57~3_combout\ : std_logic;
SIGNAL \reg_0|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg_2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[4]~feeder_combout\ : std_logic;
SIGNAL \BusWires[4]~48_combout\ : std_logic;
SIGNAL \BusWires[4]~49_combout\ : std_logic;
SIGNAL \BusWires[4]~50_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \reg_G|Q[3]~18\ : std_logic;
SIGNAL \reg_G|Q[4]~19_combout\ : std_logic;
SIGNAL \Sum~4_combout\ : std_logic;
SIGNAL \BusWires[4]~51_combout\ : std_logic;
SIGNAL \BusWires[4]~52_combout\ : std_logic;
SIGNAL \BusWires[4]~53_combout\ : std_logic;
SIGNAL \BusWires[4]~54_combout\ : std_logic;
SIGNAL \BusWires[4]~55_combout\ : std_logic;
SIGNAL \Mux55~1_combout\ : std_logic;
SIGNAL \reg_7|Q[5]~feeder_combout\ : std_logic;
SIGNAL \Mux56~2_combout\ : std_logic;
SIGNAL \Mux56~1_combout\ : std_logic;
SIGNAL \Mux56~3_combout\ : std_logic;
SIGNAL \reg_0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[5]~feeder_combout\ : std_logic;
SIGNAL \reg_2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \BusWires[5]~56_combout\ : std_logic;
SIGNAL \BusWires[5]~57_combout\ : std_logic;
SIGNAL \BusWires[5]~58_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \reg_G|Q[4]~20\ : std_logic;
SIGNAL \reg_G|Q[5]~21_combout\ : std_logic;
SIGNAL \Sum~5_combout\ : std_logic;
SIGNAL \BusWires[5]~59_combout\ : std_logic;
SIGNAL \BusWires[5]~60_combout\ : std_logic;
SIGNAL \BusWires[5]~61_combout\ : std_logic;
SIGNAL \BusWires[5]~62_combout\ : std_logic;
SIGNAL \BusWires[5]~63_combout\ : std_logic;
SIGNAL \Mux56~0_combout\ : std_logic;
SIGNAL \Mux55~0_combout\ : std_logic;
SIGNAL \Mux55~3_combout\ : std_logic;
SIGNAL \reg_2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[6]~feeder_combout\ : std_logic;
SIGNAL \BusWires[6]~64_combout\ : std_logic;
SIGNAL \BusWires[6]~65_combout\ : std_logic;
SIGNAL \BusWires[6]~66_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \reg_G|Q[5]~22\ : std_logic;
SIGNAL \reg_G|Q[6]~23_combout\ : std_logic;
SIGNAL \Sum~6_combout\ : std_logic;
SIGNAL \BusWires[6]~67_combout\ : std_logic;
SIGNAL \BusWires[6]~68_combout\ : std_logic;
SIGNAL \BusWires[6]~69_combout\ : std_logic;
SIGNAL \BusWires[6]~70_combout\ : std_logic;
SIGNAL \BusWires[6]~71_combout\ : std_logic;
SIGNAL \reg_B|Q[6]~feeder_combout\ : std_logic;
SIGNAL \reg_C|Q[8]~1_combout\ : std_logic;
SIGNAL \decY|Mux0~7_combout\ : std_logic;
SIGNAL \reg_C|Q[8]~2_combout\ : std_logic;
SIGNAL \Mux54~0_combout\ : std_logic;
SIGNAL \Mux54~1_combout\ : std_logic;
SIGNAL \Mux54~2_combout\ : std_logic;
SIGNAL \Mux54~3_combout\ : std_logic;
SIGNAL \Mux54~4_combout\ : std_logic;
SIGNAL \BusWires[7]~75_combout\ : std_logic;
SIGNAL \BusWires[7]~76_combout\ : std_logic;
SIGNAL \BusWires[7]~77_combout\ : std_logic;
SIGNAL \BusWires[7]~78_combout\ : std_logic;
SIGNAL \reg_0|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[7]~feeder_combout\ : std_logic;
SIGNAL \reg_2|Q[7]~feeder_combout\ : std_logic;
SIGNAL \BusWires[7]~72_combout\ : std_logic;
SIGNAL \BusWires[7]~73_combout\ : std_logic;
SIGNAL \BusWires[7]~74_combout\ : std_logic;
SIGNAL \BusWires[7]~79_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \reg_G|Q[6]~24\ : std_logic;
SIGNAL \reg_G|Q[7]~25_combout\ : std_logic;
SIGNAL \Sum~7_combout\ : std_logic;
SIGNAL \reg_B|Q[8]~feeder_combout\ : std_logic;
SIGNAL \Mux53~0_combout\ : std_logic;
SIGNAL \Mux53~1_combout\ : std_logic;
SIGNAL \Mux53~2_combout\ : std_logic;
SIGNAL \Mux53~3_combout\ : std_logic;
SIGNAL \Mux53~4_combout\ : std_logic;
SIGNAL \BusWires[8]~83_combout\ : std_logic;
SIGNAL \BusWires[8]~84_combout\ : std_logic;
SIGNAL \BusWires[8]~85_combout\ : std_logic;
SIGNAL \BusWires[8]~86_combout\ : std_logic;
SIGNAL \reg_1|Q[8]~feeder_combout\ : std_logic;
SIGNAL \reg_3|Q[8]~feeder_combout\ : std_logic;
SIGNAL \BusWires[8]~80_combout\ : std_logic;
SIGNAL \BusWires[8]~81_combout\ : std_logic;
SIGNAL \reg_0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \BusWires[8]~82_combout\ : std_logic;
SIGNAL \BusWires[8]~87_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \reg_G|Q[7]~26\ : std_logic;
SIGNAL \reg_G|Q[8]~27_combout\ : std_logic;
SIGNAL \Sum~8_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \BusWires[2]~9_combout\ : std_logic;
SIGNAL \BusWires[0]~22_combout\ : std_logic;
SIGNAL \BusWires[0]~23_combout\ : std_logic;
SIGNAL \Bout~0_combout\ : std_logic;
SIGNAL \Gout~0_combout\ : std_logic;
SIGNAL \reg_3|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_0|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_C|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_4|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_7|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_2|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_1|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_G|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_B|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_IR|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \reg_A|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Gout~0_combout\ : std_logic;
SIGNAL \ALT_INV_Tstep_Q.T0~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Gout~0_combout\ <= NOT \Gout~0_combout\;
\ALT_INV_Tstep_Q.T0~q\ <= NOT \Tstep_Q.T0~q\;

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BusWires[0]~23_combout\,
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
	i => \BusWires[1]~31_combout\,
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
	i => \BusWires[2]~39_combout\,
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
	i => \BusWires[3]~47_combout\,
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
	i => \BusWires[4]~55_combout\,
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
	i => \BusWires[5]~63_combout\,
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
	i => \BusWires[6]~71_combout\,
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
	i => \BusWires[7]~79_combout\,
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
	i => \BusWires[8]~87_combout\,
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
	i => \Selector17~0_combout\,
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
	i => \Bout~0_combout\,
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
	i => \ALT_INV_Gout~0_combout\,
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

-- Location: FF_X16_Y23_N21
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

-- Location: FF_X16_Y23_N15
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

-- Location: LCCOMB_X16_Y23_N14
\DINout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DINout~0_combout\ = (!\reg_IR|Q\(8) & (!\reg_IR|Q\(7) & \Tstep_Q.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(8),
	datac => \reg_IR|Q\(7),
	datad => \Tstep_Q.T1~q\,
	combout => \DINout~0_combout\);

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

-- Location: FF_X16_Y23_N31
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

-- Location: LCCOMB_X16_Y24_N20
\Mux31~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (\reg_IR|Q\(8) & ((\reg_IR|Q\(6)) # (\reg_IR|Q\(7)))) # (!\reg_IR|Q\(8) & ((!\reg_IR|Q\(7)) # (!\reg_IR|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(8),
	datac => \reg_IR|Q\(6),
	datad => \reg_IR|Q\(7),
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X16_Y24_N4
\Tstep_D.T3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Tstep_D.T3~0_combout\ = (\Tstep_Q.T2~q\ & (!\DINout~0_combout\ & (!\Tstep_Q.T3~q\ & \Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \DINout~0_combout\,
	datac => \Tstep_Q.T3~q\,
	datad => \Mux31~0_combout\,
	combout => \Tstep_D.T3~0_combout\);

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

-- Location: FF_X16_Y24_N5
\Tstep_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Tstep_D.T3~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T3~q\);

-- Location: LCCOMB_X16_Y24_N10
\Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\Tstep_Q.T3~q\) # ((\DINout~0_combout\) # ((\Tstep_Q.T2~q\ & !\Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \Tstep_Q.T3~q\,
	datac => \DINout~0_combout\,
	datad => \Mux31~0_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X16_Y24_N22
\Tstep_D.T2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Tstep_D.T2~0_combout\ = (!\Selector17~0_combout\ & \Tstep_Q.T1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector17~0_combout\,
	datac => \Tstep_Q.T1~q\,
	combout => \Tstep_D.T2~0_combout\);

-- Location: FF_X16_Y23_N3
\Tstep_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \Tstep_D.T2~0_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T2~q\);

-- Location: LCCOMB_X16_Y24_N8
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Tstep_D.T1~0_combout\) # ((!\Selector17~0_combout\ & ((\Tstep_Q.T2~q\) # (\Tstep_Q.T1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \Selector17~0_combout\,
	datac => \Tstep_Q.T1~q\,
	datad => \Tstep_D.T1~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X16_Y24_N9
\Tstep_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Selector0~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T0~q\);

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

-- Location: LCCOMB_X16_Y24_N12
\Tstep_D.T1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Tstep_D.T1~0_combout\ = (!\Tstep_Q.T0~q\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T0~q\,
	datac => \SW[9]~input_o\,
	combout => \Tstep_D.T1~0_combout\);

-- Location: FF_X16_Y23_N11
\Tstep_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \Tstep_D.T1~0_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Tstep_Q.T1~q\);

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

-- Location: FF_X17_Y23_N27
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

-- Location: FF_X17_Y23_N29
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

-- Location: LCCOMB_X17_Y23_N20
\Selector15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\reg_IR|Q\(5) & \reg_IR|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_IR|Q\(5),
	datad => \reg_IR|Q\(4),
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X16_Y23_N10
\Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (!\reg_IR|Q\(6) & (!\reg_IR|Q\(7) & !\reg_IR|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_IR|Q\(7),
	datad => \reg_IR|Q\(8),
	combout => \Selector1~1_combout\);

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

-- Location: FF_X14_Y23_N27
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

-- Location: FF_X14_Y23_N9
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

-- Location: FF_X14_Y23_N17
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

-- Location: LCCOMB_X14_Y23_N16
\decY|Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~5_combout\ = (\reg_IR|Q\(1) & (\reg_IR|Q\(0) & \reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(2),
	combout => \decY|Mux0~5_combout\);

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

-- Location: FF_X16_Y23_N25
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

-- Location: LCCOMB_X15_Y23_N20
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\reg_IR|Q\(3) & ((\reg_IR|Q\(6) & ((\reg_IR|Q\(8)))) # (!\reg_IR|Q\(6) & (\reg_IR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_IR|Q\(7),
	datac => \reg_IR|Q\(8),
	datad => \reg_IR|Q\(3),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X15_Y23_N2
\Selector8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = (\Selector15~0_combout\ & ((\Selector4~0_combout\) # ((\Selector1~1_combout\ & \decY|Mux0~5_combout\)))) # (!\Selector15~0_combout\ & (\Selector1~1_combout\ & (\decY|Mux0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector1~1_combout\,
	datac => \decY|Mux0~5_combout\,
	datad => \Selector4~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: LCCOMB_X16_Y23_N26
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Tstep_Q.T2~q\ & ((\reg_IR|Q\(7) & (!\reg_IR|Q\(6))) # (!\reg_IR|Q\(7) & ((\reg_IR|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_IR|Q\(8),
	datac => \reg_IR|Q\(7),
	datad => \Tstep_Q.T2~q\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X17_Y23_N0
\Selector12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\Tstep_Q.T2~q\ & (((\reg_IR|Q\(7)) # (!\reg_IR|Q\(8))) # (!\Mux25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T2~q\,
	datab => \Mux25~2_combout\,
	datac => \reg_IR|Q\(7),
	datad => \reg_IR|Q\(8),
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X16_Y24_N28
\Selector19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\reg_IR|Q\(6) & (!\reg_IR|Q\(7) & (\Tstep_Q.T3~q\ & \reg_IR|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_IR|Q\(7),
	datac => \Tstep_Q.T3~q\,
	datad => \reg_IR|Q\(8),
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X16_Y24_N30
\Selector9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Tstep_Q.T0~q\ & (((!\reg_IR|Q\(7) & !\reg_IR|Q\(8))) # (!\Tstep_Q.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(7),
	datab => \Tstep_Q.T1~q\,
	datac => \Tstep_Q.T0~q\,
	datad => \reg_IR|Q\(8),
	combout => \Selector9~1_combout\);

-- Location: LCCOMB_X17_Y23_N10
\Selector12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\reg_IR|Q\(3) & (!\Selector12~0_combout\ & (!\Selector19~0_combout\ & \Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \Selector12~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector9~1_combout\,
	combout => \Selector12~1_combout\);

-- Location: LCCOMB_X17_Y23_N30
\Selector16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\Selector12~1_combout\ & ((\Selector15~0_combout\) # ((\decY|Mux0~5_combout\ & \Selector19~0_combout\)))) # (!\Selector12~1_combout\ & (((\decY|Mux0~5_combout\ & \Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~1_combout\,
	datab => \Selector15~0_combout\,
	datac => \decY|Mux0~5_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector16~0_combout\);

-- Location: FF_X15_Y24_N25
\reg_7|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~79_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(7));

-- Location: LCCOMB_X14_Y23_N22
\decY|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~3_combout\ = (\reg_IR|Q\(1) & (\reg_IR|Q\(0) & !\reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(0),
	datad => \reg_IR|Q\(2),
	combout => \decY|Mux0~3_combout\);

-- Location: LCCOMB_X17_Y23_N18
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\reg_IR|Q\(5) & \reg_IR|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_IR|Q\(5),
	datad => \reg_IR|Q\(4),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X15_Y23_N22
\Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector11~0_combout\ & ((\Selector4~0_combout\) # ((\Selector1~1_combout\ & \decY|Mux0~3_combout\)))) # (!\Selector11~0_combout\ & (((\Selector1~1_combout\ & \decY|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datab => \Selector4~0_combout\,
	datac => \Selector1~1_combout\,
	datad => \decY|Mux0~3_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X15_Y23_N4
\Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\Tstep_Q.T1~q\ & ((\Selector4~1_combout\) # ((\decY|Mux0~3_combout\ & \Selector8~1_combout\)))) # (!\Tstep_Q.T1~q\ & (\decY|Mux0~3_combout\ & ((\Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T1~q\,
	datab => \decY|Mux0~3_combout\,
	datac => \Selector4~1_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X17_Y23_N14
\Selector13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\reg_IR|Q\(5) & !\reg_IR|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_IR|Q\(5),
	datad => \reg_IR|Q\(4),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X14_Y23_N8
\decY|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~2_combout\ = (!\reg_IR|Q\(1) & (!\reg_IR|Q\(0) & \reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datac => \reg_IR|Q\(0),
	datad => \reg_IR|Q\(2),
	combout => \decY|Mux0~2_combout\);

-- Location: LCCOMB_X16_Y23_N24
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\reg_IR|Q\(3) & ((\reg_IR|Q\(6) & ((\reg_IR|Q\(8)))) # (!\reg_IR|Q\(6) & (\reg_IR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_IR|Q\(7),
	datac => \reg_IR|Q\(3),
	datad => \reg_IR|Q\(8),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X14_Y23_N14
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Selector13~0_combout\ & ((\Selector1~0_combout\) # ((\Selector1~1_combout\ & \decY|Mux0~2_combout\)))) # (!\Selector13~0_combout\ & (\Selector1~1_combout\ & (\decY|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \Selector1~1_combout\,
	datac => \decY|Mux0~2_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X14_Y23_N0
\Selector5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Tstep_Q.T1~q\ & ((\Selector5~0_combout\) # ((\decY|Mux0~2_combout\ & \Selector8~1_combout\)))) # (!\Tstep_Q.T1~q\ & (((\decY|Mux0~2_combout\ & \Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T1~q\,
	datab => \Selector5~0_combout\,
	datac => \decY|Mux0~2_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X14_Y23_N28
\decY|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~0_combout\ = (!\reg_IR|Q\(0) & (\reg_IR|Q\(1) & !\reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(1),
	datad => \reg_IR|Q\(2),
	combout => \decY|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y23_N16
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\Selector1~1_combout\ & ((\decY|Mux0~0_combout\) # ((\Selector1~0_combout\ & \Selector11~0_combout\)))) # (!\Selector1~1_combout\ & (\Selector1~0_combout\ & ((\Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \Selector1~0_combout\,
	datac => \decY|Mux0~0_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X16_Y23_N0
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Tstep_Q.T1~q\ & ((\Selector3~0_combout\) # ((\decY|Mux0~0_combout\ & \Selector8~1_combout\)))) # (!\Tstep_Q.T1~q\ & (\decY|Mux0~0_combout\ & (\Selector8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T1~q\,
	datab => \decY|Mux0~0_combout\,
	datac => \Selector8~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X16_Y24_N14
\Selector19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (\Tstep_Q.T2~q\ & ((\reg_IR|Q\(8) & (\reg_IR|Q\(7) & \reg_IR|Q\(6))) # (!\reg_IR|Q\(8) & (!\reg_IR|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(8),
	datab => \reg_IR|Q\(7),
	datac => \reg_IR|Q\(6),
	datad => \Tstep_Q.T2~q\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X16_Y24_N6
\Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\reg_IR|Q\(7) & (\Tstep_Q.T3~q\ & ((!\reg_IR|Q\(8)) # (!\reg_IR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(7),
	datab => \Tstep_Q.T3~q\,
	datac => \reg_IR|Q\(6),
	datad => \reg_IR|Q\(8),
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X16_Y24_N18
\Selector18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (\Selector18~0_combout\) # ((!\Mux31~0_combout\ & \Tstep_Q.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux31~0_combout\,
	datac => \Tstep_Q.T1~q\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X15_Y24_N28
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\Selector19~0_combout\ & (!\Selector19~1_combout\ & !\Selector18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector19~0_combout\,
	datac => \Selector19~1_combout\,
	datad => \Selector18~1_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X16_Y23_N22
\one~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \one~0_combout\ = (\reg_IR|Q\(6) & (!\reg_IR|Q\(8) & (\reg_IR|Q\(7) & \Tstep_Q.T2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_IR|Q\(8),
	datac => \reg_IR|Q\(7),
	datad => \Tstep_Q.T2~q\,
	combout => \one~0_combout\);

-- Location: LCCOMB_X16_Y23_N30
\cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cout~0_combout\ = (\Tstep_Q.T3~q\ & (\reg_IR|Q\(7) $ (((!\reg_IR|Q\(6)) # (!\reg_IR|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(8),
	datab => \reg_IR|Q\(7),
	datac => \reg_IR|Q\(6),
	datad => \Tstep_Q.T3~q\,
	combout => \cout~0_combout\);

-- Location: LCCOMB_X16_Y23_N28
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\one~0_combout\ & (!\cout~0_combout\ & ((!\DINout~0_combout\) # (!\reg_IR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \DINout~0_combout\,
	datac => \one~0_combout\,
	datad => \cout~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X14_Y23_N26
\decY|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~1_combout\ = (\reg_IR|Q\(0) & (!\reg_IR|Q\(1) & !\reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(1),
	datad => \reg_IR|Q\(2),
	combout => \decY|Mux0~1_combout\);

-- Location: LCCOMB_X17_Y23_N12
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (!\reg_IR|Q\(5) & (!\reg_IR|Q\(4) & \reg_IR|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(5),
	datab => \reg_IR|Q\(4),
	datad => \reg_IR|Q\(3),
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X16_Y23_N2
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\reg_IR|Q\(6) & ((!\reg_IR|Q\(8)))) # (!\reg_IR|Q\(6) & (!\reg_IR|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_IR|Q\(7),
	datad => \reg_IR|Q\(8),
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X15_Y23_N8
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\decY|Mux0~1_combout\ & ((\Selector1~1_combout\) # ((\Selector10~0_combout\ & !\Mux5~0_combout\)))) # (!\decY|Mux0~1_combout\ & (((\Selector10~0_combout\ & !\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decY|Mux0~1_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector10~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X15_Y23_N6
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\decY|Mux0~1_combout\ & ((\Selector8~1_combout\) # ((\Selector2~0_combout\ & \Tstep_Q.T1~q\)))) # (!\decY|Mux0~1_combout\ & (\Selector2~0_combout\ & (\Tstep_Q.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decY|Mux0~1_combout\,
	datab => \Selector2~0_combout\,
	datac => \Tstep_Q.T1~q\,
	datad => \Selector8~1_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X15_Y24_N18
\Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Selector3~1_combout\ & (\Equal2~0_combout\ & (\Equal1~0_combout\ & !\Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X15_Y23_N16
\decY|Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~6_combout\ = (!\reg_IR|Q\(1) & (\reg_IR|Q\(0) & \reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datac => \reg_IR|Q\(0),
	datad => \reg_IR|Q\(2),
	combout => \decY|Mux0~6_combout\);

-- Location: LCCOMB_X17_Y23_N22
\Selector14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\reg_IR|Q\(5) & (!\reg_IR|Q\(4) & \reg_IR|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(5),
	datab => \reg_IR|Q\(4),
	datad => \reg_IR|Q\(3),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X15_Y23_N14
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Selector1~1_combout\ & ((\decY|Mux0~6_combout\) # ((\Selector14~0_combout\ & !\Mux5~0_combout\)))) # (!\Selector1~1_combout\ & (((\Selector14~0_combout\ & !\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~1_combout\,
	datab => \decY|Mux0~6_combout\,
	datac => \Selector14~0_combout\,
	datad => \Mux5~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X15_Y23_N28
\Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\decY|Mux0~6_combout\ & ((\Selector8~1_combout\) # ((\Tstep_Q.T1~q\ & \Selector6~0_combout\)))) # (!\decY|Mux0~6_combout\ & (\Tstep_Q.T1~q\ & (\Selector6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decY|Mux0~6_combout\,
	datab => \Tstep_Q.T1~q\,
	datac => \Selector6~0_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X14_Y23_N10
\Mux61~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (!\reg_IR|Q\(0) & (!\reg_IR|Q\(1) & !\reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(1),
	datad => \reg_IR|Q\(2),
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X17_Y23_N16
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\reg_IR|Q\(5) & !\reg_IR|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_IR|Q\(5),
	datad => \reg_IR|Q\(4),
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X14_Y23_N20
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Mux61~0_combout\ & ((\Selector1~1_combout\) # ((\Selector9~0_combout\ & \Selector1~0_combout\)))) # (!\Mux61~0_combout\ & (\Selector9~0_combout\ & ((\Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \Selector9~0_combout\,
	datac => \Selector1~1_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X14_Y23_N30
\Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Mux61~0_combout\ & ((\Selector8~1_combout\) # ((\Selector1~2_combout\ & \Tstep_Q.T1~q\)))) # (!\Mux61~0_combout\ & (\Selector1~2_combout\ & (\Tstep_Q.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~0_combout\,
	datab => \Selector1~2_combout\,
	datac => \Tstep_Q.T1~q\,
	datad => \Selector8~1_combout\,
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X15_Y24_N2
\Equal4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!\Selector5~1_combout\ & (\Equal1~1_combout\ & (!\Selector6~1_combout\ & !\Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \Equal1~1_combout\,
	datac => \Selector6~1_combout\,
	datad => \Selector1~3_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X15_Y24_N30
\Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!\Selector4~2_combout\ & \Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datad => \Equal4~1_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X14_Y23_N4
\decY|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~4_combout\ = (!\reg_IR|Q\(0) & (\reg_IR|Q\(1) & \reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(1),
	datad => \reg_IR|Q\(2),
	combout => \decY|Mux0~4_combout\);

-- Location: LCCOMB_X15_Y23_N30
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Selector15~0_combout\ & ((\Selector1~0_combout\) # ((\decY|Mux0~4_combout\ & \Selector1~1_combout\)))) # (!\Selector15~0_combout\ & (((\decY|Mux0~4_combout\ & \Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector1~0_combout\,
	datac => \decY|Mux0~4_combout\,
	datad => \Selector1~1_combout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X15_Y23_N12
\Selector7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\decY|Mux0~4_combout\ & ((\Selector8~1_combout\) # ((\Tstep_Q.T1~q\ & \Selector7~0_combout\)))) # (!\decY|Mux0~4_combout\ & (\Tstep_Q.T1~q\ & (\Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decY|Mux0~4_combout\,
	datab => \Tstep_Q.T1~q\,
	datac => \Selector7~0_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X15_Y23_N26
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\Selector7~1_combout\ & (!\Selector4~2_combout\ & (!\Selector5~1_combout\ & !\Selector8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datab => \Selector4~2_combout\,
	datac => \Selector5~1_combout\,
	datad => \Selector8~3_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X15_Y24_N8
\Equal6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\Equal1~1_combout\ & (!\Selector1~3_combout\ & (\Selector6~1_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Selector1~3_combout\,
	datac => \Selector6~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X15_Y24_N22
\BusWires[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~13_combout\ = (\Equal6~0_combout\) # ((\Equal7~0_combout\ & (\Selector8~3_combout\ & !\Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Selector8~3_combout\,
	datac => \Equal6~0_combout\,
	datad => \Selector7~1_combout\,
	combout => \BusWires[2]~13_combout\);

-- Location: LCCOMB_X17_Y23_N28
\Selector9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~4_combout\ = (!\Selector19~0_combout\ & (!\Selector12~0_combout\ & \Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \Selector12~0_combout\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~4_combout\);

-- Location: LCCOMB_X17_Y23_N8
\Selector14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector19~0_combout\ & ((\decY|Mux0~6_combout\) # ((\Selector14~0_combout\ & \Selector9~4_combout\)))) # (!\Selector19~0_combout\ & (((\Selector14~0_combout\ & \Selector9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \decY|Mux0~6_combout\,
	datac => \Selector14~0_combout\,
	datad => \Selector9~4_combout\,
	combout => \Selector14~1_combout\);

-- Location: FF_X14_Y24_N7
\reg_5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~79_combout\,
	sload => VCC,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(7));

-- Location: LCCOMB_X15_Y24_N0
\BusWires[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~12_combout\ = (\Equal6~0_combout\) # ((\Selector7~1_combout\ & (!\Selector8~3_combout\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~1_combout\,
	datab => \Selector8~3_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal6~0_combout\,
	combout => \BusWires[2]~12_combout\);

-- Location: LCCOMB_X17_Y23_N6
\Selector9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~2_combout\ = (!\reg_IR|Q\(3) & (!\Selector12~0_combout\ & (!\Selector19~0_combout\ & \Selector9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(3),
	datab => \Selector12~0_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector9~1_combout\,
	combout => \Selector9~2_combout\);

-- Location: LCCOMB_X14_Y23_N2
\Selector15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\ & ((\Selector9~2_combout\) # ((\Selector19~0_combout\ & \decY|Mux0~4_combout\)))) # (!\Selector15~0_combout\ & (\Selector19~0_combout\ & ((\decY|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector15~0_combout\,
	datab => \Selector19~0_combout\,
	datac => \Selector9~2_combout\,
	datad => \decY|Mux0~4_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X15_Y24_N5
\reg_6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~79_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(7));

-- Location: LCCOMB_X12_Y23_N22
\reg_C|Q[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_C|Q[8]~3_combout\ = (\reg_IR|Q\(1)) # ((\reg_IR|Q\(0)) # (\reg_IR|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datac => \reg_IR|Q\(0),
	datad => \reg_IR|Q\(2),
	combout => \reg_C|Q[8]~3_combout\);

-- Location: LCCOMB_X16_Y24_N24
\Bin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bin~0_combout\ = (\reg_IR|Q\(8) & (\Tstep_Q.T1~q\ & \reg_IR|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(8),
	datab => \Tstep_Q.T1~q\,
	datac => \reg_IR|Q\(6),
	combout => \Bin~0_combout\);

-- Location: FF_X14_Y23_N23
\reg_B|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~79_combout\,
	sload => VCC,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(7));

-- Location: LCCOMB_X11_Y25_N4
\reg_C|Q[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_C|Q[8]~0_combout\ = (\reg_IR|Q\(0) & !\reg_IR|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(2),
	combout => \reg_C|Q[8]~0_combout\);

-- Location: LCCOMB_X12_Y25_N26
\reg_5|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_5|Q[6]~feeder_combout\ = \BusWires[6]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~71_combout\,
	combout => \reg_5|Q[6]~feeder_combout\);

-- Location: FF_X12_Y25_N27
\reg_5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_5|Q[6]~feeder_combout\,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(6));

-- Location: FF_X15_Y25_N3
\reg_6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~71_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(6));

-- Location: FF_X15_Y25_N29
\reg_7|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~71_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(6));

-- Location: LCCOMB_X14_Y24_N0
\reg_5|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_5|Q[2]~feeder_combout\ = \BusWires[2]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[2]~39_combout\,
	combout => \reg_5|Q[2]~feeder_combout\);

-- Location: FF_X14_Y24_N1
\reg_5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_5|Q[2]~feeder_combout\,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(2));

-- Location: FF_X15_Y25_N5
\reg_6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~39_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(2));

-- Location: FF_X15_Y25_N11
\reg_7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~39_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(2));

-- Location: FF_X14_Y25_N23
\reg_B|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~23_combout\,
	sload => VCC,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(0));

-- Location: LCCOMB_X9_Y23_N26
\Mux58~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux58~0_combout\ = (\reg_IR|Q\(1) & ((\reg_B|Q\(0)))) # (!\reg_IR|Q\(1) & (\reg_B|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_B|Q\(2),
	datac => \reg_B|Q\(0),
	datad => \reg_IR|Q\(1),
	combout => \Mux58~0_combout\);

-- Location: LCCOMB_X10_Y25_N0
\reg_7|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[1]~feeder_combout\ = \BusWires[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[1]~31_combout\,
	combout => \reg_7|Q[1]~feeder_combout\);

-- Location: FF_X10_Y25_N1
\reg_7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[1]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(1));

-- Location: FF_X14_Y26_N15
\reg_5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~31_combout\,
	sload => VCC,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(1));

-- Location: FF_X14_Y25_N1
\reg_6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~31_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(1));

-- Location: LCCOMB_X9_Y24_N16
\Mux60~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux60~0_combout\ = (\reg_IR|Q\(0) & (\reg_B|Q\(0))) # (!\reg_IR|Q\(0) & ((\reg_B|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(0),
	datab => \reg_B|Q\(0),
	datad => \reg_B|Q\(1),
	combout => \Mux60~0_combout\);

-- Location: LCCOMB_X9_Y23_N24
\Mux60~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux60~1_combout\ = (!\reg_IR|Q\(1) & (!\reg_IR|Q\(2) & \Mux60~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datad => \Mux60~0_combout\,
	combout => \Mux60~1_combout\);

-- Location: FF_X9_Y23_N25
\reg_C|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux60~1_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(1));

-- Location: LCCOMB_X16_Y24_N0
\Selector19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (\Selector19~0_combout\) # (\Selector19~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector19~0_combout\,
	datac => \Selector19~1_combout\,
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X15_Y24_N24
\Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (!\Selector19~1_combout\ & (!\Selector19~0_combout\ & \one~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~1_combout\,
	datab => \Selector19~0_combout\,
	datad => \one~0_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X15_Y23_N18
\Equal9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (\Equal1~0_combout\ & (!\Selector3~1_combout\ & !\Selector1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~0_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector1~3_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X15_Y23_N24
\Equal9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~3_combout\ = (!\Selector2~1_combout\ & (!\Selector6~1_combout\ & (\Equal1~2_combout\ & \Equal9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \Selector6~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal9~2_combout\,
	combout => \Equal9~3_combout\);

-- Location: LCCOMB_X14_Y25_N4
\BusWires[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~14_combout\ = (\Equal10~0_combout\) # ((\Equal9~3_combout\ & (\Selector18~1_combout\ $ (\Selector19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~1_combout\,
	datab => \Selector19~2_combout\,
	datac => \Equal10~0_combout\,
	datad => \Equal9~3_combout\,
	combout => \BusWires[2]~14_combout\);

-- Location: LCCOMB_X14_Y25_N8
\Equal9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal9~4_combout\ = (\Selector18~1_combout\ & (!\Selector19~1_combout\ & (!\Selector19~0_combout\ & \Equal9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~1_combout\,
	datab => \Selector19~1_combout\,
	datac => \Selector19~0_combout\,
	datad => \Equal9~3_combout\,
	combout => \Equal9~4_combout\);

-- Location: LCCOMB_X15_Y23_N10
\BusWires[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~15_combout\ = (\Selector19~2_combout\ & (((!\Selector18~1_combout\ & \Equal9~3_combout\)))) # (!\Selector19~2_combout\ & (\one~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \one~0_combout\,
	datab => \Selector19~2_combout\,
	datac => \Selector18~1_combout\,
	datad => \Equal9~3_combout\,
	combout => \BusWires[2]~15_combout\);

-- Location: LCCOMB_X14_Y25_N12
\BusWires[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~16_combout\ = (\Equal9~4_combout\) # ((!\Equal10~0_combout\ & \BusWires[2]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal10~0_combout\,
	datac => \Equal9~4_combout\,
	datad => \BusWires[2]~15_combout\,
	combout => \BusWires[2]~16_combout\);

-- Location: LCCOMB_X16_Y24_N26
\Ain~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Ain~0_combout\ = (\reg_IR|Q\(7) & (\Tstep_Q.T1~q\ & ((!\reg_IR|Q\(6)) # (!\reg_IR|Q\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(8),
	datab => \reg_IR|Q\(7),
	datac => \Tstep_Q.T1~q\,
	datad => \reg_IR|Q\(6),
	combout => \Ain~0_combout\);

-- Location: FF_X10_Y24_N17
\reg_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[1]~31_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(1));

-- Location: LCCOMB_X16_Y23_N18
\Gin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Gin~0_combout\ = (\Tstep_Q.T2~q\ & (\reg_IR|Q\(7) & ((!\reg_IR|Q\(8)) # (!\reg_IR|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \Tstep_Q.T2~q\,
	datac => \reg_IR|Q\(7),
	datad => \reg_IR|Q\(8),
	combout => \Gin~0_combout\);

-- Location: LCCOMB_X16_Y23_N20
addxor : cycloneiii_lcell_comb
-- Equation(s):
-- \addxor~combout\ = (\Gin~0_combout\ & ((\reg_IR|Q\(8)))) # (!\Gin~0_combout\ & (\addxor~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addxor~combout\,
	datac => \reg_IR|Q\(8),
	datad => \Gin~0_combout\,
	combout => \addxor~combout\);

-- Location: LCCOMB_X15_Y26_N24
\alu~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alu~0_combout\ = (\one~0_combout\) # (\addxor~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \one~0_combout\,
	datac => \addxor~combout\,
	combout => \alu~0_combout\);

-- Location: LCCOMB_X14_Y26_N2
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\Selector1~3_combout\ & (!\Selector6~1_combout\ & (\Equal1~1_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~3_combout\,
	datab => \Selector6~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X15_Y24_N12
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\Selector4~2_combout\ & (!\Selector8~3_combout\ & (\Equal1~0_combout\ & !\Selector1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Selector8~3_combout\,
	datac => \Equal1~0_combout\,
	datad => \Selector1~3_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X15_Y24_N10
\Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\Selector5~1_combout\ & (!\Selector7~1_combout\ & (!\Selector6~1_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~1_combout\,
	datab => \Selector7~1_combout\,
	datac => \Selector6~1_combout\,
	datad => \Equal2~1_combout\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X15_Y24_N16
\BusWires[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~4_combout\ = ((\Selector3~1_combout\ $ (!\Selector2~1_combout\)) # (!\Equal2~2_combout\)) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \Selector2~1_combout\,
	datad => \Equal2~2_combout\,
	combout => \BusWires[2]~4_combout\);

-- Location: LCCOMB_X14_Y26_N4
\BusWires[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~10_combout\ = (\Equal1~3_combout\) # ((\BusWires[2]~4_combout\ & !\BusWires[2]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~3_combout\,
	datac => \BusWires[2]~4_combout\,
	datad => \BusWires[2]~9_combout\,
	combout => \BusWires[0]~10_combout\);

-- Location: LCCOMB_X14_Y23_N24
\Selector9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~3_combout\ = (\Selector19~0_combout\ & ((\Mux61~0_combout\) # ((\Selector9~2_combout\ & \Selector9~0_combout\)))) # (!\Selector19~0_combout\ & (\Selector9~2_combout\ & ((\Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \Selector9~2_combout\,
	datac => \Mux61~0_combout\,
	datad => \Selector9~0_combout\,
	combout => \Selector9~3_combout\);

-- Location: FF_X14_Y26_N21
\reg_0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~31_combout\,
	sload => VCC,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(1));

-- Location: LCCOMB_X12_Y24_N26
\reg_3|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[1]~feeder_combout\ = \BusWires[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[1]~31_combout\,
	combout => \reg_3|Q[1]~feeder_combout\);

-- Location: LCCOMB_X14_Y23_N6
\Selector12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector12~2_combout\ = (\decY|Mux0~3_combout\ & ((\Selector19~0_combout\) # ((\Selector11~0_combout\ & \Selector12~1_combout\)))) # (!\decY|Mux0~3_combout\ & (\Selector11~0_combout\ & (\Selector12~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decY|Mux0~3_combout\,
	datab => \Selector11~0_combout\,
	datac => \Selector12~1_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector12~2_combout\);

-- Location: FF_X12_Y24_N27
\reg_3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[1]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(1));

-- Location: LCCOMB_X15_Y24_N20
\BusWires[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~5_combout\ = (\Equal2~0_combout\ & (\Selector3~1_combout\ $ (\Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Equal2~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \BusWires[2]~5_combout\);

-- Location: LCCOMB_X15_Y24_N6
\BusWires[2]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~88_combout\ = (\Selector4~2_combout\ & (!\Selector8~3_combout\ & (!\Selector7~1_combout\ & \Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~2_combout\,
	datab => \Selector8~3_combout\,
	datac => \Selector7~1_combout\,
	datad => \Equal4~1_combout\,
	combout => \BusWires[2]~88_combout\);

-- Location: LCCOMB_X15_Y24_N14
\BusWires[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~6_combout\ = (\Equal2~2_combout\ & ((\BusWires[2]~5_combout\ & (\Selector2~1_combout\)) # (!\BusWires[2]~5_combout\ & ((\BusWires[2]~88_combout\))))) # (!\Equal2~2_combout\ & (((\BusWires[2]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~2_combout\,
	datab => \BusWires[2]~5_combout\,
	datac => \Selector2~1_combout\,
	datad => \BusWires[2]~88_combout\,
	combout => \BusWires[2]~6_combout\);

-- Location: LCCOMB_X17_Y23_N4
\Selector10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\Selector10~0_combout\ & ((\Selector9~4_combout\) # ((\decY|Mux0~1_combout\ & \Selector19~0_combout\)))) # (!\Selector10~0_combout\ & (\decY|Mux0~1_combout\ & (\Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector10~0_combout\,
	datab => \decY|Mux0~1_combout\,
	datac => \Selector19~0_combout\,
	datad => \Selector9~4_combout\,
	combout => \Selector10~1_combout\);

-- Location: FF_X11_Y24_N23
\reg_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~31_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(1));

-- Location: LCCOMB_X9_Y24_N18
\reg_2|Q[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[1]~feeder_combout\ = \BusWires[1]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[1]~31_combout\,
	combout => \reg_2|Q[1]~feeder_combout\);

-- Location: LCCOMB_X17_Y23_N24
\Selector11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector19~0_combout\ & ((\decY|Mux0~0_combout\) # ((\Selector11~0_combout\ & \Selector9~2_combout\)))) # (!\Selector19~0_combout\ & (\Selector11~0_combout\ & (\Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~0_combout\,
	datab => \Selector11~0_combout\,
	datac => \Selector9~2_combout\,
	datad => \decY|Mux0~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X9_Y24_N19
\reg_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[1]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(1));

-- Location: LCCOMB_X14_Y23_N12
\Selector13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\ & ((\Selector9~2_combout\) # ((\decY|Mux0~2_combout\ & \Selector19~0_combout\)))) # (!\Selector13~0_combout\ & (\decY|Mux0~2_combout\ & ((\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~0_combout\,
	datab => \decY|Mux0~2_combout\,
	datac => \Selector9~2_combout\,
	datad => \Selector19~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X11_Y24_N17
\reg_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~31_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(1));

-- Location: LCCOMB_X11_Y24_N16
\BusWires[1]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~24_combout\ = (\BusWires[2]~4_combout\ & (((\reg_4|Q\(1) & !\BusWires[2]~6_combout\)))) # (!\BusWires[2]~4_combout\ & ((\reg_2|Q\(1)) # ((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(1),
	datab => \BusWires[2]~4_combout\,
	datac => \reg_4|Q\(1),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[1]~24_combout\);

-- Location: LCCOMB_X11_Y24_N22
\BusWires[1]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~25_combout\ = (\BusWires[2]~6_combout\ & ((\BusWires[1]~24_combout\ & ((\reg_1|Q\(1)))) # (!\BusWires[1]~24_combout\ & (\reg_3|Q\(1))))) # (!\BusWires[2]~6_combout\ & (((\BusWires[1]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(1),
	datab => \BusWires[2]~6_combout\,
	datac => \reg_1|Q\(1),
	datad => \BusWires[1]~24_combout\,
	combout => \BusWires[1]~25_combout\);

-- Location: LCCOMB_X14_Y26_N20
\BusWires[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~26_combout\ = (\BusWires[0]~10_combout\ & (\Equal1~3_combout\ & (\reg_0|Q\(1)))) # (!\BusWires[0]~10_combout\ & ((\BusWires[1]~25_combout\) # ((\Equal1~3_combout\ & \reg_0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~10_combout\,
	datab => \Equal1~3_combout\,
	datac => \reg_0|Q\(1),
	datad => \BusWires[1]~25_combout\,
	combout => \BusWires[1]~26_combout\);

-- Location: LCCOMB_X14_Y26_N18
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \alu~0_combout\ $ (((\BusWires[1]~26_combout\) # ((\BusWires[1]~30_combout\ & \BusWires[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu~0_combout\,
	datab => \BusWires[1]~30_combout\,
	datac => \BusWires[0]~22_combout\,
	datad => \BusWires[1]~26_combout\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X14_Y24_N12
\reg_5|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_5|Q[0]~feeder_combout\ = \BusWires[0]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[0]~23_combout\,
	combout => \reg_5|Q[0]~feeder_combout\);

-- Location: FF_X14_Y24_N13
\reg_5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_5|Q[0]~feeder_combout\,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(0));

-- Location: FF_X14_Y22_N9
\reg_6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~23_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(0));

-- Location: FF_X14_Y22_N11
\reg_7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~23_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(0));

-- Location: LCCOMB_X12_Y23_N24
\Mux61~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (!\reg_IR|Q\(1) & (!\reg_IR|Q\(2) & (!\reg_IR|Q\(0) & \reg_B|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \reg_IR|Q\(0),
	datad => \reg_B|Q\(0),
	combout => \Mux61~1_combout\);

-- Location: FF_X12_Y23_N25
\reg_C|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux61~1_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(0));

-- Location: FF_X14_Y24_N31
\reg_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[0]~23_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(0));

-- Location: LCCOMB_X15_Y26_N0
\reg_G|Q[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[0]~10_cout\ = CARRY((\addxor~combout\) # (\one~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \addxor~combout\,
	datab => \one~0_combout\,
	datad => VCC,
	cout => \reg_G|Q[0]~10_cout\);

-- Location: LCCOMB_X15_Y26_N2
\reg_G|Q[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[0]~11_combout\ = (\Add0~0_combout\ & ((\reg_A|Q\(0) & (\reg_G|Q[0]~10_cout\ & VCC)) # (!\reg_A|Q\(0) & (!\reg_G|Q[0]~10_cout\)))) # (!\Add0~0_combout\ & ((\reg_A|Q\(0) & (!\reg_G|Q[0]~10_cout\)) # (!\reg_A|Q\(0) & ((\reg_G|Q[0]~10_cout\) # 
-- (GND)))))
-- \reg_G|Q[0]~12\ = CARRY((\Add0~0_combout\ & (!\reg_A|Q\(0) & !\reg_G|Q[0]~10_cout\)) # (!\Add0~0_combout\ & ((!\reg_G|Q[0]~10_cout\) # (!\reg_A|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \reg_A|Q\(0),
	datad => VCC,
	cin => \reg_G|Q[0]~10_cout\,
	combout => \reg_G|Q[0]~11_combout\,
	cout => \reg_G|Q[0]~12\);

-- Location: FF_X14_Y26_N9
\reg_0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~23_combout\,
	sload => VCC,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(0));

-- Location: LCCOMB_X9_Y24_N20
\reg_2|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[0]~feeder_combout\ = \BusWires[0]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[0]~23_combout\,
	combout => \reg_2|Q[0]~feeder_combout\);

-- Location: FF_X9_Y24_N21
\reg_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[0]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(0));

-- Location: FF_X11_Y24_N11
\reg_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~23_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(0));

-- Location: LCCOMB_X12_Y24_N16
\reg_3|Q[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[0]~feeder_combout\ = \BusWires[0]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[0]~23_combout\,
	combout => \reg_3|Q[0]~feeder_combout\);

-- Location: FF_X12_Y24_N17
\reg_3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[0]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(0));

-- Location: FF_X11_Y24_N1
\reg_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[0]~23_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(0));

-- Location: LCCOMB_X11_Y24_N0
\BusWires[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~7_combout\ = (\BusWires[2]~4_combout\ & ((\BusWires[2]~6_combout\ & (\reg_3|Q\(0))) # (!\BusWires[2]~6_combout\ & ((\reg_4|Q\(0)))))) # (!\BusWires[2]~4_combout\ & (((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(0),
	datab => \BusWires[2]~4_combout\,
	datac => \reg_4|Q\(0),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[0]~7_combout\);

-- Location: LCCOMB_X11_Y24_N10
\BusWires[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~8_combout\ = (\BusWires[2]~4_combout\ & (((\BusWires[0]~7_combout\)))) # (!\BusWires[2]~4_combout\ & ((\BusWires[0]~7_combout\ & ((\reg_1|Q\(0)))) # (!\BusWires[0]~7_combout\ & (\reg_2|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~4_combout\,
	datab => \reg_2|Q\(0),
	datac => \reg_1|Q\(0),
	datad => \BusWires[0]~7_combout\,
	combout => \BusWires[0]~8_combout\);

-- Location: LCCOMB_X14_Y26_N8
\BusWires[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~11_combout\ = (\BusWires[0]~10_combout\ & (\Equal1~3_combout\ & (\reg_0|Q\(0)))) # (!\BusWires[0]~10_combout\ & ((\BusWires[0]~8_combout\) # ((\Equal1~3_combout\ & \reg_0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~10_combout\,
	datab => \Equal1~3_combout\,
	datac => \reg_0|Q\(0),
	datad => \BusWires[0]~8_combout\,
	combout => \BusWires[0]~11_combout\);

-- Location: LCCOMB_X15_Y26_N28
\Sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~0_combout\ = \reg_A|Q\(0) $ (((\BusWires[0]~11_combout\) # ((\BusWires[0]~21_combout\ & \BusWires[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~11_combout\,
	datab => \reg_A|Q\(0),
	datac => \BusWires[0]~21_combout\,
	datad => \BusWires[0]~22_combout\,
	combout => \Sum~0_combout\);

-- Location: FF_X15_Y26_N3
\reg_G|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[0]~11_combout\,
	asdata => \Sum~0_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(0));

-- Location: LCCOMB_X14_Y25_N26
\BusWires[2]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~89_combout\ = (!\Selector19~1_combout\ & (!\Selector19~0_combout\ & (!\Selector18~1_combout\ & \cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~1_combout\,
	datab => \Selector19~0_combout\,
	datac => \Selector18~1_combout\,
	datad => \cout~0_combout\,
	combout => \BusWires[2]~89_combout\);

-- Location: LCCOMB_X14_Y25_N6
\BusWires[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~17_combout\ = (\Equal9~4_combout\) # ((\BusWires[2]~89_combout\ & !\BusWires[2]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~89_combout\,
	datac => \Equal9~4_combout\,
	datad => \BusWires[2]~15_combout\,
	combout => \BusWires[2]~17_combout\);

-- Location: LCCOMB_X14_Y25_N22
\BusWires[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~18_combout\ = (\BusWires[2]~16_combout\ & ((\BusWires[2]~17_combout\ & (\reg_G|Q\(0))) # (!\BusWires[2]~17_combout\ & ((\reg_B|Q\(0)))))) # (!\BusWires[2]~16_combout\ & (((!\BusWires[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~16_combout\,
	datab => \reg_G|Q\(0),
	datac => \reg_B|Q\(0),
	datad => \BusWires[2]~17_combout\,
	combout => \BusWires[0]~18_combout\);

-- Location: LCCOMB_X14_Y22_N12
\BusWires[0]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~19_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[0]~18_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[0]~18_combout\ & (\SW[0]~input_o\)) # (!\BusWires[0]~18_combout\ & ((\reg_C|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \reg_C|Q\(0),
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[0]~18_combout\,
	combout => \BusWires[0]~19_combout\);

-- Location: LCCOMB_X14_Y22_N10
\BusWires[0]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~20_combout\ = (\BusWires[2]~12_combout\ & (\BusWires[2]~13_combout\)) # (!\BusWires[2]~12_combout\ & ((\BusWires[2]~13_combout\ & (\reg_7|Q\(0))) # (!\BusWires[2]~13_combout\ & ((\BusWires[0]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~12_combout\,
	datab => \BusWires[2]~13_combout\,
	datac => \reg_7|Q\(0),
	datad => \BusWires[0]~19_combout\,
	combout => \BusWires[0]~20_combout\);

-- Location: LCCOMB_X14_Y22_N8
\BusWires[0]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~21_combout\ = (\BusWires[2]~12_combout\ & ((\BusWires[0]~20_combout\ & (\reg_5|Q\(0))) # (!\BusWires[0]~20_combout\ & ((\reg_6|Q\(0)))))) # (!\BusWires[2]~12_combout\ & (((\BusWires[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~12_combout\,
	datab => \reg_5|Q\(0),
	datac => \reg_6|Q\(0),
	datad => \BusWires[0]~20_combout\,
	combout => \BusWires[0]~21_combout\);

-- Location: LCCOMB_X15_Y26_N22
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \alu~0_combout\ $ (((\BusWires[0]~11_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[0]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu~0_combout\,
	datab => \BusWires[0]~22_combout\,
	datac => \BusWires[0]~21_combout\,
	datad => \BusWires[0]~11_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X15_Y26_N4
\reg_G|Q[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[1]~13_combout\ = ((\reg_A|Q\(1) $ (\Add0~1_combout\ $ (!\reg_G|Q[0]~12\)))) # (GND)
-- \reg_G|Q[1]~14\ = CARRY((\reg_A|Q\(1) & ((\Add0~1_combout\) # (!\reg_G|Q[0]~12\))) # (!\reg_A|Q\(1) & (\Add0~1_combout\ & !\reg_G|Q[0]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(1),
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \reg_G|Q[0]~12\,
	combout => \reg_G|Q[1]~13_combout\,
	cout => \reg_G|Q[1]~14\);

-- Location: LCCOMB_X14_Y26_N16
\Sum~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~1_combout\ = \reg_A|Q\(1) $ (((\BusWires[1]~26_combout\) # ((\BusWires[1]~30_combout\ & \BusWires[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(1),
	datab => \BusWires[1]~30_combout\,
	datac => \BusWires[0]~22_combout\,
	datad => \BusWires[1]~26_combout\,
	combout => \Sum~1_combout\);

-- Location: FF_X15_Y26_N5
\reg_G|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[1]~13_combout\,
	asdata => \Sum~1_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(1));

-- Location: LCCOMB_X14_Y25_N10
\BusWires[1]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~27_combout\ = (\BusWires[2]~16_combout\ & ((\BusWires[2]~17_combout\ & (\reg_G|Q\(1))) # (!\BusWires[2]~17_combout\ & ((\reg_B|Q\(1)))))) # (!\BusWires[2]~16_combout\ & (((\BusWires[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~16_combout\,
	datab => \reg_G|Q\(1),
	datac => \reg_B|Q\(1),
	datad => \BusWires[2]~17_combout\,
	combout => \BusWires[1]~27_combout\);

-- Location: LCCOMB_X14_Y25_N16
\BusWires[1]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~28_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[1]~27_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[1]~27_combout\ & ((\reg_C|Q\(1)))) # (!\BusWires[1]~27_combout\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \reg_C|Q\(1),
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[1]~27_combout\,
	combout => \BusWires[1]~28_combout\);

-- Location: LCCOMB_X14_Y25_N0
\BusWires[1]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~29_combout\ = (\BusWires[2]~13_combout\ & (\BusWires[2]~12_combout\)) # (!\BusWires[2]~13_combout\ & ((\BusWires[2]~12_combout\ & (\reg_6|Q\(1))) # (!\BusWires[2]~12_combout\ & ((\BusWires[1]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~13_combout\,
	datab => \BusWires[2]~12_combout\,
	datac => \reg_6|Q\(1),
	datad => \BusWires[1]~28_combout\,
	combout => \BusWires[1]~29_combout\);

-- Location: LCCOMB_X14_Y26_N14
\BusWires[1]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~30_combout\ = (\BusWires[2]~13_combout\ & ((\BusWires[1]~29_combout\ & ((\reg_5|Q\(1)))) # (!\BusWires[1]~29_combout\ & (\reg_7|Q\(1))))) # (!\BusWires[2]~13_combout\ & (((\BusWires[1]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(1),
	datab => \BusWires[2]~13_combout\,
	datac => \reg_5|Q\(1),
	datad => \BusWires[1]~29_combout\,
	combout => \BusWires[1]~30_combout\);

-- Location: LCCOMB_X10_Y24_N16
\BusWires[1]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[1]~31_combout\ = (\BusWires[1]~26_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[1]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datac => \BusWires[1]~30_combout\,
	datad => \BusWires[1]~26_combout\,
	combout => \BusWires[1]~31_combout\);

-- Location: FF_X14_Y25_N11
\reg_B|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[1]~31_combout\,
	sload => VCC,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(1));

-- Location: LCCOMB_X9_Y24_N30
\Mux59~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux59~0_combout\ = (\reg_IR|Q\(0) & (\reg_B|Q\(1) & !\reg_IR|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(0),
	datab => \reg_B|Q\(1),
	datad => \reg_IR|Q\(1),
	combout => \Mux59~0_combout\);

-- Location: LCCOMB_X9_Y23_N2
\Mux59~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux59~1_combout\ = (!\reg_IR|Q\(2) & ((\Mux59~0_combout\) # ((\Mux58~0_combout\ & !\reg_IR|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux58~0_combout\,
	datab => \reg_IR|Q\(0),
	datac => \Mux59~0_combout\,
	datad => \reg_IR|Q\(2),
	combout => \Mux59~1_combout\);

-- Location: FF_X9_Y23_N3
\reg_C|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux59~1_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(2));

-- Location: FF_X14_Y26_N13
\reg_0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~39_combout\,
	sload => VCC,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(2));

-- Location: LCCOMB_X9_Y24_N4
\reg_2|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[2]~feeder_combout\ = \BusWires[2]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[2]~39_combout\,
	combout => \reg_2|Q[2]~feeder_combout\);

-- Location: FF_X9_Y24_N5
\reg_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[2]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(2));

-- Location: FF_X11_Y24_N7
\reg_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~39_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(2));

-- Location: LCCOMB_X12_Y24_N8
\reg_3|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[2]~feeder_combout\ = \BusWires[2]~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[2]~39_combout\,
	combout => \reg_3|Q[2]~feeder_combout\);

-- Location: FF_X12_Y24_N9
\reg_3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[2]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(2));

-- Location: FF_X11_Y24_N25
\reg_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~39_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(2));

-- Location: LCCOMB_X11_Y24_N24
\BusWires[2]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~32_combout\ = (\BusWires[2]~4_combout\ & ((\BusWires[2]~6_combout\ & (\reg_3|Q\(2))) # (!\BusWires[2]~6_combout\ & ((\reg_4|Q\(2)))))) # (!\BusWires[2]~4_combout\ & (((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~4_combout\,
	datab => \reg_3|Q\(2),
	datac => \reg_4|Q\(2),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[2]~32_combout\);

-- Location: LCCOMB_X11_Y24_N6
\BusWires[2]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~33_combout\ = (\BusWires[2]~4_combout\ & (((\BusWires[2]~32_combout\)))) # (!\BusWires[2]~4_combout\ & ((\BusWires[2]~32_combout\ & ((\reg_1|Q\(2)))) # (!\BusWires[2]~32_combout\ & (\reg_2|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~4_combout\,
	datab => \reg_2|Q\(2),
	datac => \reg_1|Q\(2),
	datad => \BusWires[2]~32_combout\,
	combout => \BusWires[2]~33_combout\);

-- Location: LCCOMB_X14_Y26_N12
\BusWires[2]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~34_combout\ = (\BusWires[0]~10_combout\ & (\Equal1~3_combout\ & (\reg_0|Q\(2)))) # (!\BusWires[0]~10_combout\ & ((\BusWires[2]~33_combout\) # ((\Equal1~3_combout\ & \reg_0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~10_combout\,
	datab => \Equal1~3_combout\,
	datac => \reg_0|Q\(2),
	datad => \BusWires[2]~33_combout\,
	combout => \BusWires[2]~34_combout\);

-- Location: LCCOMB_X14_Y26_N26
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \alu~0_combout\ $ (((\BusWires[2]~34_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~34_combout\,
	datab => \alu~0_combout\,
	datac => \BusWires[0]~22_combout\,
	datad => \BusWires[2]~38_combout\,
	combout => \Add0~2_combout\);

-- Location: FF_X14_Y24_N19
\reg_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[2]~39_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(2));

-- Location: LCCOMB_X15_Y26_N6
\reg_G|Q[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[2]~15_combout\ = (\Add0~2_combout\ & ((\reg_A|Q\(2) & (\reg_G|Q[1]~14\ & VCC)) # (!\reg_A|Q\(2) & (!\reg_G|Q[1]~14\)))) # (!\Add0~2_combout\ & ((\reg_A|Q\(2) & (!\reg_G|Q[1]~14\)) # (!\reg_A|Q\(2) & ((\reg_G|Q[1]~14\) # (GND)))))
-- \reg_G|Q[2]~16\ = CARRY((\Add0~2_combout\ & (!\reg_A|Q\(2) & !\reg_G|Q[1]~14\)) # (!\Add0~2_combout\ & ((!\reg_G|Q[1]~14\) # (!\reg_A|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \reg_A|Q\(2),
	datad => VCC,
	cin => \reg_G|Q[1]~14\,
	combout => \reg_G|Q[2]~15_combout\,
	cout => \reg_G|Q[2]~16\);

-- Location: LCCOMB_X16_Y26_N20
\Sum~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~2_combout\ = \reg_A|Q\(2) $ (((\BusWires[2]~34_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[2]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \reg_A|Q\(2),
	datac => \BusWires[2]~34_combout\,
	datad => \BusWires[2]~38_combout\,
	combout => \Sum~2_combout\);

-- Location: FF_X15_Y26_N7
\reg_G|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[2]~15_combout\,
	asdata => \Sum~2_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(2));

-- Location: LCCOMB_X14_Y25_N18
\BusWires[2]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~35_combout\ = (\BusWires[2]~17_combout\ & ((\reg_G|Q\(2)) # ((!\BusWires[2]~16_combout\)))) # (!\BusWires[2]~17_combout\ & (((\reg_B|Q\(2) & \BusWires[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~17_combout\,
	datab => \reg_G|Q\(2),
	datac => \reg_B|Q\(2),
	datad => \BusWires[2]~16_combout\,
	combout => \BusWires[2]~35_combout\);

-- Location: LCCOMB_X14_Y25_N20
\BusWires[2]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~36_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[2]~35_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[2]~35_combout\ & ((\reg_C|Q\(2)))) # (!\BusWires[2]~35_combout\ & (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \reg_C|Q\(2),
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[2]~35_combout\,
	combout => \BusWires[2]~36_combout\);

-- Location: LCCOMB_X15_Y25_N10
\BusWires[2]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~37_combout\ = (\BusWires[2]~13_combout\ & ((\BusWires[2]~12_combout\) # ((\reg_7|Q\(2))))) # (!\BusWires[2]~13_combout\ & (!\BusWires[2]~12_combout\ & ((\BusWires[2]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~13_combout\,
	datab => \BusWires[2]~12_combout\,
	datac => \reg_7|Q\(2),
	datad => \BusWires[2]~36_combout\,
	combout => \BusWires[2]~37_combout\);

-- Location: LCCOMB_X15_Y25_N4
\BusWires[2]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~38_combout\ = (\BusWires[2]~12_combout\ & ((\BusWires[2]~37_combout\ & (\reg_5|Q\(2))) # (!\BusWires[2]~37_combout\ & ((\reg_6|Q\(2)))))) # (!\BusWires[2]~12_combout\ & (((\BusWires[2]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(2),
	datab => \BusWires[2]~12_combout\,
	datac => \reg_6|Q\(2),
	datad => \BusWires[2]~37_combout\,
	combout => \BusWires[2]~38_combout\);

-- Location: LCCOMB_X14_Y24_N18
\BusWires[2]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~39_combout\ = (\BusWires[2]~34_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[2]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datac => \BusWires[2]~38_combout\,
	datad => \BusWires[2]~34_combout\,
	combout => \BusWires[2]~39_combout\);

-- Location: FF_X14_Y25_N19
\reg_B|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[2]~39_combout\,
	sload => VCC,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(2));

-- Location: LCCOMB_X11_Y25_N6
\Mux55~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux55~2_combout\ = (!\reg_IR|Q\(1) & ((\reg_IR|Q\(2) & (\reg_B|Q\(2))) # (!\reg_IR|Q\(2) & ((\reg_B|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(2),
	datab => \reg_B|Q\(6),
	datac => \reg_IR|Q\(2),
	datad => \reg_IR|Q\(1),
	combout => \Mux55~2_combout\);

-- Location: LCCOMB_X12_Y25_N8
\reg_5|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_5|Q[4]~feeder_combout\ = \BusWires[4]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[4]~55_combout\,
	combout => \reg_5|Q[4]~feeder_combout\);

-- Location: FF_X12_Y25_N9
\reg_5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_5|Q[4]~feeder_combout\,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(4));

-- Location: FF_X15_Y25_N25
\reg_6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~55_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(4));

-- Location: FF_X15_Y25_N19
\reg_7|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~55_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(4));

-- Location: LCCOMB_X12_Y23_N12
\Mux57~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~1_combout\ = (!\reg_IR|Q\(0) & ((\reg_IR|Q\(1) & ((\reg_B|Q\(2)))) # (!\reg_IR|Q\(1) & (\reg_B|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_B|Q\(4),
	datac => \reg_IR|Q\(0),
	datad => \reg_B|Q\(2),
	combout => \Mux57~1_combout\);

-- Location: FF_X14_Y26_N23
\reg_0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~47_combout\,
	sload => VCC,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(3));

-- Location: LCCOMB_X10_Y26_N20
\reg_3|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[3]~feeder_combout\ = \BusWires[3]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[3]~47_combout\,
	combout => \reg_3|Q[3]~feeder_combout\);

-- Location: FF_X10_Y26_N21
\reg_3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[3]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(3));

-- Location: FF_X11_Y24_N27
\reg_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~47_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(3));

-- Location: LCCOMB_X11_Y26_N20
\reg_2|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[3]~feeder_combout\ = \BusWires[3]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[3]~47_combout\,
	combout => \reg_2|Q[3]~feeder_combout\);

-- Location: FF_X11_Y26_N21
\reg_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[3]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(3));

-- Location: FF_X11_Y24_N21
\reg_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~47_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(3));

-- Location: LCCOMB_X11_Y24_N20
\BusWires[3]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~40_combout\ = (\BusWires[2]~6_combout\ & (((!\BusWires[2]~4_combout\)))) # (!\BusWires[2]~6_combout\ & ((\BusWires[2]~4_combout\ & ((\reg_4|Q\(3)))) # (!\BusWires[2]~4_combout\ & (\reg_2|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(3),
	datab => \BusWires[2]~6_combout\,
	datac => \reg_4|Q\(3),
	datad => \BusWires[2]~4_combout\,
	combout => \BusWires[3]~40_combout\);

-- Location: LCCOMB_X11_Y24_N26
\BusWires[3]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~41_combout\ = (\BusWires[2]~6_combout\ & ((\BusWires[3]~40_combout\ & ((\reg_1|Q\(3)))) # (!\BusWires[3]~40_combout\ & (\reg_3|Q\(3))))) # (!\BusWires[2]~6_combout\ & (((\BusWires[3]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(3),
	datab => \BusWires[2]~6_combout\,
	datac => \reg_1|Q\(3),
	datad => \BusWires[3]~40_combout\,
	combout => \BusWires[3]~41_combout\);

-- Location: LCCOMB_X14_Y26_N22
\BusWires[3]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~42_combout\ = (\BusWires[0]~10_combout\ & (\Equal1~3_combout\ & (\reg_0|Q\(3)))) # (!\BusWires[0]~10_combout\ & ((\BusWires[3]~41_combout\) # ((\Equal1~3_combout\ & \reg_0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~10_combout\,
	datab => \Equal1~3_combout\,
	datac => \reg_0|Q\(3),
	datad => \BusWires[3]~41_combout\,
	combout => \BusWires[3]~42_combout\);

-- Location: LCCOMB_X11_Y26_N10
\reg_7|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[3]~feeder_combout\ = \BusWires[3]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[3]~47_combout\,
	combout => \reg_7|Q[3]~feeder_combout\);

-- Location: FF_X11_Y26_N11
\reg_7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_7|Q[3]~feeder_combout\,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(3));

-- Location: FF_X14_Y26_N29
\reg_5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~47_combout\,
	sload => VCC,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(3));

-- Location: FF_X14_Y25_N31
\reg_6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[3]~47_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(3));

-- Location: LCCOMB_X9_Y23_N16
\Mux58~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux58~1_combout\ = (!\reg_IR|Q\(2) & ((\reg_IR|Q\(0) & ((\Mux58~0_combout\))) # (!\reg_IR|Q\(0) & (\Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~0_combout\,
	datab => \reg_IR|Q\(0),
	datac => \Mux58~0_combout\,
	datad => \reg_IR|Q\(2),
	combout => \Mux58~1_combout\);

-- Location: FF_X9_Y23_N17
\reg_C|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux58~1_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(3));

-- Location: FF_X10_Y26_N19
\reg_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[3]~47_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(3));

-- Location: LCCOMB_X14_Y26_N24
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \alu~0_combout\ $ (((\BusWires[3]~42_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[3]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \alu~0_combout\,
	datac => \BusWires[3]~42_combout\,
	datad => \BusWires[3]~46_combout\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X15_Y26_N8
\reg_G|Q[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[3]~17_combout\ = ((\reg_A|Q\(3) $ (\Add0~3_combout\ $ (!\reg_G|Q[2]~16\)))) # (GND)
-- \reg_G|Q[3]~18\ = CARRY((\reg_A|Q\(3) & ((\Add0~3_combout\) # (!\reg_G|Q[2]~16\))) # (!\reg_A|Q\(3) & (\Add0~3_combout\ & !\reg_G|Q[2]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(3),
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \reg_G|Q[2]~16\,
	combout => \reg_G|Q[3]~17_combout\,
	cout => \reg_G|Q[3]~18\);

-- Location: LCCOMB_X14_Y26_N6
\Sum~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~3_combout\ = \reg_A|Q\(3) $ (((\BusWires[3]~42_combout\) # ((\BusWires[3]~46_combout\ & \BusWires[0]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[3]~42_combout\,
	datab => \BusWires[3]~46_combout\,
	datac => \BusWires[0]~22_combout\,
	datad => \reg_A|Q\(3),
	combout => \Sum~3_combout\);

-- Location: FF_X15_Y26_N9
\reg_G|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[3]~17_combout\,
	asdata => \Sum~3_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(3));

-- Location: LCCOMB_X14_Y25_N28
\BusWires[3]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~43_combout\ = (\BusWires[2]~17_combout\ & (((\reg_G|Q\(3)) # (!\BusWires[2]~16_combout\)))) # (!\BusWires[2]~17_combout\ & (\reg_B|Q\(3) & ((\BusWires[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(3),
	datab => \reg_G|Q\(3),
	datac => \BusWires[2]~17_combout\,
	datad => \BusWires[2]~16_combout\,
	combout => \BusWires[3]~43_combout\);

-- Location: LCCOMB_X14_Y25_N2
\BusWires[3]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~44_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[3]~43_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[3]~43_combout\ & (\reg_C|Q\(3))) # (!\BusWires[3]~43_combout\ & ((\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q\(3),
	datab => \SW[3]~input_o\,
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[3]~43_combout\,
	combout => \BusWires[3]~44_combout\);

-- Location: LCCOMB_X14_Y25_N30
\BusWires[3]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~45_combout\ = (\BusWires[2]~13_combout\ & (\BusWires[2]~12_combout\)) # (!\BusWires[2]~13_combout\ & ((\BusWires[2]~12_combout\ & (\reg_6|Q\(3))) # (!\BusWires[2]~12_combout\ & ((\BusWires[3]~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~13_combout\,
	datab => \BusWires[2]~12_combout\,
	datac => \reg_6|Q\(3),
	datad => \BusWires[3]~44_combout\,
	combout => \BusWires[3]~45_combout\);

-- Location: LCCOMB_X14_Y26_N28
\BusWires[3]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~46_combout\ = (\BusWires[2]~13_combout\ & ((\BusWires[3]~45_combout\ & ((\reg_5|Q\(3)))) # (!\BusWires[3]~45_combout\ & (\reg_7|Q\(3))))) # (!\BusWires[2]~13_combout\ & (((\BusWires[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(3),
	datab => \BusWires[2]~13_combout\,
	datac => \reg_5|Q\(3),
	datad => \BusWires[3]~45_combout\,
	combout => \BusWires[3]~46_combout\);

-- Location: LCCOMB_X10_Y26_N18
\BusWires[3]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[3]~47_combout\ = (\BusWires[3]~42_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[3]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BusWires[0]~22_combout\,
	datac => \BusWires[3]~42_combout\,
	datad => \BusWires[3]~46_combout\,
	combout => \BusWires[3]~47_combout\);

-- Location: LCCOMB_X11_Y23_N24
\reg_B|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_B|Q[3]~feeder_combout\ = \BusWires[3]~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[3]~47_combout\,
	combout => \reg_B|Q[3]~feeder_combout\);

-- Location: FF_X11_Y23_N25
\reg_B|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_B|Q[3]~feeder_combout\,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(3));

-- Location: LCCOMB_X12_Y23_N6
\Mux57~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~0_combout\ = (\reg_IR|Q\(1) & (\reg_B|Q\(1))) # (!\reg_IR|Q\(1) & ((\reg_B|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(1),
	datab => \reg_B|Q\(3),
	datac => \reg_IR|Q\(1),
	combout => \Mux57~0_combout\);

-- Location: LCCOMB_X12_Y23_N26
\Mux57~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~2_combout\ = (!\reg_IR|Q\(2) & ((\Mux57~1_combout\) # ((\reg_IR|Q\(0) & \Mux57~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux57~1_combout\,
	datab => \reg_IR|Q\(2),
	datac => \reg_IR|Q\(0),
	datad => \Mux57~0_combout\,
	combout => \Mux57~2_combout\);

-- Location: LCCOMB_X9_Y23_N6
\Mux57~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux57~3_combout\ = (\Mux57~2_combout\) # ((\decY|Mux0~2_combout\ & \reg_B|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \decY|Mux0~2_combout\,
	datac => \reg_B|Q\(0),
	datad => \Mux57~2_combout\,
	combout => \Mux57~3_combout\);

-- Location: FF_X9_Y23_N7
\reg_C|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux57~3_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(4));

-- Location: FF_X11_Y25_N23
\reg_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[4]~55_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(4));

-- Location: LCCOMB_X10_Y23_N24
\reg_0|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_0|Q[4]~feeder_combout\ = \BusWires[4]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[4]~55_combout\,
	combout => \reg_0|Q[4]~feeder_combout\);

-- Location: FF_X10_Y23_N25
\reg_0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_0|Q[4]~feeder_combout\,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(4));

-- Location: LCCOMB_X10_Y25_N6
\reg_2|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[4]~feeder_combout\ = \BusWires[4]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[4]~55_combout\,
	combout => \reg_2|Q[4]~feeder_combout\);

-- Location: FF_X10_Y25_N7
\reg_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[4]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(4));

-- Location: FF_X11_Y24_N15
\reg_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~55_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(4));

-- Location: LCCOMB_X12_Y24_N22
\reg_3|Q[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[4]~feeder_combout\ = \BusWires[4]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[4]~55_combout\,
	combout => \reg_3|Q[4]~feeder_combout\);

-- Location: FF_X12_Y24_N23
\reg_3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[4]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(4));

-- Location: FF_X11_Y24_N13
\reg_4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~55_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(4));

-- Location: LCCOMB_X11_Y24_N12
\BusWires[4]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~48_combout\ = (\BusWires[2]~4_combout\ & ((\BusWires[2]~6_combout\ & (\reg_3|Q\(4))) # (!\BusWires[2]~6_combout\ & ((\reg_4|Q\(4)))))) # (!\BusWires[2]~4_combout\ & (((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~4_combout\,
	datab => \reg_3|Q\(4),
	datac => \reg_4|Q\(4),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[4]~48_combout\);

-- Location: LCCOMB_X11_Y24_N14
\BusWires[4]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~49_combout\ = (\BusWires[2]~4_combout\ & (((\BusWires[4]~48_combout\)))) # (!\BusWires[2]~4_combout\ & ((\BusWires[4]~48_combout\ & ((\reg_1|Q\(4)))) # (!\BusWires[4]~48_combout\ & (\reg_2|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~4_combout\,
	datab => \reg_2|Q\(4),
	datac => \reg_1|Q\(4),
	datad => \BusWires[4]~48_combout\,
	combout => \BusWires[4]~49_combout\);

-- Location: LCCOMB_X11_Y25_N24
\BusWires[4]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~50_combout\ = (\reg_0|Q\(4) & ((\Equal1~3_combout\) # ((!\BusWires[0]~10_combout\ & \BusWires[4]~49_combout\)))) # (!\reg_0|Q\(4) & (((!\BusWires[0]~10_combout\ & \BusWires[4]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_0|Q\(4),
	datab => \Equal1~3_combout\,
	datac => \BusWires[0]~10_combout\,
	datad => \BusWires[4]~49_combout\,
	combout => \BusWires[4]~50_combout\);

-- Location: LCCOMB_X15_Y25_N14
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \alu~0_combout\ $ (((\BusWires[4]~50_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[4]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \BusWires[4]~54_combout\,
	datac => \alu~0_combout\,
	datad => \BusWires[4]~50_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X15_Y26_N10
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

-- Location: LCCOMB_X15_Y25_N8
\Sum~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~4_combout\ = \reg_A|Q\(4) $ (((\BusWires[4]~50_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[4]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \BusWires[4]~54_combout\,
	datac => \reg_A|Q\(4),
	datad => \BusWires[4]~50_combout\,
	combout => \Sum~4_combout\);

-- Location: FF_X15_Y26_N11
\reg_G|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[4]~19_combout\,
	asdata => \Sum~4_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(4));

-- Location: LCCOMB_X14_Y25_N24
\BusWires[4]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~51_combout\ = (\BusWires[2]~17_combout\ & ((\reg_G|Q\(4)) # ((!\BusWires[2]~16_combout\)))) # (!\BusWires[2]~17_combout\ & (((\reg_B|Q\(4) & \BusWires[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~17_combout\,
	datab => \reg_G|Q\(4),
	datac => \reg_B|Q\(4),
	datad => \BusWires[2]~16_combout\,
	combout => \BusWires[4]~51_combout\);

-- Location: LCCOMB_X15_Y25_N16
\BusWires[4]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~52_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[4]~51_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[4]~51_combout\ & ((\reg_C|Q\(4)))) # (!\BusWires[4]~51_combout\ & (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \reg_C|Q\(4),
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[4]~51_combout\,
	combout => \BusWires[4]~52_combout\);

-- Location: LCCOMB_X15_Y25_N18
\BusWires[4]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~53_combout\ = (\BusWires[2]~13_combout\ & ((\BusWires[2]~12_combout\) # ((\reg_7|Q\(4))))) # (!\BusWires[2]~13_combout\ & (!\BusWires[2]~12_combout\ & ((\BusWires[4]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~13_combout\,
	datab => \BusWires[2]~12_combout\,
	datac => \reg_7|Q\(4),
	datad => \BusWires[4]~52_combout\,
	combout => \BusWires[4]~53_combout\);

-- Location: LCCOMB_X15_Y25_N24
\BusWires[4]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~54_combout\ = (\BusWires[2]~12_combout\ & ((\BusWires[4]~53_combout\ & (\reg_5|Q\(4))) # (!\BusWires[4]~53_combout\ & ((\reg_6|Q\(4)))))) # (!\BusWires[2]~12_combout\ & (((\BusWires[4]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(4),
	datab => \BusWires[2]~12_combout\,
	datac => \reg_6|Q\(4),
	datad => \BusWires[4]~53_combout\,
	combout => \BusWires[4]~54_combout\);

-- Location: LCCOMB_X11_Y25_N22
\BusWires[4]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[4]~55_combout\ = (\BusWires[4]~50_combout\) # ((\BusWires[4]~54_combout\ & \BusWires[0]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BusWires[4]~54_combout\,
	datac => \BusWires[0]~22_combout\,
	datad => \BusWires[4]~50_combout\,
	combout => \BusWires[4]~55_combout\);

-- Location: FF_X14_Y25_N25
\reg_B|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[4]~55_combout\,
	sload => VCC,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(4));

-- Location: LCCOMB_X9_Y23_N0
\Mux55~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux55~1_combout\ = (\reg_IR|Q\(1) & ((\reg_IR|Q\(2) & (\reg_B|Q\(0))) # (!\reg_IR|Q\(2) & ((\reg_B|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \reg_B|Q\(0),
	datad => \reg_B|Q\(4),
	combout => \Mux55~1_combout\);

-- Location: LCCOMB_X15_Y24_N26
\reg_7|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_7|Q[5]~feeder_combout\ = \BusWires[5]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[5]~63_combout\,
	combout => \reg_7|Q[5]~feeder_combout\);

-- Location: FF_X15_Y24_N27
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

-- Location: FF_X14_Y24_N15
\reg_5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~63_combout\,
	sload => VCC,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(5));

-- Location: FF_X15_Y25_N23
\reg_6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~63_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(5));

-- Location: LCCOMB_X12_Y23_N2
\Mux56~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~2_combout\ = (\reg_IR|Q\(1) & (((\reg_IR|Q\(2))))) # (!\reg_IR|Q\(1) & ((\reg_IR|Q\(2) & ((\reg_B|Q\(0)))) # (!\reg_IR|Q\(2) & (\reg_B|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(4),
	datab => \reg_B|Q\(0),
	datac => \reg_IR|Q\(1),
	datad => \reg_IR|Q\(2),
	combout => \Mux56~2_combout\);

-- Location: LCCOMB_X12_Y23_N28
\Mux56~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~1_combout\ = (\reg_IR|Q\(1) & ((\reg_IR|Q\(0) & ((\reg_B|Q\(2)))) # (!\reg_IR|Q\(0) & (\reg_B|Q\(3))))) # (!\reg_IR|Q\(1) & (((\reg_IR|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_B|Q\(3),
	datac => \reg_IR|Q\(0),
	datad => \reg_B|Q\(2),
	combout => \Mux56~1_combout\);

-- Location: LCCOMB_X12_Y23_N18
\Mux56~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~3_combout\ = (\Mux56~1_combout\ & (\reg_IR|Q\(1) $ ((\Mux56~2_combout\)))) # (!\Mux56~1_combout\ & (!\reg_IR|Q\(1) & ((\Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \Mux56~2_combout\,
	datac => \Mux56~0_combout\,
	datad => \Mux56~1_combout\,
	combout => \Mux56~3_combout\);

-- Location: FF_X12_Y23_N19
\reg_C|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux56~3_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(5));

-- Location: LCCOMB_X11_Y23_N26
\reg_0|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_0|Q[5]~feeder_combout\ = \BusWires[5]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[5]~63_combout\,
	combout => \reg_0|Q[5]~feeder_combout\);

-- Location: FF_X11_Y23_N27
\reg_0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_0|Q[5]~feeder_combout\,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(5));

-- Location: LCCOMB_X12_Y24_N4
\reg_3|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[5]~feeder_combout\ = \BusWires[5]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[5]~63_combout\,
	combout => \reg_3|Q[5]~feeder_combout\);

-- Location: FF_X12_Y24_N5
\reg_3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[5]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(5));

-- Location: LCCOMB_X9_Y24_N14
\reg_2|Q[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[5]~feeder_combout\ = \BusWires[5]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[5]~63_combout\,
	combout => \reg_2|Q[5]~feeder_combout\);

-- Location: FF_X9_Y24_N15
\reg_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[5]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(5));

-- Location: FF_X11_Y24_N5
\reg_4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~63_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(5));

-- Location: LCCOMB_X11_Y24_N4
\BusWires[5]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~56_combout\ = (\BusWires[2]~4_combout\ & (((\reg_4|Q\(5) & !\BusWires[2]~6_combout\)))) # (!\BusWires[2]~4_combout\ & ((\reg_2|Q\(5)) # ((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~4_combout\,
	datab => \reg_2|Q\(5),
	datac => \reg_4|Q\(5),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[5]~56_combout\);

-- Location: FF_X11_Y24_N31
\reg_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~63_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(5));

-- Location: LCCOMB_X11_Y24_N30
\BusWires[5]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~57_combout\ = (\BusWires[5]~56_combout\ & (((\reg_1|Q\(5)) # (!\BusWires[2]~6_combout\)))) # (!\BusWires[5]~56_combout\ & (\reg_3|Q\(5) & ((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(5),
	datab => \BusWires[5]~56_combout\,
	datac => \reg_1|Q\(5),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[5]~57_combout\);

-- Location: LCCOMB_X14_Y24_N28
\BusWires[5]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~58_combout\ = (\Equal1~3_combout\ & ((\reg_0|Q\(5)) # ((\BusWires[5]~57_combout\ & !\BusWires[0]~10_combout\)))) # (!\Equal1~3_combout\ & (((\BusWires[5]~57_combout\ & !\BusWires[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \reg_0|Q\(5),
	datac => \BusWires[5]~57_combout\,
	datad => \BusWires[0]~10_combout\,
	combout => \BusWires[5]~58_combout\);

-- Location: LCCOMB_X14_Y24_N10
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \alu~0_combout\ $ (((\BusWires[5]~58_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[5]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \alu~0_combout\,
	datac => \BusWires[5]~62_combout\,
	datad => \BusWires[5]~58_combout\,
	combout => \Add0~5_combout\);

-- Location: FF_X14_Y24_N5
\reg_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[5]~63_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(5));

-- Location: LCCOMB_X15_Y26_N12
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

-- Location: LCCOMB_X12_Y24_N2
\Sum~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~5_combout\ = \reg_A|Q\(5) $ (((\BusWires[5]~58_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[5]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \reg_A|Q\(5),
	datac => \BusWires[5]~58_combout\,
	datad => \BusWires[5]~62_combout\,
	combout => \Sum~5_combout\);

-- Location: FF_X15_Y26_N13
\reg_G|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[5]~21_combout\,
	asdata => \Sum~5_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(5));

-- Location: LCCOMB_X14_Y25_N14
\BusWires[5]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~59_combout\ = (\BusWires[2]~16_combout\ & ((\BusWires[2]~17_combout\ & (\reg_G|Q\(5))) # (!\BusWires[2]~17_combout\ & ((\reg_B|Q\(5)))))) # (!\BusWires[2]~16_combout\ & (((\BusWires[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~16_combout\,
	datab => \reg_G|Q\(5),
	datac => \reg_B|Q\(5),
	datad => \BusWires[2]~17_combout\,
	combout => \BusWires[5]~59_combout\);

-- Location: LCCOMB_X15_Y25_N12
\BusWires[5]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~60_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[5]~59_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[5]~59_combout\ & (\reg_C|Q\(5))) # (!\BusWires[5]~59_combout\ & ((\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q\(5),
	datab => \SW[5]~input_o\,
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[5]~59_combout\,
	combout => \BusWires[5]~60_combout\);

-- Location: LCCOMB_X15_Y25_N22
\BusWires[5]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~61_combout\ = (\BusWires[2]~13_combout\ & (\BusWires[2]~12_combout\)) # (!\BusWires[2]~13_combout\ & ((\BusWires[2]~12_combout\ & (\reg_6|Q\(5))) # (!\BusWires[2]~12_combout\ & ((\BusWires[5]~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~13_combout\,
	datab => \BusWires[2]~12_combout\,
	datac => \reg_6|Q\(5),
	datad => \BusWires[5]~60_combout\,
	combout => \BusWires[5]~61_combout\);

-- Location: LCCOMB_X14_Y24_N14
\BusWires[5]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~62_combout\ = (\BusWires[2]~13_combout\ & ((\BusWires[5]~61_combout\ & ((\reg_5|Q\(5)))) # (!\BusWires[5]~61_combout\ & (\reg_7|Q\(5))))) # (!\BusWires[2]~13_combout\ & (((\BusWires[5]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(5),
	datab => \BusWires[2]~13_combout\,
	datac => \reg_5|Q\(5),
	datad => \BusWires[5]~61_combout\,
	combout => \BusWires[5]~62_combout\);

-- Location: LCCOMB_X14_Y24_N4
\BusWires[5]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[5]~63_combout\ = (\BusWires[5]~58_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[5]~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \BusWires[5]~62_combout\,
	datad => \BusWires[5]~58_combout\,
	combout => \BusWires[5]~63_combout\);

-- Location: FF_X14_Y25_N15
\reg_B|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[5]~63_combout\,
	sload => VCC,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(5));

-- Location: LCCOMB_X11_Y25_N12
\Mux56~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux56~0_combout\ = (\reg_IR|Q\(2) & (\reg_B|Q\(1))) # (!\reg_IR|Q\(2) & ((\reg_B|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \reg_B|Q\(5),
	combout => \Mux56~0_combout\);

-- Location: LCCOMB_X12_Y23_N8
\Mux55~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux55~0_combout\ = (\reg_IR|Q\(1) & (!\reg_IR|Q\(2) & ((\reg_B|Q\(3))))) # (!\reg_IR|Q\(1) & (((\Mux56~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(2),
	datac => \Mux56~0_combout\,
	datad => \reg_B|Q\(3),
	combout => \Mux55~0_combout\);

-- Location: LCCOMB_X9_Y23_N12
\Mux55~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux55~3_combout\ = (\reg_IR|Q\(0) & (((\Mux55~0_combout\)))) # (!\reg_IR|Q\(0) & ((\Mux55~2_combout\) # ((\Mux55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux55~2_combout\,
	datab => \Mux55~1_combout\,
	datac => \reg_IR|Q\(0),
	datad => \Mux55~0_combout\,
	combout => \Mux55~3_combout\);

-- Location: FF_X9_Y23_N13
\reg_C|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux55~3_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(6));

-- Location: LCCOMB_X10_Y25_N28
\reg_2|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[6]~feeder_combout\ = \BusWires[6]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~71_combout\,
	combout => \reg_2|Q[6]~feeder_combout\);

-- Location: FF_X10_Y25_N29
\reg_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[6]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(6));

-- Location: FF_X11_Y24_N19
\reg_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~71_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(6));

-- Location: LCCOMB_X12_Y24_N10
\reg_3|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[6]~feeder_combout\ = \BusWires[6]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[6]~71_combout\,
	combout => \reg_3|Q[6]~feeder_combout\);

-- Location: FF_X12_Y24_N11
\reg_3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[6]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(6));

-- Location: FF_X11_Y24_N29
\reg_4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~71_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(6));

-- Location: LCCOMB_X11_Y24_N28
\BusWires[6]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~64_combout\ = (\BusWires[2]~4_combout\ & ((\BusWires[2]~6_combout\ & (\reg_3|Q\(6))) # (!\BusWires[2]~6_combout\ & ((\reg_4|Q\(6)))))) # (!\BusWires[2]~4_combout\ & (((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(6),
	datab => \BusWires[2]~4_combout\,
	datac => \reg_4|Q\(6),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[6]~64_combout\);

-- Location: LCCOMB_X11_Y24_N18
\BusWires[6]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~65_combout\ = (\BusWires[2]~4_combout\ & (((\BusWires[6]~64_combout\)))) # (!\BusWires[2]~4_combout\ & ((\BusWires[6]~64_combout\ & ((\reg_1|Q\(6)))) # (!\BusWires[6]~64_combout\ & (\reg_2|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(6),
	datab => \BusWires[2]~4_combout\,
	datac => \reg_1|Q\(6),
	datad => \BusWires[6]~64_combout\,
	combout => \BusWires[6]~65_combout\);

-- Location: FF_X10_Y24_N23
\reg_0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[6]~71_combout\,
	sload => VCC,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(6));

-- Location: LCCOMB_X10_Y24_N22
\BusWires[6]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~66_combout\ = (\Equal1~3_combout\ & ((\reg_0|Q\(6)) # ((\BusWires[6]~65_combout\ & !\BusWires[0]~10_combout\)))) # (!\Equal1~3_combout\ & (\BusWires[6]~65_combout\ & ((!\BusWires[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \BusWires[6]~65_combout\,
	datac => \reg_0|Q\(6),
	datad => \BusWires[0]~10_combout\,
	combout => \BusWires[6]~66_combout\);

-- Location: LCCOMB_X15_Y26_N26
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = \alu~0_combout\ $ (((\BusWires[6]~66_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[6]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu~0_combout\,
	datab => \BusWires[0]~22_combout\,
	datac => \BusWires[6]~70_combout\,
	datad => \BusWires[6]~66_combout\,
	combout => \Add0~6_combout\);

-- Location: FF_X11_Y25_N15
\reg_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[6]~71_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(6));

-- Location: LCCOMB_X15_Y26_N14
\reg_G|Q[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[6]~23_combout\ = (\Add0~6_combout\ & ((\reg_A|Q\(6) & (\reg_G|Q[5]~22\ & VCC)) # (!\reg_A|Q\(6) & (!\reg_G|Q[5]~22\)))) # (!\Add0~6_combout\ & ((\reg_A|Q\(6) & (!\reg_G|Q[5]~22\)) # (!\reg_A|Q\(6) & ((\reg_G|Q[5]~22\) # (GND)))))
-- \reg_G|Q[6]~24\ = CARRY((\Add0~6_combout\ & (!\reg_A|Q\(6) & !\reg_G|Q[5]~22\)) # (!\Add0~6_combout\ & ((!\reg_G|Q[5]~22\) # (!\reg_A|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \reg_A|Q\(6),
	datad => VCC,
	cin => \reg_G|Q[5]~22\,
	combout => \reg_G|Q[6]~23_combout\,
	cout => \reg_G|Q[6]~24\);

-- Location: LCCOMB_X15_Y26_N20
\Sum~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~6_combout\ = \reg_A|Q\(6) $ (((\BusWires[6]~66_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[6]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(6),
	datab => \BusWires[0]~22_combout\,
	datac => \BusWires[6]~70_combout\,
	datad => \BusWires[6]~66_combout\,
	combout => \Sum~6_combout\);

-- Location: FF_X15_Y26_N15
\reg_G|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[6]~23_combout\,
	asdata => \Sum~6_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(6));

-- Location: LCCOMB_X15_Y25_N6
\BusWires[6]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~67_combout\ = (\BusWires[2]~17_combout\ & (((\reg_G|Q\(6)) # (!\BusWires[2]~16_combout\)))) # (!\BusWires[2]~17_combout\ & (\reg_B|Q\(6) & ((\BusWires[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(6),
	datab => \reg_G|Q\(6),
	datac => \BusWires[2]~17_combout\,
	datad => \BusWires[2]~16_combout\,
	combout => \BusWires[6]~67_combout\);

-- Location: LCCOMB_X15_Y25_N20
\BusWires[6]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~68_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[6]~67_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[6]~67_combout\ & ((\reg_C|Q\(6)))) # (!\BusWires[6]~67_combout\ & (\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \reg_C|Q\(6),
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[6]~67_combout\,
	combout => \BusWires[6]~68_combout\);

-- Location: LCCOMB_X15_Y25_N28
\BusWires[6]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~69_combout\ = (\BusWires[2]~13_combout\ & ((\BusWires[2]~12_combout\) # ((\reg_7|Q\(6))))) # (!\BusWires[2]~13_combout\ & (!\BusWires[2]~12_combout\ & ((\BusWires[6]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~13_combout\,
	datab => \BusWires[2]~12_combout\,
	datac => \reg_7|Q\(6),
	datad => \BusWires[6]~68_combout\,
	combout => \BusWires[6]~69_combout\);

-- Location: LCCOMB_X15_Y25_N2
\BusWires[6]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~70_combout\ = (\BusWires[2]~12_combout\ & ((\BusWires[6]~69_combout\ & (\reg_5|Q\(6))) # (!\BusWires[6]~69_combout\ & ((\reg_6|Q\(6)))))) # (!\BusWires[2]~12_combout\ & (((\BusWires[6]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_5|Q\(6),
	datab => \BusWires[2]~12_combout\,
	datac => \reg_6|Q\(6),
	datad => \BusWires[6]~69_combout\,
	combout => \BusWires[6]~70_combout\);

-- Location: LCCOMB_X11_Y25_N14
\BusWires[6]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[6]~71_combout\ = (\BusWires[6]~66_combout\) # ((\BusWires[6]~70_combout\ & \BusWires[0]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[6]~70_combout\,
	datac => \BusWires[0]~22_combout\,
	datad => \BusWires[6]~66_combout\,
	combout => \BusWires[6]~71_combout\);

-- Location: LCCOMB_X11_Y25_N28
\reg_B|Q[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_B|Q[6]~feeder_combout\ = \BusWires[6]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[6]~71_combout\,
	combout => \reg_B|Q[6]~feeder_combout\);

-- Location: FF_X11_Y25_N29
\reg_B|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_B|Q[6]~feeder_combout\,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(6));

-- Location: LCCOMB_X11_Y25_N10
\reg_C|Q[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_C|Q[8]~1_combout\ = (!\reg_IR|Q\(2) & (\reg_IR|Q\(1) $ (\reg_IR|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(1),
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(2),
	combout => \reg_C|Q[8]~1_combout\);

-- Location: LCCOMB_X11_Y25_N16
\decY|Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \decY|Mux0~7_combout\ = (!\reg_IR|Q\(0) & \reg_IR|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(0),
	datac => \reg_IR|Q\(2),
	combout => \decY|Mux0~7_combout\);

-- Location: LCCOMB_X10_Y23_N2
\reg_C|Q[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_C|Q[8]~2_combout\ = (!\reg_IR|Q\(1) & \reg_IR|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(1),
	datad => \reg_IR|Q\(2),
	combout => \reg_C|Q[8]~2_combout\);

-- Location: LCCOMB_X10_Y23_N20
\Mux54~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~0_combout\ = (\reg_C|Q[8]~2_combout\ & ((\reg_B|Q\(2)) # ((\decY|Mux0~7_combout\)))) # (!\reg_C|Q[8]~2_combout\ & (((!\decY|Mux0~7_combout\ & \reg_B|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(2),
	datab => \reg_C|Q[8]~2_combout\,
	datac => \decY|Mux0~7_combout\,
	datad => \reg_B|Q\(0),
	combout => \Mux54~0_combout\);

-- Location: LCCOMB_X11_Y25_N26
\Mux54~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~1_combout\ = (\decY|Mux0~7_combout\ & ((\Mux54~0_combout\ & ((\reg_B|Q\(3)))) # (!\Mux54~0_combout\ & (\reg_B|Q\(1))))) # (!\decY|Mux0~7_combout\ & (\Mux54~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \decY|Mux0~7_combout\,
	datab => \Mux54~0_combout\,
	datac => \reg_B|Q\(1),
	datad => \reg_B|Q\(3),
	combout => \Mux54~1_combout\);

-- Location: LCCOMB_X11_Y25_N20
\Mux54~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~2_combout\ = (\reg_C|Q[8]~1_combout\ & (((\reg_B|Q\(5)) # (\reg_C|Q[8]~0_combout\)))) # (!\reg_C|Q[8]~1_combout\ & (\Mux54~1_combout\ & ((!\reg_C|Q[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q[8]~1_combout\,
	datab => \Mux54~1_combout\,
	datac => \reg_B|Q\(5),
	datad => \reg_C|Q[8]~0_combout\,
	combout => \Mux54~2_combout\);

-- Location: LCCOMB_X11_Y25_N18
\Mux54~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~3_combout\ = (\reg_C|Q[8]~0_combout\ & ((\Mux54~2_combout\ & (\reg_B|Q\(6))) # (!\Mux54~2_combout\ & ((\reg_B|Q\(4)))))) # (!\reg_C|Q[8]~0_combout\ & (((\Mux54~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q[8]~0_combout\,
	datab => \reg_B|Q\(6),
	datac => \reg_B|Q\(4),
	datad => \Mux54~2_combout\,
	combout => \Mux54~3_combout\);

-- Location: LCCOMB_X12_Y23_N20
\Mux54~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux54~4_combout\ = (\reg_C|Q[8]~3_combout\ & ((\Mux54~3_combout\))) # (!\reg_C|Q[8]~3_combout\ & (\reg_B|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q[8]~3_combout\,
	datac => \reg_B|Q\(7),
	datad => \Mux54~3_combout\,
	combout => \Mux54~4_combout\);

-- Location: FF_X12_Y23_N21
\reg_C|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux54~4_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(7));

-- Location: LCCOMB_X12_Y25_N12
\BusWires[7]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~75_combout\ = (\BusWires[2]~17_combout\ & ((\reg_G|Q\(7)) # ((!\BusWires[2]~16_combout\)))) # (!\BusWires[2]~17_combout\ & (((\reg_B|Q\(7) & \BusWires[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(7),
	datab => \reg_B|Q\(7),
	datac => \BusWires[2]~17_combout\,
	datad => \BusWires[2]~16_combout\,
	combout => \BusWires[7]~75_combout\);

-- Location: LCCOMB_X12_Y25_N30
\BusWires[7]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~76_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[7]~75_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[7]~75_combout\ & (\reg_C|Q\(7))) # (!\BusWires[7]~75_combout\ & ((\SW[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q\(7),
	datab => \SW[7]~input_o\,
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[7]~75_combout\,
	combout => \BusWires[7]~76_combout\);

-- Location: LCCOMB_X15_Y24_N4
\BusWires[7]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~77_combout\ = (\BusWires[2]~13_combout\ & (\BusWires[2]~12_combout\)) # (!\BusWires[2]~13_combout\ & ((\BusWires[2]~12_combout\ & (\reg_6|Q\(7))) # (!\BusWires[2]~12_combout\ & ((\BusWires[7]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~13_combout\,
	datab => \BusWires[2]~12_combout\,
	datac => \reg_6|Q\(7),
	datad => \BusWires[7]~76_combout\,
	combout => \BusWires[7]~77_combout\);

-- Location: LCCOMB_X14_Y24_N6
\BusWires[7]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~78_combout\ = (\BusWires[2]~13_combout\ & ((\BusWires[7]~77_combout\ & ((\reg_5|Q\(7)))) # (!\BusWires[7]~77_combout\ & (\reg_7|Q\(7))))) # (!\BusWires[2]~13_combout\ & (((\BusWires[7]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_7|Q\(7),
	datab => \BusWires[2]~13_combout\,
	datac => \reg_5|Q\(7),
	datad => \BusWires[7]~77_combout\,
	combout => \BusWires[7]~78_combout\);

-- Location: LCCOMB_X10_Y24_N12
\reg_0|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_0|Q[7]~feeder_combout\ = \BusWires[7]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[7]~79_combout\,
	combout => \reg_0|Q[7]~feeder_combout\);

-- Location: FF_X10_Y24_N13
\reg_0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_0|Q[7]~feeder_combout\,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(7));

-- Location: LCCOMB_X12_Y24_N20
\reg_3|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[7]~feeder_combout\ = \BusWires[7]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[7]~79_combout\,
	combout => \reg_3|Q[7]~feeder_combout\);

-- Location: FF_X12_Y24_N21
\reg_3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[7]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(7));

-- Location: LCCOMB_X9_Y24_N12
\reg_2|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_2|Q[7]~feeder_combout\ = \BusWires[7]~79_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[7]~79_combout\,
	combout => \reg_2|Q[7]~feeder_combout\);

-- Location: FF_X9_Y24_N13
\reg_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_2|Q[7]~feeder_combout\,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(7));

-- Location: FF_X11_Y24_N9
\reg_4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~79_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(7));

-- Location: LCCOMB_X11_Y24_N8
\BusWires[7]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~72_combout\ = (\BusWires[2]~6_combout\ & (((!\BusWires[2]~4_combout\)))) # (!\BusWires[2]~6_combout\ & ((\BusWires[2]~4_combout\ & ((\reg_4|Q\(7)))) # (!\BusWires[2]~4_combout\ & (\reg_2|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_2|Q\(7),
	datab => \BusWires[2]~6_combout\,
	datac => \reg_4|Q\(7),
	datad => \BusWires[2]~4_combout\,
	combout => \BusWires[7]~72_combout\);

-- Location: FF_X11_Y24_N3
\reg_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[7]~79_combout\,
	sload => VCC,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(7));

-- Location: LCCOMB_X11_Y24_N2
\BusWires[7]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~73_combout\ = (\BusWires[7]~72_combout\ & (((\reg_1|Q\(7)) # (!\BusWires[2]~6_combout\)))) # (!\BusWires[7]~72_combout\ & (\reg_3|Q\(7) & ((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(7),
	datab => \BusWires[7]~72_combout\,
	datac => \reg_1|Q\(7),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[7]~73_combout\);

-- Location: LCCOMB_X10_Y24_N10
\BusWires[7]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~74_combout\ = (\reg_0|Q\(7) & ((\Equal1~3_combout\) # ((!\BusWires[0]~10_combout\ & \BusWires[7]~73_combout\)))) # (!\reg_0|Q\(7) & (((!\BusWires[0]~10_combout\ & \BusWires[7]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_0|Q\(7),
	datab => \Equal1~3_combout\,
	datac => \BusWires[0]~10_combout\,
	datad => \BusWires[7]~73_combout\,
	combout => \BusWires[7]~74_combout\);

-- Location: LCCOMB_X14_Y24_N20
\BusWires[7]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[7]~79_combout\ = (\BusWires[7]~74_combout\) # ((\BusWires[7]~78_combout\ & \BusWires[0]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[7]~78_combout\,
	datac => \BusWires[0]~22_combout\,
	datad => \BusWires[7]~74_combout\,
	combout => \BusWires[7]~79_combout\);

-- Location: FF_X14_Y24_N21
\reg_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[7]~79_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(7));

-- Location: LCCOMB_X14_Y24_N24
\Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \alu~0_combout\ $ (((\BusWires[7]~74_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[7]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu~0_combout\,
	datab => \BusWires[0]~22_combout\,
	datac => \BusWires[7]~74_combout\,
	datad => \BusWires[7]~78_combout\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X15_Y26_N16
\reg_G|Q[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[7]~25_combout\ = ((\reg_A|Q\(7) $ (\Add0~7_combout\ $ (!\reg_G|Q[6]~24\)))) # (GND)
-- \reg_G|Q[7]~26\ = CARRY((\reg_A|Q\(7) & ((\Add0~7_combout\) # (!\reg_G|Q[6]~24\))) # (!\reg_A|Q\(7) & (\Add0~7_combout\ & !\reg_G|Q[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(7),
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \reg_G|Q[6]~24\,
	combout => \reg_G|Q[7]~25_combout\,
	cout => \reg_G|Q[7]~26\);

-- Location: LCCOMB_X14_Y24_N2
\Sum~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~7_combout\ = \reg_A|Q\(7) $ (((\BusWires[7]~74_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[7]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \reg_A|Q\(7),
	datac => \BusWires[7]~74_combout\,
	datad => \BusWires[7]~78_combout\,
	combout => \Sum~7_combout\);

-- Location: FF_X15_Y26_N17
\reg_G|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[7]~25_combout\,
	asdata => \Sum~7_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(7));

-- Location: FF_X15_Y24_N21
\reg_6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~87_combout\,
	sload => VCC,
	ena => \Selector15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_6|Q\(8));

-- Location: FF_X14_Y24_N27
\reg_5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~87_combout\,
	sload => VCC,
	ena => \Selector14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_5|Q\(8));

-- Location: FF_X14_Y22_N23
\reg_7|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~87_combout\,
	sload => VCC,
	ena => \Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_7|Q\(8));

-- Location: LCCOMB_X12_Y23_N0
\reg_B|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_B|Q[8]~feeder_combout\ = \BusWires[8]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BusWires[8]~87_combout\,
	combout => \reg_B|Q[8]~feeder_combout\);

-- Location: FF_X12_Y23_N1
\reg_B|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_B|Q[8]~feeder_combout\,
	ena => \Bin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_B|Q\(8));

-- Location: LCCOMB_X10_Y23_N26
\Mux53~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~0_combout\ = (\decY|Mux0~7_combout\ & (((\reg_C|Q[8]~2_combout\)))) # (!\decY|Mux0~7_combout\ & ((\reg_C|Q[8]~2_combout\ & (\reg_B|Q\(3))) # (!\reg_C|Q[8]~2_combout\ & ((\reg_B|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(3),
	datab => \reg_B|Q\(1),
	datac => \decY|Mux0~7_combout\,
	datad => \reg_C|Q[8]~2_combout\,
	combout => \Mux53~0_combout\);

-- Location: LCCOMB_X11_Y25_N8
\Mux53~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~1_combout\ = (\Mux53~0_combout\ & ((\reg_B|Q\(4)) # ((!\decY|Mux0~7_combout\)))) # (!\Mux53~0_combout\ & (((\decY|Mux0~7_combout\ & \reg_B|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(4),
	datab => \Mux53~0_combout\,
	datac => \decY|Mux0~7_combout\,
	datad => \reg_B|Q\(2),
	combout => \Mux53~1_combout\);

-- Location: LCCOMB_X11_Y25_N30
\Mux53~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~2_combout\ = (\reg_C|Q[8]~0_combout\ & (((\reg_B|Q\(5)) # (\reg_C|Q[8]~1_combout\)))) # (!\reg_C|Q[8]~0_combout\ & (\Mux53~1_combout\ & ((!\reg_C|Q[8]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q[8]~0_combout\,
	datab => \Mux53~1_combout\,
	datac => \reg_B|Q\(5),
	datad => \reg_C|Q[8]~1_combout\,
	combout => \Mux53~2_combout\);

-- Location: LCCOMB_X12_Y25_N20
\Mux53~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~3_combout\ = (\reg_C|Q[8]~1_combout\ & ((\Mux53~2_combout\ & (\reg_B|Q\(7))) # (!\Mux53~2_combout\ & ((\reg_B|Q\(6)))))) # (!\reg_C|Q[8]~1_combout\ & (((\Mux53~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q[8]~1_combout\,
	datab => \reg_B|Q\(7),
	datac => \reg_B|Q\(6),
	datad => \Mux53~2_combout\,
	combout => \Mux53~3_combout\);

-- Location: LCCOMB_X12_Y23_N30
\Mux53~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux53~4_combout\ = (\reg_C|Q[8]~3_combout\ & ((\Mux53~3_combout\))) # (!\reg_C|Q[8]~3_combout\ & (\reg_B|Q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_B|Q\(8),
	datac => \reg_C|Q[8]~3_combout\,
	datad => \Mux53~3_combout\,
	combout => \Mux53~4_combout\);

-- Location: FF_X12_Y23_N31
\reg_C|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \Mux53~4_combout\,
	ena => \Selector19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_C|Q\(8));

-- Location: LCCOMB_X14_Y22_N16
\BusWires[8]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~83_combout\ = (\BusWires[2]~17_combout\ & (((\reg_G|Q\(8)) # (!\BusWires[2]~16_combout\)))) # (!\BusWires[2]~17_combout\ & (\reg_B|Q\(8) & ((\BusWires[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_B|Q\(8),
	datab => \reg_G|Q\(8),
	datac => \BusWires[2]~17_combout\,
	datad => \BusWires[2]~16_combout\,
	combout => \BusWires[8]~83_combout\);

-- Location: LCCOMB_X14_Y22_N18
\BusWires[8]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~84_combout\ = (\BusWires[2]~14_combout\ & (((\BusWires[8]~83_combout\)))) # (!\BusWires[2]~14_combout\ & ((\BusWires[8]~83_combout\ & (\reg_C|Q\(8))) # (!\BusWires[8]~83_combout\ & ((\SW[8]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_C|Q\(8),
	datab => \SW[8]~input_o\,
	datac => \BusWires[2]~14_combout\,
	datad => \BusWires[8]~83_combout\,
	combout => \BusWires[8]~84_combout\);

-- Location: LCCOMB_X14_Y22_N22
\BusWires[8]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~85_combout\ = (\BusWires[2]~12_combout\ & (\BusWires[2]~13_combout\)) # (!\BusWires[2]~12_combout\ & ((\BusWires[2]~13_combout\ & (\reg_7|Q\(8))) # (!\BusWires[2]~13_combout\ & ((\BusWires[8]~84_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~12_combout\,
	datab => \BusWires[2]~13_combout\,
	datac => \reg_7|Q\(8),
	datad => \BusWires[8]~84_combout\,
	combout => \BusWires[8]~85_combout\);

-- Location: LCCOMB_X14_Y24_N26
\BusWires[8]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~86_combout\ = (\BusWires[2]~12_combout\ & ((\BusWires[8]~85_combout\ & ((\reg_5|Q\(8)))) # (!\BusWires[8]~85_combout\ & (\reg_6|Q\(8))))) # (!\BusWires[2]~12_combout\ & (((\BusWires[8]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_6|Q\(8),
	datab => \BusWires[2]~12_combout\,
	datac => \reg_5|Q\(8),
	datad => \BusWires[8]~85_combout\,
	combout => \BusWires[8]~86_combout\);

-- Location: LCCOMB_X12_Y24_N12
\reg_1|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_1|Q[8]~feeder_combout\ = \BusWires[8]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[8]~87_combout\,
	combout => \reg_1|Q[8]~feeder_combout\);

-- Location: FF_X12_Y24_N13
\reg_1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_1|Q[8]~feeder_combout\,
	ena => \Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_1|Q\(8));

-- Location: FF_X9_Y24_N7
\reg_2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~87_combout\,
	sload => VCC,
	ena => \Selector11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_2|Q\(8));

-- Location: LCCOMB_X12_Y24_N6
\reg_3|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_3|Q[8]~feeder_combout\ = \BusWires[8]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[8]~87_combout\,
	combout => \reg_3|Q[8]~feeder_combout\);

-- Location: FF_X12_Y24_N7
\reg_3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_3|Q[8]~feeder_combout\,
	ena => \Selector12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_3|Q\(8));

-- Location: FF_X9_Y24_N29
\reg_4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \BusWires[8]~87_combout\,
	sload => VCC,
	ena => \Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_4|Q\(8));

-- Location: LCCOMB_X9_Y24_N28
\BusWires[8]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~80_combout\ = (\BusWires[2]~4_combout\ & ((\BusWires[2]~6_combout\ & (\reg_3|Q\(8))) # (!\BusWires[2]~6_combout\ & ((\reg_4|Q\(8)))))) # (!\BusWires[2]~4_combout\ & (((\BusWires[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_3|Q\(8),
	datab => \BusWires[2]~4_combout\,
	datac => \reg_4|Q\(8),
	datad => \BusWires[2]~6_combout\,
	combout => \BusWires[8]~80_combout\);

-- Location: LCCOMB_X9_Y24_N6
\BusWires[8]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~81_combout\ = (\BusWires[2]~4_combout\ & (((\BusWires[8]~80_combout\)))) # (!\BusWires[2]~4_combout\ & ((\BusWires[8]~80_combout\ & (\reg_1|Q\(8))) # (!\BusWires[8]~80_combout\ & ((\reg_2|Q\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_1|Q\(8),
	datab => \BusWires[2]~4_combout\,
	datac => \reg_2|Q\(8),
	datad => \BusWires[8]~80_combout\,
	combout => \BusWires[8]~81_combout\);

-- Location: LCCOMB_X10_Y24_N24
\reg_0|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_0|Q[8]~feeder_combout\ = \BusWires[8]~87_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BusWires[8]~87_combout\,
	combout => \reg_0|Q[8]~feeder_combout\);

-- Location: FF_X10_Y24_N25
\reg_0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_0|Q[8]~feeder_combout\,
	ena => \Selector9~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_0|Q\(8));

-- Location: LCCOMB_X9_Y24_N26
\BusWires[8]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~82_combout\ = (\BusWires[8]~81_combout\ & (((\reg_0|Q\(8) & \Equal1~3_combout\)) # (!\BusWires[0]~10_combout\))) # (!\BusWires[8]~81_combout\ & (\reg_0|Q\(8) & (\Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[8]~81_combout\,
	datab => \reg_0|Q\(8),
	datac => \Equal1~3_combout\,
	datad => \BusWires[0]~10_combout\,
	combout => \BusWires[8]~82_combout\);

-- Location: LCCOMB_X14_Y24_N16
\BusWires[8]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[8]~87_combout\ = (\BusWires[8]~82_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[8]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datac => \BusWires[8]~86_combout\,
	datad => \BusWires[8]~82_combout\,
	combout => \BusWires[8]~87_combout\);

-- Location: FF_X14_Y24_N17
\reg_A|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \BusWires[8]~87_combout\,
	ena => \Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_A|Q\(8));

-- Location: LCCOMB_X14_Y24_N8
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \alu~0_combout\ $ (((\BusWires[8]~82_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[8]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu~0_combout\,
	datab => \BusWires[0]~22_combout\,
	datac => \BusWires[8]~86_combout\,
	datad => \BusWires[8]~82_combout\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X15_Y26_N18
\reg_G|Q[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \reg_G|Q[8]~27_combout\ = \reg_A|Q\(8) $ (\reg_G|Q[7]~26\ $ (\Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|Q\(8),
	datad => \Add0~8_combout\,
	cin => \reg_G|Q[7]~26\,
	combout => \reg_G|Q[8]~27_combout\);

-- Location: LCCOMB_X14_Y24_N22
\Sum~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Sum~8_combout\ = \reg_A|Q\(8) $ (((\BusWires[8]~82_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[8]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datab => \reg_A|Q\(8),
	datac => \BusWires[8]~86_combout\,
	datad => \BusWires[8]~82_combout\,
	combout => \Sum~8_combout\);

-- Location: FF_X15_Y26_N19
\reg_G|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \reg_G|Q[8]~27_combout\,
	asdata => \Sum~8_combout\,
	sload => \addxor~combout\,
	ena => \Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg_G|Q\(8));

-- Location: LCCOMB_X16_Y23_N8
\Mux25~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\reg_IR|Q\(6)) # ((\reg_G|Q\(2)) # ((\reg_G|Q\(1)) # (\reg_G|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_IR|Q\(6),
	datab => \reg_G|Q\(2),
	datac => \reg_G|Q\(1),
	datad => \reg_G|Q\(0),
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X16_Y23_N12
\Mux25~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\reg_G|Q\(6)) # ((\reg_G|Q\(4)) # ((\reg_G|Q\(3)) # (\reg_G|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(6),
	datab => \reg_G|Q\(4),
	datac => \reg_G|Q\(3),
	datad => \reg_G|Q\(5),
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X16_Y23_N6
\Mux25~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\reg_G|Q\(7)) # ((\reg_G|Q\(8)) # ((\Mux25~0_combout\) # (\Mux25~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_G|Q\(7),
	datab => \reg_G|Q\(8),
	datac => \Mux25~0_combout\,
	datad => \Mux25~1_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X16_Y23_N4
\Selector8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\ & ((\reg_IR|Q\(7)) # (\Mux25~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_IR|Q\(7),
	datac => \Selector8~0_combout\,
	datad => \Mux25~2_combout\,
	combout => \Selector8~1_combout\);

-- Location: LCCOMB_X15_Y23_N0
\Selector8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = (\Tstep_Q.T1~q\ & ((\Selector8~2_combout\) # ((\decY|Mux0~5_combout\ & \Selector8~1_combout\)))) # (!\Tstep_Q.T1~q\ & (((\decY|Mux0~5_combout\ & \Selector8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Tstep_Q.T1~q\,
	datab => \Selector8~2_combout\,
	datac => \decY|Mux0~5_combout\,
	datad => \Selector8~1_combout\,
	combout => \Selector8~3_combout\);

-- Location: LCCOMB_X14_Y23_N18
\Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\Selector8~3_combout\ & !\Selector7~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~3_combout\,
	datad => \Selector7~1_combout\,
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X14_Y26_N0
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\Selector6~1_combout\ & (\Equal1~1_combout\ & !\Selector1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \Selector1~3_combout\,
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X14_Y26_N10
\BusWires[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[2]~9_combout\ = (\Equal4~0_combout\ & (\Equal5~0_combout\ & (\Selector4~2_combout\ $ (\Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Selector4~2_combout\,
	datac => \Selector5~1_combout\,
	datad => \Equal5~0_combout\,
	combout => \BusWires[2]~9_combout\);

-- Location: LCCOMB_X14_Y26_N30
\BusWires[0]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~22_combout\ = (!\BusWires[2]~9_combout\ & (!\Equal1~3_combout\ & \BusWires[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[2]~9_combout\,
	datab => \Equal1~3_combout\,
	datac => \BusWires[2]~4_combout\,
	combout => \BusWires[0]~22_combout\);

-- Location: LCCOMB_X14_Y24_N30
\BusWires[0]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \BusWires[0]~23_combout\ = (\BusWires[0]~11_combout\) # ((\BusWires[0]~22_combout\ & \BusWires[0]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BusWires[0]~22_combout\,
	datac => \BusWires[0]~21_combout\,
	datad => \BusWires[0]~11_combout\,
	combout => \BusWires[0]~23_combout\);

-- Location: LCCOMB_X38_Y28_N0
\Bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Bout~0_combout\ = (\Tstep_Q.T1~q\) # (!\Tstep_Q.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Tstep_Q.T1~q\,
	datad => \Tstep_Q.T0~q\,
	combout => \Bout~0_combout\);

-- Location: LCCOMB_X37_Y28_N0
\Gout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Gout~0_combout\ = (\Tstep_Q.T2~q\) # (!\Tstep_Q.T0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Tstep_Q.T0~q\,
	datad => \Tstep_Q.T2~q\,
	combout => \Gout~0_combout\);

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


