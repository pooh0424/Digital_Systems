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

-- DATE "03/22/2024 18:44:56"

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

ENTITY 	Lab5_1 IS
    PORT (
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(0 TO 6);
	HEX1 : BUFFER std_logic_vector(0 TO 6);
	LEDG : BUFFER std_logic_vector(9 DOWNTO 9)
	);
END Lab5_1;

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
-- LEDG[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5_1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 9);
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
SIGNAL \LEDG[9]~output_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \result[31]~0_combout\ : std_logic;
SIGNAL \result[6]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \result[31]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \result[5]~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \result[4]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \result[3]~5_combout\ : std_logic;
SIGNAL \result[3]~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \result[2]~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \result[2]~8_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \result[1]~9_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \result[1]~10_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \result[0]~11_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \result[0]~12_combout\ : std_logic;
SIGNAL \HEX0number~6_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~21\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~35\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~39\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~41\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~43\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~45\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~47\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~49\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~51\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~53\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[871]~158_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[870]~159_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[869]~160_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[868]~161_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[867]~162_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[867]~163_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[866]~164_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[866]~165_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[865]~166_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[865]~167_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[864]~168_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[864]~169_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~35\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~39\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~43\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~47\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~51\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~55\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[924]~171_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[923]~173_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[922]~175_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[921]~177_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[920]~179_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[919]~181_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[918]~183_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[917]~185_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[916]~187_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[915]~189_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[914]~191_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[913]~193_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[912]~195_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[911]~197_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[910]~199_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[909]~201_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[908]~203_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[907]~205_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[906]~207_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[905]~209_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[904]~210_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[903]~211_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[902]~212_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[901]~213_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[900]~214_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[899]~215_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[898]~216_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[897]~217_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[897]~218_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[896]~219_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[896]~220_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~21\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~35\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~39\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~41\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~43\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~45\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~47\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~49\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~51\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~53\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~55\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~57\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[957]~221_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[956]~222_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[955]~223_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[954]~224_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[952]~226_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[950]~228_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[949]~229_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[946]~232_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[945]~233_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[943]~235_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[941]~237_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[940]~238_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[936]~242_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[935]~243_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[933]~245_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[931]~247_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[930]~248_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[928]~251_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[928]~252_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~21\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~35\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~39\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~41\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~43\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~45\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~47\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~49\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~51\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~53\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~55\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~57\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~59\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[990]~254_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[986]~322_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[986]~258_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[984]~324_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[984]~260_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[981]~327_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[981]~263_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[980]~328_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[980]~264_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[979]~265_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[977]~331_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[977]~267_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[975]~269_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[975]~333_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[972]~336_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[972]~272_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[971]~337_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[971]~273_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[970]~274_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[970]~338_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[967]~341_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[967]~277_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[965]~342_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[965]~278_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[962]~349_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[962]~281_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[961]~282_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[961]~283_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[960]~285_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[960]~284_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~15\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~17\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~19\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~21\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~23\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~25\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~27\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~29\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~31\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~33\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~35\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~37\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~39\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~41\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~43\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~45\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~47\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~49\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~51\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~53\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~55\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~57\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~59\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~61\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~2_combout\ : std_logic;
SIGNAL \HEX0number[2]~21_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \HEX0number[2]~22_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \HEX0number[0]~25_combout\ : std_logic;
SIGNAL \HEX0number[20]~24_combout\ : std_logic;
SIGNAL \Digit0|Equal0~21_combout\ : std_logic;
SIGNAL \HEX0number[25]~10_combout\ : std_logic;
SIGNAL \Digit0|Equal0~19_combout\ : std_logic;
SIGNAL \HEX0number[22]~11_combout\ : std_logic;
SIGNAL \Digit0|Equal0~20_combout\ : std_logic;
SIGNAL \HEX0number[27]~9_combout\ : std_logic;
SIGNAL \Digit0|Equal0~18_combout\ : std_logic;
SIGNAL \Digit0|Equal0~22_combout\ : std_logic;
SIGNAL \HEX0number[11]~16_combout\ : std_logic;
SIGNAL \HEX0number[12]~15_combout\ : std_logic;
SIGNAL \HEX0number[13]~14_combout\ : std_logic;
SIGNAL \Digit0|Equal0~25_combout\ : std_logic;
SIGNAL \Digit0|Equal0~26_combout\ : std_logic;
SIGNAL \HEX0number[8]~17_combout\ : std_logic;
SIGNAL \Digit0|Equal0~27_combout\ : std_logic;
SIGNAL \Digit0|Equal0~28_combout\ : std_logic;
SIGNAL \HEX0number[16]~13_combout\ : std_logic;
SIGNAL \Digit0|Equal0~24_combout\ : std_logic;
SIGNAL \HEX0number[18]~12_combout\ : std_logic;
SIGNAL \Digit0|Equal0~23_combout\ : std_logic;
SIGNAL \Digit0|Equal0~29_combout\ : std_logic;
SIGNAL \HEX0number[6]~7_combout\ : std_logic;
SIGNAL \Digit0|Equal0~0_combout\ : std_logic;
SIGNAL \HEX0number[21]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~54_combout\ : std_logic;
SIGNAL \Digit0|Equal0~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~58_combout\ : std_logic;
SIGNAL \Digit0|Equal0~3_combout\ : std_logic;
SIGNAL \HEX0number[31]~23_combout\ : std_logic;
SIGNAL \Digit0|Equal0~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~34_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~36_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~32_combout\ : std_logic;
SIGNAL \Digit0|Equal0~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~42_combout\ : std_logic;
SIGNAL \Digit0|Equal0~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~28_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~30_combout\ : std_logic;
SIGNAL \Digit0|Equal0~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~48_combout\ : std_logic;
SIGNAL \Digit0|Equal0~6_combout\ : std_logic;
SIGNAL \Digit0|Equal0~10_combout\ : std_logic;
SIGNAL \Digit0|Equal0~11_combout\ : std_logic;
SIGNAL \Digit0|Equal0~1_combout\ : std_logic;
SIGNAL \Digit0|Equal0~2_combout\ : std_logic;
SIGNAL \Digit0|Equal0~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ : std_logic;
SIGNAL \Digit0|Equal0~15_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~20_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~24_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~22_combout\ : std_logic;
SIGNAL \Digit0|Equal0~12_combout\ : std_logic;
SIGNAL \Digit0|Equal0~13_combout\ : std_logic;
SIGNAL \Digit0|Equal0~16_combout\ : std_logic;
SIGNAL \Digit0|Equal0~17_combout\ : std_logic;
SIGNAL \HEX0number[3]~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~4_combout\ : std_logic;
SIGNAL \HEX0number[3]~19_combout\ : std_logic;
SIGNAL \Digit0|Equal0~30_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~0_combout\ : std_logic;
SIGNAL \HEX0number[1]~20_combout\ : std_logic;
SIGNAL \Digit0|WideNor0~8_combout\ : std_logic;
SIGNAL \Digit0|WideOr2~2_combout\ : std_logic;
SIGNAL \Digit0|Equal7~0_combout\ : std_logic;
SIGNAL \Digit0|Equal7~1_combout\ : std_logic;
SIGNAL \Digit0|WideNor0~12_combout\ : std_logic;
SIGNAL \Digit0|WideNor0~9_combout\ : std_logic;
SIGNAL \Digit0|WideNor0~10_combout\ : std_logic;
SIGNAL \Digit0|WideOr2~3_combout\ : std_logic;
SIGNAL \Digit0|Equal0~31_combout\ : std_logic;
SIGNAL \Digit0|WideOr5~combout\ : std_logic;
SIGNAL \Digit0|WideOr4~combout\ : std_logic;
SIGNAL \Digit0|WideOr2~4_combout\ : std_logic;
SIGNAL \Digit0|WideOr2~combout\ : std_logic;
SIGNAL \Digit0|WideNor0~11_combout\ : std_logic;
SIGNAL \Digit0|Equal1~0_combout\ : std_logic;
SIGNAL \Digit0|WideOr1~0_combout\ : std_logic;
SIGNAL \Digit0|WideOr1~combout\ : std_logic;
SIGNAL \Digit0|WideOr0~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[138]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[137]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[136]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[135]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[143]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[142]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[141]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[140]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ : std_logic;
SIGNAL \Digit1|Equal0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[148]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[147]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[146]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[145]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ : std_logic;
SIGNAL \HEX1number[1]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[153]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[152]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[151]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[150]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ : std_logic;
SIGNAL \HEX1number[0]~5_combout\ : std_logic;
SIGNAL \Digit1|WideNor0~0_combout\ : std_logic;
SIGNAL \Digit1|WideNor0~1_combout\ : std_logic;
SIGNAL \Digit1|WideOr2~0_combout\ : std_logic;
SIGNAL \Digit1|Equal3~0_combout\ : std_logic;
SIGNAL \Digit1|WideOr2~1_combout\ : std_logic;
SIGNAL \Digit1|WideOr5~combout\ : std_logic;
SIGNAL \Digit1|WideOr4~combout\ : std_logic;
SIGNAL \Digit1|Equal7~0_combout\ : std_logic;
SIGNAL \Digit1|Equal7~1_combout\ : std_logic;
SIGNAL \Digit1|WideOr3~0_combout\ : std_logic;
SIGNAL \Digit1|WideOr3~combout\ : std_logic;
SIGNAL \Digit1|Equal3~1_combout\ : std_logic;
SIGNAL \Digit1|WideOr2~2_combout\ : std_logic;
SIGNAL \Digit1|WideOr1~combout\ : std_logic;
SIGNAL \Digit1|WideOr0~0_combout\ : std_logic;
SIGNAL \Digit1|HEX\ : std_logic_vector(0 TO 6);
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Digit0|HEX\ : std_logic_vector(0 TO 6);
SIGNAL \Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Digit1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \Digit1|ALT_INV_WideOr3~combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Digit1|ALT_INV_WideOr0~0_combout\ <= NOT \Digit1|WideOr0~0_combout\;
\Digit1|ALT_INV_WideOr3~combout\ <= NOT \Digit1|WideOr3~combout\;

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
	i => \Digit0|WideOr4~combout\,
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
	i => \Digit0|WideNor0~10_combout\,
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
	i => \Digit0|WideOr2~combout\,
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
	i => \Digit0|WideOr1~combout\,
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

-- Location: IOOBUF_X26_Y29_N23
\HEX1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Digit1|WideOr5~combout\,
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
	i => \Digit1|WideOr4~combout\,
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
	i => \Digit1|ALT_INV_WideOr3~combout\,
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
	i => \Digit1|WideOr2~2_combout\,
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
	i => \Digit1|HEX\(2),
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
	i => \Digit1|WideOr1~combout\,
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
	i => \Digit1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result[31]~1_combout\,
	devoe => ww_devoe,
	o => \LEDG[9]~output_o\);

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

-- Location: LCCOMB_X10_Y25_N8
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\KEY[2]~input_o\ & (\KEY[0]~input_o\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Equal2~0_combout\);

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

