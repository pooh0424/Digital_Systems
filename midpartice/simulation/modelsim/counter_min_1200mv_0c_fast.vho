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

-- DATE "04/17/2024 19:28:45"

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

ENTITY 	counter IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 1);
	SW : IN std_logic_vector(1 DOWNTO 0);
	CLOck_50_2 : IN std_logic;
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6)
	);
END counter;

-- Design Ports Information
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOck_50_2	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
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
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOck_50_2 : std_logic;
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL \myclock|CLK_5hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOck_50_2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \CLOck_50_2~input_o\ : std_logic;
SIGNAL \CLOck_50_2~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \myclock|count_5hz[11]~46\ : std_logic;
SIGNAL \myclock|count_5hz[12]~47_combout\ : std_logic;
SIGNAL \myclock|count_5hz[12]~48\ : std_logic;
SIGNAL \myclock|count_5hz[13]~49_combout\ : std_logic;
SIGNAL \myclock|count_5hz[13]~50\ : std_logic;
SIGNAL \myclock|count_5hz[14]~51_combout\ : std_logic;
SIGNAL \myclock|count_5hz[14]~feeder_combout\ : std_logic;
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
SIGNAL \myclock|count_5hz[21]~66\ : std_logic;
SIGNAL \myclock|count_5hz[22]~67_combout\ : std_logic;
SIGNAL \myclock|LessThan0~3_combout\ : std_logic;
SIGNAL \myclock|LessThan0~0_combout\ : std_logic;
SIGNAL \myclock|LessThan0~1_combout\ : std_logic;
SIGNAL \myclock|LessThan0~2_combout\ : std_logic;
SIGNAL \myclock|LessThan0~4_combout\ : std_logic;
SIGNAL \myclock|LessThan0~5_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~feeder_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~q\ : std_logic;
SIGNAL \myclock|CLK_5hz~clkctrl_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \temp~4_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \temp~5_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \temp~11_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \temp~0_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \temp~12_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \temp~13_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \temp~3_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \temp~1_combout\ : std_logic;
SIGNAL \temp~2_combout\ : std_logic;
SIGNAL \temp~10_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \temp~6_combout\ : std_logic;
SIGNAL \temp~7_combout\ : std_logic;
SIGNAL \temp~8_combout\ : std_logic;
SIGNAL \temp~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~63_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[27]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[26]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[25]~66_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[34]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[33]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~74_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~83_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~77_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~78_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[42]~79_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~90_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[49]~89_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~92_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~91_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~98_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[1]~3_combout\ : std_logic;
SIGNAL \digit1~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \digit1~1_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[3]~1_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~117_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[63]~102_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~13\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~14_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[7]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[6]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[5]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[4]~0_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \digit1display|Equal0~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \digit1display|Equal0~1_combout\ : std_logic;
SIGNAL \digit1display|Equal1~0_combout\ : std_logic;
SIGNAL \digit1display|WideOr4~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|op_2~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|remainder[0]~7_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~0_combout\ : std_logic;
SIGNAL \digit1display|Equal7~0_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~1_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~2_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~3_combout\ : std_logic;
SIGNAL \digit1display|Equal9~0_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~combout\ : std_logic;
SIGNAL \digit1display|WideOr4~1_combout\ : std_logic;
SIGNAL \digit1display|WideOr5~combout\ : std_logic;
SIGNAL \digit1display|WideOr4~combout\ : std_logic;
SIGNAL \digit1display|Equal10~2_combout\ : std_logic;
SIGNAL \digit1display|WideOr3~combout\ : std_logic;
SIGNAL \digit1display|WideOr2~combout\ : std_logic;
SIGNAL \digit1display|WideOr1~0_combout\ : std_logic;
SIGNAL \digit1display|WideOr1~combout\ : std_logic;
SIGNAL \digit1display|WideOr0~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[19]~66_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[19]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~73_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~74_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~67_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~51_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[24]~50_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~69_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[32]~54_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[31]~55_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~57_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~52_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[34]~68_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[40]~70_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~71_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~61_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[38]~72_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~63_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~64_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[36]~65_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[0]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~7\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~9\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~11\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~12_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~10_combout\ : std_logic;
SIGNAL \digit2display|Equal0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[2]~0_combout\ : std_logic;
SIGNAL \digit2display|Equal0~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~3_combout\ : std_logic;
SIGNAL \digit2display|WideNor0~1_combout\ : std_logic;
SIGNAL \digit2display|WideNor0~2_combout\ : std_logic;
SIGNAL \digit2display|WideNor0~0_combout\ : std_logic;
SIGNAL \digit2display|WideNor0~3_combout\ : std_logic;
SIGNAL \digit2display|WideOr2~0_combout\ : std_logic;
SIGNAL \digit2display|Equal3~0_combout\ : std_logic;
SIGNAL \digit2display|WideOr2~1_combout\ : std_logic;
SIGNAL \digit2display|WideOr5~combout\ : std_logic;
SIGNAL \digit2display|WideOr4~combout\ : std_logic;
SIGNAL \digit2display|WideOr3~0_combout\ : std_logic;
SIGNAL \digit2display|Equal10~0_combout\ : std_logic;
SIGNAL \digit2display|WideOr3~combout\ : std_logic;
SIGNAL \digit2display|WideOr2~2_combout\ : std_logic;
SIGNAL \digit2display|WideOr2~combout\ : std_logic;
SIGNAL \digit2display|WideOr1~0_combout\ : std_logic;
SIGNAL \digit2display|WideOr0~0_combout\ : std_logic;
SIGNAL temp : std_logic_vector(7 DOWNTO 0);
SIGNAL \digit2display|HEX\ : std_logic_vector(0 TO 6);
SIGNAL \digit1display|HEX\ : std_logic_vector(0 TO 6);
SIGNAL \myclock|count_5hz\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \digit1display|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \myclock|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \digit2display|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \digit2display|ALT_INV_WideOr3~combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOck_50_2 <= CLOck_50_2;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\myclock|CLK_5hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \myclock|CLK_5hz~q\);

\CLOck_50_2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOck_50_2~input_o\);
\digit1display|ALT_INV_WideOr3~combout\ <= NOT \digit1display|WideOr3~combout\;
\myclock|ALT_INV_LessThan0~5_combout\ <= NOT \myclock|LessThan0~5_combout\;
\digit2display|ALT_INV_WideOr0~0_combout\ <= NOT \digit2display|WideOr0~0_combout\;
\digit2display|ALT_INV_WideOr3~combout\ <= NOT \digit2display|WideOr3~combout\;

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|WideOr5~combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\HEX2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|WideOr4~combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\HEX2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|WideOr2~combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|HEX\(2),
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\HEX2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|WideOr1~combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\HEX2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2display|WideOr5~combout\,
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
	i => \digit2display|WideOr4~combout\,
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
	i => \digit2display|ALT_INV_WideOr3~combout\,
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
	i => \digit2display|WideOr2~combout\,
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
	i => \digit2display|HEX\(2),
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
	i => \digit2display|WideOr1~0_combout\,
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
	i => \digit2display|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOIBUF_X19_Y29_N8
\CLOck_50_2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOck_50_2,
	o => \CLOck_50_2~input_o\);

-- Location: CLKCTRL_G12
\CLOck_50_2~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOck_50_2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOck_50_2~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y28_N10
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

-- Location: FF_X19_Y28_N11
\myclock|count_5hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[0]~23_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(0));

-- Location: LCCOMB_X19_Y28_N12
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

-- Location: FF_X19_Y28_N13
\myclock|count_5hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[1]~25_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(1));

-- Location: LCCOMB_X19_Y28_N14
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

-- Location: FF_X19_Y28_N15
\myclock|count_5hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[2]~27_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(2));

-- Location: LCCOMB_X19_Y28_N16
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

-- Location: FF_X19_Y28_N17
\myclock|count_5hz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[3]~29_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(3));

-- Location: LCCOMB_X19_Y28_N18
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

-- Location: FF_X19_Y28_N19
\myclock|count_5hz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[4]~31_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(4));

-- Location: LCCOMB_X19_Y28_N20
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

-- Location: FF_X19_Y28_N21
\myclock|count_5hz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[5]~33_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(5));

-- Location: LCCOMB_X19_Y28_N22
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

-- Location: FF_X19_Y28_N23
\myclock|count_5hz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[6]~35_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(6));

-- Location: LCCOMB_X19_Y28_N24
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

-- Location: FF_X19_Y28_N25
\myclock|count_5hz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[7]~37_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(7));

-- Location: LCCOMB_X19_Y28_N26
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

-- Location: FF_X19_Y28_N27
\myclock|count_5hz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[8]~39_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(8));

-- Location: LCCOMB_X19_Y28_N28
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

-- Location: FF_X19_Y28_N29
\myclock|count_5hz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[9]~41_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(9));

-- Location: LCCOMB_X19_Y28_N30
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

-- Location: FF_X19_Y28_N31
\myclock|count_5hz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[10]~43_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(10));

-- Location: LCCOMB_X19_Y27_N0
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

-- Location: FF_X20_Y28_N27
\myclock|count_5hz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	asdata => \myclock|count_5hz[11]~45_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(11));

-- Location: LCCOMB_X19_Y27_N2
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

-- Location: FF_X19_Y27_N3
\myclock|count_5hz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[12]~47_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(12));

-- Location: LCCOMB_X19_Y27_N4
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

-- Location: FF_X19_Y27_N5
\myclock|count_5hz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[13]~49_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(13));

-- Location: LCCOMB_X19_Y27_N6
\myclock|count_5hz[14]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[14]~51_combout\ = (\myclock|count_5hz\(14) & (\myclock|count_5hz[13]~50\ $ (GND))) # (!\myclock|count_5hz\(14) & (!\myclock|count_5hz[13]~50\ & VCC))
-- \myclock|count_5hz[14]~52\ = CARRY((\myclock|count_5hz\(14) & !\myclock|count_5hz[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_5hz\(14),
	datad => VCC,
	cin => \myclock|count_5hz[13]~50\,
	combout => \myclock|count_5hz[14]~51_combout\,
	cout => \myclock|count_5hz[14]~52\);

-- Location: LCCOMB_X19_Y27_N28
\myclock|count_5hz[14]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[14]~feeder_combout\ = \myclock|count_5hz[14]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myclock|count_5hz[14]~51_combout\,
	combout => \myclock|count_5hz[14]~feeder_combout\);

-- Location: FF_X19_Y27_N29
\myclock|count_5hz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[14]~feeder_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(14));

