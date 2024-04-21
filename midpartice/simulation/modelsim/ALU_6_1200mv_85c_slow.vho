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

-- DATE "04/17/2024 12:44:29"

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

ENTITY 	ALU IS
    PORT (
	KEY : IN std_logic_vector(2 DOWNTO 1);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDG : OUT std_logic_vector(9 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
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
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~1\ : std_logic;
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
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \lastB[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \lastA[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \lastA[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \lastA[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \sum[1]~3_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \lastA[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \lastA[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \lastA[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \lastA[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \lastA[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \sum~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[4]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~13\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~14_combout\ : std_logic;
SIGNAL \sum~16_combout\ : std_logic;
SIGNAL \sum~18_combout\ : std_logic;
SIGNAL \lastB[7]~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \sum~14_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[6]~5_combout\ : std_logic;
SIGNAL \sum~15_combout\ : std_logic;
SIGNAL \lastB[6]~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \sum~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[5]~4_combout\ : std_logic;
SIGNAL \sum~13_combout\ : std_logic;
SIGNAL \lastB[5]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \sum~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[4]~3_combout\ : std_logic;
SIGNAL \sum~11_combout\ : std_logic;
SIGNAL \lastB[4]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \sum~8_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~2_combout\ : std_logic;
SIGNAL \sum~9_combout\ : std_logic;
SIGNAL \lastB[3]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \sum~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[2]~1_combout\ : std_logic;
SIGNAL \sum~7_combout\ : std_logic;
SIGNAL \lastB[2]~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \sum~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sum~5_combout\ : std_logic;
SIGNAL \lastB[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \sum~0_combout\ : std_logic;
SIGNAL \sum~1_combout\ : std_logic;
SIGNAL \sum~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \sum~22_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \sum~19_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \sum~20_combout\ : std_logic;
SIGNAL \sum~21_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \process_0~14_combout\ : std_logic;
SIGNAL \process_0~15_combout\ : std_logic;
SIGNAL \process_0~16_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~13_combout\ : std_logic;
SIGNAL \process_0~17_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~19_combout\ : std_logic;
SIGNAL \process_0~20_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~18_combout\ : std_logic;
SIGNAL \LEDG[9]~reg0_q\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|sel\ : std_logic_vector(71 DOWNTO 0);
SIGNAL sum : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\Mult0|auto_generated|mac_mult1~DATAOUT15\ & \Mult0|auto_generated|mac_mult1~DATAOUT14\ & \Mult0|auto_generated|mac_mult1~DATAOUT13\ & \Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT11\ & \Mult0|auto_generated|mac_mult1~DATAOUT10\ & \Mult0|auto_generated|mac_mult1~DATAOUT9\ & \Mult0|auto_generated|mac_mult1~DATAOUT8\ & \Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT6\ & \Mult0|auto_generated|mac_mult1~DATAOUT5\ & \Mult0|auto_generated|mac_mult1~DATAOUT4\ & \Mult0|auto_generated|mac_mult1~DATAOUT3\ & \Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\Mult0|auto_generated|mac_mult1~DATAOUT1\ & \Mult0|auto_generated|mac_mult1~dataout\ & \Mult0|auto_generated|mac_mult1~1\ & \Mult0|auto_generated|mac_mult1~0\);

\Mult0|auto_generated|mac_out2~0\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_out2~1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_out2~dataout\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_out2~DATAOUT1\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_out2~DATAOUT2\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_out2~DATAOUT3\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_out2~DATAOUT4\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_out2~DATAOUT5\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_out2~DATAOUT6\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_out2~DATAOUT7\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_out2~DATAOUT8\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_out2~DATAOUT9\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_out2~DATAOUT10\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_out2~DATAOUT11\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_out2~DATAOUT12\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_out2~DATAOUT13\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_out2~DATAOUT14\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_out2~DATAOUT15\ <= \Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\lastB[7]~1_combout\ & \lastB[6]~7_combout\ & \lastB[5]~6_combout\ & \lastB[4]~5_combout\ & \lastB[3]~4_combout\ & \lastB[2]~3_combout\ & \lastB[1]~2_combout\ & \lastB[0]~0_combout\ & gnd);

\Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\ & \SW[4]~input_o\ & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\ & gnd);

\Mult0|auto_generated|mac_mult1~0\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\Mult0|auto_generated|mac_mult1~1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\Mult0|auto_generated|mac_mult1~dataout\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sum(0),
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
	i => sum(1),
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
	i => sum(2),
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
	i => sum(3),
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
	i => sum(4),
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
	i => sum(5),
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
	i => sum(6),
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
	i => sum(7),
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
	i => GND,
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
	i => \LEDG[9]~reg0_q\,
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

-- Location: LCCOMB_X8_Y24_N24
\lastB[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[0]~0_combout\ = (sum(0) & \KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum(0),
	datac => \KEY[1]~input_o\,
	combout => \lastB[0]~0_combout\);

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

-- Location: FF_X10_Y24_N29
\lastA[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[0]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X12_Y24_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\lastB[0]~0_combout\ & ((GND) # (!\lastA[0]~_Duplicate_1_q\))) # (!\lastB[0]~0_combout\ & (\lastA[0]~_Duplicate_1_q\ $ (GND)))
-- \Add1~1\ = CARRY((\lastB[0]~0_combout\) # (!\lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[0]~0_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X10_Y24_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\lastB[0]~0_combout\ & (\lastA[0]~_Duplicate_1_q\ $ (VCC))) # (!\lastB[0]~0_combout\ & (\lastA[0]~_Duplicate_1_q\ & VCC))
-- \Add0~1\ = CARRY((\lastB[0]~0_combout\ & \lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[0]~0_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

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

-- Location: FF_X10_Y24_N25
\lastA[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[1]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[1]~_Duplicate_1_q\);

-- Location: LCCOMB_X12_Y24_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\lastB[1]~2_combout\ & ((\lastA[1]~_Duplicate_1_q\ & (!\Add1~1\)) # (!\lastA[1]~_Duplicate_1_q\ & (\Add1~1\ & VCC)))) # (!\lastB[1]~2_combout\ & ((\lastA[1]~_Duplicate_1_q\ & ((\Add1~1\) # (GND))) # (!\lastA[1]~_Duplicate_1_q\ & 
-- (!\Add1~1\))))
-- \Add1~3\ = CARRY((\lastB[1]~2_combout\ & (\lastA[1]~_Duplicate_1_q\ & !\Add1~1\)) # (!\lastB[1]~2_combout\ & ((\lastA[1]~_Duplicate_1_q\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[1]~2_combout\,
	datab => \lastA[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

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

-- Location: FF_X10_Y24_N1
\lastA[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[2]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[2]~_Duplicate_1_q\);

-- Location: LCCOMB_X10_Y24_N6
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\lastA[1]~_Duplicate_1_q\ & ((\lastB[1]~2_combout\ & (\Add0~1\ & VCC)) # (!\lastB[1]~2_combout\ & (!\Add0~1\)))) # (!\lastA[1]~_Duplicate_1_q\ & ((\lastB[1]~2_combout\ & (!\Add0~1\)) # (!\lastB[1]~2_combout\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\lastA[1]~_Duplicate_1_q\ & (!\lastB[1]~2_combout\ & !\Add0~1\)) # (!\lastA[1]~_Duplicate_1_q\ & ((!\Add0~1\) # (!\lastB[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[1]~_Duplicate_1_q\,
	datab => \lastB[1]~2_combout\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X10_Y24_N8
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\lastA[2]~_Duplicate_1_q\ $ (\lastB[2]~3_combout\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\lastA[2]~_Duplicate_1_q\ & ((\lastB[2]~3_combout\) # (!\Add0~3\))) # (!\lastA[2]~_Duplicate_1_q\ & (\lastB[2]~3_combout\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[2]~_Duplicate_1_q\,
	datab => \lastB[2]~3_combout\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

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

-- Location: LCCOMB_X7_Y23_N2
\sum[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum[1]~3_combout\ = \SW[9]~input_o\ $ (!\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \sum[1]~3_combout\);

-- Location: LCCOMB_X12_Y24_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\lastA[2]~_Duplicate_1_q\ $ (\lastB[2]~3_combout\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\lastA[2]~_Duplicate_1_q\ & (\lastB[2]~3_combout\ & !\Add1~3\)) # (!\lastA[2]~_Duplicate_1_q\ & ((\lastB[2]~3_combout\) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[2]~_Duplicate_1_q\,
	datab => \lastB[2]~3_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

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

-- Location: FF_X10_Y24_N3
\lastA[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[3]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[3]~_Duplicate_1_q\);

-- Location: LCCOMB_X12_Y24_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\lastB[3]~4_combout\ & ((\lastA[3]~_Duplicate_1_q\ & (!\Add1~5\)) # (!\lastA[3]~_Duplicate_1_q\ & (\Add1~5\ & VCC)))) # (!\lastB[3]~4_combout\ & ((\lastA[3]~_Duplicate_1_q\ & ((\Add1~5\) # (GND))) # (!\lastA[3]~_Duplicate_1_q\ & 
-- (!\Add1~5\))))
-- \Add1~7\ = CARRY((\lastB[3]~4_combout\ & (\lastA[3]~_Duplicate_1_q\ & !\Add1~5\)) # (!\lastB[3]~4_combout\ & ((\lastA[3]~_Duplicate_1_q\) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[3]~4_combout\,
	datab => \lastA[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

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

-- Location: FF_X10_Y24_N31
\lastA[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[4]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X10_Y24_N10
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\lastB[3]~4_combout\ & ((\lastA[3]~_Duplicate_1_q\ & (\Add0~5\ & VCC)) # (!\lastA[3]~_Duplicate_1_q\ & (!\Add0~5\)))) # (!\lastB[3]~4_combout\ & ((\lastA[3]~_Duplicate_1_q\ & (!\Add0~5\)) # (!\lastA[3]~_Duplicate_1_q\ & ((\Add0~5\) # 
-- (GND)))))
-- \Add0~7\ = CARRY((\lastB[3]~4_combout\ & (!\lastA[3]~_Duplicate_1_q\ & !\Add0~5\)) # (!\lastB[3]~4_combout\ & ((!\Add0~5\) # (!\lastA[3]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[3]~4_combout\,
	datab => \lastA[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X10_Y24_N12
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\lastB[4]~5_combout\ $ (\lastA[4]~_Duplicate_1_q\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\lastB[4]~5_combout\ & ((\lastA[4]~_Duplicate_1_q\) # (!\Add0~7\))) # (!\lastB[4]~5_combout\ & (\lastA[4]~_Duplicate_1_q\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[4]~5_combout\,
	datab => \lastA[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X12_Y24_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\lastB[4]~5_combout\ $ (\lastA[4]~_Duplicate_1_q\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\lastB[4]~5_combout\ & ((!\Add1~7\) # (!\lastA[4]~_Duplicate_1_q\))) # (!\lastB[4]~5_combout\ & (!\lastA[4]~_Duplicate_1_q\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[4]~5_combout\,
	datab => \lastA[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

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

-- Location: FF_X9_Y23_N27
\lastA[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[5]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X10_Y24_N14
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\lastA[5]~_Duplicate_1_q\ & ((\lastB[5]~6_combout\ & (\Add0~9\ & VCC)) # (!\lastB[5]~6_combout\ & (!\Add0~9\)))) # (!\lastA[5]~_Duplicate_1_q\ & ((\lastB[5]~6_combout\ & (!\Add0~9\)) # (!\lastB[5]~6_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\lastA[5]~_Duplicate_1_q\ & (!\lastB[5]~6_combout\ & !\Add0~9\)) # (!\lastA[5]~_Duplicate_1_q\ & ((!\Add0~9\) # (!\lastB[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[5]~_Duplicate_1_q\,
	datab => \lastB[5]~6_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X12_Y24_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\lastB[5]~6_combout\ & ((\lastA[5]~_Duplicate_1_q\ & (!\Add1~9\)) # (!\lastA[5]~_Duplicate_1_q\ & (\Add1~9\ & VCC)))) # (!\lastB[5]~6_combout\ & ((\lastA[5]~_Duplicate_1_q\ & ((\Add1~9\) # (GND))) # (!\lastA[5]~_Duplicate_1_q\ & 
-- (!\Add1~9\))))
-- \Add1~11\ = CARRY((\lastB[5]~6_combout\ & (\lastA[5]~_Duplicate_1_q\ & !\Add1~9\)) # (!\lastB[5]~6_combout\ & ((\lastA[5]~_Duplicate_1_q\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[5]~6_combout\,
	datab => \lastA[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

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

-- Location: FF_X10_Y24_N23
\lastA[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[7]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[7]~_Duplicate_1_q\);

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

-- Location: FF_X10_Y24_N27
\lastA[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \SW[6]~input_o\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lastA[6]~_Duplicate_1_q\);

-- Location: LCCOMB_X12_Y24_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\lastA[6]~_Duplicate_1_q\ $ (\lastB[6]~7_combout\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\lastA[6]~_Duplicate_1_q\ & (\lastB[6]~7_combout\ & !\Add1~11\)) # (!\lastA[6]~_Duplicate_1_q\ & ((\lastB[6]~7_combout\) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[6]~_Duplicate_1_q\,
	datab => \lastB[6]~7_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X12_Y24_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\lastA[7]~_Duplicate_1_q\ & ((\lastB[7]~1_combout\ & (!\Add1~13\)) # (!\lastB[7]~1_combout\ & ((\Add1~13\) # (GND))))) # (!\lastA[7]~_Duplicate_1_q\ & ((\lastB[7]~1_combout\ & (\Add1~13\ & VCC)) # (!\lastB[7]~1_combout\ & 
-- (!\Add1~13\))))
-- \Add1~15\ = CARRY((\lastA[7]~_Duplicate_1_q\ & ((!\Add1~13\) # (!\lastB[7]~1_combout\))) # (!\lastA[7]~_Duplicate_1_q\ & (!\lastB[7]~1_combout\ & !\Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datab => \lastB[7]~1_combout\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X10_Y24_N16
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\lastA[6]~_Duplicate_1_q\ $ (\lastB[6]~7_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\lastA[6]~_Duplicate_1_q\ & ((\lastB[6]~7_combout\) # (!\Add0~11\))) # (!\lastA[6]~_Duplicate_1_q\ & (\lastB[6]~7_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[6]~_Duplicate_1_q\,
	datab => \lastB[6]~7_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X10_Y24_N18
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\lastA[7]~_Duplicate_1_q\ & ((\lastB[7]~1_combout\ & (\Add0~13\ & VCC)) # (!\lastB[7]~1_combout\ & (!\Add0~13\)))) # (!\lastA[7]~_Duplicate_1_q\ & ((\lastB[7]~1_combout\ & (!\Add0~13\)) # (!\lastB[7]~1_combout\ & ((\Add0~13\) # 
-- (GND)))))
-- \Add0~15\ = CARRY((\lastA[7]~_Duplicate_1_q\ & (!\lastB[7]~1_combout\ & !\Add0~13\)) # (!\lastA[7]~_Duplicate_1_q\ & ((!\Add0~13\) # (!\lastB[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datab => \lastB[7]~1_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: DSPMULT_X18_Y24_N0
\Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "none",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => VCC,
	signb => VCC,
	clk => \KEY[2]~input_o\,
	aclr => \ALT_INV_KEY[1]~input_o\,
	ena => VCC,
	dataa => \Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X18_Y24_N2
\Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X8_Y24_N4
\sum~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~17_combout\ = (\SW[8]~input_o\ & (\SW[9]~input_o\)) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\SW[9]~input_o\ & (\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[9]~input_o\,
	datac => \Add0~14_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \sum~17_combout\);

-- Location: LCCOMB_X10_Y24_N24
\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ = \lastA[1]~_Duplicate_1_q\ $ (((\lastA[7]~_Duplicate_1_q\ & \lastA[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datac => \lastA[1]~_Duplicate_1_q\,
	datad => \lastA[0]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\);

-- Location: LCCOMB_X8_Y24_N6
\Div0|auto_generated|divider|my_abs_num|cs1a[2]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\ = (!sum(0) & (!\lastB[1]~2_combout\ & (\lastB[7]~1_combout\ & !\lastB[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sum(0),
	datab => \lastB[1]~2_combout\,
	datac => \lastB[7]~1_combout\,
	datad => \lastB[2]~3_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\);

-- Location: LCCOMB_X8_Y24_N20
\Div0|auto_generated|divider|my_abs_num|cs1a[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\ & ((\lastB[3]~4_combout\ & (!\lastB[7]~1_combout\ & \lastB[4]~5_combout\)) # (!\lastB[3]~4_combout\ & (\lastB[7]~1_combout\ & 
-- !\lastB[4]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[3]~4_combout\,
	datab => \lastB[7]~1_combout\,
	datac => \lastB[4]~5_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\);

-- Location: LCCOMB_X11_Y24_N24
\Div0|auto_generated|divider|my_abs_num|cs1a[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ & ((\lastB[5]~6_combout\ & (!\lastB[7]~1_combout\ & \lastB[6]~7_combout\)) # (!\lastB[5]~6_combout\ & (\lastB[7]~1_combout\ & 
-- !\lastB[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[5]~6_combout\,
	datab => \lastB[7]~1_combout\,
	datac => \lastB[6]~7_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\);

-- Location: LCCOMB_X10_Y24_N0
\Div0|auto_generated|divider|my_abs_den|cs1a[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\ = (\lastA[7]~_Duplicate_1_q\ & (!\lastA[1]~_Duplicate_1_q\ & (!\lastA[2]~_Duplicate_1_q\ & !\lastA[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datab => \lastA[1]~_Duplicate_1_q\,
	datac => \lastA[2]~_Duplicate_1_q\,
	datad => \lastA[0]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\);

-- Location: LCCOMB_X11_Y24_N30
\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ = \lastA[7]~_Duplicate_1_q\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\ $ (\lastA[3]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\,
	datad => \lastA[3]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\);

-- Location: LCCOMB_X10_Y24_N22
\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ = \lastA[2]~_Duplicate_1_q\ $ (((\lastA[7]~_Duplicate_1_q\ & ((\lastA[1]~_Duplicate_1_q\) # (\lastA[0]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[1]~_Duplicate_1_q\,
	datab => \lastA[2]~_Duplicate_1_q\,
	datac => \lastA[7]~_Duplicate_1_q\,
	datad => \lastA[0]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\);

-- Location: LCCOMB_X10_Y24_N28
\Div0|auto_generated|divider|my_abs_den|cs1a[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[4]~0_combout\ = (!\lastA[1]~_Duplicate_1_q\ & (!\lastA[0]~_Duplicate_1_q\ & \lastA[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lastA[1]~_Duplicate_1_q\,
	datac => \lastA[0]~_Duplicate_1_q\,
	datad => \lastA[7]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~0_combout\);

-- Location: LCCOMB_X10_Y24_N2
\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ = (!\lastA[4]~_Duplicate_1_q\ & (!\lastA[2]~_Duplicate_1_q\ & (!\lastA[3]~_Duplicate_1_q\ & \Div0|auto_generated|divider|my_abs_den|cs1a[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[4]~_Duplicate_1_q\,
	datab => \lastA[2]~_Duplicate_1_q\,
	datac => \lastA[3]~_Duplicate_1_q\,
	datad => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~0_combout\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\);

-- Location: LCCOMB_X10_Y24_N26
\Div0|auto_generated|divider|divider|sel[36]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(36) = (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\) # ((\lastA[5]~_Duplicate_1_q\ & ((!\lastA[6]~_Duplicate_1_q\) # (!\lastA[7]~_Duplicate_1_q\))) # (!\lastA[5]~_Duplicate_1_q\ & 
-- ((\lastA[7]~_Duplicate_1_q\) # (\lastA[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[5]~_Duplicate_1_q\,
	datab => \lastA[7]~_Duplicate_1_q\,
	datac => \lastA[6]~_Duplicate_1_q\,
	datad => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	combout => \Div0|auto_generated|divider|divider|sel\(36));

-- Location: LCCOMB_X10_Y24_N30
\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ = \lastA[4]~_Duplicate_1_q\ $ (((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\ & ((\lastA[3]~_Duplicate_1_q\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\ & 
-- (\lastA[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datab => \lastA[3]~_Duplicate_1_q\,
	datac => \lastA[4]~_Duplicate_1_q\,
	datad => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~3_combout\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\);

-- Location: LCCOMB_X11_Y24_N8
\Div0|auto_generated|divider|divider|sel[9]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(9) = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\) # ((\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\) # ((\Div0|auto_generated|divider|divider|sel\(36)) # 
-- (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|sel\(36),
	datad => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|sel\(9));

-- Location: LCCOMB_X9_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[0]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~28_combout\ = (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (!\Div0|auto_generated|divider|divider|sel\(9) & ((\Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\) # 
-- (!\lastA[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(9),
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~28_combout\);

-- Location: LCCOMB_X9_Y24_N22
\Div0|auto_generated|divider|diff_signs\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|diff_signs~combout\ = \lastA[7]~_Duplicate_1_q\ $ (((sum(7) & \KEY[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lastA[7]~_Duplicate_1_q\,
	datac => sum(7),
	datad => \KEY[1]~input_o\,
	combout => \Div0|auto_generated|divider|diff_signs~combout\);

-- Location: LCCOMB_X9_Y24_N8
\Div0|auto_generated|divider|divider|add_sub_0|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\) # (!\lastA[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lastA[0]~_Duplicate_1_q\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

-- Location: LCCOMB_X9_Y24_N16
\Div0|auto_generated|divider|divider|sel[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(0) = (\Div0|auto_generated|divider|divider|sel\(9)) # (\lastA[1]~_Duplicate_1_q\ $ (((\lastA[0]~_Duplicate_1_q\ & \lastA[7]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(9),
	datab => \lastA[0]~_Duplicate_1_q\,
	datac => \lastA[7]~_Duplicate_1_q\,
	datad => \lastA[1]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|divider|sel\(0));

-- Location: LCCOMB_X11_Y24_N4
\Div0|auto_generated|divider|my_abs_num|cs1a[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\ = \lastB[6]~7_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ & (\lastB[5]~6_combout\)) # (!\Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ & 
-- ((\lastB[7]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[5]~6_combout\,
	datab => \lastB[6]~7_combout\,
	datac => \lastB[7]~1_combout\,
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\);

-- Location: LCCOMB_X11_Y24_N6
\Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\) # ((\Div0|auto_generated|divider|divider|sel\(9)) # 
-- (!\lastA[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datac => \Div0|auto_generated|divider|divider|sel\(9),
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~18_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

-- Location: LCCOMB_X11_Y24_N2
\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\) # (!\lastA[0]~_Duplicate_1_q\)))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (((\Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\)) # (!\lastA[0]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

-- Location: LCCOMB_X11_Y24_N10
\Div0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\) # (!\lastA[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\,
	datad => \lastA[0]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

-- Location: LCCOMB_X11_Y24_N12
\Div0|auto_generated|divider|divider|StageOut[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ = (\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\Div0|auto_generated|divider|divider|sel\(9)) # (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(9),
	datac => \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\);

-- Location: LCCOMB_X11_Y24_N28
\Div0|auto_generated|divider|divider|StageOut[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ = \Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\ $ (((\lastA[0]~_Duplicate_1_q\ & (!\Div0|auto_generated|divider|divider|sel\(9) & 
-- \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[0]~_Duplicate_1_q\,
	datab => \Div0|auto_generated|divider|divider|sel\(9),
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[6]~19_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\);

-- Location: LCCOMB_X8_Y24_N28
\Div0|auto_generated|divider|my_abs_num|cs1a[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\ = \Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\ $ (((\KEY[1]~input_o\ & (sum(7) $ (sum(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => sum(7),
	datac => sum(5),
	datad => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~17_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\);

-- Location: LCCOMB_X11_Y24_N16
\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\ & ((GND) # (!\lastA[0]~_Duplicate_1_q\))) # (!\Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\ & 
-- (\lastA[0]~_Duplicate_1_q\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\) # (!\lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

-- Location: LCCOMB_X11_Y24_N18
\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

-- Location: LCCOMB_X11_Y24_N20
\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

-- Location: LCCOMB_X11_Y24_N22
\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

-- Location: LCCOMB_X11_Y24_N14
\Div0|auto_generated|divider|divider|sel[18]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(18) = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\) # ((\Div0|auto_generated|divider|divider|sel\(36)) # (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datac => \Div0|auto_generated|divider|divider|sel\(36),
	datad => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|sel\(18));

-- Location: LCCOMB_X9_Y23_N20
\Div0|auto_generated|divider|divider|sel[27]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(27) = (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\) # (\Div0|auto_generated|divider|divider|sel\(36))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(36),
	combout => \Div0|auto_generated|divider|divider|sel\(27));

-- Location: LCCOMB_X12_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\Div0|auto_generated|divider|divider|sel\(18) & (((\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[9]~1_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(18),
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[9]~1_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X11_Y24_N0
\Div0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\Div0|auto_generated|divider|divider|sel\(18) & (\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[8]~2_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(18),
	datab => \Div0|auto_generated|divider|divider|StageOut[8]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X11_Y24_N26
\Div0|auto_generated|divider|divider|StageOut[16]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ = (\Div0|auto_generated|divider|divider|sel\(18) & (\Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(18) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[5]~23_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(18),
	datac => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\);

-- Location: LCCOMB_X9_Y24_N30
\Div0|auto_generated|divider|my_abs_num|cs1a[4]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\ = \lastB[4]~5_combout\ $ (((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\ & ((\lastB[3]~4_combout\))) # (!\Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\ & 
-- (\lastB[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[7]~1_combout\,
	datab => \lastB[3]~4_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\,
	datad => \lastB[4]~5_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\);

-- Location: LCCOMB_X12_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\ & ((GND) # (!\lastA[0]~_Duplicate_1_q\))) # (!\Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\ & 
-- (\lastA[0]~_Duplicate_1_q\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\) # (!\lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

-- Location: LCCOMB_X12_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

-- Location: LCCOMB_X12_Y23_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

-- Location: LCCOMB_X12_Y23_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

-- Location: LCCOMB_X12_Y23_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

-- Location: LCCOMB_X12_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[27]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[18]~3_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(27),
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LCCOMB_X12_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[26]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ = (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[17]~4_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(27),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\);

-- Location: LCCOMB_X12_Y23_N12
\Div0|auto_generated|divider|divider|StageOut[25]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ = (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|divider|StageOut[16]~5_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(27),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\);

-- Location: LCCOMB_X12_Y23_N14
\Div0|auto_generated|divider|divider|StageOut[24]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ = (\Div0|auto_generated|divider|divider|sel\(27) & (\Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(27) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[4]~20_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(27),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\);

-- Location: LCCOMB_X8_Y24_N26
\Div0|auto_generated|divider|my_abs_num|cs1a[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\ = \Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\ $ (((\KEY[1]~input_o\ & (sum(7) $ (sum(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~16_combout\,
	datac => sum(7),
	datad => sum(3),
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\);

-- Location: LCCOMB_X12_Y23_N0
\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\lastA[0]~_Duplicate_1_q\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\ $ (VCC))) # (!\lastA[0]~_Duplicate_1_q\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\) # (!\lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[0]~_Duplicate_1_q\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

-- Location: LCCOMB_X12_Y23_N2
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

-- Location: LCCOMB_X12_Y23_N4
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

-- Location: LCCOMB_X12_Y23_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

-- Location: LCCOMB_X12_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\);

-- Location: LCCOMB_X12_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X9_Y23_N22
\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ = \lastA[5]~_Duplicate_1_q\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ $ (\lastA[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[5]~_Duplicate_1_q\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \lastA[7]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\);

-- Location: LCCOMB_X11_Y23_N8
\Div0|auto_generated|divider|divider|StageOut[36]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[27]~6_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(36),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\);

-- Location: LCCOMB_X11_Y23_N14
\Div0|auto_generated|divider|divider|StageOut[35]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[26]~7_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~7_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\);

-- Location: LCCOMB_X11_Y23_N12
\Div0|auto_generated|divider|divider|StageOut[34]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[25]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\);

-- Location: LCCOMB_X11_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[33]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|divider|StageOut[24]~9_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~9_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\);

-- Location: LCCOMB_X11_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[32]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|sel\(36) & (\Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[3]~24_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(36),
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\);

-- Location: LCCOMB_X12_Y24_N22
\Div0|auto_generated|divider|my_abs_num|cs1a[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\ = \lastB[2]~3_combout\ $ (((\lastB[7]~1_combout\ & ((sum(0)) # (\lastB[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastB[7]~1_combout\,
	datab => sum(0),
	datac => \lastB[2]~3_combout\,
	datad => \lastB[1]~2_combout\,
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\);

-- Location: LCCOMB_X11_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\ & ((GND) # (!\lastA[0]~_Duplicate_1_q\))) # (!\Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\ & 
-- (\lastA[0]~_Duplicate_1_q\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\) # (!\lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\,
	datab => \lastA[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\);

-- Location: LCCOMB_X11_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\);

-- Location: LCCOMB_X11_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\);

-- Location: LCCOMB_X11_Y23_N22
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\);

-- Location: LCCOMB_X11_Y23_N24
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\);

-- Location: LCCOMB_X11_Y23_N26
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\);

-- Location: LCCOMB_X11_Y23_N28
\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\);

-- Location: LCCOMB_X10_Y23_N6
\Div0|auto_generated|divider|divider|sel[45]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(45) = (\lastA[6]~_Duplicate_1_q\ & (((!\lastA[5]~_Duplicate_1_q\ & \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\)) # (!\lastA[7]~_Duplicate_1_q\))) # (!\lastA[6]~_Duplicate_1_q\ & 
-- ((\lastA[7]~_Duplicate_1_q\) # ((\lastA[5]~_Duplicate_1_q\ & \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[6]~_Duplicate_1_q\,
	datab => \lastA[5]~_Duplicate_1_q\,
	datac => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datad => \lastA[7]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|divider|sel\(45));

-- Location: LCCOMB_X9_Y24_N20
\Div0|auto_generated|divider|my_abs_den|cs1a[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\ = \lastA[6]~_Duplicate_1_q\ $ (((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & (\lastA[5]~_Duplicate_1_q\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & 
-- ((\lastA[7]~_Duplicate_1_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[5]~_Duplicate_1_q\,
	datab => \lastA[7]~_Duplicate_1_q\,
	datac => \lastA[6]~_Duplicate_1_q\,
	datad => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\);

-- Location: LCCOMB_X10_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[45]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[36]~10_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[36]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\);

-- Location: LCCOMB_X11_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[44]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[35]~11_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[35]~11_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\);

-- Location: LCCOMB_X11_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[43]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & (\Div0|auto_generated|divider|divider|StageOut[34]~12_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(45),
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\);

-- Location: LCCOMB_X11_Y23_N10
\Div0|auto_generated|divider|divider|StageOut[42]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~13_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[33]~13_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\);

-- Location: LCCOMB_X11_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[41]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~14_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[32]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\);

-- Location: LCCOMB_X10_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[40]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ = (\Div0|auto_generated|divider|divider|sel\(45) & (((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\)))) # (!\Div0|auto_generated|divider|divider|sel\(45) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & ((\Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[0]~0_combout\,
	datac => \Div0|auto_generated|divider|my_abs_num|cs1a[2]~21_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\);

-- Location: LCCOMB_X8_Y24_N2
\Div0|auto_generated|divider|my_abs_num|cs1a[1]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\ = (\KEY[1]~input_o\ & (sum(1) $ (((sum(7) & sum(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => sum(1),
	datac => sum(7),
	datad => sum(0),
	combout => \Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\);

-- Location: LCCOMB_X10_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\ = (\lastA[0]~_Duplicate_1_q\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\ $ (VCC))) # (!\lastA[0]~_Duplicate_1_q\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\) # (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\) # (!\lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[0]~_Duplicate_1_q\,
	datab => \Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\);

-- Location: LCCOMB_X10_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\);

-- Location: LCCOMB_X10_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ $ (\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\);

-- Location: LCCOMB_X10_Y23_N14
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)) # (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\);

-- Location: LCCOMB_X10_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\ = ((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\);

-- Location: LCCOMB_X10_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\ = (\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\ & VCC)))) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\)) # (!\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~9\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\);

-- Location: LCCOMB_X10_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\ = ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\ & (\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~11\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\);

-- Location: LCCOMB_X10_Y23_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~13\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\);

-- Location: LCCOMB_X9_Y23_N26
\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\ & ((\lastA[7]~_Duplicate_1_q\ & (!\lastA[5]~_Duplicate_1_q\ & !\lastA[6]~_Duplicate_1_q\)) # (!\lastA[7]~_Duplicate_1_q\ & 
-- (\lastA[5]~_Duplicate_1_q\ & \lastA[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~1_combout\,
	datab => \lastA[7]~_Duplicate_1_q\,
	datac => \lastA[5]~_Duplicate_1_q\,
	datad => \lastA[6]~_Duplicate_1_q\,
	combout => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\);

-- Location: LCCOMB_X10_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[54]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[45]~15_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[45]~15_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~12_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\);

-- Location: LCCOMB_X9_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[53]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[44]~16_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[44]~16_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\);

-- Location: LCCOMB_X9_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[52]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[43]~17_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[43]~17_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\);

-- Location: LCCOMB_X9_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[51]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[42]~18_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[42]~18_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\);

-- Location: LCCOMB_X9_Y23_N18
\Div0|auto_generated|divider|divider|StageOut[50]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[41]~19_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[41]~19_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\);

-- Location: LCCOMB_X10_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[49]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ = (\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|divider|StageOut[40]~20_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~20_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\);

-- Location: LCCOMB_X10_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[48]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\)) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|cs1a[1]~22_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[0]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\);

-- Location: LCCOMB_X9_Y23_N0
\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\ = CARRY((\lastB[0]~0_combout\) # (!\lastA[0]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[0]~_Duplicate_1_q\,
	datab => \lastB[0]~0_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\);

-- Location: LCCOMB_X9_Y23_N2
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[48]~27_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[48]~27_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[1]~7_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[48]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\);

-- Location: LCCOMB_X9_Y23_N4
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\) # 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\))) # (!\Div0|auto_generated|divider|divider|StageOut[49]~26_combout\ & (!\Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[49]~26_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[2]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\);

-- Location: LCCOMB_X9_Y23_N6
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[50]~25_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[50]~25_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[3]~5_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[50]~25_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\);

-- Location: LCCOMB_X9_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ & (\Div0|auto_generated|divider|divider|StageOut[51]~24_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[51]~24_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[4]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[51]~24_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\);

-- Location: LCCOMB_X9_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ & (\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\)) # (!\Div0|auto_generated|divider|divider|StageOut[52]~23_combout\ & ((\Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[52]~23_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[5]~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~9_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\);

-- Location: LCCOMB_X9_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\ & (\Div0|auto_generated|divider|divider|StageOut[53]~22_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[53]~22_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~9_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[53]~22_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~11_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\);

-- Location: LCCOMB_X9_Y23_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[54]~21_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[54]~21_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[54]~21_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~13_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\);

-- Location: LCCOMB_X9_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[7]~15_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\);

-- Location: LCCOMB_X8_Y23_N4
\Div0|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X8_Y23_N6
\Div0|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & (((!\Div0|auto_generated|divider|op_1~1\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & ((\Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\ & !\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\)) # (!\Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X8_Y23_N8
\Div0|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|op_1~3\ & (((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\) # (\Div0|auto_generated|divider|divider|sel\(45))))) # 
-- (!\Div0|auto_generated|divider|op_1~3\ & ((((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\) # (\Div0|auto_generated|divider|divider|sel\(45))))))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((!\Div0|auto_generated|divider|op_1~3\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\) # (\Div0|auto_generated|divider|divider|sel\(45)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(45),
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X8_Y23_N10
\Div0|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = (\Div0|auto_generated|divider|divider|sel\(36) & (((!\Div0|auto_generated|divider|op_1~5\)))) # (!\Div0|auto_generated|divider|divider|sel\(36) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (!\Div0|auto_generated|divider|op_1~5\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|op_1~5\) # (GND)))))
-- \Div0|auto_generated|divider|op_1~7\ = CARRY(((!\Div0|auto_generated|divider|divider|sel\(36) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)) # (!\Div0|auto_generated|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\,
	cout => \Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X8_Y23_N12
\Div0|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~8_combout\ = (\Div0|auto_generated|divider|op_1~7\ & (((\Div0|auto_generated|divider|divider|sel\(27)) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))) # 
-- (!\Div0|auto_generated|divider|op_1~7\ & ((((\Div0|auto_generated|divider|divider|sel\(27)) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))))
-- \Div0|auto_generated|divider|op_1~9\ = CARRY((!\Div0|auto_generated|divider|op_1~7\ & ((\Div0|auto_generated|divider|divider|sel\(27)) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(27),
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~7\,
	combout => \Div0|auto_generated|divider|op_1~8_combout\,
	cout => \Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X8_Y23_N14
\Div0|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~10_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((!\Div0|auto_generated|divider|op_1~9\)))) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|sel\(18) & (!\Div0|auto_generated|divider|op_1~9\)) # (!\Div0|auto_generated|divider|divider|sel\(18) & ((\Div0|auto_generated|divider|op_1~9\) # (GND)))))
-- \Div0|auto_generated|divider|op_1~11\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & !\Div0|auto_generated|divider|divider|sel\(18))) # (!\Div0|auto_generated|divider|op_1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(18),
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~9\,
	combout => \Div0|auto_generated|divider|op_1~10_combout\,
	cout => \Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X8_Y23_N16
\Div0|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~12_combout\ = (\Div0|auto_generated|divider|op_1~11\ & (((\Div0|auto_generated|divider|divider|sel\(9)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # 
-- (!\Div0|auto_generated|divider|op_1~11\ & ((((\Div0|auto_generated|divider|divider|sel\(9)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \Div0|auto_generated|divider|op_1~13\ = CARRY((!\Div0|auto_generated|divider|op_1~11\ & ((\Div0|auto_generated|divider|divider|sel\(9)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(9),
	datab => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~11\,
	combout => \Div0|auto_generated|divider|op_1~12_combout\,
	cout => \Div0|auto_generated|divider|op_1~13\);

-- Location: LCCOMB_X8_Y23_N18
\Div0|auto_generated|divider|op_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~14_combout\ = \Div0|auto_generated|divider|op_1~13\ $ (((\Div0|auto_generated|divider|divider|sel\(0)) # (!\Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(0),
	cin => \Div0|auto_generated|divider|op_1~13\,
	combout => \Div0|auto_generated|divider|op_1~14_combout\);

-- Location: LCCOMB_X8_Y23_N22
\sum~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~16_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & ((\Div0|auto_generated|divider|op_1~14_combout\))) # (!\Div0|auto_generated|divider|diff_signs~combout\ & (\Div0|auto_generated|divider|divider|StageOut[0]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|StageOut[0]~28_combout\,
	datac => \Div0|auto_generated|divider|diff_signs~combout\,
	datad => \Div0|auto_generated|divider|op_1~14_combout\,
	combout => \sum~16_combout\);

-- Location: LCCOMB_X8_Y24_N30
\sum~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~18_combout\ = (\sum~17_combout\ & (((\sum~16_combout\) # (!\SW[8]~input_o\)))) # (!\sum~17_combout\ & (\Add1~14_combout\ & (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datab => \sum~17_combout\,
	datac => \SW[8]~input_o\,
	datad => \sum~16_combout\,
	combout => \sum~18_combout\);

-- Location: FF_X8_Y24_N3
\sum[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	asdata => \sum~18_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(7));

-- Location: LCCOMB_X8_Y24_N14
\lastB[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[7]~1_combout\ = (\KEY[1]~input_o\ & sum(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => sum(7),
	combout => \lastB[7]~1_combout\);

-- Location: LCCOMB_X12_Y24_N18
\sum~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~14_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\) # ((\Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\SW[9]~input_o\ & (\SW[8]~input_o\ & ((\Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => \Add1~12_combout\,
	combout => \sum~14_combout\);

-- Location: LCCOMB_X9_Y24_N2
\Div0|auto_generated|divider|quotient[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[6]~5_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (((\Div0|auto_generated|divider|op_1~12_combout\)))) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & (!\Div0|auto_generated|divider|divider|sel\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(9),
	datac => \Div0|auto_generated|divider|diff_signs~combout\,
	datad => \Div0|auto_generated|divider|op_1~12_combout\,
	combout => \Div0|auto_generated|divider|quotient[6]~5_combout\);

-- Location: LCCOMB_X9_Y24_N24
\sum~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~15_combout\ = (\sum~14_combout\ & (((\Div0|auto_generated|divider|quotient[6]~5_combout\) # (!\sum[1]~3_combout\)))) # (!\sum~14_combout\ & (\Add0~12_combout\ & (\sum[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~14_combout\,
	datab => \Add0~12_combout\,
	datac => \sum[1]~3_combout\,
	datad => \Div0|auto_generated|divider|quotient[6]~5_combout\,
	combout => \sum~15_combout\);

-- Location: FF_X9_Y24_N25
\sum[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sum~15_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(6));

-- Location: LCCOMB_X9_Y24_N0
\lastB[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[6]~7_combout\ = (\KEY[1]~input_o\ & sum(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => sum(6),
	combout => \lastB[6]~7_combout\);

-- Location: LCCOMB_X12_Y24_N20
\sum~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~12_combout\ = (\SW[9]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT5\) # (\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\Add1~10_combout\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT5\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \sum~12_combout\);

-- Location: LCCOMB_X8_Y24_N10
\Div0|auto_generated|divider|quotient[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[5]~4_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (((\Div0|auto_generated|divider|op_1~10_combout\)))) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\Div0|auto_generated|divider|divider|sel\(18) & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(18),
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datac => \Div0|auto_generated|divider|diff_signs~combout\,
	datad => \Div0|auto_generated|divider|op_1~10_combout\,
	combout => \Div0|auto_generated|divider|quotient[5]~4_combout\);

-- Location: LCCOMB_X8_Y24_N16
\sum~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~13_combout\ = (\sum~12_combout\ & (((\Div0|auto_generated|divider|quotient[5]~4_combout\) # (!\sum[1]~3_combout\)))) # (!\sum~12_combout\ & (\Add0~10_combout\ & (\sum[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \sum~12_combout\,
	datac => \sum[1]~3_combout\,
	datad => \Div0|auto_generated|divider|quotient[5]~4_combout\,
	combout => \sum~13_combout\);

-- Location: FF_X8_Y24_N17
\sum[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sum~13_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(5));

-- Location: LCCOMB_X8_Y24_N22
\lastB[5]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[5]~6_combout\ = (\KEY[1]~input_o\ & sum(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => sum(5),
	combout => \lastB[5]~6_combout\);

-- Location: LCCOMB_X12_Y24_N26
\sum~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~10_combout\ = (\SW[9]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT4\) # (\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\Add1~8_combout\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \Add1~8_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \SW[8]~input_o\,
	combout => \sum~10_combout\);

-- Location: LCCOMB_X9_Y24_N28
\Div0|auto_generated|divider|quotient[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[4]~3_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (((\Div0|auto_generated|divider|op_1~8_combout\)))) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\Div0|auto_generated|divider|divider|sel\(27) & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|diff_signs~combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(27),
	datac => \Div0|auto_generated|divider|op_1~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Div0|auto_generated|divider|quotient[4]~3_combout\);

-- Location: LCCOMB_X9_Y24_N6
\sum~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~11_combout\ = (\sum~10_combout\ & (((\Div0|auto_generated|divider|quotient[4]~3_combout\) # (!\sum[1]~3_combout\)))) # (!\sum~10_combout\ & (\Add0~8_combout\ & (\sum[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \sum~10_combout\,
	datac => \sum[1]~3_combout\,
	datad => \Div0|auto_generated|divider|quotient[4]~3_combout\,
	combout => \sum~11_combout\);

-- Location: FF_X9_Y24_N7
\sum[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sum~11_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(4));

-- Location: LCCOMB_X9_Y24_N10
\lastB[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[4]~5_combout\ = (\KEY[1]~input_o\ & sum(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => sum(4),
	combout => \lastB[4]~5_combout\);

-- Location: LCCOMB_X12_Y24_N28
\sum~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~8_combout\ = (\SW[9]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT3\) # (\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\Add1~6_combout\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Mult0|auto_generated|mac_out2~DATAOUT3\,
	datac => \SW[9]~input_o\,
	datad => \SW[8]~input_o\,
	combout => \sum~8_combout\);

-- Location: LCCOMB_X8_Y23_N24
\Div0|auto_generated|divider|quotient[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~2_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (((\Div0|auto_generated|divider|op_1~6_combout\)))) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\Div0|auto_generated|divider|divider|sel\(36) & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(36),
	datab => \Div0|auto_generated|divider|diff_signs~combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Div0|auto_generated|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|quotient[3]~2_combout\);

-- Location: LCCOMB_X9_Y24_N12
\sum~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~9_combout\ = (\sum~8_combout\ & (((\Div0|auto_generated|divider|quotient[3]~2_combout\)) # (!\sum[1]~3_combout\))) # (!\sum~8_combout\ & (\sum[1]~3_combout\ & (\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~8_combout\,
	datab => \sum[1]~3_combout\,
	datac => \Add0~6_combout\,
	datad => \Div0|auto_generated|divider|quotient[3]~2_combout\,
	combout => \sum~9_combout\);

-- Location: FF_X9_Y24_N13
\sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sum~9_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(3));

-- Location: LCCOMB_X9_Y24_N4
\lastB[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[3]~4_combout\ = (\KEY[1]~input_o\ & sum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => sum(3),
	combout => \lastB[3]~4_combout\);

-- Location: LCCOMB_X12_Y24_N30
\sum~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~6_combout\ = (\SW[9]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT2\) # (\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\Add1~4_combout\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \Add1~4_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT2\,
	datad => \SW[8]~input_o\,
	combout => \sum~6_combout\);

-- Location: LCCOMB_X10_Y23_N2
\Div0|auto_generated|divider|quotient[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~1_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (((\Div0|auto_generated|divider|op_1~4_combout\)))) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\Div0|auto_generated|divider|divider|sel\(45) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(45),
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~12_combout\,
	datac => \Div0|auto_generated|divider|diff_signs~combout\,
	datad => \Div0|auto_generated|divider|op_1~4_combout\,
	combout => \Div0|auto_generated|divider|quotient[2]~1_combout\);

-- Location: LCCOMB_X10_Y23_N0
\sum~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~7_combout\ = (\sum[1]~3_combout\ & ((\sum~6_combout\ & ((\Div0|auto_generated|divider|quotient[2]~1_combout\))) # (!\sum~6_combout\ & (\Add0~4_combout\)))) # (!\sum[1]~3_combout\ & (((\sum~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \sum[1]~3_combout\,
	datac => \sum~6_combout\,
	datad => \Div0|auto_generated|divider|quotient[2]~1_combout\,
	combout => \sum~7_combout\);

-- Location: FF_X10_Y23_N1
\sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sum~7_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(2));

-- Location: LCCOMB_X9_Y24_N18
\lastB[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[2]~3_combout\ = (\KEY[1]~input_o\ & sum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[1]~input_o\,
	datad => sum(2),
	combout => \lastB[2]~3_combout\);

-- Location: LCCOMB_X12_Y24_N24
\sum~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~4_combout\ = (\SW[9]~input_o\ & (((\Mult0|auto_generated|mac_out2~DATAOUT1\) # (\SW[8]~input_o\)))) # (!\SW[9]~input_o\ & (\Add1~2_combout\ & ((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \Add1~2_combout\,
	datac => \Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => \SW[8]~input_o\,
	combout => \sum~4_combout\);

-- Location: LCCOMB_X8_Y23_N30
\Div0|auto_generated|divider|quotient[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~0_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (((\Div0|auto_generated|divider|op_1~2_combout\)))) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (!\Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|diff_signs~combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[7]~14_combout\,
	datad => \Div0|auto_generated|divider|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|quotient[1]~0_combout\);

-- Location: LCCOMB_X8_Y24_N18
\sum~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~5_combout\ = (\sum~4_combout\ & (((\Div0|auto_generated|divider|quotient[1]~0_combout\)) # (!\sum[1]~3_combout\))) # (!\sum~4_combout\ & (\sum[1]~3_combout\ & ((\Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~4_combout\,
	datab => \sum[1]~3_combout\,
	datac => \Div0|auto_generated|divider|quotient[1]~0_combout\,
	datad => \Add0~2_combout\,
	combout => \sum~5_combout\);

-- Location: FF_X8_Y24_N19
\sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sum~5_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(1));

-- Location: LCCOMB_X8_Y24_N8
\lastB[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \lastB[1]~2_combout\ = (\KEY[1]~input_o\ & sum(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => sum(1),
	combout => \lastB[1]~2_combout\);

-- Location: LCCOMB_X8_Y23_N0
\sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~0_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (!\Div0|auto_generated|divider|op_1~0_combout\)) # (!\Div0|auto_generated|divider|diff_signs~combout\ & ((\Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|diff_signs~combout\,
	datac => \Div0|auto_generated|divider|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_7_result_int[8]~16_combout\,
	combout => \sum~0_combout\);

-- Location: LCCOMB_X8_Y24_N0
\sum~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~1_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((!\sum~0_combout\))) # (!\SW[8]~input_o\ & (\Mult0|auto_generated|mac_out2~dataout\)))) # (!\SW[9]~input_o\ & (((\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \Mult0|auto_generated|mac_out2~dataout\,
	datac => \SW[8]~input_o\,
	datad => \sum~0_combout\,
	combout => \sum~1_combout\);

-- Location: LCCOMB_X8_Y24_N12
\sum~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~2_combout\ = (\SW[9]~input_o\ & (((\sum~1_combout\)))) # (!\SW[9]~input_o\ & ((\sum~1_combout\ & (\Add1~0_combout\)) # (!\sum~1_combout\ & ((\Add0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \Add1~0_combout\,
	datac => \Add0~0_combout\,
	datad => \sum~1_combout\,
	combout => \sum~2_combout\);

-- Location: FF_X8_Y24_N13
\sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \sum~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(0));

-- Location: LCCOMB_X10_Y24_N20
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = \lastA[7]~_Duplicate_1_q\ $ (\lastB[7]~1_combout\ $ (!\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datab => \lastB[7]~1_combout\,
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X7_Y24_N30
\sum~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~22_combout\ = (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT15\)) # (!\SW[9]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \SW[8]~input_o\,
	datac => \Add0~16_combout\,
	datad => \SW[9]~input_o\,
	combout => \sum~22_combout\);

-- Location: LCCOMB_X12_Y24_N16
\Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \lastA[7]~_Duplicate_1_q\ $ (\Add1~15\ $ (\lastB[7]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \lastA[7]~_Duplicate_1_q\,
	datad => \lastB[7]~1_combout\,
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X7_Y23_N4
\sum~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~19_combout\ = (\SW[8]~input_o\ & ((\SW[9]~input_o\ & ((\sum~16_combout\))) # (!\SW[9]~input_o\ & (\Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Add1~16_combout\,
	datac => \SW[9]~input_o\,
	datad => \sum~16_combout\,
	combout => \sum~19_combout\);

-- Location: LCCOMB_X7_Y24_N10
\sum~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~20_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT8\)) # (!\SW[9]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT8\,
	datab => \SW[8]~input_o\,
	datac => \Add0~16_combout\,
	datad => \SW[9]~input_o\,
	combout => \sum~20_combout\);

-- Location: LCCOMB_X7_Y23_N26
\sum~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sum~21_combout\ = (\SW[8]~input_o\ & ((\sum~20_combout\ & ((\sum~16_combout\))) # (!\sum~20_combout\ & (\Add1~16_combout\)))) # (!\SW[8]~input_o\ & (\sum~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \sum~20_combout\,
	datac => \Add1~16_combout\,
	datad => \sum~16_combout\,
	combout => \sum~21_combout\);

-- Location: LCCOMB_X7_Y23_N24
\process_0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~14_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT9\) # (\Mult0|auto_generated|mac_out2~DATAOUT10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \process_0~14_combout\);

-- Location: LCCOMB_X7_Y23_N22
\process_0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~15_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\process_0~14_combout\)) # (!\SW[9]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \process_0~14_combout\,
	datac => \SW[9]~input_o\,
	datad => \Add0~16_combout\,
	combout => \process_0~15_combout\);

-- Location: LCCOMB_X7_Y23_N28
\process_0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~16_combout\ = (\SW[8]~input_o\ & ((\process_0~15_combout\ & ((\sum~16_combout\))) # (!\process_0~15_combout\ & (\Add1~16_combout\)))) # (!\SW[8]~input_o\ & (((\process_0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Add1~16_combout\,
	datac => \process_0~15_combout\,
	datad => \sum~16_combout\,
	combout => \process_0~16_combout\);

-- Location: LCCOMB_X7_Y24_N0
\process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\SW[9]~input_o\ & ((\Mult0|auto_generated|mac_out2~DATAOUT11\) # ((\Mult0|auto_generated|mac_out2~DATAOUT12\)))) # (!\SW[9]~input_o\ & (((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \SW[9]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X17_Y23_N14
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT13\) # (\Mult0|auto_generated|mac_out2~DATAOUT14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X7_Y23_N14
\process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\process_0~9_combout\)) # (!\SW[9]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \process_0~9_combout\,
	datac => \SW[9]~input_o\,
	datad => \Add0~16_combout\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X7_Y23_N16
\process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\SW[8]~input_o\ & ((\process_0~10_combout\ & ((\sum~16_combout\))) # (!\process_0~10_combout\ & (\Add1~16_combout\)))) # (!\SW[8]~input_o\ & (((\process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \Add1~16_combout\,
	datac => \process_0~10_combout\,
	datad => \sum~16_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X7_Y23_N18
\process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~13_combout\ = (\sum~19_combout\) # ((\process_0~11_combout\) # ((!\SW[8]~input_o\ & \process_0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \process_0~12_combout\,
	datac => \sum~19_combout\,
	datad => \process_0~11_combout\,
	combout => \process_0~13_combout\);

-- Location: LCCOMB_X7_Y23_N30
\process_0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~17_combout\ = (\sum~21_combout\) # ((\process_0~16_combout\) # ((\sum~18_combout\) # (\process_0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~21_combout\,
	datab => \process_0~16_combout\,
	datac => \sum~18_combout\,
	datad => \process_0~13_combout\,
	combout => \process_0~17_combout\);

-- Location: LCCOMB_X7_Y23_N20
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT9\ & \Mult0|auto_generated|mac_out2~DATAOUT10\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X7_Y23_N6
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\SW[8]~input_o\ & (((\SW[9]~input_o\)))) # (!\SW[8]~input_o\ & ((\SW[9]~input_o\ & (\process_0~5_combout\)) # (!\SW[9]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \process_0~5_combout\,
	datac => \SW[9]~input_o\,
	datad => \Add0~16_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X7_Y23_N8
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~6_combout\ & (\SW[8]~input_o\ & ((!\sum~16_combout\)))) # (!\process_0~6_combout\ & (((!\Add1~16_combout\)) # (!\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datab => \SW[8]~input_o\,
	datac => \Add1~16_combout\,
	datad => \sum~16_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X7_Y24_N4
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\SW[9]~input_o\ & (\Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\Mult0|auto_generated|mac_out2~DATAOUT12\)))) # (!\SW[9]~input_o\ & (((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \SW[9]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT12\,
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X8_Y23_N28
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\SW[9]~input_o\ & (((!\Div0|auto_generated|divider|diff_signs~combout\ & \Div0|auto_generated|divider|divider|StageOut[0]~28_combout\)))) # (!\SW[9]~input_o\ & (\Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \SW[9]~input_o\,
	datac => \Div0|auto_generated|divider|diff_signs~combout\,
	datad => \Div0|auto_generated|divider|divider|StageOut[0]~28_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X17_Y23_N4
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\Mult0|auto_generated|mac_out2~DATAOUT13\ & \Mult0|auto_generated|mac_out2~DATAOUT14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => \Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X8_Y23_N20
\process_0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~19_combout\ = (\SW[9]~input_o\ & (((!\Div0|auto_generated|divider|op_1~14_combout\)) # (!\Div0|auto_generated|divider|diff_signs~combout\))) # (!\SW[9]~input_o\ & (((!\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \Div0|auto_generated|divider|diff_signs~combout\,
	datac => \Add0~16_combout\,
	datad => \Div0|auto_generated|divider|op_1~14_combout\,
	combout => \process_0~19_combout\);

-- Location: LCCOMB_X8_Y23_N2
\process_0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~20_combout\ = (\SW[9]~input_o\ & ((\SW[8]~input_o\ & ((\process_0~19_combout\))) # (!\SW[8]~input_o\ & (!\process_0~0_combout\)))) # (!\SW[9]~input_o\ & (((\SW[8]~input_o\) # (\process_0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \process_0~19_combout\,
	combout => \process_0~20_combout\);

-- Location: LCCOMB_X8_Y23_N26
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\process_0~20_combout\ & ((!\SW[8]~input_o\) # (!\process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~1_combout\,
	datac => \SW[8]~input_o\,
	datad => \process_0~20_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X7_Y23_N10
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~2_combout\) # ((!\sum~19_combout\ & ((\SW[8]~input_o\) # (!\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \process_0~3_combout\,
	datac => \sum~19_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X7_Y23_N12
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ((\process_0~7_combout\) # ((\process_0~4_combout\) # (!\sum~18_combout\))) # (!\sum~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~21_combout\,
	datab => \process_0~7_combout\,
	datac => \sum~18_combout\,
	datad => \process_0~4_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X7_Y23_N0
\process_0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~18_combout\ = (\sum~22_combout\ & (((\process_0~8_combout\)))) # (!\sum~22_combout\ & ((\sum~19_combout\ & ((\process_0~8_combout\))) # (!\sum~19_combout\ & (\process_0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sum~22_combout\,
	datab => \sum~19_combout\,
	datac => \process_0~17_combout\,
	datad => \process_0~8_combout\,
	combout => \process_0~18_combout\);

-- Location: FF_X7_Y23_N1
\LEDG[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[2]~input_o\,
	d => \process_0~18_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[9]~reg0_q\);

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
END structure;