-- Location: LCCOMB_X9_Y25_N22
\Mult0|auto_generated|le2a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(4) = LCELL((\SW[7]~input_o\ & (\SW[1]~input_o\ & (\SW[2]~input_o\))) # (!\SW[7]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mult0|auto_generated|le2a\(4));

-- Location: LCCOMB_X9_Y25_N16
\Mult0|auto_generated|cs3a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs3a[1]~0_combout\ = \SW[1]~input_o\ $ (\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \Mult0|auto_generated|cs3a[1]~0_combout\);

-- Location: LCCOMB_X9_Y25_N2
\Mult0|auto_generated|le4a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|le2a\(4)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[7]~input_o\ $ (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(4),
	datab => \SW[7]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(4));

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

-- Location: LCCOMB_X10_Y26_N26
\Mult0|auto_generated|le5a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((\SW[1]~input_o\ & ((!\SW[7]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mult0|auto_generated|le5a\(4));

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

-- Location: LCCOMB_X10_Y26_N28
\Mult0|auto_generated|le5a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\SW[0]~input_o\ & ((\SW[1]~input_o\ $ (\SW[7]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[6]~input_o\ & (\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[6]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \Mult0|auto_generated|le5a\(3));

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

-- Location: LCCOMB_X10_Y26_N30
\Mult0|auto_generated|le5a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\SW[0]~input_o\ & (\SW[1]~input_o\ $ (((\SW[6]~input_o\))))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\ & (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X10_Y26_N0
\Mult0|auto_generated|add10_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[0]~0_combout\ = (\Mult0|auto_generated|le5a\(2) & (\SW[3]~input_o\ $ (VCC))) # (!\Mult0|auto_generated|le5a\(2) & (\SW[3]~input_o\ & VCC))
-- \Mult0|auto_generated|add10_result[0]~1\ = CARRY((\Mult0|auto_generated|le5a\(2) & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(2),
	datab => \SW[3]~input_o\,
	datad => VCC,
	combout => \Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add10_result[0]~1\);

-- Location: LCCOMB_X10_Y26_N2
\Mult0|auto_generated|add10_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(3) & (!\Mult0|auto_generated|add10_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\Mult0|auto_generated|add10_result[0]~1\) # (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[0]~1\,
	combout => \Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add10_result[1]~3\);

-- Location: LCCOMB_X10_Y26_N4
\Mult0|auto_generated|add10_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[2]~4_combout\ = (\Mult0|auto_generated|le5a\(4) & (\Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\Mult0|auto_generated|le5a\(4) & ((GND) # (!\Mult0|auto_generated|add10_result[1]~3\)))
-- \Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\Mult0|auto_generated|add10_result[1]~3\) # (!\Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[1]~3\,
	combout => \Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add10_result[2]~5\);

-- Location: LCCOMB_X10_Y26_N6
\Mult0|auto_generated|add10_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[3]~6_combout\ = !\Mult0|auto_generated|add10_result[2]~5\
-- \Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[2]~5\,
	combout => \Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add10_result[3]~7\);

-- Location: LCCOMB_X10_Y26_N8
\Mult0|auto_generated|add10_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[4]~8_combout\ = !\Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add10_result[3]~7\,
	combout => \Mult0|auto_generated|add10_result[4]~8_combout\);

-- Location: LCCOMB_X9_Y25_N24
\Mult0|auto_generated|le2a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(3) = LCELL((\SW[6]~input_o\ & (\SW[2]~input_o\ & ((\SW[1]~input_o\)))) # (!\SW[6]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(3));

-- Location: LCCOMB_X9_Y25_N4
\Mult0|auto_generated|le4a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|le2a\(3)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[7]~input_o\ $ (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \Mult0|auto_generated|le2a\(3),
	datac => \SW[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X9_Y25_N18
\Mult0|auto_generated|le2a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(2) = LCELL((\SW[5]~input_o\ & (\SW[1]~input_o\ & ((\SW[2]~input_o\)))) # (!\SW[5]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \Mult0|auto_generated|le2a\(2));

-- Location: LCCOMB_X9_Y25_N0
\Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|le2a\(2)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[6]~input_o\ $ (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \Mult0|auto_generated|le2a\(2),
	datac => \SW[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(2));

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

-- Location: LCCOMB_X9_Y25_N28
\Mult0|auto_generated|le2a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(1) = LCELL((\SW[4]~input_o\ & (((\SW[2]~input_o\ & \SW[1]~input_o\)))) # (!\SW[4]~input_o\ & (\SW[3]~input_o\ & (\SW[2]~input_o\ $ (!\SW[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(1));

-- Location: LCCOMB_X9_Y25_N26
\Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|le2a\(1)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[3]~input_o\ $ (\SW[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datab => \Mult0|auto_generated|le2a\(1),
	datac => \SW[3]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X9_Y25_N30
\Mult0|auto_generated|le2a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(0) = LCELL((\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	combout => \Mult0|auto_generated|le2a\(0));

-- Location: LCCOMB_X9_Y25_N20
\Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL((\Mult0|auto_generated|le2a\(0)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\SW[4]~input_o\ $ (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \Mult0|auto_generated|le2a\(0),
	datac => \SW[3]~input_o\,
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X10_Y25_N4
\Mult0|auto_generated|le5a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\SW[0]~input_o\ & (\SW[5]~input_o\ $ ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X10_Y25_N6
\Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL(\SW[1]~input_o\ $ (((\SW[4]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X10_Y26_N10
\Mult0|auto_generated|add6_result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[0]~0_combout\ = (\SW[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\SW[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) & VCC))
-- \Mult0|auto_generated|add6_result[0]~1\ = CARRY((\SW[1]~input_o\ & \Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add6_result[0]~1\);

-- Location: LCCOMB_X10_Y26_N12
\Mult0|auto_generated|add6_result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|add6_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\Mult0|auto_generated|add6_result[0]~1\) # (!\Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[0]~1\,
	combout => \Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add6_result[1]~3\);

-- Location: LCCOMB_X10_Y26_N14
\Mult0|auto_generated|add6_result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[2]~4_combout\ = ((\Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|add10_result[0]~0_combout\ $ (!\Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|add6_result[2]~5\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|add10_result[0]~0_combout\) # (!\Mult0|auto_generated|add6_result[1]~3\))) # (!\Mult0|auto_generated|le4a\(0) & 
-- (\Mult0|auto_generated|add10_result[0]~0_combout\ & !\Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|add10_result[0]~0_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[1]~3\,
	combout => \Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add6_result[2]~5\);

-- Location: LCCOMB_X10_Y26_N16
\Mult0|auto_generated|add6_result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[3]~6_combout\ = (\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|add10_result[1]~2_combout\ & (\Mult0|auto_generated|add6_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- (!\Mult0|auto_generated|add6_result[2]~5\)))) # (!\Mult0|auto_generated|le4a\(1) & ((\Mult0|auto_generated|add10_result[1]~2_combout\ & (!\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- ((\Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|add6_result[3]~7\ = CARRY((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|add10_result[1]~2_combout\ & !\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|le4a\(1) & 
-- ((!\Mult0|auto_generated|add6_result[2]~5\) # (!\Mult0|auto_generated|add10_result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(1),
	datab => \Mult0|auto_generated|add10_result[1]~2_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[2]~5\,
	combout => \Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add6_result[3]~7\);

-- Location: LCCOMB_X10_Y26_N18
\Mult0|auto_generated|add6_result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[4]~8_combout\ = ((\Mult0|auto_generated|le4a\(2) $ (\Mult0|auto_generated|add10_result[2]~4_combout\ $ (!\Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|add6_result[4]~9\ = CARRY((\Mult0|auto_generated|le4a\(2) & ((\Mult0|auto_generated|add10_result[2]~4_combout\) # (!\Mult0|auto_generated|add6_result[3]~7\))) # (!\Mult0|auto_generated|le4a\(2) & 
-- (\Mult0|auto_generated|add10_result[2]~4_combout\ & !\Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(2),
	datab => \Mult0|auto_generated|add10_result[2]~4_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[3]~7\,
	combout => \Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \Mult0|auto_generated|add6_result[4]~9\);

-- Location: LCCOMB_X10_Y26_N20
\Mult0|auto_generated|add6_result[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[5]~10_combout\ = (\Mult0|auto_generated|add10_result[3]~6_combout\ & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|add6_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & 
-- (!\Mult0|auto_generated|add6_result[4]~9\)))) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|le4a\(3) & 
-- ((\Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|add6_result[5]~11\ = CARRY((\Mult0|auto_generated|add10_result[3]~6_combout\ & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & 
-- ((!\Mult0|auto_generated|add6_result[4]~9\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[3]~6_combout\,
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[4]~9\,
	combout => \Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \Mult0|auto_generated|add6_result[5]~11\);

-- Location: LCCOMB_X10_Y26_N22
\Mult0|auto_generated|add6_result[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[6]~12_combout\ = ((\Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|add10_result[4]~8_combout\ $ (\Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|add6_result[6]~13\ = CARRY((\Mult0|auto_generated|le4a\(4) & (\Mult0|auto_generated|add10_result[4]~8_combout\ & !\Mult0|auto_generated|add6_result[5]~11\)) # (!\Mult0|auto_generated|le4a\(4) & 
-- ((\Mult0|auto_generated|add10_result[4]~8_combout\) # (!\Mult0|auto_generated|add6_result[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(4),
	datab => \Mult0|auto_generated|add10_result[4]~8_combout\,
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[5]~11\,
	combout => \Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \Mult0|auto_generated|add6_result[6]~13\);

-- Location: LCCOMB_X9_Y25_N6
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\SW[4]~input_o\ & ((GND) # (!\SW[0]~input_o\))) # (!\SW[4]~input_o\ & (\SW[0]~input_o\ $ (GND)))
-- \Add1~1\ = CARRY((\SW[4]~input_o\) # (!\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X9_Y25_N8
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\SW[1]~input_o\ & ((\SW[5]~input_o\ & (!\Add1~1\)) # (!\SW[5]~input_o\ & ((\Add1~1\) # (GND))))) # (!\SW[1]~input_o\ & ((\SW[5]~input_o\ & (\Add1~1\ & VCC)) # (!\SW[5]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\SW[1]~input_o\ & ((!\Add1~1\) # (!\SW[5]~input_o\))) # (!\SW[1]~input_o\ & (!\SW[5]~input_o\ & !\Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X9_Y25_N10
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\SW[6]~input_o\ $ (\SW[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\SW[6]~input_o\ & ((!\Add1~3\) # (!\SW[2]~input_o\))) # (!\SW[6]~input_o\ & (!\SW[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X9_Y25_N12
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\SW[3]~input_o\ & ((\SW[7]~input_o\ & (!\Add1~5\)) # (!\SW[7]~input_o\ & ((\Add1~5\) # (GND))))) # (!\SW[3]~input_o\ & ((\SW[7]~input_o\ & (\Add1~5\ & VCC)) # (!\SW[7]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\SW[3]~input_o\ & ((!\Add1~5\) # (!\SW[7]~input_o\))) # (!\SW[3]~input_o\ & (!\SW[7]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[7]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X9_Y25_N14
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \SW[3]~input_o\ $ (\Add1~7\ $ (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => \SW[7]~input_o\,
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCCOMB_X10_Y25_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\KEY[2]~input_o\ & (!\KEY[0]~input_o\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X10_Y25_N26
\Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\KEY[2]~input_o\ & (\KEY[0]~input_o\ & !\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X10_Y25_N16
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\SW[0]~input_o\ & (\SW[4]~input_o\ $ (VCC))) # (!\SW[0]~input_o\ & (\SW[4]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\SW[0]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[4]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X10_Y25_N18
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\SW[5]~input_o\ & ((\SW[1]~input_o\ & (\Add0~1\ & VCC)) # (!\SW[1]~input_o\ & (!\Add0~1\)))) # (!\SW[5]~input_o\ & ((\SW[1]~input_o\ & (!\Add0~1\)) # (!\SW[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\SW[5]~input_o\ & (!\SW[1]~input_o\ & !\Add0~1\)) # (!\SW[5]~input_o\ & ((!\Add0~1\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X10_Y25_N20
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\SW[6]~input_o\ $ (\SW[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\SW[6]~input_o\ & ((\SW[2]~input_o\) # (!\Add0~3\))) # (!\SW[6]~input_o\ & (\SW[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X10_Y25_N22
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\SW[7]~input_o\ & ((\SW[3]~input_o\ & (\Add0~5\ & VCC)) # (!\SW[3]~input_o\ & (!\Add0~5\)))) # (!\SW[7]~input_o\ & ((\SW[3]~input_o\ & (!\Add0~5\)) # (!\SW[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\SW[7]~input_o\ & (!\SW[3]~input_o\ & !\Add0~5\)) # (!\SW[7]~input_o\ & ((!\Add0~5\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X10_Y25_N24
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \SW[7]~input_o\ $ (\SW[3]~input_o\ $ (!\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[7]~input_o\,
	datab => \SW[3]~input_o\,
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X10_Y25_N14
\result[31]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[31]~0_combout\ = (\Add1~8_combout\ & (!\Equal1~0_combout\ & ((!\Add0~8_combout\) # (!\Equal0~0_combout\)))) # (!\Add1~8_combout\ & (((!\Add0~8_combout\)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Add0~8_combout\,
	combout => \result[31]~0_combout\);

-- Location: LCCOMB_X11_Y25_N2
\result[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[6]~2_combout\ = ((\Equal2~0_combout\ & \Mult0|auto_generated|add6_result[6]~12_combout\)) # (!\result[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \Mult0|auto_generated|add6_result[6]~12_combout\,
	datad => \result[31]~0_combout\,
	combout => \result[6]~2_combout\);

-- Location: LCCOMB_X10_Y26_N24
\Mult0|auto_generated|add6_result[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[7]~14_combout\ = !\Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add6_result[6]~13\,
	combout => \Mult0|auto_generated|add6_result[7]~14_combout\);

-- Location: LCCOMB_X11_Y25_N0
\result[31]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[31]~1_combout\ = ((\Equal2~0_combout\ & \Mult0|auto_generated|add6_result[7]~14_combout\)) # (!\result[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \Mult0|auto_generated|add6_result[7]~14_combout\,
	datad => \result[31]~0_combout\,
	combout => \result[31]~1_combout\);

-- Location: LCCOMB_X11_Y25_N28
\result[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[5]~3_combout\ = ((\Mult0|auto_generated|add6_result[5]~10_combout\ & \Equal2~0_combout\)) # (!\result[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[31]~0_combout\,
	datab => \Mult0|auto_generated|add6_result[5]~10_combout\,
	datac => \Equal2~0_combout\,
	combout => \result[5]~3_combout\);

-- Location: LCCOMB_X11_Y25_N30
\result[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[4]~4_combout\ = ((\Equal2~0_combout\ & \Mult0|auto_generated|add6_result[4]~8_combout\)) # (!\result[31]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[31]~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Mult0|auto_generated|add6_result[4]~8_combout\,
	combout => \result[4]~4_combout\);

-- Location: LCCOMB_X10_Y25_N0
\result[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[3]~5_combout\ = (\Equal1~0_combout\ & ((\Add1~6_combout\) # ((\Equal0~0_combout\ & \Add0~6_combout\)))) # (!\Equal1~0_combout\ & (\Equal0~0_combout\ & (\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Add0~6_combout\,
	datad => \Add1~6_combout\,
	combout => \result[3]~5_combout\);

-- Location: LCCOMB_X11_Y25_N8
\result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[3]~6_combout\ = (\result[3]~5_combout\) # ((\Equal2~0_combout\ & \Mult0|auto_generated|add6_result[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \Mult0|auto_generated|add6_result[3]~6_combout\,
	datad => \result[3]~5_combout\,
	combout => \result[3]~6_combout\);

-- Location: LCCOMB_X10_Y25_N2
\result[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[2]~7_combout\ = (\Add1~4_combout\ & ((\Equal1~0_combout\) # ((\Equal0~0_combout\ & \Add0~4_combout\)))) # (!\Add1~4_combout\ & (\Equal0~0_combout\ & ((\Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Add0~4_combout\,
	combout => \result[2]~7_combout\);

-- Location: LCCOMB_X11_Y25_N26
\result[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[2]~8_combout\ = (\result[2]~7_combout\) # ((\Mult0|auto_generated|add6_result[2]~4_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[2]~7_combout\,
	datab => \Mult0|auto_generated|add6_result[2]~4_combout\,
	datac => \Equal2~0_combout\,
	combout => \result[2]~8_combout\);

-- Location: LCCOMB_X10_Y25_N12
\result[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[1]~9_combout\ = (\Add1~2_combout\ & ((\Equal1~0_combout\) # ((\Equal0~0_combout\ & \Add0~2_combout\)))) # (!\Add1~2_combout\ & (\Equal0~0_combout\ & ((\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Add0~2_combout\,
	combout => \result[1]~9_combout\);

-- Location: LCCOMB_X11_Y25_N4
\result[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[1]~10_combout\ = (\result[1]~9_combout\) # ((\Equal2~0_combout\ & \Mult0|auto_generated|add6_result[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[1]~9_combout\,
	datac => \Equal2~0_combout\,
	datad => \Mult0|auto_generated|add6_result[1]~2_combout\,
	combout => \result[1]~10_combout\);

-- Location: LCCOMB_X10_Y25_N30
\result[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[0]~11_combout\ = (\Add0~0_combout\ & ((\Equal0~0_combout\) # ((\Add1~0_combout\ & \Equal1~0_combout\)))) # (!\Add0~0_combout\ & (\Add1~0_combout\ & (\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \result[0]~11_combout\);

-- Location: LCCOMB_X10_Y25_N10
\result[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \result[0]~12_combout\ = (\result[0]~11_combout\) # ((\Equal2~0_combout\ & \Mult0|auto_generated|add6_result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[0]~11_combout\,
	datab => \Equal2~0_combout\,
	datac => \Mult0|auto_generated|add6_result[0]~0_combout\,
	combout => \result[0]~12_combout\);

-- Location: LCCOMB_X11_Y25_N6
\HEX0number~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number~6_combout\ = \result[0]~12_combout\ $ ((((\Equal2~0_combout\ & \Mult0|auto_generated|add6_result[7]~14_combout\)) # (!\result[31]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result[0]~12_combout\,
	datab => \Equal2~0_combout\,
	datac => \Mult0|auto_generated|add6_result[7]~14_combout\,
	datad => \result[31]~0_combout\,
	combout => \HEX0number~6_combout\);

-- Location: LCCOMB_X11_Y25_N10
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\HEX0number~6_combout\ & (\result[31]~1_combout\ $ (VCC))) # (!\HEX0number~6_combout\ & (\result[31]~1_combout\ & VCC))
-- \Add2~1\ = CARRY((\HEX0number~6_combout\ & \result[31]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number~6_combout\,
	datab => \result[31]~1_combout\,
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X11_Y25_N12
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~1\ & (\result[1]~10_combout\ $ ((!\result[31]~1_combout\)))) # (!\Add2~1\ & ((\result[1]~10_combout\ $ (\result[31]~1_combout\)) # (GND)))
-- \Add2~3\ = CARRY((\result[1]~10_combout\ $ (!\result[31]~1_combout\)) # (!\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result[1]~10_combout\,
	datab => \result[31]~1_combout\,
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X11_Y25_N14
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add2~3\ & ((\result[2]~8_combout\ $ (\result[31]~1_combout\)))) # (!\Add2~3\ & (\result[2]~8_combout\ $ (\result[31]~1_combout\ $ (VCC))))
-- \Add2~5\ = CARRY((!\Add2~3\ & (\result[2]~8_combout\ $ (\result[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result[2]~8_combout\,
	datab => \result[31]~1_combout\,
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X11_Y25_N16
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add2~5\ & (\result[3]~6_combout\ $ ((!\result[31]~1_combout\)))) # (!\Add2~5\ & ((\result[3]~6_combout\ $ (\result[31]~1_combout\)) # (GND)))
-- \Add2~7\ = CARRY((\result[3]~6_combout\ $ (!\result[31]~1_combout\)) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result[3]~6_combout\,
	datab => \result[31]~1_combout\,
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X11_Y25_N18
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~7\ & ((\result[4]~4_combout\ $ (\result[31]~1_combout\)))) # (!\Add2~7\ & (\result[4]~4_combout\ $ (\result[31]~1_combout\ $ (VCC))))
-- \Add2~9\ = CARRY((!\Add2~7\ & (\result[4]~4_combout\ $ (\result[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result[4]~4_combout\,
	datab => \result[31]~1_combout\,
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X11_Y25_N20
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add2~9\ & (\result[5]~3_combout\ $ ((!\result[31]~1_combout\)))) # (!\Add2~9\ & ((\result[5]~3_combout\ $ (\result[31]~1_combout\)) # (GND)))
-- \Add2~11\ = CARRY((\result[5]~3_combout\ $ (!\result[31]~1_combout\)) # (!\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result[5]~3_combout\,
	datab => \result[31]~1_combout\,
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X11_Y25_N22
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add2~11\ & ((\result[6]~2_combout\ $ (\result[31]~1_combout\)))) # (!\Add2~11\ & (\result[6]~2_combout\ $ (\result[31]~1_combout\ $ (VCC))))
-- \Add2~13\ = CARRY((!\Add2~11\ & (\result[6]~2_combout\ $ (\result[31]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \result[6]~2_combout\,
	datab => \result[31]~1_combout\,
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X11_Y25_N24
\Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = \Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~13\,
	combout => \Add2~14_combout\);

-- Location: LCCOMB_X19_Y21_N4
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = \Add2~10_combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY(\Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X19_Y21_N6
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\Add2~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & VCC)) # (!\Add2~12_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\Add2~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X19_Y21_N8
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\Add2~14_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ $ (GND))) # (!\Add2~14_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((\Add2~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X19_Y21_N10
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\);

-- Location: LCCOMB_X19_Y21_N12
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\);

-- Location: LCCOMB_X19_Y21_N14
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~11\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~11\);

-- Location: LCCOMB_X19_Y21_N16
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~11\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~13\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~13\);

-- Location: LCCOMB_X19_Y21_N18
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~13\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~15\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~15\);

-- Location: LCCOMB_X19_Y21_N20
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~15\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~17\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~17\);

-- Location: LCCOMB_X19_Y21_N22
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~17\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~19\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~19\);

-- Location: LCCOMB_X19_Y21_N24
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~19\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~21\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~21\);

-- Location: LCCOMB_X19_Y21_N26
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~21\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~23\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~21\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~23\);

-- Location: LCCOMB_X19_Y21_N28
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~23\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~25\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~23\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~25\);

-- Location: LCCOMB_X19_Y21_N30
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~25\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~27\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~25\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~27\);

-- Location: LCCOMB_X19_Y20_N0
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~27\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~29\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~27\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~29\);

-- Location: LCCOMB_X19_Y20_N2
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~29\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~31\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~29\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~31\);

-- Location: LCCOMB_X19_Y20_N4
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~31\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~33\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~31\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~33\);

-- Location: LCCOMB_X19_Y20_N6
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~33\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~35\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~33\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~35\);

-- Location: LCCOMB_X19_Y20_N8
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~35\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~37\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~35\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~37\);

-- Location: LCCOMB_X19_Y20_N10
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~37\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~39\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~37\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~39\);

-- Location: LCCOMB_X19_Y20_N12
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~39\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~41\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~39\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~41\);

-- Location: LCCOMB_X19_Y20_N14
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~41\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~43\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~41\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~43\);

-- Location: LCCOMB_X19_Y20_N16
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~43\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~45\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~43\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~45\);

-- Location: LCCOMB_X19_Y20_N18
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~45\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~47\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~45\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~47\);

-- Location: LCCOMB_X19_Y20_N20
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~47\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~49\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~47\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~49\);

-- Location: LCCOMB_X19_Y20_N22
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~49\
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~51\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~49\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~51\);

-- Location: LCCOMB_X19_Y20_N24
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\ = \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~51\ $ (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~53\ = CARRY(!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~51\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~53\);

-- Location: LCCOMB_X19_Y20_N26
\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~53\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~53\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\);

-- Location: LCCOMB_X20_Y22_N16
\Mod0|auto_generated|divider|divider|StageOut[871]~158\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[871]~158_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[871]~158_combout\);

-- Location: LCCOMB_X21_Y21_N16
\Mod0|auto_generated|divider|divider|StageOut[870]~159\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[870]~159_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[870]~159_combout\);

-- Location: LCCOMB_X20_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[869]~160\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[869]~160_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[869]~160_combout\);

-- Location: LCCOMB_X22_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[868]~161\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[868]~161_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[868]~161_combout\);

-- Location: LCCOMB_X22_Y23_N16
\Mod0|auto_generated|divider|divider|StageOut[867]~162\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[867]~162_combout\ = (\Add2~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[867]~162_combout\);

-- Location: LCCOMB_X19_Y21_N0
\Mod0|auto_generated|divider|divider|StageOut[867]~163\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[867]~163_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[867]~163_combout\);

-- Location: LCCOMB_X21_Y21_N2
\Mod0|auto_generated|divider|divider|StageOut[866]~164\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[866]~164_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Add2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Add2~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[866]~164_combout\);

-- Location: LCCOMB_X21_Y21_N12
\Mod0|auto_generated|divider|divider|StageOut[866]~165\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[866]~165_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[866]~165_combout\);

-- Location: LCCOMB_X22_Y23_N20
\Mod0|auto_generated|divider|divider|StageOut[865]~166\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[865]~166_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Add2~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[865]~166_combout\);

-- Location: LCCOMB_X22_Y20_N0
\Mod0|auto_generated|divider|divider|StageOut[865]~167\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[865]~167_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[865]~167_combout\);

-- Location: LCCOMB_X20_Y21_N0
\Mod0|auto_generated|divider|divider|StageOut[864]~168\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[864]~168_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Add2~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[864]~168_combout\);

-- Location: LCCOMB_X20_Y21_N2
\Mod0|auto_generated|divider|divider|StageOut[864]~169\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[864]~169_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Add2~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[864]~169_combout\);

-- Location: LCCOMB_X20_Y21_N4
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[864]~168_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[864]~169_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[864]~168_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[864]~169_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[864]~168_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[864]~169_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X20_Y21_N6
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[865]~166_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[865]~167_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[865]~166_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[865]~167_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[865]~166_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[865]~167_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[865]~166_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[865]~167_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X20_Y21_N8
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[866]~164_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[866]~165_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[866]~164_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[866]~165_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[866]~164_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[866]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[866]~164_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[866]~165_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X20_Y21_N10
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[867]~162_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[867]~163_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[867]~162_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[867]~163_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[867]~162_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[867]~163_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[867]~162_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[867]~163_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\);

-- Location: LCCOMB_X20_Y21_N12
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[868]~161_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[868]~161_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[868]~161_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[868]~161_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\);

-- Location: LCCOMB_X20_Y21_N14
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[869]~160_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[869]~160_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[869]~160_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[869]~160_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~11\);

-- Location: LCCOMB_X20_Y21_N16
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[870]~159_combout\ & ((GND) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~11\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[870]~159_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~11\ $ (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[870]~159_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[870]~159_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~13\);

-- Location: LCCOMB_X20_Y21_N18
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[871]~158_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~13\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[871]~158_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~13\))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[871]~158_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[871]~158_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~15\);

-- Location: LCCOMB_X20_Y21_N20
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~15\ & ((((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~15\ & (((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\);

-- Location: LCCOMB_X20_Y21_N22
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~19\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~19\);

-- Location: LCCOMB_X20_Y21_N24
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~19\ & ((((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~19\ & (((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\);

-- Location: LCCOMB_X20_Y21_N26
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~23\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~21\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~23\);

-- Location: LCCOMB_X20_Y21_N28
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~23\ & ((((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~23\ & (((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~23\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\);

-- Location: LCCOMB_X20_Y21_N30
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~27\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~25\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~27\);

-- Location: LCCOMB_X20_Y20_N0
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~27\ & ((((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~27\ & (((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~27\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\);

-- Location: LCCOMB_X20_Y20_N2
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\)) # (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~31\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~29\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~31\);

-- Location: LCCOMB_X20_Y20_N4
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~31\ & ((((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~31\ & (((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~31\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\);

-- Location: LCCOMB_X20_Y20_N6
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~35\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~33\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~35\);

-- Location: LCCOMB_X20_Y20_N8
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~35\ & ((((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~35\ & (((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~35\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\);

-- Location: LCCOMB_X20_Y20_N10
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~39\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~37\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~39\);

-- Location: LCCOMB_X20_Y20_N12
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~39\ & ((((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~39\ & (((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~39\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\);

-- Location: LCCOMB_X20_Y20_N14
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\)) # (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~43\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~41\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~43\);

-- Location: LCCOMB_X20_Y20_N16
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~43\ & ((((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~43\ & (((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~43\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\);

-- Location: LCCOMB_X20_Y20_N18
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\)) # (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~47\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~45\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~47\);

-- Location: LCCOMB_X20_Y20_N20
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~47\ & ((((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~47\ & (((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\ = CARRY(((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001000101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~47\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\);

-- Location: LCCOMB_X20_Y20_N22
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~51\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~49\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~51\);

-- Location: LCCOMB_X20_Y20_N24
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~51\ & ((((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~51\ & (((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\ = CARRY(((!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~51\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\);

-- Location: LCCOMB_X20_Y20_N26
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\))))
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~55\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~53\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~55\);

-- Location: LCCOMB_X20_Y20_N28
\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ = \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~55\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~55\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\);

-- Location: LCCOMB_X20_Y20_N30
\Mod0|auto_generated|divider|divider|StageOut[924]~170\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[27]~52_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\);

-- Location: LCCOMB_X22_Y19_N0
\Mod0|auto_generated|divider|divider|StageOut[924]~171\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[924]~171_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[924]~171_combout\);

-- Location: LCCOMB_X19_Y19_N16
\Mod0|auto_generated|divider|divider|StageOut[923]~172\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[26]~50_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\);

-- Location: LCCOMB_X19_Y19_N2
\Mod0|auto_generated|divider|divider|StageOut[923]~173\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[923]~173_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[923]~173_combout\);

-- Location: LCCOMB_X21_Y21_N24
\Mod0|auto_generated|divider|divider|StageOut[922]~175\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[922]~175_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[922]~175_combout\);

-- Location: LCCOMB_X21_Y21_N22
\Mod0|auto_generated|divider|divider|StageOut[922]~174\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[25]~48_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\);

-- Location: LCCOMB_X20_Y19_N10
\Mod0|auto_generated|divider|divider|StageOut[921]~177\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[921]~177_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[921]~177_combout\);

-- Location: LCCOMB_X20_Y19_N24
\Mod0|auto_generated|divider|divider|StageOut[921]~176\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[24]~46_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\);

-- Location: LCCOMB_X23_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[920]~179\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[920]~179_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[920]~179_combout\);

-- Location: LCCOMB_X21_Y21_N18
\Mod0|auto_generated|divider|divider|StageOut[920]~178\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[23]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\);

-- Location: LCCOMB_X23_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[919]~181\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[919]~181_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[919]~181_combout\);

-- Location: LCCOMB_X20_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[919]~180\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[22]~42_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\);

-- Location: LCCOMB_X19_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[918]~182\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[21]~40_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\);

-- Location: LCCOMB_X21_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[918]~183\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[918]~183_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[918]~183_combout\);

-- Location: LCCOMB_X20_Y19_N12
\Mod0|auto_generated|divider|divider|StageOut[917]~184\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[20]~38_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\);

-- Location: LCCOMB_X20_Y19_N6
\Mod0|auto_generated|divider|divider|StageOut[917]~185\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[917]~185_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[917]~185_combout\);

-- Location: LCCOMB_X22_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[916]~187\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[916]~187_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[916]~187_combout\);

-- Location: LCCOMB_X22_Y18_N8
\Mod0|auto_generated|divider|divider|StageOut[916]~186\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[19]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\);

-- Location: LCCOMB_X22_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[915]~188\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[18]~34_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\);

-- Location: LCCOMB_X22_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[915]~189\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[915]~189_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[915]~189_combout\);

-- Location: LCCOMB_X22_Y19_N26
\Mod0|auto_generated|divider|divider|StageOut[914]~191\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[914]~191_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[914]~191_combout\);

-- Location: LCCOMB_X19_Y20_N30
\Mod0|auto_generated|divider|divider|StageOut[914]~190\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[17]~32_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\);

-- Location: LCCOMB_X22_Y21_N10
\Mod0|auto_generated|divider|divider|StageOut[913]~193\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[913]~193_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[913]~193_combout\);

-- Location: LCCOMB_X22_Y21_N24
\Mod0|auto_generated|divider|divider|StageOut[913]~192\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[16]~30_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\);

-- Location: LCCOMB_X20_Y19_N8
\Mod0|auto_generated|divider|divider|StageOut[912]~194\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[15]~28_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\);

-- Location: LCCOMB_X20_Y19_N18
\Mod0|auto_generated|divider|divider|StageOut[912]~195\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[912]~195_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[912]~195_combout\);

-- Location: LCCOMB_X21_Y19_N30
\Mod0|auto_generated|divider|divider|StageOut[911]~197\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[911]~197_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[911]~197_combout\);

-- Location: LCCOMB_X21_Y22_N16
\Mod0|auto_generated|divider|divider|StageOut[911]~196\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[14]~26_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\);

-- Location: LCCOMB_X24_Y21_N16
\Mod0|auto_generated|divider|divider|StageOut[910]~199\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[910]~199_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[910]~199_combout\);

-- Location: LCCOMB_X21_Y21_N20
\Mod0|auto_generated|divider|divider|StageOut[910]~198\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[13]~24_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\);

-- Location: LCCOMB_X22_Y21_N4
\Mod0|auto_generated|divider|divider|StageOut[909]~200\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\);

-- Location: LCCOMB_X21_Y20_N0
\Mod0|auto_generated|divider|divider|StageOut[909]~201\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[909]~201_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[909]~201_combout\);

-- Location: LCCOMB_X24_Y21_N18
\Mod0|auto_generated|divider|divider|StageOut[908]~203\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[908]~203_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[908]~203_combout\);

-- Location: LCCOMB_X21_Y21_N6
\Mod0|auto_generated|divider|divider|StageOut[908]~202\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\);

-- Location: LCCOMB_X21_Y22_N4
\Mod0|auto_generated|divider|divider|StageOut[907]~205\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[907]~205_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[907]~205_combout\);

-- Location: LCCOMB_X21_Y22_N2
\Mod0|auto_generated|divider|divider|StageOut[907]~204\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[10]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\);

-- Location: LCCOMB_X21_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[906]~207\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[906]~207_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[906]~207_combout\);

-- Location: LCCOMB_X21_Y22_N22
\Mod0|auto_generated|divider|divider|StageOut[906]~206\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\);

-- Location: LCCOMB_X20_Y22_N12
\Mod0|auto_generated|divider|divider|StageOut[905]~209\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[905]~209_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[905]~209_combout\);

-- Location: LCCOMB_X20_Y22_N26
\Mod0|auto_generated|divider|divider|StageOut[905]~208\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\);

-- Location: LCCOMB_X20_Y22_N6
\Mod0|auto_generated|divider|divider|StageOut[904]~286\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\);

-- Location: LCCOMB_X20_Y22_N22
\Mod0|auto_generated|divider|divider|StageOut[904]~210\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[904]~210_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[904]~210_combout\);

-- Location: LCCOMB_X21_Y21_N8
\Mod0|auto_generated|divider|divider|StageOut[903]~211\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[903]~211_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[903]~211_combout\);

-- Location: LCCOMB_X21_Y21_N28
\Mod0|auto_generated|divider|divider|StageOut[903]~287\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\);

-- Location: LCCOMB_X20_Y18_N22
\Mod0|auto_generated|divider|divider|StageOut[902]~288\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\);

-- Location: LCCOMB_X20_Y18_N20
\Mod0|auto_generated|divider|divider|StageOut[902]~212\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[902]~212_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[902]~212_combout\);

-- Location: LCCOMB_X22_Y22_N10
\Mod0|auto_generated|divider|divider|StageOut[901]~213\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[901]~213_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[901]~213_combout\);

-- Location: LCCOMB_X22_Y22_N12
\Mod0|auto_generated|divider|divider|StageOut[901]~289\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\);

-- Location: LCCOMB_X21_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[900]~214\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[900]~214_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[900]~214_combout\);

-- Location: LCCOMB_X19_Y21_N2
\Mod0|auto_generated|divider|divider|StageOut[900]~345\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Add2~14_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datac => \Add2~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\);

-- Location: LCCOMB_X21_Y21_N4
\Mod0|auto_generated|divider|divider|StageOut[899]~346\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Add2~12_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\);

-- Location: LCCOMB_X21_Y21_N10
\Mod0|auto_generated|divider|divider|StageOut[899]~215\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[899]~215_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[899]~215_combout\);

-- Location: LCCOMB_X22_Y20_N20
\Mod0|auto_generated|divider|divider|StageOut[898]~347\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & (\Add2~10_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[28]~54_combout\,
	datab => \Add2~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\);

-- Location: LCCOMB_X22_Y20_N10
\Mod0|auto_generated|divider|divider|StageOut[898]~216\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[898]~216_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[898]~216_combout\);

-- Location: LCCOMB_X22_Y20_N4
\Mod0|auto_generated|divider|divider|StageOut[897]~217\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[897]~217_combout\ = (\Add2~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[897]~217_combout\);

-- Location: LCCOMB_X22_Y20_N22
\Mod0|auto_generated|divider|divider|StageOut[897]~218\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[897]~218_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[897]~218_combout\);

-- Location: LCCOMB_X21_Y18_N12
\Mod0|auto_generated|divider|divider|StageOut[896]~219\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[896]~219_combout\ = (\Add2~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[896]~219_combout\);

-- Location: LCCOMB_X21_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[896]~220\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[896]~220_combout\ = (\Add2~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[896]~220_combout\);

-- Location: LCCOMB_X21_Y20_N2
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[896]~219_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[896]~220_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[896]~219_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[896]~220_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[896]~219_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[896]~220_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X21_Y20_N4
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[897]~217_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[897]~218_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[897]~217_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[897]~218_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[897]~217_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[897]~218_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[897]~217_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[897]~218_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X21_Y20_N6
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[898]~216_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[898]~216_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[898]~216_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[898]~216_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X21_Y20_N8
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[899]~215_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[899]~215_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[899]~215_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[899]~215_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\);

-- Location: LCCOMB_X21_Y20_N10
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[900]~214_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[900]~214_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[900]~214_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[900]~214_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\);

-- Location: LCCOMB_X21_Y20_N12
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[901]~213_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[901]~213_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[901]~213_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[901]~213_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~11\);

-- Location: LCCOMB_X21_Y20_N14
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[902]~212_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[902]~212_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[902]~212_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[902]~212_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~13\);

-- Location: LCCOMB_X21_Y20_N16
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[903]~211_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[903]~211_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[903]~211_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[903]~211_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~15\);

-- Location: LCCOMB_X21_Y20_N18
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[904]~210_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[904]~210_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[904]~210_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[904]~210_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~17\);

-- Location: LCCOMB_X21_Y20_N20
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[905]~209_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[905]~209_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[905]~209_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[905]~209_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~19\);

-- Location: LCCOMB_X21_Y20_N22
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~19\ & ((((\Mod0|auto_generated|divider|divider|StageOut[906]~207_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~19\ & ((\Mod0|auto_generated|divider|divider|StageOut[906]~207_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~21\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[906]~207_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[906]~207_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~21\);

-- Location: LCCOMB_X21_Y20_N24
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~21\ & (((\Mod0|auto_generated|divider|divider|StageOut[907]~205_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~21\ & (!\Mod0|auto_generated|divider|divider|StageOut[907]~205_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~23\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[907]~205_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[907]~205_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~21\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~23\);

-- Location: LCCOMB_X21_Y20_N26
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~23\ & ((((\Mod0|auto_generated|divider|divider|StageOut[908]~203_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~23\ & ((\Mod0|auto_generated|divider|divider|StageOut[908]~203_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~25\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[908]~203_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[908]~203_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~23\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~25\);

-- Location: LCCOMB_X21_Y20_N28
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~25\ & (((\Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[909]~201_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~25\ & (!\Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[909]~201_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~27\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[909]~201_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[909]~201_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~25\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~27\);

-- Location: LCCOMB_X21_Y20_N30
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~27\ & ((((\Mod0|auto_generated|divider|divider|StageOut[910]~199_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~27\ & ((\Mod0|auto_generated|divider|divider|StageOut[910]~199_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~29\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[910]~199_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[910]~199_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~27\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~29\);

-- Location: LCCOMB_X21_Y19_N0
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~29\ & (((\Mod0|auto_generated|divider|divider|StageOut[911]~197_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~29\ & (!\Mod0|auto_generated|divider|divider|StageOut[911]~197_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~31\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[911]~197_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[911]~197_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~29\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~31\);

-- Location: LCCOMB_X21_Y19_N2
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~31\ & ((((\Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[912]~195_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~31\ & ((\Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[912]~195_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~33\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[912]~195_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[912]~195_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~31\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~33\);

-- Location: LCCOMB_X21_Y19_N4
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~33\ & (((\Mod0|auto_generated|divider|divider|StageOut[913]~193_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~33\ & (!\Mod0|auto_generated|divider|divider|StageOut[913]~193_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~35\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[913]~193_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[913]~193_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~33\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~35\);

-- Location: LCCOMB_X21_Y19_N6
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~35\ & ((((\Mod0|auto_generated|divider|divider|StageOut[914]~191_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~35\ & ((\Mod0|auto_generated|divider|divider|StageOut[914]~191_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~37\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[914]~191_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[914]~191_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~35\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~37\);

-- Location: LCCOMB_X21_Y19_N8
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~37\ & (((\Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[915]~189_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~37\ & (!\Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[915]~189_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~39\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[915]~189_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[915]~189_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~37\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~39\);

-- Location: LCCOMB_X21_Y19_N10
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~39\ & ((((\Mod0|auto_generated|divider|divider|StageOut[916]~187_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~39\ & ((\Mod0|auto_generated|divider|divider|StageOut[916]~187_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~41\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[916]~187_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[916]~187_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~39\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~41\);

-- Location: LCCOMB_X21_Y19_N12
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~41\ & (((\Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[917]~185_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~41\ & (!\Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[917]~185_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~43\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[917]~185_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[917]~185_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~41\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~43\);

-- Location: LCCOMB_X21_Y19_N14
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~43\ & ((((\Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[918]~183_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~43\ & ((\Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[918]~183_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~45\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[918]~183_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[918]~183_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~43\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~45\);

-- Location: LCCOMB_X21_Y19_N16
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~45\ & (((\Mod0|auto_generated|divider|divider|StageOut[919]~181_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~45\ & (!\Mod0|auto_generated|divider|divider|StageOut[919]~181_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~47\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[919]~181_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[919]~181_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~45\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~47\);

-- Location: LCCOMB_X21_Y19_N18
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~47\ & ((((\Mod0|auto_generated|divider|divider|StageOut[920]~179_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~47\ & ((\Mod0|auto_generated|divider|divider|StageOut[920]~179_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~49\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[920]~179_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[920]~179_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~47\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~49\);

-- Location: LCCOMB_X21_Y19_N20
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~49\ & (((\Mod0|auto_generated|divider|divider|StageOut[921]~177_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~49\ & (!\Mod0|auto_generated|divider|divider|StageOut[921]~177_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~51\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[921]~177_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[921]~177_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~49\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~51\);

-- Location: LCCOMB_X21_Y19_N22
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~51\ & ((((\Mod0|auto_generated|divider|divider|StageOut[922]~175_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~51\ & ((\Mod0|auto_generated|divider|divider|StageOut[922]~175_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~53\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[922]~175_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[922]~175_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~51\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~53\);

-- Location: LCCOMB_X21_Y19_N24
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~53\ & (((\Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[923]~173_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~53\ & (!\Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[923]~173_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~55\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[923]~173_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[923]~173_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~53\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~55\);

-- Location: LCCOMB_X21_Y19_N26
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~55\ & ((((\Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[924]~171_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~55\ & ((\Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[924]~171_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~57\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[924]~171_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[924]~171_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~55\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~57\);

-- Location: LCCOMB_X21_Y19_N28
\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~57\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~57\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\);

-- Location: LCCOMB_X22_Y19_N4
\Mod0|auto_generated|divider|divider|StageOut[957]~221\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[957]~221_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[957]~221_combout\);

-- Location: LCCOMB_X22_Y19_N22
\Mod0|auto_generated|divider|divider|StageOut[957]~290\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[28]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[924]~170_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\);

-- Location: LCCOMB_X19_Y19_N4
\Mod0|auto_generated|divider|divider|StageOut[956]~291\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[923]~172_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[27]~52_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\);

-- Location: LCCOMB_X22_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[956]~222\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[956]~222_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[956]~222_combout\);

-- Location: LCCOMB_X24_Y20_N8
\Mod0|auto_generated|divider|divider|StageOut[955]~223\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[955]~223_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[955]~223_combout\);

-- Location: LCCOMB_X21_Y21_N30
\Mod0|auto_generated|divider|divider|StageOut[955]~292\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[26]~50_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[922]~174_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\);

-- Location: LCCOMB_X20_Y19_N4
\Mod0|auto_generated|divider|divider|StageOut[954]~293\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[921]~176_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[25]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\);

-- Location: LCCOMB_X20_Y19_N20
\Mod0|auto_generated|divider|divider|StageOut[954]~224\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[954]~224_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[954]~224_combout\);

-- Location: LCCOMB_X23_Y18_N20
\Mod0|auto_generated|divider|divider|StageOut[953]~225\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\);

-- Location: LCCOMB_X23_Y18_N8
\Mod0|auto_generated|divider|divider|StageOut[953]~294\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[920]~178_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[24]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\);

-- Location: LCCOMB_X23_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[952]~226\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[952]~226_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[952]~226_combout\);

-- Location: LCCOMB_X23_Y18_N2
\Mod0|auto_generated|divider|divider|StageOut[952]~295\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[919]~180_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[23]~44_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\);

-- Location: LCCOMB_X21_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[951]~296\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[918]~182_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[22]~42_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\);

-- Location: LCCOMB_X21_Y18_N8
\Mod0|auto_generated|divider|divider|StageOut[951]~227\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\);

-- Location: LCCOMB_X20_Y19_N22
\Mod0|auto_generated|divider|divider|StageOut[950]~228\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[950]~228_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[950]~228_combout\);

-- Location: LCCOMB_X20_Y19_N14
\Mod0|auto_generated|divider|divider|StageOut[950]~297\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[917]~184_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[21]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\);

-- Location: LCCOMB_X22_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[949]~229\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[949]~229_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[949]~229_combout\);

-- Location: LCCOMB_X22_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[949]~298\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[20]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[916]~186_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\);

-- Location: LCCOMB_X22_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[948]~299\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[19]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[915]~188_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\);

-- Location: LCCOMB_X22_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[948]~230\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\);

-- Location: LCCOMB_X22_Y19_N14
\Mod0|auto_generated|divider|divider|StageOut[947]~231\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\);

-- Location: LCCOMB_X22_Y19_N24
\Mod0|auto_generated|divider|divider|StageOut[947]~300\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[18]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[914]~190_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\);

-- Location: LCCOMB_X22_Y21_N12
\Mod0|auto_generated|divider|divider|StageOut[946]~301\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[17]~32_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[913]~192_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\);

-- Location: LCCOMB_X22_Y21_N6
\Mod0|auto_generated|divider|divider|StageOut[946]~232\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[946]~232_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[946]~232_combout\);

-- Location: LCCOMB_X20_Y19_N0
\Mod0|auto_generated|divider|divider|StageOut[945]~233\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[945]~233_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[945]~233_combout\);

-- Location: LCCOMB_X20_Y19_N16
\Mod0|auto_generated|divider|divider|StageOut[945]~302\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[912]~194_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[16]~30_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\);

-- Location: LCCOMB_X24_Y21_N4
\Mod0|auto_generated|divider|divider|StageOut[944]~303\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[15]~28_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[911]~196_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\);

-- Location: LCCOMB_X24_Y21_N12
\Mod0|auto_generated|divider|divider|StageOut[944]~234\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\);

-- Location: LCCOMB_X24_Y21_N6
\Mod0|auto_generated|divider|divider|StageOut[943]~304\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[14]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[910]~198_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\);

-- Location: LCCOMB_X24_Y21_N14
\Mod0|auto_generated|divider|divider|StageOut[943]~235\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[943]~235_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[943]~235_combout\);

-- Location: LCCOMB_X22_Y21_N14
\Mod0|auto_generated|divider|divider|StageOut[942]~305\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[13]~24_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[909]~200_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\);

-- Location: LCCOMB_X22_Y21_N0
\Mod0|auto_generated|divider|divider|StageOut[942]~236\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\);

-- Location: LCCOMB_X24_Y21_N8
\Mod0|auto_generated|divider|divider|StageOut[941]~306\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[12]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[908]~202_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\);

-- Location: LCCOMB_X24_Y21_N0
\Mod0|auto_generated|divider|divider|StageOut[941]~237\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[941]~237_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[941]~237_combout\);

-- Location: LCCOMB_X21_Y22_N18
\Mod0|auto_generated|divider|divider|StageOut[940]~238\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[940]~238_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[940]~238_combout\);

-- Location: LCCOMB_X21_Y22_N14
\Mod0|auto_generated|divider|divider|StageOut[940]~307\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[11]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[907]~204_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\);

-- Location: LCCOMB_X21_Y22_N20
\Mod0|auto_generated|divider|divider|StageOut[939]~239\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\);

-- Location: LCCOMB_X21_Y22_N0
\Mod0|auto_generated|divider|divider|StageOut[939]~308\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[906]~206_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\);

-- Location: LCCOMB_X20_Y22_N0
\Mod0|auto_generated|divider|divider|StageOut[938]~240\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\);

-- Location: LCCOMB_X20_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[938]~309\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[905]~208_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\);

-- Location: LCCOMB_X20_Y22_N18
\Mod0|auto_generated|divider|divider|StageOut[937]~310\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[904]~286_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\);

-- Location: LCCOMB_X20_Y22_N10
\Mod0|auto_generated|divider|divider|StageOut[937]~241\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\);

-- Location: LCCOMB_X20_Y19_N2
\Mod0|auto_generated|divider|divider|StageOut[936]~242\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[936]~242_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[936]~242_combout\);

-- Location: LCCOMB_X21_Y21_N0
\Mod0|auto_generated|divider|divider|StageOut[936]~311\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[903]~287_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\);

-- Location: LCCOMB_X22_Y22_N14
\Mod0|auto_generated|divider|divider|StageOut[935]~312\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[902]~288_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\);

-- Location: LCCOMB_X22_Y22_N28
\Mod0|auto_generated|divider|divider|StageOut[935]~243\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[935]~243_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[935]~243_combout\);

-- Location: LCCOMB_X22_Y22_N8
\Mod0|auto_generated|divider|divider|StageOut[934]~313\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[901]~289_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\);

-- Location: LCCOMB_X22_Y22_N30
\Mod0|auto_generated|divider|divider|StageOut[934]~244\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\);

-- Location: LCCOMB_X21_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[933]~245\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[933]~245_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[933]~245_combout\);

-- Location: LCCOMB_X21_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[933]~314\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[900]~345_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\);

-- Location: LCCOMB_X24_Y20_N10
\Mod0|auto_generated|divider|divider|StageOut[932]~246\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\);

-- Location: LCCOMB_X21_Y21_N26
\Mod0|auto_generated|divider|divider|StageOut[932]~315\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[899]~346_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\);

-- Location: LCCOMB_X22_Y20_N30
\Mod0|auto_generated|divider|divider|StageOut[931]~316\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[898]~347_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\);

-- Location: LCCOMB_X22_Y20_N24
\Mod0|auto_generated|divider|divider|StageOut[931]~247\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[931]~247_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[931]~247_combout\);

-- Location: LCCOMB_X22_Y20_N18
\Mod0|auto_generated|divider|divider|StageOut[930]~248\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[930]~248_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[930]~248_combout\);

-- Location: LCCOMB_X22_Y20_N6
\Mod0|auto_generated|divider|divider|StageOut[930]~348\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & ((\Add2~8_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Add2~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\);

-- Location: LCCOMB_X21_Y18_N14
\Mod0|auto_generated|divider|divider|StageOut[929]~250\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\);

-- Location: LCCOMB_X21_Y18_N20
\Mod0|auto_generated|divider|divider|StageOut[929]~249\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Add2~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\);

-- Location: LCCOMB_X22_Y23_N30
\Mod0|auto_generated|divider|divider|StageOut[928]~251\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[928]~251_combout\ = (\Add2~4_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[928]~251_combout\);

-- Location: LCCOMB_X22_Y23_N24
\Mod0|auto_generated|divider|divider|StageOut[928]~252\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[928]~252_combout\ = (\Add2~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[928]~252_combout\);

-- Location: LCCOMB_X23_Y22_N2
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[928]~251_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[928]~252_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[928]~251_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[928]~252_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[928]~251_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[928]~252_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X23_Y22_N4
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X23_Y22_N6
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[930]~248_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[930]~248_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[930]~248_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[930]~248_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X23_Y22_N8
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[931]~247_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[931]~247_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[931]~247_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[931]~247_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\);

-- Location: LCCOMB_X23_Y22_N10
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\);

-- Location: LCCOMB_X23_Y22_N12
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[933]~245_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[933]~245_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[933]~245_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[933]~245_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~11\);

-- Location: LCCOMB_X23_Y22_N14
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~13\);

-- Location: LCCOMB_X23_Y22_N16
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[935]~243_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[935]~243_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[935]~243_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[935]~243_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~15\);

-- Location: LCCOMB_X23_Y22_N18
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[936]~242_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[936]~242_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[936]~242_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[936]~242_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~17\);

-- Location: LCCOMB_X23_Y22_N20
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~19\);

-- Location: LCCOMB_X23_Y22_N22
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~19\ & ((((\Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~19\ & ((\Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~21\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~21\);

-- Location: LCCOMB_X23_Y22_N24
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~21\ & (((\Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~21\ & (!\Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~23\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~21\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~23\);

-- Location: LCCOMB_X23_Y22_N26
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~23\ & ((((\Mod0|auto_generated|divider|divider|StageOut[940]~238_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~23\ & ((\Mod0|auto_generated|divider|divider|StageOut[940]~238_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~25\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[940]~238_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[940]~238_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~23\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~24_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~25\);

-- Location: LCCOMB_X23_Y22_N28
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~25\ & (((\Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[941]~237_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~25\ & (!\Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[941]~237_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~27\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[941]~237_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[941]~237_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~25\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~26_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~27\);

-- Location: LCCOMB_X23_Y22_N30
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~27\ & ((((\Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~27\ & ((\Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~29\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~27\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~29\);

-- Location: LCCOMB_X23_Y21_N0
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~29\ & (((\Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[943]~235_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~29\ & (!\Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[943]~235_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~31\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[943]~235_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[943]~235_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~29\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~30_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~31\);

-- Location: LCCOMB_X23_Y21_N2
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~31\ & ((((\Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~31\ & ((\Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~33\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~31\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~33\);

-- Location: LCCOMB_X23_Y21_N4
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~33\ & (((\Mod0|auto_generated|divider|divider|StageOut[945]~233_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~33\ & (!\Mod0|auto_generated|divider|divider|StageOut[945]~233_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~35\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[945]~233_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[945]~233_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~33\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~34_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~35\);

-- Location: LCCOMB_X23_Y21_N6
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~35\ & ((((\Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[946]~232_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~35\ & ((\Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[946]~232_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~37\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[946]~232_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[946]~232_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~35\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~37\);

-- Location: LCCOMB_X23_Y21_N8
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~37\ & (((\Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~37\ & (!\Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~39\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~37\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~39\);

-- Location: LCCOMB_X23_Y21_N10
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~39\ & ((((\Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~39\ & ((\Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~41\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~39\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~41\);

-- Location: LCCOMB_X23_Y21_N12
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~41\ & (((\Mod0|auto_generated|divider|divider|StageOut[949]~229_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~41\ & (!\Mod0|auto_generated|divider|divider|StageOut[949]~229_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~43\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[949]~229_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[949]~229_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~41\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~42_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~43\);

-- Location: LCCOMB_X23_Y21_N14
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~43\ & ((((\Mod0|auto_generated|divider|divider|StageOut[950]~228_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~43\ & ((\Mod0|auto_generated|divider|divider|StageOut[950]~228_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~45\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[950]~228_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[950]~228_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~43\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~44_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~45\);

-- Location: LCCOMB_X23_Y21_N16
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~45\ & (((\Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~45\ & (!\Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~47\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~45\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~47\);

-- Location: LCCOMB_X23_Y21_N18
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~47\ & ((((\Mod0|auto_generated|divider|divider|StageOut[952]~226_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~47\ & ((\Mod0|auto_generated|divider|divider|StageOut[952]~226_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~49\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[952]~226_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[952]~226_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~47\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~48_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~49\);

-- Location: LCCOMB_X23_Y21_N20
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~49\ & (((\Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~49\ & (!\Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~51\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~49\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~51\);

-- Location: LCCOMB_X23_Y21_N22
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~51\ & ((((\Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[954]~224_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~51\ & ((\Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[954]~224_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~53\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[954]~224_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[954]~224_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~51\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~52_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~53\);

-- Location: LCCOMB_X23_Y21_N24
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~53\ & (((\Mod0|auto_generated|divider|divider|StageOut[955]~223_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~53\ & (!\Mod0|auto_generated|divider|divider|StageOut[955]~223_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~55\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[955]~223_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[955]~223_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~53\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~54_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~55\);

-- Location: LCCOMB_X23_Y21_N26
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~55\ & ((((\Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[956]~222_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~55\ & ((\Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[956]~222_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~57\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[956]~222_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[956]~222_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~55\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~56_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~57\);

-- Location: LCCOMB_X23_Y21_N28
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~57\ & (((\Mod0|auto_generated|divider|divider|StageOut[957]~221_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~57\ & (!\Mod0|auto_generated|divider|divider|StageOut[957]~221_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~59\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[957]~221_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[957]~221_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~57\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~59\);

-- Location: LCCOMB_X23_Y21_N30
\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ = \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~59\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~59\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\);

-- Location: LCCOMB_X22_Y19_N2
\Mod0|auto_generated|divider|divider|StageOut[990]~318\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[29]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[957]~290_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\);

-- Location: LCCOMB_X22_Y19_N16
\Mod0|auto_generated|divider|divider|StageOut[990]~254\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[990]~254_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[990]~254_combout\);

-- Location: LCCOMB_X22_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[989]~255\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[29]~56_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\);

-- Location: LCCOMB_X22_Y18_N10
\Mod0|auto_generated|divider|divider|StageOut[989]~319\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[28]~54_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[956]~291_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\);

-- Location: LCCOMB_X24_Y20_N0
\Mod0|auto_generated|divider|divider|StageOut[988]~256\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~54_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[28]~54_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\);

-- Location: LCCOMB_X24_Y20_N28
\Mod0|auto_generated|divider|divider|StageOut[988]~320\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[27]~52_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[955]~292_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\);

-- Location: LCCOMB_X20_Y19_N26
\Mod0|auto_generated|divider|divider|StageOut[987]~321\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[954]~293_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[26]~50_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\);

-- Location: LCCOMB_X24_Y20_N26
\Mod0|auto_generated|divider|divider|StageOut[987]~257\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~52_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[27]~52_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\);

-- Location: LCCOMB_X23_Y18_N4
\Mod0|auto_generated|divider|divider|StageOut[986]~322\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[986]~322_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[25]~48_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[986]~322_combout\);

-- Location: LCCOMB_X23_Y18_N0
\Mod0|auto_generated|divider|divider|StageOut[986]~258\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[986]~258_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[986]~258_combout\);

-- Location: LCCOMB_X23_Y18_N26
\Mod0|auto_generated|divider|divider|StageOut[985]~259\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[25]~48_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\);

-- Location: LCCOMB_X23_Y18_N6
\Mod0|auto_generated|divider|divider|StageOut[985]~323\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[24]~46_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[952]~295_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\);

-- Location: LCCOMB_X21_Y18_N18
\Mod0|auto_generated|divider|divider|StageOut[984]~324\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[984]~324_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[23]~44_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[984]~324_combout\);

-- Location: LCCOMB_X21_Y18_N24
\Mod0|auto_generated|divider|divider|StageOut[984]~260\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[984]~260_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[984]~260_combout\);

-- Location: LCCOMB_X20_Y19_N28
\Mod0|auto_generated|divider|divider|StageOut[983]~325\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[950]~297_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[22]~42_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\);

-- Location: LCCOMB_X24_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[983]~261\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[23]~44_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\);

-- Location: LCCOMB_X22_Y18_N20
\Mod0|auto_generated|divider|divider|StageOut[982]~326\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[949]~298_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[21]~40_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\);

-- Location: LCCOMB_X22_Y18_N30
\Mod0|auto_generated|divider|divider|StageOut[982]~262\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[22]~42_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\);

-- Location: LCCOMB_X22_Y18_N22
\Mod0|auto_generated|divider|divider|StageOut[981]~327\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[981]~327_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[20]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[981]~327_combout\);

-- Location: LCCOMB_X22_Y18_N24
\Mod0|auto_generated|divider|divider|StageOut[981]~263\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[981]~263_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[981]~263_combout\);

-- Location: LCCOMB_X22_Y19_N12
\Mod0|auto_generated|divider|divider|StageOut[980]~328\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[980]~328_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[19]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[980]~328_combout\);

-- Location: LCCOMB_X22_Y19_N18
\Mod0|auto_generated|divider|divider|StageOut[980]~264\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[980]~264_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[980]~264_combout\);

-- Location: LCCOMB_X22_Y21_N18
\Mod0|auto_generated|divider|divider|StageOut[979]~265\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[979]~265_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[979]~265_combout\);

-- Location: LCCOMB_X22_Y21_N16
\Mod0|auto_generated|divider|divider|StageOut[979]~329\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[946]~301_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[18]~34_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\);

-- Location: LCCOMB_X20_Y19_N30
\Mod0|auto_generated|divider|divider|StageOut[978]~330\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[17]~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[945]~302_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\);

-- Location: LCCOMB_X23_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[978]~266\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~34_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[18]~34_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\);

-- Location: LCCOMB_X24_Y21_N2
\Mod0|auto_generated|divider|divider|StageOut[977]~331\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[977]~331_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[16]~30_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[977]~331_combout\);

-- Location: LCCOMB_X24_Y21_N10
\Mod0|auto_generated|divider|divider|StageOut[977]~267\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[977]~267_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[977]~267_combout\);

-- Location: LCCOMB_X24_Y21_N20
\Mod0|auto_generated|divider|divider|StageOut[976]~332\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[943]~304_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[15]~28_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\);

-- Location: LCCOMB_X24_Y21_N28
\Mod0|auto_generated|divider|divider|StageOut[976]~268\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~30_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[16]~30_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\);

-- Location: LCCOMB_X22_Y21_N28
\Mod0|auto_generated|divider|divider|StageOut[975]~269\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[975]~269_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[975]~269_combout\);

-- Location: LCCOMB_X22_Y21_N26
\Mod0|auto_generated|divider|divider|StageOut[975]~333\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[975]~333_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[14]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[975]~333_combout\);

-- Location: LCCOMB_X22_Y21_N30
\Mod0|auto_generated|divider|divider|StageOut[974]~270\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~26_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[14]~26_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\);

-- Location: LCCOMB_X24_Y21_N30
\Mod0|auto_generated|divider|divider|StageOut[974]~334\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[13]~24_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[941]~306_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\);

-- Location: LCCOMB_X21_Y22_N30
\Mod0|auto_generated|divider|divider|StageOut[973]~271\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[13]~24_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\);

-- Location: LCCOMB_X21_Y22_N26
\Mod0|auto_generated|divider|divider|StageOut[973]~335\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[12]~22_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[940]~307_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\);

-- Location: LCCOMB_X21_Y22_N12
\Mod0|auto_generated|divider|divider|StageOut[972]~336\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[972]~336_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[11]~20_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[972]~336_combout\);

-- Location: LCCOMB_X21_Y22_N8
\Mod0|auto_generated|divider|divider|StageOut[972]~272\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[972]~272_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[972]~272_combout\);

-- Location: LCCOMB_X20_Y22_N28
\Mod0|auto_generated|divider|divider|StageOut[971]~337\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[971]~337_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[971]~337_combout\);

-- Location: LCCOMB_X20_Y22_N20
\Mod0|auto_generated|divider|divider|StageOut[971]~273\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[971]~273_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[971]~273_combout\);

-- Location: LCCOMB_X20_Y22_N14
\Mod0|auto_generated|divider|divider|StageOut[970]~274\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[970]~274_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[970]~274_combout\);

-- Location: LCCOMB_X20_Y22_N30
\Mod0|auto_generated|divider|divider|StageOut[970]~338\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[970]~338_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[9]~16_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[970]~338_combout\);

-- Location: LCCOMB_X22_Y22_N26
\Mod0|auto_generated|divider|divider|StageOut[969]~339\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[8]~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[936]~311_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\);

-- Location: LCCOMB_X22_Y22_N0
\Mod0|auto_generated|divider|divider|StageOut[969]~275\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[9]~16_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\);

-- Location: LCCOMB_X22_Y22_N20
\Mod0|auto_generated|divider|divider|StageOut[968]~340\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[935]~312_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\);

-- Location: LCCOMB_X22_Y22_N18
\Mod0|auto_generated|divider|divider|StageOut[968]~276\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\);

-- Location: LCCOMB_X22_Y22_N6
\Mod0|auto_generated|divider|divider|StageOut[967]~341\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[967]~341_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[967]~341_combout\);

-- Location: LCCOMB_X22_Y22_N4
\Mod0|auto_generated|divider|divider|StageOut[967]~277\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[967]~277_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[967]~277_combout\);

-- Location: LCCOMB_X24_Y20_N20
\Mod0|auto_generated|divider|divider|StageOut[966]~253\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\);

-- Location: LCCOMB_X21_Y18_N16
\Mod0|auto_generated|divider|divider|StageOut[966]~317\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[933]~314_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\);

-- Location: LCCOMB_X24_Y20_N6
\Mod0|auto_generated|divider|divider|StageOut[965]~342\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[965]~342_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[965]~342_combout\);

-- Location: LCCOMB_X24_Y20_N12
\Mod0|auto_generated|divider|divider|StageOut[965]~278\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[965]~278_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[965]~278_combout\);

-- Location: LCCOMB_X22_Y20_N16
\Mod0|auto_generated|divider|divider|StageOut[964]~343\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[931]~316_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\);

-- Location: LCCOMB_X22_Y20_N14
\Mod0|auto_generated|divider|divider|StageOut[964]~279\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\);

-- Location: LCCOMB_X22_Y20_N26
\Mod0|auto_generated|divider|divider|StageOut[963]~344\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[930]~348_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\);

-- Location: LCCOMB_X22_Y20_N8
\Mod0|auto_generated|divider|divider|StageOut[963]~280\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\);

-- Location: LCCOMB_X21_Y18_N28
\Mod0|auto_generated|divider|divider|StageOut[962]~349\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[962]~349_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & (\Add2~6_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[962]~349_combout\);

-- Location: LCCOMB_X24_Y21_N22
\Mod0|auto_generated|divider|divider|StageOut[962]~281\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[962]~281_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[962]~281_combout\);

-- Location: LCCOMB_X24_Y22_N18
\Mod0|auto_generated|divider|divider|StageOut[961]~282\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[961]~282_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Add2~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[961]~282_combout\);

-- Location: LCCOMB_X24_Y22_N20
\Mod0|auto_generated|divider|divider|StageOut[961]~283\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[961]~283_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[961]~283_combout\);

-- Location: LCCOMB_X24_Y22_N8
\Mod0|auto_generated|divider|divider|StageOut[960]~285\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[960]~285_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Add2~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[960]~285_combout\);

-- Location: LCCOMB_X24_Y22_N22
\Mod0|auto_generated|divider|divider|StageOut[960]~284\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[960]~284_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Add2~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[960]~284_combout\);

-- Location: LCCOMB_X23_Y20_N0
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[960]~285_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[960]~284_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[960]~285_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[960]~284_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[960]~285_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[960]~284_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\);

-- Location: LCCOMB_X23_Y20_N2
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[961]~282_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[961]~283_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[961]~282_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[961]~283_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[961]~282_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[961]~283_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[961]~282_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[961]~283_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\);

-- Location: LCCOMB_X23_Y20_N4
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[962]~349_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[962]~281_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[962]~349_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[962]~281_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[962]~349_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[962]~281_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[962]~349_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[962]~281_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\);

-- Location: LCCOMB_X23_Y20_N6
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\);

-- Location: LCCOMB_X23_Y20_N8
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\);

-- Location: LCCOMB_X23_Y20_N10
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[965]~342_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[965]~278_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[965]~342_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[965]~278_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[965]~342_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[965]~278_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[965]~342_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[965]~278_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~11\);

-- Location: LCCOMB_X23_Y20_N12
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~13\);

-- Location: LCCOMB_X23_Y20_N14
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~13\ & (((\Mod0|auto_generated|divider|divider|StageOut[967]~341_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[967]~277_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~13\ & (!\Mod0|auto_generated|divider|divider|StageOut[967]~341_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[967]~277_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~15\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[967]~341_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[967]~277_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[967]~341_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[967]~277_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~14_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~15\);

-- Location: LCCOMB_X23_Y20_N16
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~15\ & ((((\Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~15\ & ((\Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~17\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~15\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~16_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~17\);

-- Location: LCCOMB_X23_Y20_N18
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~17\ & (((\Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~17\ & (!\Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~19\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~17\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~18_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~19\);

-- Location: LCCOMB_X23_Y20_N20
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~20_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~19\ & ((((\Mod0|auto_generated|divider|divider|StageOut[970]~274_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[970]~338_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~19\ & ((\Mod0|auto_generated|divider|divider|StageOut[970]~274_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[970]~338_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~21\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[970]~274_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[970]~338_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[970]~274_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[970]~338_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~19\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~20_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~21\);

-- Location: LCCOMB_X23_Y20_N22
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~22_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~21\ & (((\Mod0|auto_generated|divider|divider|StageOut[971]~337_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[971]~273_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~21\ & (!\Mod0|auto_generated|divider|divider|StageOut[971]~337_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[971]~273_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~23\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[971]~337_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[971]~273_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[971]~337_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[971]~273_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~21\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~22_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~23\);

-- Location: LCCOMB_X23_Y20_N24
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~23\ & ((((\Mod0|auto_generated|divider|divider|StageOut[972]~336_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[972]~272_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~23\ & ((\Mod0|auto_generated|divider|divider|StageOut[972]~336_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[972]~272_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~25\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[972]~336_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[972]~272_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[972]~336_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[972]~272_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~23\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~24_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~25\);

-- Location: LCCOMB_X23_Y20_N26
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~26_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~25\ & (((\Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~25\ & (!\Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~27\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~25\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~26_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~27\);

-- Location: LCCOMB_X23_Y20_N28
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~28_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~27\ & ((((\Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~27\ & ((\Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~29\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~27\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~28_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~29\);

-- Location: LCCOMB_X23_Y20_N30
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~30_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~29\ & (((\Mod0|auto_generated|divider|divider|StageOut[975]~269_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[975]~333_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~29\ & (!\Mod0|auto_generated|divider|divider|StageOut[975]~269_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[975]~333_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~31\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[975]~269_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[975]~333_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[975]~269_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[975]~333_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~29\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~30_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~31\);

-- Location: LCCOMB_X23_Y19_N0
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~32_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~31\ & ((((\Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~31\ & ((\Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~33\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~31\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~32_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~33\);

-- Location: LCCOMB_X23_Y19_N2
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~34_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~33\ & (((\Mod0|auto_generated|divider|divider|StageOut[977]~331_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[977]~267_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~33\ & (!\Mod0|auto_generated|divider|divider|StageOut[977]~331_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[977]~267_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~35\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[977]~331_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[977]~267_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~33\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[977]~331_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[977]~267_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~33\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~34_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~35\);

-- Location: LCCOMB_X23_Y19_N4
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~36_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~35\ & ((((\Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~35\ & ((\Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~37\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~35\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~36_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~37\);

-- Location: LCCOMB_X23_Y19_N6
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~38_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~37\ & (((\Mod0|auto_generated|divider|divider|StageOut[979]~265_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~37\ & (!\Mod0|auto_generated|divider|divider|StageOut[979]~265_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~39\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[979]~265_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[979]~265_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~37\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~38_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~39\);

-- Location: LCCOMB_X23_Y19_N8
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~39\ & ((((\Mod0|auto_generated|divider|divider|StageOut[980]~328_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[980]~264_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~39\ & ((\Mod0|auto_generated|divider|divider|StageOut[980]~328_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[980]~264_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~41\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[980]~328_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[980]~264_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[980]~328_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[980]~264_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~39\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~40_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~41\);

-- Location: LCCOMB_X23_Y19_N10
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~41\ & (((\Mod0|auto_generated|divider|divider|StageOut[981]~327_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[981]~263_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~41\ & (!\Mod0|auto_generated|divider|divider|StageOut[981]~327_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[981]~263_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~43\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[981]~327_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[981]~263_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~41\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[981]~327_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[981]~263_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~41\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~42_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~43\);

-- Location: LCCOMB_X23_Y19_N12
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~43\ & ((((\Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~43\ & ((\Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~45\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~43\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~44_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~45\);

-- Location: LCCOMB_X23_Y19_N14
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~45\ & (((\Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~45\ & (!\Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~47\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~45\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~46_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~47\);

-- Location: LCCOMB_X23_Y19_N16
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~47\ & ((((\Mod0|auto_generated|divider|divider|StageOut[984]~324_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[984]~260_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~47\ & ((\Mod0|auto_generated|divider|divider|StageOut[984]~324_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[984]~260_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~49\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[984]~324_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[984]~260_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[984]~324_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[984]~260_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~47\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~48_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~49\);

-- Location: LCCOMB_X23_Y19_N18
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~49\ & (((\Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~49\ & (!\Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~51\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~49\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~50_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~51\);

-- Location: LCCOMB_X23_Y19_N20
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~52_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~51\ & ((((\Mod0|auto_generated|divider|divider|StageOut[986]~322_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[986]~258_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~51\ & ((\Mod0|auto_generated|divider|divider|StageOut[986]~322_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[986]~258_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~53\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[986]~322_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[986]~258_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[986]~322_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[986]~258_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~51\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~52_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~53\);

-- Location: LCCOMB_X23_Y19_N22
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~54_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~53\ & (((\Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~53\ & (!\Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~55\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~53\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~53\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~54_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~55\);

-- Location: LCCOMB_X23_Y19_N24
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~55\ & ((((\Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~55\ & ((\Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~57\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~55\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~56_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~57\);

-- Location: LCCOMB_X23_Y19_N26
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~57\ & (((\Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~57\ & (!\Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~59\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~57\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~58_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~59\);

-- Location: LCCOMB_X23_Y19_N28
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~60_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~59\ & ((((\Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[990]~254_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~59\ & ((\Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[990]~254_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~61\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[990]~254_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[990]~254_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~59\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~60_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~61\);

-- Location: LCCOMB_X23_Y19_N30
\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~61\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\);

-- Location: LCCOMB_X24_Y22_N26
\HEX0number[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[2]~21_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (\Add2~4_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	combout => \HEX0number[2]~21_combout\);

-- Location: LCCOMB_X23_Y25_N16
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\KEY[2]~input_o\ & (\KEY[0]~input_o\ $ (\KEY[1]~input_o\))) # (!\KEY[2]~input_o\ & (\KEY[0]~input_o\ & \KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X24_Y22_N12
\HEX0number[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[2]~22_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & ((\HEX0number[2]~21_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~2_combout\))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[2]~2_combout\,
	datac => \HEX0number[2]~21_combout\,
	datad => \process_0~0_combout\,
	combout => \HEX0number[2]~22_combout\);

-- Location: LCCOMB_X23_Y25_N10
\HEX0number[0]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[0]~25_combout\ = (\Add2~0_combout\) # ((\KEY[2]~input_o\ & (\KEY[1]~input_o\ $ (!\KEY[0]~input_o\))) # (!\KEY[2]~input_o\ & ((!\KEY[0]~input_o\) # (!\KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \Add2~0_combout\,
	combout => \HEX0number[0]~25_combout\);

-- Location: LCCOMB_X22_Y21_N20
\HEX0number[20]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[20]~24_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ 
-- & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[979]~329_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[19]~36_combout\,
	combout => \HEX0number[20]~24_combout\);

-- Location: LCCOMB_X23_Y18_N12
\Digit0|Equal0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~21_combout\ = (!\HEX0number[20]~24_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[20]~24_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[978]~266_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[978]~330_combout\,
	combout => \Digit0|Equal0~21_combout\);

-- Location: LCCOMB_X21_Y18_N26
\HEX0number[25]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[25]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[24]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[951]~227_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[951]~296_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \HEX0number[25]~10_combout\);

-- Location: LCCOMB_X23_Y18_N18
\Digit0|Equal0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~19_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\ & (!\HEX0number[25]~10_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[983]~325_combout\,
	datab => \HEX0number[25]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[983]~261_combout\,
	combout => \Digit0|Equal0~19_combout\);

-- Location: LCCOMB_X22_Y18_N18
\HEX0number[22]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[22]~11_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[948]~230_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[21]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[948]~299_combout\,
	combout => \HEX0number[22]~11_combout\);

-- Location: LCCOMB_X22_Y18_N28
\Digit0|Equal0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~20_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\ & (!\HEX0number[22]~11_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[982]~262_combout\,
	datab => \HEX0number[22]~11_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[982]~326_combout\,
	combout => \Digit0|Equal0~20_combout\);

-- Location: LCCOMB_X23_Y18_N30
\HEX0number[27]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[27]~9_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[953]~294_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[953]~225_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[26]~50_combout\,
	combout => \HEX0number[27]~9_combout\);

-- Location: LCCOMB_X23_Y18_N24
\Digit0|Equal0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~18_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\ & (!\HEX0number[27]~9_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[985]~259_combout\,
	datab => \HEX0number[27]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[985]~323_combout\,
	combout => \Digit0|Equal0~18_combout\);

-- Location: LCCOMB_X23_Y18_N22
\Digit0|Equal0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~22_combout\ = (\Digit0|Equal0~21_combout\ & (\Digit0|Equal0~19_combout\ & (\Digit0|Equal0~20_combout\ & \Digit0|Equal0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|Equal0~21_combout\,
	datab => \Digit0|Equal0~19_combout\,
	datac => \Digit0|Equal0~20_combout\,
	datad => \Digit0|Equal0~18_combout\,
	combout => \Digit0|Equal0~22_combout\);

-- Location: LCCOMB_X20_Y22_N2
\HEX0number[11]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[11]~16_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[937]~241_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[937]~310_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[10]~18_combout\,
	combout => \HEX0number[11]~16_combout\);

-- Location: LCCOMB_X20_Y22_N8
\HEX0number[12]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[12]~15_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[11]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[938]~309_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[938]~240_combout\,
	combout => \HEX0number[12]~15_combout\);

-- Location: LCCOMB_X21_Y22_N10
\HEX0number[13]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[13]~14_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[939]~239_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[12]~22_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[939]~308_combout\,
	combout => \HEX0number[13]~14_combout\);

-- Location: LCCOMB_X21_Y22_N28
\Digit0|Equal0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~25_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\ & !\HEX0number[13]~14_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[973]~271_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[973]~335_combout\,
	datad => \HEX0number[13]~14_combout\,
	combout => \Digit0|Equal0~25_combout\);

-- Location: LCCOMB_X20_Y22_N4
\Digit0|Equal0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~26_combout\ = (\Digit0|Equal0~25_combout\ & (((!\HEX0number[11]~16_combout\ & !\HEX0number[12]~15_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \HEX0number[11]~16_combout\,
	datac => \HEX0number[12]~15_combout\,
	datad => \Digit0|Equal0~25_combout\,
	combout => \Digit0|Equal0~26_combout\);

-- Location: LCCOMB_X22_Y22_N22
\HEX0number[8]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[8]~17_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[934]~244_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[934]~313_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	combout => \HEX0number[8]~17_combout\);

-- Location: LCCOMB_X22_Y22_N16
\Digit0|Equal0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~27_combout\ = ((!\HEX0number[8]~17_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[8]~17_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[968]~276_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[968]~340_combout\,
	combout => \Digit0|Equal0~27_combout\);

-- Location: LCCOMB_X22_Y22_N2
\Digit0|Equal0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~28_combout\ = (\Digit0|Equal0~27_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[969]~275_combout\,
	datab => \Digit0|Equal0~27_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[969]~339_combout\,
	combout => \Digit0|Equal0~28_combout\);

-- Location: LCCOMB_X22_Y21_N8
\HEX0number[16]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[16]~13_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[942]~305_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[15]~28_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[942]~236_combout\,
	combout => \HEX0number[16]~13_combout\);

-- Location: LCCOMB_X22_Y21_N2
\Digit0|Equal0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~24_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\ & (!\HEX0number[16]~13_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[974]~270_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datac => \HEX0number[16]~13_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[974]~334_combout\,
	combout => \Digit0|Equal0~24_combout\);

-- Location: LCCOMB_X24_Y21_N24
\HEX0number[18]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[18]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[17]~32_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[944]~303_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[944]~234_combout\,
	combout => \HEX0number[18]~12_combout\);

-- Location: LCCOMB_X24_Y21_N26
\Digit0|Equal0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~23_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\ & !\HEX0number[18]~12_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[976]~268_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[976]~332_combout\,
	datad => \HEX0number[18]~12_combout\,
	combout => \Digit0|Equal0~23_combout\);

-- Location: LCCOMB_X24_Y22_N2
\Digit0|Equal0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~29_combout\ = (\Digit0|Equal0~26_combout\ & (\Digit0|Equal0~28_combout\ & (\Digit0|Equal0~24_combout\ & \Digit0|Equal0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|Equal0~26_combout\,
	datab => \Digit0|Equal0~28_combout\,
	datac => \Digit0|Equal0~24_combout\,
	datad => \Digit0|Equal0~23_combout\,
	combout => \Digit0|Equal0~29_combout\);

-- Location: LCCOMB_X24_Y20_N14
\HEX0number[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[6]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[932]~315_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[932]~246_combout\,
	combout => \HEX0number[6]~7_combout\);

-- Location: LCCOMB_X24_Y20_N30
\Digit0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~0_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\ & (!\HEX0number[6]~7_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[966]~317_combout\,
	datab => \HEX0number[6]~7_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[966]~253_combout\,
	combout => \Digit0|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N10
\HEX0number[21]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[21]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[947]~300_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[947]~231_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[20]~38_combout\,
	combout => \HEX0number[21]~8_combout\);

-- Location: LCCOMB_X22_Y19_N6
\Digit0|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~52_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~56_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[27]~52_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[29]~56_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[28]~54_combout\,
	combout => \Digit0|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y19_N28
\Digit0|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~3_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~60_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~40_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[31]~60_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[21]~40_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[30]~58_combout\,
	combout => \Digit0|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y19_N30
\HEX0number[31]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[31]~23_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ 
-- & \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[30]~58_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[990]~318_combout\,
	combout => \HEX0number[31]~23_combout\);

-- Location: LCCOMB_X22_Y19_N8
\Digit0|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~5_combout\ = (\Digit0|Equal0~4_combout\ & (\Digit0|Equal0~3_combout\ & (!\HEX0number[31]~23_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|Equal0~4_combout\,
	datab => \Digit0|Equal0~3_combout\,
	datac => \HEX0number[31]~23_combout\,
	datad => \process_0~0_combout\,
	combout => \Digit0|Equal0~5_combout\);

-- Location: LCCOMB_X24_Y19_N12
\Digit0|Equal0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~34_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~36_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[18]~34_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[19]~36_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[17]~32_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	combout => \Digit0|Equal0~8_combout\);

-- Location: LCCOMB_X24_Y19_N2
\Digit0|Equal0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~44_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~38_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[23]~44_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[20]~38_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[22]~42_combout\,
	combout => \Digit0|Equal0~7_combout\);

-- Location: LCCOMB_X24_Y19_N30
\Digit0|Equal0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~9_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~26_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~28_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[14]~26_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[15]~28_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[16]~30_combout\,
	combout => \Digit0|Equal0~9_combout\);

-- Location: LCCOMB_X24_Y19_N0
\Digit0|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~46_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~50_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[24]~46_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[26]~50_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[25]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	combout => \Digit0|Equal0~6_combout\);

-- Location: LCCOMB_X24_Y19_N24
\Digit0|Equal0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~10_combout\ = (\Digit0|Equal0~8_combout\ & (\Digit0|Equal0~7_combout\ & (\Digit0|Equal0~9_combout\ & \Digit0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|Equal0~8_combout\,
	datab => \Digit0|Equal0~7_combout\,
	datac => \Digit0|Equal0~9_combout\,
	datad => \Digit0|Equal0~6_combout\,
	combout => \Digit0|Equal0~10_combout\);

-- Location: LCCOMB_X22_Y19_N20
\Digit0|Equal0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~11_combout\ = (\Digit0|Equal0~5_combout\ & (\Digit0|Equal0~10_combout\ & ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # (!\HEX0number[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[21]~8_combout\,
	datab => \Digit0|Equal0~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Digit0|Equal0~10_combout\,
	combout => \Digit0|Equal0~11_combout\);

-- Location: LCCOMB_X22_Y20_N2
\Digit0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[963]~344_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[989]~255_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[963]~280_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[964]~343_combout\,
	combout => \Digit0|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y20_N12
\Digit0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~2_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\ & !\Digit0|Equal0~1_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[989]~319_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[964]~279_combout\,
	datad => \Digit0|Equal0~1_combout\,
	combout => \Digit0|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y20_N4
\Digit0|Equal0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~14_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[987]~257_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[988]~256_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[987]~321_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[988]~320_combout\,
	combout => \Digit0|Equal0~14_combout\);

-- Location: LCCOMB_X24_Y20_N22
\Digit0|Equal0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~15_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~12_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~6_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\,
	combout => \Digit0|Equal0~15_combout\);

-- Location: LCCOMB_X24_Y20_N24
\Digit0|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~14_combout\) # ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~24_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~16_combout\) # (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[8]~14_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[13]~24_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[9]~16_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[12]~22_combout\,
	combout => \Digit0|Equal0~12_combout\);

-- Location: LCCOMB_X24_Y20_N18
\Digit0|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~13_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~20_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~18_combout\ & !\Digit0|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[11]~20_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[10]~18_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datad => \Digit0|Equal0~12_combout\,
	combout => \Digit0|Equal0~13_combout\);

-- Location: LCCOMB_X24_Y20_N16
\Digit0|Equal0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~16_combout\ = (\Digit0|Equal0~13_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & (!\Digit0|Equal0~14_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & 
-- ((!\Digit0|Equal0~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \Digit0|Equal0~14_combout\,
	datac => \Digit0|Equal0~15_combout\,
	datad => \Digit0|Equal0~13_combout\,
	combout => \Digit0|Equal0~16_combout\);

-- Location: LCCOMB_X24_Y20_N2
\Digit0|Equal0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~17_combout\ = (\Digit0|Equal0~0_combout\ & (\Digit0|Equal0~11_combout\ & (\Digit0|Equal0~2_combout\ & \Digit0|Equal0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|Equal0~0_combout\,
	datab => \Digit0|Equal0~11_combout\,
	datac => \Digit0|Equal0~2_combout\,
	datad => \Digit0|Equal0~16_combout\,
	combout => \Digit0|Equal0~17_combout\);

-- Location: LCCOMB_X23_Y22_N0
\HEX0number[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[3]~18_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[31]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[929]~249_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[929]~250_combout\,
	combout => \HEX0number[3]~18_combout\);

-- Location: LCCOMB_X24_Y22_N28
\HEX0number[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[3]~19_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & (\HEX0number[3]~18_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~4_combout\)))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \process_0~0_combout\,
	datac => \HEX0number[3]~18_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[3]~4_combout\,
	combout => \HEX0number[3]~19_combout\);

-- Location: LCCOMB_X24_Y22_N14
\Digit0|Equal0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~30_combout\ = (\Digit0|Equal0~22_combout\ & (\Digit0|Equal0~29_combout\ & (\Digit0|Equal0~17_combout\ & !\HEX0number[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|Equal0~22_combout\,
	datab => \Digit0|Equal0~29_combout\,
	datac => \Digit0|Equal0~17_combout\,
	datad => \HEX0number[3]~19_combout\,
	combout => \Digit0|Equal0~30_combout\);

-- Location: LCCOMB_X24_Y22_N0
\HEX0number[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX0number[1]~20_combout\ = ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & (\Add2~2_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~0_combout\)))) # (!\process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[32]~62_combout\,
	datab => \Add2~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_31_result_int[1]~0_combout\,
	datad => \process_0~0_combout\,
	combout => \HEX0number[1]~20_combout\);

-- Location: LCCOMB_X24_Y25_N12
\Digit0|WideNor0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideNor0~8_combout\ = (\Digit0|Equal0~30_combout\ & ((\HEX0number[0]~25_combout\ & ((!\HEX0number[2]~22_combout\))) # (!\HEX0number[0]~25_combout\ & (!\HEX0number[1]~20_combout\ & \HEX0number[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[0]~25_combout\,
	datab => \Digit0|Equal0~30_combout\,
	datac => \HEX0number[1]~20_combout\,
	datad => \HEX0number[2]~22_combout\,
	combout => \Digit0|WideNor0~8_combout\);

-- Location: LCCOMB_X24_Y25_N18
\Digit0|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr2~2_combout\ = ((\HEX0number[1]~20_combout\ $ (\HEX0number[2]~22_combout\)) # (!\Digit0|Equal0~30_combout\)) # (!\HEX0number[0]~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[0]~25_combout\,
	datab => \Digit0|Equal0~30_combout\,
	datac => \HEX0number[1]~20_combout\,
	datad => \HEX0number[2]~22_combout\,
	combout => \Digit0|WideOr2~2_combout\);

-- Location: LCCOMB_X24_Y22_N6
\Digit0|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal7~0_combout\ = (!\HEX0number[2]~22_combout\ & (\HEX0number[3]~19_combout\ & !\HEX0number[1]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[2]~22_combout\,
	datab => \HEX0number[3]~19_combout\,
	datad => \HEX0number[1]~20_combout\,
	combout => \Digit0|Equal7~0_combout\);

-- Location: LCCOMB_X24_Y22_N16
\Digit0|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal7~1_combout\ = (\Digit0|Equal7~0_combout\ & (\Digit0|Equal0~22_combout\ & (\Digit0|Equal0~17_combout\ & \Digit0|Equal0~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|Equal7~0_combout\,
	datab => \Digit0|Equal0~22_combout\,
	datac => \Digit0|Equal0~17_combout\,
	datad => \Digit0|Equal0~29_combout\,
	combout => \Digit0|Equal7~1_combout\);

-- Location: LCCOMB_X24_Y25_N30
\Digit0|WideNor0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideNor0~12_combout\ = (\HEX0number[0]~25_combout\ & ((\Digit0|Equal7~1_combout\) # ((\Digit0|Equal0~30_combout\ & \HEX0number[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[0]~25_combout\,
	datab => \Digit0|Equal0~30_combout\,
	datac => \Digit0|Equal7~1_combout\,
	datad => \HEX0number[2]~22_combout\,
	combout => \Digit0|WideNor0~12_combout\);

-- Location: LCCOMB_X24_Y25_N14
\Digit0|WideNor0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideNor0~9_combout\ = (\HEX0number[0]~25_combout\) # (((!\HEX0number[1]~20_combout\ & \HEX0number[2]~22_combout\)) # (!\Digit0|Equal0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[0]~25_combout\,
	datab => \Digit0|Equal0~30_combout\,
	datac => \HEX0number[1]~20_combout\,
	datad => \HEX0number[2]~22_combout\,
	combout => \Digit0|WideNor0~9_combout\);

-- Location: LCCOMB_X24_Y25_N0
\Digit0|WideNor0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideNor0~10_combout\ = (\Digit0|WideNor0~9_combout\ & ((\HEX0number[0]~25_combout\) # (!\Digit0|Equal7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[0]~25_combout\,
	datab => \Digit0|WideNor0~9_combout\,
	datac => \Digit0|Equal7~1_combout\,
	combout => \Digit0|WideNor0~10_combout\);

-- Location: LCCOMB_X24_Y25_N2
\Digit0|WideOr2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr2~3_combout\ = (\Digit0|WideOr2~2_combout\ & ((\Digit0|WideNor0~8_combout\) # ((\Digit0|WideNor0~12_combout\) # (!\Digit0|WideNor0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|WideNor0~8_combout\,
	datab => \Digit0|WideOr2~2_combout\,
	datac => \Digit0|WideNor0~12_combout\,
	datad => \Digit0|WideNor0~10_combout\,
	combout => \Digit0|WideOr2~3_combout\);

-- Location: LCCOMB_X24_Y25_N8
\Digit0|Equal0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal0~31_combout\ = (\Digit0|Equal0~30_combout\ & !\HEX0number[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Digit0|Equal0~30_combout\,
	datac => \HEX0number[1]~20_combout\,
	combout => \Digit0|Equal0~31_combout\);

-- Location: LCCOMB_X24_Y25_N4
\Digit0|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr5~combout\ = ((!\HEX0number[2]~22_combout\ & (\Digit0|Equal0~31_combout\ & !\HEX0number[0]~25_combout\))) # (!\Digit0|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[2]~22_combout\,
	datab => \Digit0|WideOr2~3_combout\,
	datac => \Digit0|Equal0~31_combout\,
	datad => \HEX0number[0]~25_combout\,
	combout => \Digit0|WideOr5~combout\);

-- Location: LCCOMB_X24_Y25_N26
\Digit0|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr4~combout\ = ((!\HEX0number[2]~22_combout\ & (\Digit0|Equal0~30_combout\ & \HEX0number[1]~20_combout\))) # (!\Digit0|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[2]~22_combout\,
	datab => \Digit0|Equal0~30_combout\,
	datac => \HEX0number[1]~20_combout\,
	datad => \Digit0|WideOr2~3_combout\,
	combout => \Digit0|WideOr4~combout\);

-- Location: LCCOMB_X24_Y25_N20
\Digit0|WideOr2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr2~4_combout\ = (\HEX0number[0]~25_combout\ & (((\Digit0|Equal7~1_combout\)))) # (!\HEX0number[0]~25_combout\ & (\Digit0|Equal0~31_combout\ & ((\HEX0number[2]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[0]~25_combout\,
	datab => \Digit0|Equal0~31_combout\,
	datac => \Digit0|Equal7~1_combout\,
	datad => \HEX0number[2]~22_combout\,
	combout => \Digit0|WideOr2~4_combout\);

-- Location: LCCOMB_X27_Y28_N0
\Digit0|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr2~combout\ = (\Digit0|WideOr2~4_combout\) # (!\Digit0|WideOr2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Digit0|WideOr2~4_combout\,
	datad => \Digit0|WideOr2~3_combout\,
	combout => \Digit0|WideOr2~combout\);

-- Location: LCCOMB_X24_Y25_N24
\Digit0|WideNor0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideNor0~11_combout\ = (\Digit0|WideNor0~8_combout\) # ((\Digit0|WideNor0~12_combout\) # (!\Digit0|WideNor0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|WideNor0~8_combout\,
	datac => \Digit0|WideNor0~12_combout\,
	datad => \Digit0|WideNor0~10_combout\,
	combout => \Digit0|WideNor0~11_combout\);

-- Location: LCCOMB_X24_Y25_N6
\Digit0|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|Equal1~0_combout\ = (\Digit0|Equal0~30_combout\ & \HEX0number[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Digit0|Equal0~30_combout\,
	datac => \HEX0number[1]~20_combout\,
	combout => \Digit0|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y25_N10
\Digit0|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|HEX\(2) = ((!\HEX0number[2]~22_combout\ & (\Digit0|Equal1~0_combout\ & !\HEX0number[0]~25_combout\))) # (!\Digit0|WideNor0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[2]~22_combout\,
	datab => \Digit0|WideNor0~11_combout\,
	datac => \Digit0|Equal1~0_combout\,
	datad => \HEX0number[0]~25_combout\,
	combout => \Digit0|HEX\(2));

-- Location: LCCOMB_X24_Y25_N28
\Digit0|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr1~0_combout\ = (\Digit0|Equal0~30_combout\ & (\HEX0number[2]~22_combout\ & (\HEX0number[0]~25_combout\ $ (\HEX0number[1]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[0]~25_combout\,
	datab => \Digit0|Equal0~30_combout\,
	datac => \HEX0number[1]~20_combout\,
	datad => \HEX0number[2]~22_combout\,
	combout => \Digit0|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y25_N22
\Digit0|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr1~combout\ = (\Digit0|WideOr1~0_combout\) # ((!\Digit0|WideNor0~8_combout\ & (!\Digit0|WideNor0~12_combout\ & \Digit0|WideNor0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit0|WideNor0~8_combout\,
	datab => \Digit0|WideOr1~0_combout\,
	datac => \Digit0|WideNor0~12_combout\,
	datad => \Digit0|WideNor0~10_combout\,
	combout => \Digit0|WideOr1~combout\);

-- Location: LCCOMB_X24_Y25_N16
\Digit0|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit0|WideOr0~combout\ = ((\Digit0|Equal0~31_combout\ & (\HEX0number[2]~22_combout\ $ (\HEX0number[0]~25_combout\)))) # (!\Digit0|WideNor0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX0number[2]~22_combout\,
	datab => \Digit0|WideNor0~11_combout\,
	datac => \Digit0|Equal0~31_combout\,
	datad => \HEX0number[0]~25_combout\,
	combout => \Digit0|WideOr0~combout\);

-- Location: LCCOMB_X22_Y23_N2
\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\ = \Add2~10_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ = CARRY(\Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~10_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\);

-- Location: LCCOMB_X22_Y23_N4
\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\ = (\Add2~12_combout\ & (\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\ & VCC)) # (!\Add2~12_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ = CARRY((!\Add2~12_combout\ & !\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\);

-- Location: LCCOMB_X22_Y23_N6
\Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ = (\Add2~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ $ (GND))) # (!\Add2~14_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\ = CARRY((\Add2~14_combout\ & !\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\);

-- Location: LCCOMB_X22_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\ = CARRY(!\Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_27_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y23_N12
\Div0|auto_generated|divider|divider|StageOut[138]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~37_combout\);

-- Location: LCCOMB_X22_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[138]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[138]~36_combout\ = (\Add2~14_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[138]~36_combout\);

-- Location: LCCOMB_X21_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[137]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~39_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~39_combout\);

-- Location: LCCOMB_X21_Y24_N8
\Div0|auto_generated|divider|divider|StageOut[137]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[137]~38_combout\ = (\Add2~12_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[137]~38_combout\);

-- Location: LCCOMB_X21_Y24_N22
\Div0|auto_generated|divider|divider|StageOut[136]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~41_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~41_combout\);

-- Location: LCCOMB_X21_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[136]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[136]~40_combout\ = (\Add2~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[136]~40_combout\);

-- Location: LCCOMB_X21_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[135]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~43_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~43_combout\);

-- Location: LCCOMB_X21_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[135]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[135]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & \Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Add2~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[135]~42_combout\);

-- Location: LCCOMB_X21_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[135]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[135]~42_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[135]~43_combout\) # (\Div0|auto_generated|divider|divider|StageOut[135]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[135]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[135]~42_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\);

-- Location: LCCOMB_X21_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[136]~41_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[136]~40_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~41_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[136]~40_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[136]~41_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[136]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[136]~41_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[136]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\);

-- Location: LCCOMB_X21_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[137]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[137]~38_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[137]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[137]~38_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[137]~39_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[137]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[137]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[137]~38_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\);

-- Location: LCCOMB_X21_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[138]~37_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[138]~36_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[138]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[138]~36_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\);

-- Location: LCCOMB_X21_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_28_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\);

-- Location: LCCOMB_X21_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[143]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~64_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Add2~12_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~64_combout\);

-- Location: LCCOMB_X21_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[143]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[143]~44_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[143]~44_combout\);

-- Location: LCCOMB_X21_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[142]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~65_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Add2~10_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datab => \Add2~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_27_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~65_combout\);

-- Location: LCCOMB_X22_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[142]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[142]~45_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[142]~45_combout\);

-- Location: LCCOMB_X21_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[141]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~47_combout\);

-- Location: LCCOMB_X21_Y24_N24
\Div0|auto_generated|divider|divider|StageOut[141]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[141]~46_combout\ = (\Add2~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[141]~46_combout\);

-- Location: LCCOMB_X22_Y24_N18
\Div0|auto_generated|divider|divider|StageOut[140]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~48_combout\ = (\Add2~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~48_combout\);

-- Location: LCCOMB_X22_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[140]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[140]~49_combout\ = (\Add2~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[140]~49_combout\);

-- Location: LCCOMB_X22_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[140]~48_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~49_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[140]~48_combout\) # (\Div0|auto_generated|divider|divider|StageOut[140]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[140]~48_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[140]~49_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\);

-- Location: LCCOMB_X22_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[141]~47_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[141]~46_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~47_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[141]~46_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[141]~47_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[141]~46_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[141]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[141]~46_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\);

-- Location: LCCOMB_X22_Y24_N12
\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[142]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~45_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[142]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~45_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[142]~65_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[142]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[142]~65_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~45_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\);

-- Location: LCCOMB_X22_Y24_N14
\Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[143]~64_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[143]~44_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[143]~64_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[143]~44_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\);

-- Location: LCCOMB_X22_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_29_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\);

-- Location: LCCOMB_X22_Y24_N22
\Digit1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|Equal0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & 
-- \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \process_0~0_combout\,
	combout => \Digit1|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y24_N2
\Div0|auto_generated|divider|divider|StageOut[148]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~50_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~50_combout\);

-- Location: LCCOMB_X22_Y24_N4
\Div0|auto_generated|divider|divider|StageOut[148]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[148]~62_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[142]~65_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[142]~65_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[148]~62_combout\);

-- Location: LCCOMB_X23_Y24_N16
\Div0|auto_generated|divider|divider|StageOut[147]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~51_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~51_combout\);

-- Location: LCCOMB_X23_Y24_N14
\Div0|auto_generated|divider|divider|StageOut[147]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[147]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & ((\Add2~8_combout\))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[1]~0_combout\,
	datac => \Add2~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[147]~66_combout\);

-- Location: LCCOMB_X22_Y24_N20
\Div0|auto_generated|divider|divider|StageOut[146]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~52_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datac => \Add2~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~52_combout\);

-- Location: LCCOMB_X22_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[146]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[146]~53_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[146]~53_combout\);

-- Location: LCCOMB_X22_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[145]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~54_combout\ = (\Add2~4_combout\ & \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~54_combout\);

-- Location: LCCOMB_X22_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[145]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[145]~55_combout\ = (\Add2~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[145]~55_combout\);

-- Location: LCCOMB_X23_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[145]~54_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~55_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[145]~54_combout\) # (\Div0|auto_generated|divider|divider|StageOut[145]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[145]~54_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[145]~55_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\);

-- Location: LCCOMB_X23_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[146]~52_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[146]~53_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[146]~52_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[146]~53_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[146]~52_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[146]~53_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[146]~52_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[146]~53_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\);

-- Location: LCCOMB_X23_Y24_N22
\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[147]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~66_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[147]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~66_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~51_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[147]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[147]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~66_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\);

-- Location: LCCOMB_X23_Y24_N24
\Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[148]~50_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[148]~62_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[148]~50_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[148]~62_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y24_N26
\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_30_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y25_N28
\HEX1number[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1number[1]~4_combout\ = ((\KEY[2]~input_o\ & (\KEY[1]~input_o\ $ (!\KEY[0]~input_o\))) # (!\KEY[2]~input_o\ & ((!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))) # (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \HEX1number[1]~4_combout\);

-- Location: LCCOMB_X23_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[153]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~63_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[147]~66_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[2]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[147]~66_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~63_combout\);

-- Location: LCCOMB_X23_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[153]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[153]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_30_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[153]~56_combout\);

-- Location: LCCOMB_X23_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[152]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~57_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~57_combout\);

-- Location: LCCOMB_X22_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[152]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[152]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & (\Add2~6_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datab => \Add2~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[152]~67_combout\);

-- Location: LCCOMB_X23_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[151]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~59_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~59_combout\);

-- Location: LCCOMB_X24_Y22_N10
\Div0|auto_generated|divider|divider|StageOut[151]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[151]~58_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Add2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Add2~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[151]~58_combout\);

-- Location: LCCOMB_X24_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[150]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~60_combout\ = (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~60_combout\);

-- Location: LCCOMB_X24_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[150]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[150]~61_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \Add2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \Add2~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[150]~61_combout\);

-- Location: LCCOMB_X23_Y24_N2
\Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[150]~60_combout\) # (\Div0|auto_generated|divider|divider|StageOut[150]~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[150]~60_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[150]~61_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\);

-- Location: LCCOMB_X23_Y24_N4
\Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[151]~59_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[151]~58_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[151]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[151]~58_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\);

-- Location: LCCOMB_X23_Y24_N6
\Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[152]~57_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[152]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[152]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[152]~67_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\);

-- Location: LCCOMB_X23_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[153]~63_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[153]~56_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[153]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[153]~56_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_31_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y25_N22
\HEX1number[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \HEX1number[0]~5_combout\ = ((\KEY[2]~input_o\ & (\KEY[1]~input_o\ $ (!\KEY[0]~input_o\))) # (!\KEY[2]~input_o\ & ((!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)))) # (!\Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[1]~input_o\,
	datac => \KEY[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\,
	combout => \HEX1number[0]~5_combout\);

-- Location: LCCOMB_X22_Y24_N0
\Digit1|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideNor0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	combout => \Digit1|WideNor0~0_combout\);

-- Location: LCCOMB_X23_Y25_N18
\Digit1|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideNor0~1_combout\ = (\Digit1|WideNor0~0_combout\ & ((\KEY[2]~input_o\ & (\KEY[0]~input_o\ $ (\KEY[1]~input_o\))) # (!\KEY[2]~input_o\ & (\KEY[0]~input_o\ & \KEY[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datab => \KEY[0]~input_o\,
	datac => \Digit1|WideNor0~0_combout\,
	datad => \KEY[1]~input_o\,
	combout => \Digit1|WideNor0~1_combout\);

-- Location: LCCOMB_X23_Y25_N12
\Digit1|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr2~0_combout\ = (\Digit1|WideNor0~1_combout\ & (((\HEX1number[1]~4_combout\) # (!\HEX1number[0]~5_combout\)) # (!\Digit1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|Equal0~0_combout\,
	datab => \HEX1number[1]~4_combout\,
	datac => \HEX1number[0]~5_combout\,
	datad => \Digit1|WideNor0~1_combout\,
	combout => \Digit1|WideOr2~0_combout\);

-- Location: LCCOMB_X22_Y24_N26
\Digit1|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|Equal3~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ 
-- & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datad => \process_0~0_combout\,
	combout => \Digit1|Equal3~0_combout\);

-- Location: LCCOMB_X23_Y25_N30
\Digit1|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr2~1_combout\ = (\Digit1|WideOr2~0_combout\ & (((!\Digit1|Equal3~0_combout\) # (!\HEX1number[0]~5_combout\)) # (!\HEX1number[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|WideOr2~0_combout\,
	datab => \HEX1number[1]~4_combout\,
	datac => \HEX1number[0]~5_combout\,
	datad => \Digit1|Equal3~0_combout\,
	combout => \Digit1|WideOr2~1_combout\);

-- Location: LCCOMB_X23_Y25_N24
\Digit1|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr5~combout\ = ((!\HEX1number[1]~4_combout\ & (!\HEX1number[0]~5_combout\ & \Digit1|Equal0~0_combout\))) # (!\Digit1|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|WideOr2~1_combout\,
	datab => \HEX1number[1]~4_combout\,
	datac => \HEX1number[0]~5_combout\,
	datad => \Digit1|Equal0~0_combout\,
	combout => \Digit1|WideOr5~combout\);

-- Location: LCCOMB_X23_Y25_N2
\Digit1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr4~combout\ = ((\Digit1|Equal0~0_combout\ & \HEX1number[1]~4_combout\)) # (!\Digit1|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|Equal0~0_combout\,
	datab => \HEX1number[1]~4_combout\,
	datac => \Digit1|WideOr2~1_combout\,
	combout => \Digit1|WideOr4~combout\);

-- Location: LCCOMB_X22_Y23_N18
\Digit1|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|Equal7~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\ & \process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_29_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_28_result_int[5]~8_combout\,
	datad => \process_0~0_combout\,
	combout => \Digit1|Equal7~0_combout\);

-- Location: LCCOMB_X22_Y23_N28
\Digit1|Equal7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|Equal7~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\ & (\Digit1|Equal7~0_combout\ & (\Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_27_result_int[5]~8_combout\,
	datab => \Digit1|Equal7~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_30_result_int[5]~8_combout\,
	datad => \process_0~0_combout\,
	combout => \Digit1|Equal7~1_combout\);

-- Location: LCCOMB_X23_Y25_N20
\Digit1|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr3~0_combout\ = (!\HEX1number[0]~5_combout\ & ((\Digit1|Equal0~0_combout\) # ((\Digit1|Equal3~0_combout\ & \HEX1number[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|Equal0~0_combout\,
	datab => \Digit1|Equal3~0_combout\,
	datac => \HEX1number[0]~5_combout\,
	datad => \HEX1number[1]~4_combout\,
	combout => \Digit1|WideOr3~0_combout\);

-- Location: LCCOMB_X23_Y25_N14
\Digit1|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr3~combout\ = (\Digit1|WideOr3~0_combout\) # ((!\HEX1number[0]~5_combout\ & \Digit1|Equal7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \HEX1number[0]~5_combout\,
	datac => \Digit1|Equal7~1_combout\,
	datad => \Digit1|WideOr3~0_combout\,
	combout => \Digit1|WideOr3~combout\);

-- Location: LCCOMB_X23_Y25_N8
\Digit1|Equal3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|Equal3~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\ & (\Digit1|Equal3~0_combout\ & (\process_0~0_combout\ & !\HEX1number[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_31_result_int[5]~8_combout\,
	datab => \Digit1|Equal3~0_combout\,
	datac => \process_0~0_combout\,
	datad => \HEX1number[1]~4_combout\,
	combout => \Digit1|Equal3~1_combout\);

-- Location: LCCOMB_X23_Y25_N26
\Digit1|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr2~2_combout\ = ((\Digit1|Equal3~1_combout\) # ((\HEX1number[0]~5_combout\ & \Digit1|Equal7~1_combout\))) # (!\Digit1|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|WideOr2~1_combout\,
	datab => \Digit1|Equal3~1_combout\,
	datac => \HEX1number[0]~5_combout\,
	datad => \Digit1|Equal7~1_combout\,
	combout => \Digit1|WideOr2~2_combout\);

-- Location: LCCOMB_X23_Y25_N4
\Digit1|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|HEX\(2) = ((\Digit1|Equal0~0_combout\ & (\HEX1number[1]~4_combout\ & !\HEX1number[0]~5_combout\))) # (!\Digit1|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|Equal0~0_combout\,
	datab => \HEX1number[1]~4_combout\,
	datac => \HEX1number[0]~5_combout\,
	datad => \Digit1|WideNor0~1_combout\,
	combout => \Digit1|HEX\(2));

-- Location: LCCOMB_X23_Y25_N6
\Digit1|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr1~combout\ = ((\Digit1|Equal3~0_combout\ & (\HEX1number[1]~4_combout\ $ (\HEX1number[0]~5_combout\)))) # (!\Digit1|WideNor0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Digit1|Equal3~0_combout\,
	datab => \HEX1number[1]~4_combout\,
	datac => \HEX1number[0]~5_combout\,
	datad => \Digit1|WideNor0~1_combout\,
	combout => \Digit1|WideOr1~combout\);

-- Location: LCCOMB_X23_Y25_N0
\Digit1|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Digit1|WideOr0~0_combout\ = (!\Digit1|Equal3~1_combout\ & \Digit1|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Digit1|Equal3~1_combout\,
	datad => \Digit1|WideOr2~0_combout\,
	combout => \Digit1|WideOr0~0_combout\);

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

ww_LEDG(9) <= \LEDG[9]~output_o\;
END structure;