-- Location: LCCOMB_X19_Y27_N8
\myclock|count_5hz[15]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[15]~53_combout\ = (\myclock|count_5hz\(15) & (!\myclock|count_5hz[14]~52\)) # (!\myclock|count_5hz\(15) & ((\myclock|count_5hz[14]~52\) # (GND)))
-- \myclock|count_5hz[15]~54\ = CARRY((!\myclock|count_5hz[14]~52\) # (!\myclock|count_5hz\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(15),
	datad => VCC,
	cin => \myclock|count_5hz[14]~52\,
	combout => \myclock|count_5hz[15]~53_combout\,
	cout => \myclock|count_5hz[15]~54\);

-- Location: FF_X19_Y27_N9
\myclock|count_5hz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[15]~53_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(15));

-- Location: LCCOMB_X19_Y27_N10
\myclock|count_5hz[16]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz[16]~55_combout\ = (\myclock|count_5hz\(16) & (\myclock|count_5hz[15]~54\ $ (GND))) # (!\myclock|count_5hz\(16) & (!\myclock|count_5hz[15]~54\ & VCC))
-- \myclock|count_5hz[16]~56\ = CARRY((\myclock|count_5hz\(16) & !\myclock|count_5hz[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(16),
	datad => VCC,
	cin => \myclock|count_5hz[15]~54\,
	combout => \myclock|count_5hz[16]~55_combout\,
	cout => \myclock|count_5hz[16]~56\);

-- Location: FF_X19_Y27_N11
\myclock|count_5hz[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[16]~55_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(16));

-- Location: LCCOMB_X19_Y27_N12
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

-- Location: FF_X19_Y27_N13
\myclock|count_5hz[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[17]~57_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(17));

-- Location: LCCOMB_X19_Y27_N14
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

-- Location: FF_X19_Y27_N15
\myclock|count_5hz[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[18]~59_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(18));

-- Location: LCCOMB_X19_Y27_N16
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

-- Location: FF_X19_Y27_N17
\myclock|count_5hz[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[19]~61_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(19));

-- Location: LCCOMB_X19_Y27_N18
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

-- Location: FF_X19_Y27_N19
\myclock|count_5hz[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[20]~63_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(20));

-- Location: LCCOMB_X19_Y27_N20
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

-- Location: FF_X19_Y27_N21
\myclock|count_5hz[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[21]~65_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(21));

-- Location: LCCOMB_X19_Y27_N22
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

-- Location: FF_X19_Y27_N23
\myclock|count_5hz[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|count_5hz[22]~67_combout\,
	sclr => \myclock|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(22));

-- Location: LCCOMB_X19_Y27_N30
\myclock|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~3_combout\ = (!\myclock|count_5hz\(17) & (!\myclock|count_5hz\(15) & !\myclock|count_5hz\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(17),
	datac => \myclock|count_5hz\(15),
	datad => \myclock|count_5hz\(16),
	combout => \myclock|LessThan0~3_combout\);

-- Location: LCCOMB_X19_Y28_N8
\myclock|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~0_combout\ = (((!\myclock|count_5hz\(6) & !\myclock|count_5hz\(7))) # (!\myclock|count_5hz\(9))) # (!\myclock|count_5hz\(8))

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
	combout => \myclock|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y28_N2
\myclock|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~1_combout\ = (!\myclock|count_5hz\(13) & (!\myclock|count_5hz\(12) & ((!\myclock|count_5hz\(11)) # (!\myclock|count_5hz\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(10),
	datab => \myclock|count_5hz\(11),
	datac => \myclock|count_5hz\(13),
	datad => \myclock|count_5hz\(12),
	combout => \myclock|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y28_N0
\myclock|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~2_combout\ = ((\myclock|LessThan0~1_combout\ & ((\myclock|LessThan0~0_combout\) # (!\myclock|count_5hz\(11))))) # (!\myclock|count_5hz\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(11),
	datab => \myclock|count_5hz\(14),
	datac => \myclock|LessThan0~0_combout\,
	datad => \myclock|LessThan0~1_combout\,
	combout => \myclock|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y28_N6
\myclock|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~4_combout\ = (((\myclock|LessThan0~3_combout\ & \myclock|LessThan0~2_combout\)) # (!\myclock|count_5hz\(19))) # (!\myclock|count_5hz\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(18),
	datab => \myclock|count_5hz\(19),
	datac => \myclock|LessThan0~3_combout\,
	datad => \myclock|LessThan0~2_combout\,
	combout => \myclock|LessThan0~4_combout\);

-- Location: LCCOMB_X19_Y28_N4
\myclock|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~5_combout\ = ((!\myclock|count_5hz\(20) & (!\myclock|count_5hz\(21) & \myclock|LessThan0~4_combout\))) # (!\myclock|count_5hz\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_5hz\(20),
	datab => \myclock|count_5hz\(22),
	datac => \myclock|count_5hz\(21),
	datad => \myclock|LessThan0~4_combout\,
	combout => \myclock|LessThan0~5_combout\);

-- Location: LCCOMB_X20_Y28_N30
\myclock|CLK_5hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_5hz~0_combout\ = \myclock|CLK_5hz~q\ $ (!\myclock|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myclock|CLK_5hz~q\,
	datac => \myclock|LessThan0~5_combout\,
	combout => \myclock|CLK_5hz~0_combout\);

-- Location: LCCOMB_X20_Y28_N28
\myclock|CLK_5hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_5hz~feeder_combout\ = \myclock|CLK_5hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myclock|CLK_5hz~0_combout\,
	combout => \myclock|CLK_5hz~feeder_combout\);

-- Location: FF_X20_Y28_N29
\myclock|CLK_5hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50_2~inputclkctrl_outclk\,
	d => \myclock|CLK_5hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|CLK_5hz~q\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X31_Y28_N8
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = temp(0) $ (VCC)
-- \Add1~1\ = CARRY(temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X32_Y28_N6
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = temp(0) $ (VCC)
-- \Add0~1\ = CARRY(temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X31_Y28_N30
\temp~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~4_combout\ = (\SW[0]~input_o\ & (\Add1~0_combout\)) # (!\SW[0]~input_o\ & ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \Add1~0_combout\,
	datad => \Add0~0_combout\,
	combout => \temp~4_combout\);

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

-- Location: FF_X31_Y28_N31
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~4_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LCCOMB_X32_Y28_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (temp(1) & (!\Add0~1\)) # (!temp(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X31_Y28_N10
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (temp(1) & (\Add1~1\ & VCC)) # (!temp(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!temp(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X31_Y28_N28
\temp~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~5_combout\ = (\SW[0]~input_o\ & ((\Add1~2_combout\))) # (!\SW[0]~input_o\ & (\Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \Add0~2_combout\,
	datad => \Add1~2_combout\,
	combout => \temp~5_combout\);

-- Location: FF_X31_Y28_N29
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~5_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LCCOMB_X32_Y28_N10
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (temp(2) & (\Add0~3\ $ (GND))) # (!temp(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((temp(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X31_Y28_N12
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (temp(2) & ((GND) # (!\Add1~3\))) # (!temp(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((temp(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X31_Y28_N14
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (temp(3) & (\Add1~5\ & VCC)) # (!temp(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!temp(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X32_Y28_N12
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (temp(3) & (!\Add0~5\)) # (!temp(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!temp(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X32_Y28_N14
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (temp(4) & (\Add0~7\ $ (GND))) # (!temp(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((temp(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X32_Y28_N0
\temp~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~11_combout\ = (\SW[0]~input_o\ & (((\Add1~8_combout\ & \temp~2_combout\)))) # (!\SW[0]~input_o\ & ((\Add0~8_combout\) # ((\Add1~8_combout\ & \temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Add0~8_combout\,
	datac => \Add1~8_combout\,
	datad => \temp~2_combout\,
	combout => \temp~11_combout\);

-- Location: FF_X32_Y28_N1
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~11_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LCCOMB_X31_Y28_N16
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (temp(4) & ((GND) # (!\Add1~7\))) # (!temp(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((temp(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X31_Y28_N26
\temp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~0_combout\ = (\Add1~2_combout\ & (\Add1~0_combout\ & (\Add1~6_combout\ & \Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add1~0_combout\,
	datac => \Add1~6_combout\,
	datad => \Add1~8_combout\,
	combout => \temp~0_combout\);

-- Location: LCCOMB_X32_Y28_N16
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (temp(5) & (!\Add0~9\)) # (!temp(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!temp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X32_Y28_N30
\temp~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~12_combout\ = (\SW[0]~input_o\ & ((\Add1~10_combout\) # ((\Add0~10_combout\ & \temp~8_combout\)))) # (!\SW[0]~input_o\ & (\Add0~10_combout\ & (\temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Add0~10_combout\,
	datac => \temp~8_combout\,
	datad => \Add1~10_combout\,
	combout => \temp~12_combout\);

-- Location: FF_X32_Y28_N31
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~12_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LCCOMB_X31_Y28_N18
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (temp(5) & (\Add1~9\ & VCC)) # (!temp(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!temp(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X32_Y28_N18
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (temp(6) & (\Add0~11\ $ (GND))) # (!temp(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((temp(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X31_Y28_N20
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (temp(6) & ((GND) # (!\Add1~11\))) # (!temp(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((temp(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X32_Y28_N28
\temp~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~13_combout\ = (\SW[0]~input_o\ & ((\Add1~12_combout\) # ((\Add0~12_combout\ & \temp~8_combout\)))) # (!\SW[0]~input_o\ & (\Add0~12_combout\ & (\temp~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Add0~12_combout\,
	datac => \temp~8_combout\,
	datad => \Add1~12_combout\,
	combout => \temp~13_combout\);

-- Location: FF_X32_Y28_N29
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~13_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LCCOMB_X32_Y28_N20
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \Add0~13\ $ (temp(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temp(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X31_Y28_N24
\temp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~3_combout\ = (\SW[0]~input_o\ & (\Add1~14_combout\ & ((\temp~2_combout\)))) # (!\SW[0]~input_o\ & ((\Add0~14_combout\) # ((\Add1~14_combout\ & \temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \Add1~14_combout\,
	datac => \Add0~14_combout\,
	datad => \temp~2_combout\,
	combout => \temp~3_combout\);

-- Location: FF_X31_Y28_N25
\temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~3_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(7));

-- Location: LCCOMB_X31_Y28_N22
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \Add1~13\ $ (!temp(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temp(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X31_Y28_N0
\temp~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~1_combout\ = (\Add1~4_combout\ & (\Add1~10_combout\ & (\Add1~14_combout\ & \Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add1~10_combout\,
	datac => \Add1~14_combout\,
	datad => \Add1~12_combout\,
	combout => \temp~1_combout\);

-- Location: LCCOMB_X31_Y28_N2
\temp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~2_combout\ = (\SW[0]~input_o\ & ((!\temp~1_combout\) # (!\temp~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \temp~0_combout\,
	datad => \temp~1_combout\,
	combout => \temp~2_combout\);

-- Location: LCCOMB_X32_Y28_N2
\temp~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~10_combout\ = (\Add0~6_combout\ & (((\Add1~6_combout\ & \temp~2_combout\)) # (!\SW[0]~input_o\))) # (!\Add0~6_combout\ & (((\Add1~6_combout\ & \temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \SW[0]~input_o\,
	datac => \Add1~6_combout\,
	datad => \temp~2_combout\,
	combout => \temp~10_combout\);

-- Location: FF_X32_Y28_N3
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~10_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LCCOMB_X32_Y28_N22
\temp~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~6_combout\ = (\Add0~4_combout\ & (!\Add0~0_combout\ & (!\Add0~2_combout\ & !\Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add0~0_combout\,
	datac => \Add0~2_combout\,
	datad => \Add0~6_combout\,
	combout => \temp~6_combout\);

-- Location: LCCOMB_X32_Y28_N24
\temp~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~7_combout\ = (\Add0~10_combout\ & (!\Add0~14_combout\ & (!\Add0~8_combout\ & \Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \Add0~14_combout\,
	datac => \Add0~8_combout\,
	datad => \Add0~12_combout\,
	combout => \temp~7_combout\);

-- Location: LCCOMB_X32_Y28_N26
\temp~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~8_combout\ = (!\SW[0]~input_o\ & ((!\temp~7_combout\) # (!\temp~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \temp~6_combout\,
	datad => \temp~7_combout\,
	combout => \temp~8_combout\);

-- Location: LCCOMB_X32_Y28_N4
\temp~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp~9_combout\ = (\Add0~4_combout\ & ((\temp~8_combout\) # ((\Add1~4_combout\ & \temp~2_combout\)))) # (!\Add0~4_combout\ & (\Add1~4_combout\ & ((\temp~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Add1~4_combout\,
	datac => \temp~8_combout\,
	datad => \temp~2_combout\,
	combout => \temp~9_combout\);

-- Location: FF_X32_Y28_N5
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp~9_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LCCOMB_X28_Y22_N0
\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ = temp(2) $ (((temp(7) & ((temp(0)) # (temp(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(1),
	datac => temp(2),
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\);

-- Location: LCCOMB_X28_Y23_N0
\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ = (!temp(1) & (!temp(0) & (temp(7) & !temp(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => temp(0),
	datac => temp(7),
	datad => temp(2),
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\);

-- Location: LCCOMB_X28_Y23_N10
\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((temp(3) & (!temp(7) & temp(4))) # (!temp(3) & (temp(7) & !temp(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => temp(7),
	datad => temp(4),
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\);

-- Location: LCCOMB_X31_Y24_N28
\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((temp(6) & (temp(5) & !temp(7))) # (!temp(6) & (!temp(5) & temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datac => temp(5),
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\);

-- Location: LCCOMB_X31_Y24_N6
\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ = temp(6) $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & (temp(5))) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ & ((temp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datac => temp(5),
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\);

-- Location: LCCOMB_X31_Y24_N0
\Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ = temp(7) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (temp(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => temp(5),
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\);

-- Location: LCCOMB_X30_Y24_N16
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X30_Y24_N18
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X30_Y24_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X30_Y24_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X30_Y24_N2
\Mod0|auto_generated|divider|divider|StageOut[27]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~63_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~63_combout\);

-- Location: LCCOMB_X30_Y24_N8
\Mod0|auto_generated|divider|divider|StageOut[27]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[27]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[27]~62_combout\);

-- Location: LCCOMB_X30_Y24_N30
\Mod0|auto_generated|divider|divider|StageOut[26]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~65_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~65_combout\);

-- Location: LCCOMB_X30_Y24_N12
\Mod0|auto_generated|divider|divider|StageOut[26]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[26]~64_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[26]~64_combout\);

-- Location: LCCOMB_X31_Y24_N24
\Mod0|auto_generated|divider|divider|StageOut[25]~103\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (temp(7) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (temp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => temp(7),
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => temp(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\);

-- Location: LCCOMB_X29_Y24_N4
\Mod0|auto_generated|divider|divider|StageOut[25]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[25]~66_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[25]~66_combout\);

-- Location: LCCOMB_X28_Y23_N20
\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ = temp(4) $ (((\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & (temp(3))) # (!\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ & ((temp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => temp(7),
	datad => temp(4),
	combout => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\);

-- Location: LCCOMB_X30_Y24_N6
\Mod0|auto_generated|divider|divider|StageOut[24]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~68_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~68_combout\);

-- Location: LCCOMB_X30_Y24_N24
\Mod0|auto_generated|divider|divider|StageOut[24]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~67_combout\);

-- Location: LCCOMB_X29_Y24_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[24]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~67_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[24]~68_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[24]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~68_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~67_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X29_Y24_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[25]~66_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[25]~66_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[25]~66_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[25]~66_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X29_Y24_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[26]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~64_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[26]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~64_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[26]~65_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[26]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[26]~65_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[26]~64_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X29_Y24_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[27]~63_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[27]~62_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~63_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[27]~62_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[27]~63_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[27]~62_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[27]~63_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[27]~62_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X29_Y24_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X29_Y23_N12
\Mod0|auto_generated|divider|divider|StageOut[36]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~69_combout\);

-- Location: LCCOMB_X29_Y23_N4
\Mod0|auto_generated|divider|divider|StageOut[36]~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\);

-- Location: LCCOMB_X29_Y24_N0
\Mod0|auto_generated|divider|divider|StageOut[35]~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\);

-- Location: LCCOMB_X28_Y23_N18
\Mod0|auto_generated|divider|divider|StageOut[35]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~70_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~70_combout\);

-- Location: LCCOMB_X29_Y24_N30
\Mod0|auto_generated|divider|divider|StageOut[34]~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[25]~103_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\);

-- Location: LCCOMB_X29_Y23_N2
\Mod0|auto_generated|divider|divider|StageOut[34]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[34]~71_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[34]~71_combout\);

-- Location: LCCOMB_X28_Y23_N12
\Mod0|auto_generated|divider|divider|StageOut[33]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~72_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~72_combout\);

-- Location: LCCOMB_X28_Y23_N30
\Mod0|auto_generated|divider|divider|StageOut[33]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[33]~73_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[33]~73_combout\);

-- Location: LCCOMB_X28_Y23_N16
\Mod0|auto_generated|divider|divider|StageOut[32]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (temp(3) $ (temp(7) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => temp(7),
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\);

-- Location: LCCOMB_X29_Y23_N16
\Mod0|auto_generated|divider|divider|StageOut[32]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~74_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (temp(3) $ (temp(7) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => temp(3),
	datac => temp(7),
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~74_combout\);

-- Location: LCCOMB_X29_Y23_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~74_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[32]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~74_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X29_Y23_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[33]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[33]~73_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~72_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[33]~73_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[33]~72_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[33]~73_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[33]~72_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[33]~73_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X29_Y23_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~71_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~71_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[34]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[34]~71_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X29_Y23_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[35]~70_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[35]~70_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[35]~70_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~70_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X29_Y23_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[36]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~69_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[36]~69_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X29_Y23_N28
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X30_Y23_N22
\Mod0|auto_generated|divider|divider|StageOut[40]~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\);

-- Location: LCCOMB_X30_Y23_N4
\Mod0|auto_generated|divider|divider|StageOut[40]~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~83_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~83_combout\);

-- Location: LCCOMB_X30_Y23_N8
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~83_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[40]~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~82_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~83_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X29_Y23_N0
\Mod0|auto_generated|divider|divider|StageOut[45]~105\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[36]~118_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\);

-- Location: LCCOMB_X30_Y23_N0
\Mod0|auto_generated|divider|divider|StageOut[45]~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\);

-- Location: LCCOMB_X29_Y23_N14
\Mod0|auto_generated|divider|divider|StageOut[44]~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~119_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\);

-- Location: LCCOMB_X30_Y23_N6
\Mod0|auto_generated|divider|divider|StageOut[44]~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~77_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~77_combout\);

-- Location: LCCOMB_X29_Y23_N8
\Mod0|auto_generated|divider|divider|StageOut[43]~107\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[34]~104_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\);

-- Location: LCCOMB_X30_Y23_N28
\Mod0|auto_generated|divider|divider|StageOut[43]~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~78_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~78_combout\);

-- Location: LCCOMB_X29_Y23_N10
\Mod0|auto_generated|divider|divider|StageOut[42]~120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\);

-- Location: LCCOMB_X30_Y23_N2
\Mod0|auto_generated|divider|divider|StageOut[42]~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[42]~79_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[42]~79_combout\);

-- Location: LCCOMB_X29_Y23_N6
\Mod0|auto_generated|divider|divider|StageOut[41]~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ (temp(3) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datab => temp(3),
	datac => temp(7),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\);

-- Location: LCCOMB_X31_Y22_N12
\Mod0|auto_generated|divider|divider|StageOut[41]~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\);

-- Location: LCCOMB_X30_Y23_N10
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[41]~81_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X30_Y23_N12
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~79_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~79_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[42]~79_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[42]~79_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X30_Y23_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[43]~78_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~78_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[43]~78_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[43]~78_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X30_Y23_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[44]~77_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[44]~77_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[44]~77_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[44]~77_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X30_Y23_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~76_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X30_Y23_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X30_Y23_N30
\Mod0|auto_generated|divider|divider|StageOut[54]~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[45]~105_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\);

-- Location: LCCOMB_X32_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[54]~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\);

-- Location: LCCOMB_X32_Y22_N30
\Mod0|auto_generated|divider|divider|StageOut[53]~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\);

-- Location: LCCOMB_X30_Y23_N24
\Mod0|auto_generated|divider|divider|StageOut[53]~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[44]~106_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\);

-- Location: LCCOMB_X29_Y23_N30
\Mod0|auto_generated|divider|divider|StageOut[52]~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[43]~107_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\);

-- Location: LCCOMB_X32_Y22_N16
\Mod0|auto_generated|divider|divider|StageOut[52]~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\);

-- Location: LCCOMB_X32_Y22_N22
\Mod0|auto_generated|divider|divider|StageOut[51]~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\);

-- Location: LCCOMB_X30_Y23_N26
\Mod0|auto_generated|divider|divider|StageOut[51]~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[42]~120_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\);

-- Location: LCCOMB_X31_Y22_N26
\Mod0|auto_generated|divider|divider|StageOut[50]~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[41]~80_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\);

-- Location: LCCOMB_X31_Y22_N30
\Mod0|auto_generated|divider|divider|StageOut[50]~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\);

-- Location: LCCOMB_X31_Y22_N8
\Mod0|auto_generated|divider|divider|StageOut[49]~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~90_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~90_combout\);

-- Location: LCCOMB_X30_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[49]~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[49]~89_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[49]~89_combout\);

-- Location: LCCOMB_X31_Y26_N18
\Mod0|auto_generated|divider|divider|StageOut[48]~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~92_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (temp(1) $ (((temp(0) & temp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => temp(1),
	datac => temp(0),
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~92_combout\);

-- Location: LCCOMB_X31_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[48]~91\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~91_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (temp(1) $ (((temp(0) & temp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => temp(1),
	datac => temp(0),
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~91_combout\);

-- Location: LCCOMB_X32_Y22_N0
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[48]~92_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~91_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[48]~92_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[48]~91_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[48]~92_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~91_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X32_Y22_N2
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[49]~90_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[49]~89_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~90_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[49]~89_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[49]~90_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[49]~89_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[49]~90_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[49]~89_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X32_Y22_N4
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[50]~88_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X32_Y22_N6
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[51]~87_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\);

-- Location: LCCOMB_X32_Y22_N8
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[52]~86_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\);

-- Location: LCCOMB_X32_Y22_N10
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[53]~85_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\);

-- Location: LCCOMB_X32_Y22_N12
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((((\Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ & ((\Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~84_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~11\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\);

-- Location: LCCOMB_X32_Y22_N14
\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~13\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X31_Y22_N2
\Mod0|auto_generated|divider|divider|StageOut[58]~121\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- ((\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\);

-- Location: LCCOMB_X31_Y22_N6
\Mod0|auto_generated|divider|divider|StageOut[58]~95\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\);

-- Location: LCCOMB_X31_Y22_N22
\Mod0|auto_generated|divider|divider|StageOut[57]~97\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\);

-- Location: LCCOMB_X31_Y22_N24
\Mod0|auto_generated|divider|divider|StageOut[57]~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (temp(1) $ (((temp(7) & temp(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(0),
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => temp(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\);

-- Location: LCCOMB_X31_Y22_N4
\Mod0|auto_generated|divider|divider|StageOut[56]~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~98_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => temp(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~98_combout\);

-- Location: LCCOMB_X31_Y22_N18
\Mod0|auto_generated|divider|divider|StageOut[56]~99\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => temp(0),
	combout => \Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\);

-- Location: LCCOMB_X30_Y22_N4
\Mod0|auto_generated|divider|op_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~0_combout\ = (((!\Mod0|auto_generated|divider|divider|StageOut[56]~98_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\)))
-- \Mod0|auto_generated|divider|op_2~1\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[56]~98_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[56]~98_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[56]~99_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|op_2~0_combout\,
	cout => \Mod0|auto_generated|divider|op_2~1\);

-- Location: LCCOMB_X30_Y22_N6
\Mod0|auto_generated|divider|op_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~2_combout\ = (\Mod0|auto_generated|divider|op_2~1\ & ((\Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\)))) # 
-- (!\Mod0|auto_generated|divider|op_2~1\ & (((!\Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|op_2~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\) # (!\Mod0|auto_generated|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~1\,
	combout => \Mod0|auto_generated|divider|op_2~2_combout\,
	cout => \Mod0|auto_generated|divider|op_2~3\);

-- Location: LCCOMB_X30_Y22_N8
\Mod0|auto_generated|divider|op_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~4_combout\ = (\Mod0|auto_generated|divider|op_2~3\ & (!\Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\ & VCC))) # 
-- (!\Mod0|auto_generated|divider|op_2~3\ & ((((!\Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\)))))
-- \Mod0|auto_generated|divider|op_2~5\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\ & !\Mod0|auto_generated|divider|op_2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~3\,
	combout => \Mod0|auto_generated|divider|op_2~4_combout\,
	cout => \Mod0|auto_generated|divider|op_2~5\);

-- Location: LCCOMB_X30_Y22_N30
\Mod0|auto_generated|divider|remainder[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[2]~2_combout\ = (temp(7) & (((\Mod0|auto_generated|divider|op_2~4_combout\)))) # (!temp(7) & ((\Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[58]~121_combout\,
	datab => \Mod0|auto_generated|divider|op_2~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[58]~95_combout\,
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|remainder[2]~2_combout\);

-- Location: LCCOMB_X30_Y22_N0
\Mod0|auto_generated|divider|remainder[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[1]~3_combout\ = (temp(7) & (((\Mod0|auto_generated|divider|op_2~2_combout\)))) # (!temp(7) & ((\Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[57]~97_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[57]~96_combout\,
	datac => \Mod0|auto_generated|divider|op_2~2_combout\,
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|remainder[1]~3_combout\);

-- Location: LCCOMB_X31_Y26_N28
\digit1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1~0_combout\ = temp(0) $ (temp(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(0),
	datad => temp(7),
	combout => \digit1~0_combout\);

-- Location: LCCOMB_X31_Y24_N8
\Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (\digit1~0_combout\ & (temp(7) $ (VCC))) # (!\digit1~0_combout\ & (temp(7) & VCC))
-- \Add2~1\ = CARRY((\digit1~0_combout\ & temp(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1~0_combout\,
	datab => temp(7),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X31_Y24_N10
\Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~1\ & (temp(1) $ ((!temp(7))))) # (!\Add2~1\ & ((temp(1) $ (temp(7))) # (GND)))
-- \Add2~3\ = CARRY((temp(1) $ (!temp(7))) # (!\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(1),
	datab => temp(7),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X31_Y24_N12
\Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (\Add2~3\ & ((temp(2) $ (temp(7))))) # (!\Add2~3\ & (temp(2) $ (temp(7) $ (VCC))))
-- \Add2~5\ = CARRY((!\Add2~3\ & (temp(2) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datab => temp(7),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X31_Y24_N14
\Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (\Add2~5\ & (temp(3) $ ((!temp(7))))) # (!\Add2~5\ & ((temp(3) $ (temp(7))) # (GND)))
-- \Add2~7\ = CARRY((temp(3) $ (!temp(7))) # (!\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => temp(7),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X31_Y24_N26
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\Add2~2_combout\ & (\Add2~6_combout\ & (!\Add2~0_combout\ & !\Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~0_combout\,
	datad => \Add2~4_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X31_Y24_N16
\Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (\Add2~7\ & ((temp(4) $ (temp(7))))) # (!\Add2~7\ & (temp(4) $ (temp(7) $ (VCC))))
-- \Add2~9\ = CARRY((!\Add2~7\ & (temp(4) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(4),
	datab => temp(7),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X31_Y24_N18
\Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (\Add2~9\ & (temp(5) $ ((!temp(7))))) # (!\Add2~9\ & ((temp(5) $ (temp(7))) # (GND)))
-- \Add2~11\ = CARRY((temp(5) $ (!temp(7))) # (!\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datab => temp(7),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X31_Y24_N20
\Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (\Add2~11\ & ((temp(6) $ (temp(7))))) # (!\Add2~11\ & (temp(6) $ (temp(7) $ (VCC))))
-- \Add2~13\ = CARRY((!\Add2~11\ & (temp(6) $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(6),
	datab => temp(7),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X31_Y24_N22
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

-- Location: LCCOMB_X31_Y24_N4
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\Add2~8_combout\ & (!\Add2~10_combout\ & (!\Add2~14_combout\ & !\Add2~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~10_combout\,
	datac => \Add2~14_combout\,
	datad => \Add2~12_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X31_Y24_N2
\digit1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1~1_combout\ = (temp(7) & ((!\Equal2~1_combout\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datad => temp(7),
	combout => \digit1~1_combout\);

-- Location: LCCOMB_X30_Y26_N14
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\Mod0|auto_generated|divider|remainder[1]~3_combout\ & (\digit1~1_combout\ $ (VCC))) # (!\Mod0|auto_generated|divider|remainder[1]~3_combout\ & (\digit1~1_combout\ & VCC))
-- \Add3~1\ = CARRY((\Mod0|auto_generated|divider|remainder[1]~3_combout\ & \digit1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[1]~3_combout\,
	datab => \digit1~1_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X30_Y26_N16
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Mod0|auto_generated|divider|remainder[2]~2_combout\ & (!\Add3~1\)) # (!\Mod0|auto_generated|divider|remainder[2]~2_combout\ & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!\Mod0|auto_generated|divider|remainder[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[2]~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X31_Y22_N16
\Mod0|auto_generated|divider|divider|StageOut[59]~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\);

-- Location: LCCOMB_X31_Y22_N0
\Mod0|auto_generated|divider|divider|StageOut[59]~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[50]~112_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\);

-- Location: LCCOMB_X30_Y22_N10
\Mod0|auto_generated|divider|op_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~6_combout\ = (\Mod0|auto_generated|divider|op_2~5\ & ((\Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\)))) # 
-- (!\Mod0|auto_generated|divider|op_2~5\ & (((!\Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|op_2~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\) # (!\Mod0|auto_generated|divider|op_2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~5\,
	combout => \Mod0|auto_generated|divider|op_2~6_combout\,
	cout => \Mod0|auto_generated|divider|op_2~7\);

-- Location: LCCOMB_X30_Y22_N28
\Mod0|auto_generated|divider|remainder[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[3]~1_combout\ = (temp(7) & (\Mod0|auto_generated|divider|op_2~6_combout\)) # (!temp(7) & (((\Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|op_2~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[59]~114_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[59]~94_combout\,
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|remainder[3]~1_combout\);

-- Location: LCCOMB_X30_Y26_N18
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Mod0|auto_generated|divider|remainder[3]~1_combout\ $ (\digit1~1_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Mod0|auto_generated|divider|remainder[3]~1_combout\ & ((\digit1~1_combout\) # (!\Add3~3\))) # (!\Mod0|auto_generated|divider|remainder[3]~1_combout\ & (\digit1~1_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[3]~1_combout\,
	datab => \digit1~1_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X32_Y22_N18
\Mod0|auto_generated|divider|divider|StageOut[63]~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~117_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[54]~108_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~117_combout\);

-- Location: LCCOMB_X31_Y22_N20
\Mod0|auto_generated|divider|divider|StageOut[63]~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[63]~102_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~12_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[63]~102_combout\);

-- Location: LCCOMB_X31_Y22_N10
\Mod0|auto_generated|divider|divider|StageOut[62]~101\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\);

-- Location: LCCOMB_X32_Y22_N28
\Mod0|auto_generated|divider|divider|StageOut[62]~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[53]~109_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\);

-- Location: LCCOMB_X32_Y22_N26
\Mod0|auto_generated|divider|divider|StageOut[61]~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[52]~110_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\);

-- Location: LCCOMB_X31_Y22_N28
\Mod0|auto_generated|divider|divider|StageOut[61]~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\);

-- Location: LCCOMB_X31_Y22_N14
\Mod0|auto_generated|divider|divider|StageOut[60]~93\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\);

-- Location: LCCOMB_X32_Y22_N20
\Mod0|auto_generated|divider|divider|StageOut[60]~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[51]~111_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\);

-- Location: LCCOMB_X30_Y22_N12
\Mod0|auto_generated|divider|op_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~8_combout\ = (\Mod0|auto_generated|divider|op_2~7\ & (!\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\ & VCC))) # 
-- (!\Mod0|auto_generated|divider|op_2~7\ & ((((!\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\)))))
-- \Mod0|auto_generated|divider|op_2~9\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\ & !\Mod0|auto_generated|divider|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~7\,
	combout => \Mod0|auto_generated|divider|op_2~8_combout\,
	cout => \Mod0|auto_generated|divider|op_2~9\);

-- Location: LCCOMB_X30_Y22_N14
\Mod0|auto_generated|divider|op_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~10_combout\ = (\Mod0|auto_generated|divider|op_2~9\ & ((\Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\)))) # 
-- (!\Mod0|auto_generated|divider|op_2~9\ & (((!\Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\)) # (GND)))
-- \Mod0|auto_generated|divider|op_2~11\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\) # (!\Mod0|auto_generated|divider|op_2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~9\,
	combout => \Mod0|auto_generated|divider|op_2~10_combout\,
	cout => \Mod0|auto_generated|divider|op_2~11\);

-- Location: LCCOMB_X30_Y22_N16
\Mod0|auto_generated|divider|op_2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~12_combout\ = (\Mod0|auto_generated|divider|op_2~11\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\ & VCC))) # 
-- (!\Mod0|auto_generated|divider|op_2~11\ & ((((!\Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\)))))
-- \Mod0|auto_generated|divider|op_2~13\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\ & !\Mod0|auto_generated|divider|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|op_2~11\,
	combout => \Mod0|auto_generated|divider|op_2~12_combout\,
	cout => \Mod0|auto_generated|divider|op_2~13\);

-- Location: LCCOMB_X30_Y22_N18
\Mod0|auto_generated|divider|op_2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|op_2~14_combout\ = \Mod0|auto_generated|divider|op_2~13\ $ (((!\Mod0|auto_generated|divider|divider|StageOut[63]~102_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[63]~117_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~102_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[63]~117_combout\,
	cin => \Mod0|auto_generated|divider|op_2~13\,
	combout => \Mod0|auto_generated|divider|op_2~14_combout\);

-- Location: LCCOMB_X30_Y22_N26
\Mod0|auto_generated|divider|remainder[7]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[7]~6_combout\ = (temp(7) & (((\Mod0|auto_generated|divider|op_2~14_combout\)))) # (!temp(7) & ((\Mod0|auto_generated|divider|divider|StageOut[63]~117_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[63]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[63]~117_combout\,
	datab => \Mod0|auto_generated|divider|op_2~14_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[63]~102_combout\,
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|remainder[7]~6_combout\);

-- Location: LCCOMB_X30_Y22_N20
\Mod0|auto_generated|divider|remainder[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[6]~5_combout\ = (temp(7) & (((\Mod0|auto_generated|divider|op_2~12_combout\)))) # (!temp(7) & ((\Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[62]~101_combout\,
	datab => temp(7),
	datac => \Mod0|auto_generated|divider|op_2~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[62]~116_combout\,
	combout => \Mod0|auto_generated|divider|remainder[6]~5_combout\);

-- Location: LCCOMB_X30_Y22_N2
\Mod0|auto_generated|divider|remainder[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[5]~4_combout\ = (temp(7) & (((\Mod0|auto_generated|divider|op_2~10_combout\)))) # (!temp(7) & ((\Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[61]~115_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[61]~100_combout\,
	datac => \Mod0|auto_generated|divider|op_2~10_combout\,
	datad => temp(7),
	combout => \Mod0|auto_generated|divider|remainder[5]~4_combout\);

-- Location: LCCOMB_X30_Y22_N22
\Mod0|auto_generated|divider|remainder[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[4]~0_combout\ = (temp(7) & (\Mod0|auto_generated|divider|op_2~8_combout\)) # (!temp(7) & (((\Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|op_2~8_combout\,
	datab => temp(7),
	datac => \Mod0|auto_generated|divider|divider|StageOut[60]~93_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[60]~113_combout\,
	combout => \Mod0|auto_generated|divider|remainder[4]~0_combout\);

-- Location: LCCOMB_X30_Y26_N20
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Mod0|auto_generated|divider|remainder[4]~0_combout\ & (!\Add3~5\)) # (!\Mod0|auto_generated|divider|remainder[4]~0_combout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\Mod0|auto_generated|divider|remainder[4]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|remainder[4]~0_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X30_Y26_N22
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Mod0|auto_generated|divider|remainder[5]~4_combout\ & (\Add3~7\ $ (GND))) # (!\Mod0|auto_generated|divider|remainder[5]~4_combout\ & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((\Mod0|auto_generated|divider|remainder[5]~4_combout\ & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|remainder[5]~4_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X30_Y26_N24
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Mod0|auto_generated|divider|remainder[6]~5_combout\ & (!\Add3~9\)) # (!\Mod0|auto_generated|divider|remainder[6]~5_combout\ & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!\Mod0|auto_generated|divider|remainder[6]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|remainder[6]~5_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X30_Y26_N26
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Mod0|auto_generated|divider|remainder[7]~6_combout\ & (\Add3~11\ $ (GND))) # (!\Mod0|auto_generated|divider|remainder[7]~6_combout\ & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((\Mod0|auto_generated|divider|remainder[7]~6_combout\ & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|remainder[7]~6_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X30_Y26_N4
\digit1display|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal0~0_combout\ = (!\Add3~12_combout\ & (!\Add3~10_combout\ & (!\Add3~8_combout\ & !\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \Add3~10_combout\,
	datac => \Add3~8_combout\,
	datad => \Add3~6_combout\,
	combout => \digit1display|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y26_N28
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = \Add3~13\ $ (\Mod0|auto_generated|divider|remainder[7]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Mod0|auto_generated|divider|remainder[7]~6_combout\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: LCCOMB_X30_Y26_N6
\digit1display|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal0~1_combout\ = (!\Add3~4_combout\ & (\digit1display|Equal0~0_combout\ & (!\Add3~0_combout\ & !\Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \digit1display|Equal0~0_combout\,
	datac => \Add3~0_combout\,
	datad => \Add3~14_combout\,
	combout => \digit1display|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y26_N12
\digit1display|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal1~0_combout\ = (!\Add3~4_combout\ & (\digit1display|Equal0~0_combout\ & (\Add3~0_combout\ & !\Add3~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \digit1display|Equal0~0_combout\,
	datac => \Add3~0_combout\,
	datad => \Add3~14_combout\,
	combout => \digit1display|Equal1~0_combout\);

-- Location: LCCOMB_X31_Y26_N30
\digit1display|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr4~0_combout\ = (\Add3~2_combout\ & ((\digit1display|Equal1~0_combout\))) # (!\Add3~2_combout\ & (\digit1display|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit1display|Equal0~1_combout\,
	datac => \Add3~2_combout\,
	datad => \digit1display|Equal1~0_combout\,
	combout => \digit1display|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y26_N2
\Mod0|auto_generated|divider|remainder[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|remainder[0]~7_combout\ = (temp(7) & ((\Mod0|auto_generated|divider|op_2~0_combout\))) # (!temp(7) & (temp(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => temp(0),
	datad => \Mod0|auto_generated|divider|op_2~0_combout\,
	combout => \Mod0|auto_generated|divider|remainder[0]~7_combout\);

-- Location: LCCOMB_X31_Y26_N14
\digit1display|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~0_combout\ = (\Mod0|auto_generated|divider|remainder[0]~7_combout\ & ((\Add3~2_combout\ & ((\digit1display|Equal0~1_combout\))) # (!\Add3~2_combout\ & (\digit1display|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|Equal1~0_combout\,
	datab => \digit1display|Equal0~1_combout\,
	datac => \Add3~2_combout\,
	datad => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	combout => \digit1display|WideNor0~0_combout\);

-- Location: LCCOMB_X30_Y26_N30
\digit1display|Equal7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal7~0_combout\ = (\Add3~4_combout\ & (!\Add3~14_combout\ & (\digit1display|Equal0~0_combout\ & !\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add3~14_combout\,
	datac => \digit1display|Equal0~0_combout\,
	datad => \Add3~2_combout\,
	combout => \digit1display|Equal7~0_combout\);

-- Location: LCCOMB_X31_Y26_N8
\digit1display|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~1_combout\ = (\Add3~2_combout\ & ((\Mod0|auto_generated|divider|remainder[0]~7_combout\ & (!\digit1display|Equal1~0_combout\)) # (!\Mod0|auto_generated|divider|remainder[0]~7_combout\ & ((!\digit1display|Equal0~1_combout\))))) # 
-- (!\Add3~2_combout\ & (((!\Mod0|auto_generated|divider|remainder[0]~7_combout\) # (!\digit1display|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|Equal1~0_combout\,
	datab => \digit1display|Equal0~1_combout\,
	datac => \Add3~2_combout\,
	datad => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	combout => \digit1display|WideNor0~1_combout\);

-- Location: LCCOMB_X31_Y26_N6
\digit1display|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~2_combout\ = (\digit1display|WideNor0~1_combout\ & ((\Add3~0_combout\ $ (!\Mod0|auto_generated|divider|remainder[0]~7_combout\)) # (!\digit1display|Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \digit1display|Equal7~0_combout\,
	datac => \digit1display|WideNor0~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	combout => \digit1display|WideNor0~2_combout\);

-- Location: LCCOMB_X31_Y26_N16
\digit1display|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~3_combout\ = (\Mod0|auto_generated|divider|remainder[0]~7_combout\) # ((!\digit1display|Equal1~0_combout\ & ((\Add3~0_combout\) # (!\digit1display|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => \digit1display|Equal7~0_combout\,
	datac => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	datad => \digit1display|Equal1~0_combout\,
	combout => \digit1display|WideNor0~3_combout\);

-- Location: LCCOMB_X31_Y26_N24
\digit1display|Equal9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal9~0_combout\ = (\digit1display|Equal0~1_combout\ & (!\Add3~2_combout\ & !\Mod0|auto_generated|divider|remainder[0]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit1display|Equal0~1_combout\,
	datac => \Add3~2_combout\,
	datad => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	combout => \digit1display|Equal9~0_combout\);

-- Location: LCCOMB_X32_Y26_N20
\digit1display|WideNor0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~combout\ = (\digit1display|WideNor0~0_combout\) # (((\digit1display|Equal9~0_combout\) # (!\digit1display|WideNor0~3_combout\)) # (!\digit1display|WideNor0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideNor0~0_combout\,
	datab => \digit1display|WideNor0~2_combout\,
	datac => \digit1display|WideNor0~3_combout\,
	datad => \digit1display|Equal9~0_combout\,
	combout => \digit1display|WideNor0~combout\);

-- Location: LCCOMB_X31_Y26_N4
\digit1display|WideOr4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr4~1_combout\ = (\digit1display|WideNor0~combout\ & ((!\Mod0|auto_generated|divider|remainder[0]~7_combout\) # (!\digit1display|WideOr4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideOr4~0_combout\,
	datab => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	datac => \digit1display|WideNor0~combout\,
	combout => \digit1display|WideOr4~1_combout\);

-- Location: LCCOMB_X31_Y26_N10
\digit1display|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr5~combout\ = ((!\Add3~2_combout\ & (\digit1display|Equal0~1_combout\ & !\Mod0|auto_generated|divider|remainder[0]~7_combout\))) # (!\digit1display|WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \digit1display|Equal0~1_combout\,
	datac => \digit1display|WideOr4~1_combout\,
	datad => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	combout => \digit1display|WideOr5~combout\);

-- Location: LCCOMB_X30_Y26_N0
\digit1display|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr4~combout\ = ((!\Add3~2_combout\ & \digit1display|Equal1~0_combout\)) # (!\digit1display|WideOr4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \digit1display|Equal1~0_combout\,
	datad => \digit1display|WideOr4~1_combout\,
	combout => \digit1display|WideOr4~combout\);

-- Location: LCCOMB_X31_Y26_N26
\digit1display|Equal10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal10~2_combout\ = (\Add3~0_combout\ & ((temp(7) & ((!\Mod0|auto_generated|divider|op_2~0_combout\))) # (!temp(7) & (!temp(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~0_combout\,
	datab => temp(0),
	datac => \Mod0|auto_generated|divider|op_2~0_combout\,
	datad => temp(7),
	combout => \digit1display|Equal10~2_combout\);

-- Location: LCCOMB_X31_Y26_N0
\digit1display|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr3~combout\ = ((\digit1display|Equal9~0_combout\) # ((\digit1display|Equal7~0_combout\ & \digit1display|Equal10~2_combout\))) # (!\digit1display|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideNor0~3_combout\,
	datab => \digit1display|Equal7~0_combout\,
	datac => \digit1display|Equal10~2_combout\,
	datad => \digit1display|Equal9~0_combout\,
	combout => \digit1display|WideOr3~combout\);

-- Location: LCCOMB_X31_Y26_N22
\digit1display|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr2~combout\ = ((\digit1display|WideNor0~3_combout\ & (!\digit1display|WideNor0~0_combout\ & !\digit1display|Equal9~0_combout\))) # (!\digit1display|WideNor0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideNor0~2_combout\,
	datab => \digit1display|WideNor0~3_combout\,
	datac => \digit1display|WideNor0~0_combout\,
	datad => \digit1display|Equal9~0_combout\,
	combout => \digit1display|WideOr2~combout\);

-- Location: LCCOMB_X30_Y26_N2
\digit1display|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|HEX\(2) = ((!\Mod0|auto_generated|divider|remainder[0]~7_combout\ & (!\Add3~2_combout\ & \digit1display|Equal1~0_combout\))) # (!\digit1display|WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	datab => \Add3~2_combout\,
	datac => \digit1display|Equal1~0_combout\,
	datad => \digit1display|WideNor0~combout\,
	combout => \digit1display|HEX\(2));

-- Location: LCCOMB_X30_Y26_N8
\digit1display|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr1~0_combout\ = (\Add3~2_combout\ & ((\Mod0|auto_generated|divider|remainder[0]~7_combout\ & (\digit1display|Equal0~1_combout\)) # (!\Mod0|auto_generated|divider|remainder[0]~7_combout\ & ((\digit1display|Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|Equal0~1_combout\,
	datab => \Add3~2_combout\,
	datac => \digit1display|Equal1~0_combout\,
	datad => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	combout => \digit1display|WideOr1~0_combout\);

-- Location: LCCOMB_X30_Y26_N10
\digit1display|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr1~combout\ = (\digit1display|WideOr1~0_combout\) # (!\digit1display|WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit1display|WideOr1~0_combout\,
	datad => \digit1display|WideNor0~combout\,
	combout => \digit1display|WideOr1~combout\);

-- Location: LCCOMB_X31_Y26_N20
\digit1display|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr0~combout\ = ((\digit1display|Equal0~1_combout\ & (\Add3~2_combout\ $ (\Mod0|auto_generated|divider|remainder[0]~7_combout\)))) # (!\digit1display|WideNor0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \digit1display|Equal0~1_combout\,
	datac => \digit1display|WideNor0~combout\,
	datad => \Mod0|auto_generated|divider|remainder[0]~7_combout\,
	combout => \digit1display|WideOr0~combout\);

-- Location: LCCOMB_X32_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\ $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[5]~4_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X32_Y23_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X32_Y23_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # 
-- (!\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X32_Y23_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X32_Y23_N10
\Div0|auto_generated|divider|divider|StageOut[21]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~38_combout\);

-- Location: LCCOMB_X32_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[21]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\);

-- Location: LCCOMB_X32_Y23_N18
\Div0|auto_generated|divider|divider|StageOut[20]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~40_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~40_combout\);

-- Location: LCCOMB_X32_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[20]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~41_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~41_combout\);

-- Location: LCCOMB_X31_Y24_N30
\Div0|auto_generated|divider|divider|StageOut[19]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[19]~66_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (temp(7) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\ $ (temp(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => temp(7),
	datac => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~1_combout\,
	datad => temp(5),
	combout => \Div0|auto_generated|divider|divider|StageOut[19]~66_combout\);

-- Location: LCCOMB_X31_Y23_N20
\Div0|auto_generated|divider|divider|StageOut[19]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[19]~42_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[19]~42_combout\);

-- Location: LCCOMB_X31_Y23_N26
\Div0|auto_generated|divider|divider|StageOut[18]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X32_Y23_N14
\Div0|auto_generated|divider|divider|StageOut[18]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~43_combout\);

-- Location: LCCOMB_X32_Y23_N0
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[18]~44_combout\) # (\Div0|auto_generated|divider|divider|StageOut[18]~43_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[18]~44_combout\) # (\Div0|auto_generated|divider|divider|StageOut[18]~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~43_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X32_Y23_N2
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[19]~66_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[19]~42_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[19]~66_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[19]~42_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[19]~66_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[19]~42_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[19]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[19]~42_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X32_Y23_N4
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[20]~40_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[20]~41_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[20]~40_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[20]~41_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[20]~40_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[20]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~40_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~41_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X32_Y23_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~38_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~39_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~39_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~38_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~39_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~38_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~39_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X32_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[28]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~73_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~73_combout\);

-- Location: LCCOMB_X32_Y23_N12
\Div0|auto_generated|divider|divider|StageOut[28]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~45_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~45_combout\);

-- Location: LCCOMB_X31_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[27]~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~74_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[6]~3_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~74_combout\);

-- Location: LCCOMB_X31_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[27]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~46_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~46_combout\);

-- Location: LCCOMB_X31_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[26]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~47_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~47_combout\);

-- Location: LCCOMB_X31_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[26]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~67_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[19]~66_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[19]~66_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~67_combout\);

-- Location: LCCOMB_X32_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[25]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~48_combout\);

-- Location: LCCOMB_X31_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[25]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~49_combout\);

-- Location: LCCOMB_X28_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[24]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~51_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (temp(7) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ (temp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => temp(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~51_combout\);

-- Location: LCCOMB_X28_Y23_N14
\Div0|auto_generated|divider|divider|StageOut[24]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[24]~50_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (temp(7) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ (temp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => temp(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[24]~50_combout\);

-- Location: LCCOMB_X31_Y23_N8
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[24]~51_combout\) # (\Div0|auto_generated|divider|divider|StageOut[24]~50_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[24]~51_combout\) # (\Div0|auto_generated|divider|divider|StageOut[24]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[24]~51_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[24]~50_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X31_Y23_N10
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[25]~48_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[25]~49_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[25]~49_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[25]~48_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[25]~49_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~48_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~49_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X31_Y23_N12
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[26]~47_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~67_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[26]~47_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~67_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~47_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[26]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~67_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X31_Y23_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Div0|auto_generated|divider|divider|StageOut[27]~74_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~46_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Div0|auto_generated|divider|divider|StageOut[27]~74_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[27]~46_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[27]~74_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[27]~46_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~74_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~46_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X31_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[28]~73_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[28]~45_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~73_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~45_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\);

-- Location: LCCOMB_X31_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X31_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[33]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~69_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[26]~67_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~67_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~69_combout\);

-- Location: LCCOMB_X27_Y23_N8
\Div0|auto_generated|divider|divider|StageOut[33]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\);

-- Location: LCCOMB_X28_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[32]~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[4]~5_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\);

-- Location: LCCOMB_X27_Y23_N2
\Div0|auto_generated|divider|divider|StageOut[32]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[32]~54_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[32]~54_combout\);

-- Location: LCCOMB_X27_Y23_N12
\Div0|auto_generated|divider|divider|StageOut[31]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~56_combout\);

-- Location: LCCOMB_X28_Y23_N22
\Div0|auto_generated|divider|divider|StageOut[31]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[31]~55_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (temp(3) $ (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\ $ (temp(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datab => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~0_combout\,
	datac => temp(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[31]~55_combout\);

-- Location: LCCOMB_X27_Y23_N6
\Div0|auto_generated|divider|divider|StageOut[30]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~57_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~57_combout\);

-- Location: LCCOMB_X27_Y23_N4
\Div0|auto_generated|divider|divider|StageOut[30]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[30]~58_combout\ = (\Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[30]~58_combout\);

-- Location: LCCOMB_X27_Y23_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~58_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[30]~57_combout\) # (\Div0|auto_generated|divider|divider|StageOut[30]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[30]~57_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[30]~58_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X27_Y23_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[31]~56_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[31]~55_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[31]~55_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[31]~56_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[31]~55_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[31]~56_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~55_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X27_Y23_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~54_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~54_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[32]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[32]~54_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X27_Y23_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Div0|auto_generated|divider|divider|StageOut[33]~69_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[33]~53_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~69_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[33]~53_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[33]~69_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[33]~53_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[33]~53_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X26_Y23_N16
\Div0|auto_generated|divider|divider|StageOut[34]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~52_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~52_combout\);

-- Location: LCCOMB_X31_Y23_N24
\Div0|auto_generated|divider|divider|StageOut[34]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[34]~68_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~74_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[27]~74_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[34]~68_combout\);

-- Location: LCCOMB_X27_Y23_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[34]~52_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[34]~68_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[34]~52_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[34]~68_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X27_Y23_N26
\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\);

-- Location: LCCOMB_X28_Y22_N26
\Div0|auto_generated|divider|divider|StageOut[40]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~59_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~59_combout\);

-- Location: LCCOMB_X27_Y23_N28
\Div0|auto_generated|divider|divider|StageOut[40]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[40]~70_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[33]~69_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[33]~69_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[40]~70_combout\);

-- Location: LCCOMB_X27_Y23_N14
\Div0|auto_generated|divider|divider|StageOut[39]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~71_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[32]~75_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[32]~75_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~71_combout\);

-- Location: LCCOMB_X28_Y22_N28
\Div0|auto_generated|divider|divider|StageOut[39]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[39]~60_combout\);

-- Location: LCCOMB_X28_Y22_N10
\Div0|auto_generated|divider|divider|StageOut[38]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~61_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~61_combout\);

-- Location: LCCOMB_X27_Y23_N0
\Div0|auto_generated|divider|divider|StageOut[38]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[38]~72_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[31]~55_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[31]~55_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[38]~72_combout\);

-- Location: LCCOMB_X27_Y23_N30
\Div0|auto_generated|divider|divider|StageOut[37]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~63_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~63_combout\);

-- Location: LCCOMB_X28_Y22_N4
\Div0|auto_generated|divider|divider|StageOut[37]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|my_abs_num|cs1a[2]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[37]~62_combout\);

-- Location: LCCOMB_X28_Y22_N30
\Div0|auto_generated|divider|divider|StageOut[36]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~64_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (temp(1) $ (((temp(0) & temp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => temp(1),
	datac => temp(0),
	datad => temp(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~64_combout\);

-- Location: LCCOMB_X28_Y22_N24
\Div0|auto_generated|divider|divider|StageOut[36]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[36]~65_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (temp(1) $ (((temp(0) & temp(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => temp(1),
	datac => temp(0),
	datad => temp(7),
	combout => \Div0|auto_generated|divider|divider|StageOut[36]~65_combout\);

-- Location: LCCOMB_X28_Y22_N12
\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[36]~64_combout\) # (\Div0|auto_generated|divider|divider|StageOut[36]~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[36]~64_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[36]~65_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X28_Y22_N14
\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[37]~63_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[37]~62_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[37]~63_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[37]~62_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X28_Y22_N16
\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[38]~61_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[38]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[38]~61_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[38]~72_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X28_Y22_N18
\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[39]~71_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[39]~60_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[39]~71_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[39]~60_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X28_Y22_N20
\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[40]~59_combout\) # ((\Div0|auto_generated|divider|divider|StageOut[40]~70_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[40]~59_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[40]~70_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X28_Y22_N22
\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ = !\Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\);

-- Location: LCCOMB_X32_Y25_N0
\Div0|auto_generated|divider|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

-- Location: LCCOMB_X32_Y25_N22
\Div0|auto_generated|divider|quotient[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[0]~4_combout\ = (temp(7) & ((\Div0|auto_generated|divider|op_1~0_combout\))) # (!temp(7) & (!\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => temp(7),
	datad => \Div0|auto_generated|divider|op_1~0_combout\,
	combout => \Div0|auto_generated|divider|quotient[0]~4_combout\);

-- Location: LCCOMB_X32_Y25_N2
\Div0|auto_generated|divider|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~1\) # (GND)))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY((!\Div0|auto_generated|divider|op_1~1\) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

-- Location: LCCOMB_X32_Y25_N4
\Div0|auto_generated|divider|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (\Div0|auto_generated|divider|op_1~3\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~3\ & VCC))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & !\Div0|auto_generated|divider|op_1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

-- Location: LCCOMB_X32_Y25_N6
\Div0|auto_generated|divider|op_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|op_1~5\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Div0|auto_generated|divider|op_1~5\) # (GND)))
-- \Div0|auto_generated|divider|op_1~7\ = CARRY((!\Div0|auto_generated|divider|op_1~5\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\,
	cout => \Div0|auto_generated|divider|op_1~7\);

-- Location: LCCOMB_X32_Y25_N8
\Div0|auto_generated|divider|op_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~8_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|op_1~7\ $ (GND))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (!\Div0|auto_generated|divider|op_1~7\ & VCC))
-- \Div0|auto_generated|divider|op_1~9\ = CARRY((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|op_1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~7\,
	combout => \Div0|auto_generated|divider|op_1~8_combout\,
	cout => \Div0|auto_generated|divider|op_1~9\);

-- Location: LCCOMB_X32_Y25_N10
\Div0|auto_generated|divider|op_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~10_combout\ = !\Div0|auto_generated|divider|op_1~9\
-- \Div0|auto_generated|divider|op_1~11\ = CARRY(!\Div0|auto_generated|divider|op_1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~9\,
	combout => \Div0|auto_generated|divider|op_1~10_combout\,
	cout => \Div0|auto_generated|divider|op_1~11\);

-- Location: LCCOMB_X32_Y25_N12
\Div0|auto_generated|divider|op_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~12_combout\ = \Div0|auto_generated|divider|op_1~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|op_1~11\,
	combout => \Div0|auto_generated|divider|op_1~12_combout\);

-- Location: LCCOMB_X32_Y25_N14
\digit2display|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|Equal0~0_combout\ = ((!\Div0|auto_generated|divider|op_1~12_combout\ & (!\Div0|auto_generated|divider|op_1~8_combout\ & !\Div0|auto_generated|divider|op_1~10_combout\))) # (!temp(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|op_1~12_combout\,
	datab => \Div0|auto_generated|divider|op_1~8_combout\,
	datac => temp(7),
	datad => \Div0|auto_generated|divider|op_1~10_combout\,
	combout => \digit2display|Equal0~0_combout\);

-- Location: LCCOMB_X32_Y25_N18
\Div0|auto_generated|divider|quotient[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~1_combout\ = (temp(7) & ((\Div0|auto_generated|divider|op_1~6_combout\))) # (!temp(7) & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|op_1~6_combout\,
	combout => \Div0|auto_generated|divider|quotient[3]~1_combout\);

-- Location: LCCOMB_X31_Y25_N16
\Div0|auto_generated|divider|quotient[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[4]~2_combout\ = (!temp(7) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(7),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|quotient[4]~2_combout\);

-- Location: LCCOMB_X32_Y25_N24
\Div0|auto_generated|divider|quotient[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~0_combout\ = (temp(7) & ((\Div0|auto_generated|divider|op_1~4_combout\))) # (!temp(7) & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|op_1~4_combout\,
	datac => temp(7),
	combout => \Div0|auto_generated|divider|quotient[2]~0_combout\);

-- Location: LCCOMB_X33_Y25_N28
\digit2display|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|Equal0~1_combout\ = (\digit2display|Equal0~0_combout\ & (!\Div0|auto_generated|divider|quotient[3]~1_combout\ & (!\Div0|auto_generated|divider|quotient[4]~2_combout\ & !\Div0|auto_generated|divider|quotient[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|Equal0~0_combout\,
	datab => \Div0|auto_generated|divider|quotient[3]~1_combout\,
	datac => \Div0|auto_generated|divider|quotient[4]~2_combout\,
	datad => \Div0|auto_generated|divider|quotient[2]~0_combout\,
	combout => \digit2display|Equal0~1_combout\);

-- Location: LCCOMB_X32_Y25_N28
\Div0|auto_generated|divider|quotient[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~3_combout\ = (temp(7) & ((\Div0|auto_generated|divider|op_1~2_combout\))) # (!temp(7) & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datac => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datad => \Div0|auto_generated|divider|op_1~2_combout\,
	combout => \Div0|auto_generated|divider|quotient[1]~3_combout\);

-- Location: LCCOMB_X32_Y25_N30
\digit2display|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideNor0~1_combout\ = ((!\Div0|auto_generated|divider|op_1~4_combout\ & ((!\Div0|auto_generated|divider|op_1~2_combout\) # (!\Div0|auto_generated|divider|op_1~0_combout\)))) # (!\Div0|auto_generated|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|op_1~0_combout\,
	datac => \Div0|auto_generated|divider|op_1~4_combout\,
	datad => \Div0|auto_generated|divider|op_1~2_combout\,
	combout => \digit2display|WideNor0~1_combout\);

-- Location: LCCOMB_X32_Y25_N20
\digit2display|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideNor0~2_combout\ = (!\Div0|auto_generated|divider|op_1~12_combout\ & (!\Div0|auto_generated|divider|op_1~8_combout\ & (\digit2display|WideNor0~1_combout\ & !\Div0|auto_generated|divider|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|op_1~12_combout\,
	datab => \Div0|auto_generated|divider|op_1~8_combout\,
	datac => \digit2display|WideNor0~1_combout\,
	datad => \Div0|auto_generated|divider|op_1~10_combout\,
	combout => \digit2display|WideNor0~2_combout\);

-- Location: LCCOMB_X32_Y25_N16
\digit2display|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideNor0~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\) # (\Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_7_result_int[6]~10_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \digit2display|WideNor0~0_combout\);

-- Location: LCCOMB_X32_Y25_N26
\digit2display|WideNor0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideNor0~3_combout\ = (temp(7) & (\digit2display|WideNor0~2_combout\)) # (!temp(7) & (((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \digit2display|WideNor0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(7),
	datab => \digit2display|WideNor0~2_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \digit2display|WideNor0~0_combout\,
	combout => \digit2display|WideNor0~3_combout\);

-- Location: LCCOMB_X33_Y25_N10
\digit2display|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr2~0_combout\ = (\digit2display|WideNor0~3_combout\ & ((\Div0|auto_generated|divider|quotient[1]~3_combout\) # ((!\digit2display|Equal0~1_combout\) # (!\Div0|auto_generated|divider|quotient[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datab => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	datac => \digit2display|WideNor0~3_combout\,
	datad => \digit2display|Equal0~1_combout\,
	combout => \digit2display|WideOr2~0_combout\);

-- Location: LCCOMB_X33_Y25_N16
\digit2display|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|Equal3~0_combout\ = (\digit2display|Equal0~0_combout\ & (!\Div0|auto_generated|divider|quotient[3]~1_combout\ & (!\Div0|auto_generated|divider|quotient[4]~2_combout\ & \Div0|auto_generated|divider|quotient[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|Equal0~0_combout\,
	datab => \Div0|auto_generated|divider|quotient[3]~1_combout\,
	datac => \Div0|auto_generated|divider|quotient[4]~2_combout\,
	datad => \Div0|auto_generated|divider|quotient[2]~0_combout\,
	combout => \digit2display|Equal3~0_combout\);

-- Location: LCCOMB_X33_Y25_N18
\digit2display|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr2~1_combout\ = (\digit2display|WideOr2~0_combout\ & (((!\Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\digit2display|Equal3~0_combout\)) # (!\Div0|auto_generated|divider|quotient[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|WideOr2~0_combout\,
	datab => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datac => \digit2display|Equal3~0_combout\,
	datad => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \digit2display|WideOr2~1_combout\);

-- Location: LCCOMB_X33_Y25_N20
\digit2display|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr5~combout\ = ((!\Div0|auto_generated|divider|quotient[0]~4_combout\ & (\digit2display|Equal0~1_combout\ & !\Div0|auto_generated|divider|quotient[1]~3_combout\))) # (!\digit2display|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	datab => \digit2display|Equal0~1_combout\,
	datac => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datad => \digit2display|WideOr2~1_combout\,
	combout => \digit2display|WideOr5~combout\);

-- Location: LCCOMB_X33_Y25_N14
\digit2display|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr4~combout\ = ((\digit2display|Equal0~1_combout\ & \Div0|auto_generated|divider|quotient[1]~3_combout\)) # (!\digit2display|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit2display|Equal0~1_combout\,
	datac => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datad => \digit2display|WideOr2~1_combout\,
	combout => \digit2display|WideOr4~combout\);

-- Location: LCCOMB_X33_Y25_N12
\digit2display|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr3~0_combout\ = (!\Div0|auto_generated|divider|quotient[0]~4_combout\ & ((\digit2display|Equal0~1_combout\) # ((\digit2display|Equal3~0_combout\ & \Div0|auto_generated|divider|quotient[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|Equal3~0_combout\,
	datab => \digit2display|Equal0~1_combout\,
	datac => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datad => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \digit2display|WideOr3~0_combout\);

-- Location: LCCOMB_X33_Y25_N30
\digit2display|Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|Equal10~0_combout\ = (\digit2display|Equal0~0_combout\ & (\Div0|auto_generated|divider|quotient[3]~1_combout\ & (!\Div0|auto_generated|divider|quotient[4]~2_combout\ & !\Div0|auto_generated|divider|quotient[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|Equal0~0_combout\,
	datab => \Div0|auto_generated|divider|quotient[3]~1_combout\,
	datac => \Div0|auto_generated|divider|quotient[4]~2_combout\,
	datad => \Div0|auto_generated|divider|quotient[2]~0_combout\,
	combout => \digit2display|Equal10~0_combout\);

-- Location: LCCOMB_X33_Y25_N24
\digit2display|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr3~combout\ = (\digit2display|WideOr3~0_combout\) # ((\digit2display|Equal10~0_combout\ & !\Div0|auto_generated|divider|quotient[0]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|WideOr3~0_combout\,
	datac => \digit2display|Equal10~0_combout\,
	datad => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \digit2display|WideOr3~combout\);

-- Location: LCCOMB_X33_Y25_N22
\digit2display|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr2~2_combout\ = (\Div0|auto_generated|divider|quotient[1]~3_combout\ & (\digit2display|Equal10~0_combout\ & ((!\Div0|auto_generated|divider|quotient[0]~4_combout\)))) # (!\Div0|auto_generated|divider|quotient[1]~3_combout\ & 
-- ((\Div0|auto_generated|divider|quotient[0]~4_combout\ & (\digit2display|Equal10~0_combout\)) # (!\Div0|auto_generated|divider|quotient[0]~4_combout\ & ((\digit2display|Equal3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|Equal10~0_combout\,
	datab => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datac => \digit2display|Equal3~0_combout\,
	datad => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \digit2display|WideOr2~2_combout\);

-- Location: LCCOMB_X33_Y25_N0
\digit2display|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr2~combout\ = (\digit2display|WideOr2~2_combout\) # (!\digit2display|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \digit2display|WideOr2~2_combout\,
	datad => \digit2display|WideOr2~1_combout\,
	combout => \digit2display|WideOr2~combout\);

-- Location: LCCOMB_X33_Y25_N2
\digit2display|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|HEX\(2) = ((\Div0|auto_generated|divider|quotient[1]~3_combout\ & (!\Div0|auto_generated|divider|quotient[0]~4_combout\ & \digit2display|Equal0~1_combout\))) # (!\digit2display|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datab => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	datac => \digit2display|WideNor0~3_combout\,
	datad => \digit2display|Equal0~1_combout\,
	combout => \digit2display|HEX\(2));

-- Location: LCCOMB_X33_Y25_N8
\digit2display|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr1~0_combout\ = ((\digit2display|Equal3~0_combout\ & (\Div0|auto_generated|divider|quotient[1]~3_combout\ $ (\Div0|auto_generated|divider|quotient[0]~4_combout\)))) # (!\digit2display|WideNor0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|Equal3~0_combout\,
	datab => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datac => \digit2display|WideNor0~3_combout\,
	datad => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \digit2display|WideOr1~0_combout\);

-- Location: LCCOMB_X33_Y25_N26
\digit2display|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr0~0_combout\ = (\digit2display|WideOr2~0_combout\ & ((\Div0|auto_generated|divider|quotient[1]~3_combout\) # ((\Div0|auto_generated|divider|quotient[0]~4_combout\) # (!\digit2display|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit2display|WideOr2~0_combout\,
	datab => \Div0|auto_generated|divider|quotient[1]~3_combout\,
	datac => \digit2display|Equal3~0_combout\,
	datad => \Div0|auto_generated|divider|quotient[0]~4_combout\,
	combout => \digit2display|WideOr0~0_combout\);

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;
END structure;


