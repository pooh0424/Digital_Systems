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

-- DATE "04/10/2024 18:58:18"

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

ENTITY 	Lab7_2 IS
    PORT (
	KEY : IN std_logic_vector(1 DOWNTO 1);
	CLOck_50Mhz : IN std_logic;
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6)
	);
END Lab7_2;

-- Design Ports Information
-- HEX2[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOck_50Mhz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab7_2 IS
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
SIGNAL ww_CLOck_50Mhz : std_logic;
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL \CLOck_50Mhz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myclock|CLK_5hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myclock|CLK_1khz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myclock|CLK_100hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \myclock|CLK_10hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLOck_50Mhz~input_o\ : std_logic;
SIGNAL \CLOck_50Mhz~inputclkctrl_outclk\ : std_logic;
SIGNAL \myclock|count_1khz[0]~15_combout\ : std_logic;
SIGNAL \myclock|count_1khz[0]~16\ : std_logic;
SIGNAL \myclock|count_1khz[1]~17_combout\ : std_logic;
SIGNAL \myclock|count_1khz[1]~18\ : std_logic;
SIGNAL \myclock|count_1khz[2]~19_combout\ : std_logic;
SIGNAL \myclock|count_1khz[2]~20\ : std_logic;
SIGNAL \myclock|count_1khz[3]~21_combout\ : std_logic;
SIGNAL \myclock|count_1khz[3]~22\ : std_logic;
SIGNAL \myclock|count_1khz[4]~23_combout\ : std_logic;
SIGNAL \myclock|count_1khz[4]~24\ : std_logic;
SIGNAL \myclock|count_1khz[5]~25_combout\ : std_logic;
SIGNAL \myclock|count_1khz[5]~26\ : std_logic;
SIGNAL \myclock|count_1khz[6]~27_combout\ : std_logic;
SIGNAL \myclock|count_1khz[6]~28\ : std_logic;
SIGNAL \myclock|count_1khz[7]~29_combout\ : std_logic;
SIGNAL \myclock|count_1khz[7]~30\ : std_logic;
SIGNAL \myclock|count_1khz[8]~31_combout\ : std_logic;
SIGNAL \myclock|count_1khz[8]~32\ : std_logic;
SIGNAL \myclock|count_1khz[9]~33_combout\ : std_logic;
SIGNAL \myclock|count_1khz[9]~34\ : std_logic;
SIGNAL \myclock|count_1khz[10]~35_combout\ : std_logic;
SIGNAL \myclock|count_1khz[10]~36\ : std_logic;
SIGNAL \myclock|count_1khz[11]~37_combout\ : std_logic;
SIGNAL \myclock|count_1khz[11]~38\ : std_logic;
SIGNAL \myclock|count_1khz[12]~39_combout\ : std_logic;
SIGNAL \myclock|count_1khz[12]~40\ : std_logic;
SIGNAL \myclock|count_1khz[13]~41_combout\ : std_logic;
SIGNAL \myclock|count_1khz[13]~42\ : std_logic;
SIGNAL \myclock|count_1khz[14]~43_combout\ : std_logic;
SIGNAL \myclock|LessThan0~2_combout\ : std_logic;
SIGNAL \myclock|LessThan0~0_combout\ : std_logic;
SIGNAL \myclock|LessThan0~1_combout\ : std_logic;
SIGNAL \myclock|LessThan0~3_combout\ : std_logic;
SIGNAL \myclock|CLK_1khz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_1khz~feeder_combout\ : std_logic;
SIGNAL \myclock|CLK_1khz~q\ : std_logic;
SIGNAL \myclock|CLK_1khz~clkctrl_outclk\ : std_logic;
SIGNAL \myclock|count_100hz~2_combout\ : std_logic;
SIGNAL \myclock|count_100hz~1_combout\ : std_logic;
SIGNAL \myclock|count_100hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_100hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_100hz~feeder_combout\ : std_logic;
SIGNAL \myclock|CLK_100hz~q\ : std_logic;
SIGNAL \myclock|CLK_100hz~clkctrl_outclk\ : std_logic;
SIGNAL \myclock|count_10hz~1_combout\ : std_logic;
SIGNAL \myclock|count_10hz~2_combout\ : std_logic;
SIGNAL \myclock|count_10hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_10hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_10hz~feeder_combout\ : std_logic;
SIGNAL \myclock|CLK_10hz~q\ : std_logic;
SIGNAL \myclock|CLK_10hz~clkctrl_outclk\ : std_logic;
SIGNAL \myclock|count_5hz~1_combout\ : std_logic;
SIGNAL \myclock|count_5hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~0_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~feeder_combout\ : std_logic;
SIGNAL \myclock|CLK_5hz~q\ : std_logic;
SIGNAL \myclock|CLK_5hz~clkctrl_outclk\ : std_logic;
SIGNAL \temp[0]~18_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \temp[1]~6_combout\ : std_logic;
SIGNAL \temp[1]~7\ : std_logic;
SIGNAL \temp[2]~8_combout\ : std_logic;
SIGNAL \temp[2]~9\ : std_logic;
SIGNAL \temp[3]~10_combout\ : std_logic;
SIGNAL \temp[3]~11\ : std_logic;
SIGNAL \temp[4]~12_combout\ : std_logic;
SIGNAL \temp[4]~13\ : std_logic;
SIGNAL \temp[5]~14_combout\ : std_logic;
SIGNAL \temp[5]~15\ : std_logic;
SIGNAL \temp[6]~16_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\ : std_logic;
SIGNAL \digit1display|Equal0~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \digit1display|Equal0~0_combout\ : std_logic;
SIGNAL \digit1display|Equal0~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~0_combout\ : std_logic;
SIGNAL \digit1display|WideOr2~0_combout\ : std_logic;
SIGNAL \digit1display|Equal1~2_combout\ : std_logic;
SIGNAL \digit1display|Equal10~0_combout\ : std_logic;
SIGNAL \digit1display|Equal10~1_combout\ : std_logic;
SIGNAL \digit1display|WideOr3~0_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~1_combout\ : std_logic;
SIGNAL \digit1display|WideNor0~2_combout\ : std_logic;
SIGNAL \digit1display|WideOr2~1_combout\ : std_logic;
SIGNAL \digit1display|WideOr5~combout\ : std_logic;
SIGNAL \digit1display|Equal0~3_combout\ : std_logic;
SIGNAL \digit1display|Equal1~4_combout\ : std_logic;
SIGNAL \digit1display|WideOr4~combout\ : std_logic;
SIGNAL \digit1display|WideOr3~combout\ : std_logic;
SIGNAL \digit1display|WideOr2~2_combout\ : std_logic;
SIGNAL \digit1display|WideOr2~3_combout\ : std_logic;
SIGNAL \digit1display|Equal1~3_combout\ : std_logic;
SIGNAL \digit1display|WideOr1~0_combout\ : std_logic;
SIGNAL \digit1display|WideOr1~combout\ : std_logic;
SIGNAL \digit1display|WideOr0~0_combout\ : std_logic;
SIGNAL \digit1display|WideOr0~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \digit2display|WideOr5~combout\ : std_logic;
SIGNAL \digit2display|WideOr4~combout\ : std_logic;
SIGNAL \digit2display|WideOr3~0_combout\ : std_logic;
SIGNAL \digit2display|WideOr2~0_combout\ : std_logic;
SIGNAL \digit2display|WideOr1~0_combout\ : std_logic;
SIGNAL \digit2display|WideOr0~combout\ : std_logic;
SIGNAL \digit1display|HEX\ : std_logic_vector(0 TO 6);
SIGNAL temp : std_logic_vector(6 DOWNTO 0);
SIGNAL \myclock|count_5hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \digit2display|HEX\ : std_logic_vector(0 TO 6);
SIGNAL \myclock|count_100hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \myclock|count_10hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \myclock|count_1khz\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \myclock|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \digit2display|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \digit1display|ALT_INV_WideOr3~combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_CLOck_50Mhz <= CLOck_50Mhz;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOck_50Mhz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOck_50Mhz~input_o\);

\myclock|CLK_5hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \myclock|CLK_5hz~q\);

\myclock|CLK_1khz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \myclock|CLK_1khz~q\);

\myclock|CLK_100hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \myclock|CLK_100hz~q\);

\myclock|CLK_10hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \myclock|CLK_10hz~q\);

\KEY[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[1]~input_o\);
\myclock|ALT_INV_LessThan0~3_combout\ <= NOT \myclock|LessThan0~3_combout\;
\digit2display|ALT_INV_WideOr3~0_combout\ <= NOT \digit2display|WideOr3~0_combout\;
\digit1display|ALT_INV_WideOr3~combout\ <= NOT \digit1display|WideOr3~combout\;

-- Location: IOOBUF_X26_Y29_N2
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

-- Location: IOOBUF_X30_Y29_N9
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

-- Location: IOOBUF_X30_Y29_N2
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

-- Location: IOOBUF_X32_Y29_N23
\HEX2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit1display|WideOr2~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
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

-- Location: IOOBUF_X30_Y29_N16
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

-- Location: IOOBUF_X32_Y29_N2
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

-- Location: IOOBUF_X30_Y29_N30
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

-- Location: IOOBUF_X30_Y29_N23
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

-- Location: IOOBUF_X28_Y29_N23
\HEX3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2display|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\HEX3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2display|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N9
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

-- Location: IOOBUF_X28_Y29_N30
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

-- Location: IOOBUF_X28_Y29_N16
\HEX3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \digit2display|WideOr0~combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLOck_50Mhz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOck_50Mhz,
	o => \CLOck_50Mhz~input_o\);

-- Location: CLKCTRL_G4
\CLOck_50Mhz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOck_50Mhz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOck_50Mhz~inputclkctrl_outclk\);

-- Location: LCCOMB_X11_Y21_N2
\myclock|count_1khz[0]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[0]~15_combout\ = \myclock|count_1khz\(0) $ (VCC)
-- \myclock|count_1khz[0]~16\ = CARRY(\myclock|count_1khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(0),
	datad => VCC,
	combout => \myclock|count_1khz[0]~15_combout\,
	cout => \myclock|count_1khz[0]~16\);

-- Location: FF_X11_Y21_N3
\myclock|count_1khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[0]~15_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(0));

-- Location: LCCOMB_X11_Y21_N4
\myclock|count_1khz[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[1]~17_combout\ = (\myclock|count_1khz\(1) & (!\myclock|count_1khz[0]~16\)) # (!\myclock|count_1khz\(1) & ((\myclock|count_1khz[0]~16\) # (GND)))
-- \myclock|count_1khz[1]~18\ = CARRY((!\myclock|count_1khz[0]~16\) # (!\myclock|count_1khz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(1),
	datad => VCC,
	cin => \myclock|count_1khz[0]~16\,
	combout => \myclock|count_1khz[1]~17_combout\,
	cout => \myclock|count_1khz[1]~18\);

-- Location: FF_X11_Y21_N5
\myclock|count_1khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[1]~17_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(1));

-- Location: LCCOMB_X11_Y21_N6
\myclock|count_1khz[2]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[2]~19_combout\ = (\myclock|count_1khz\(2) & (\myclock|count_1khz[1]~18\ $ (GND))) # (!\myclock|count_1khz\(2) & (!\myclock|count_1khz[1]~18\ & VCC))
-- \myclock|count_1khz[2]~20\ = CARRY((\myclock|count_1khz\(2) & !\myclock|count_1khz[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(2),
	datad => VCC,
	cin => \myclock|count_1khz[1]~18\,
	combout => \myclock|count_1khz[2]~19_combout\,
	cout => \myclock|count_1khz[2]~20\);

-- Location: FF_X11_Y21_N7
\myclock|count_1khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[2]~19_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(2));

-- Location: LCCOMB_X11_Y21_N8
\myclock|count_1khz[3]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[3]~21_combout\ = (\myclock|count_1khz\(3) & (!\myclock|count_1khz[2]~20\)) # (!\myclock|count_1khz\(3) & ((\myclock|count_1khz[2]~20\) # (GND)))
-- \myclock|count_1khz[3]~22\ = CARRY((!\myclock|count_1khz[2]~20\) # (!\myclock|count_1khz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(3),
	datad => VCC,
	cin => \myclock|count_1khz[2]~20\,
	combout => \myclock|count_1khz[3]~21_combout\,
	cout => \myclock|count_1khz[3]~22\);

-- Location: FF_X11_Y21_N9
\myclock|count_1khz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[3]~21_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(3));

-- Location: LCCOMB_X11_Y21_N10
\myclock|count_1khz[4]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[4]~23_combout\ = (\myclock|count_1khz\(4) & (\myclock|count_1khz[3]~22\ $ (GND))) # (!\myclock|count_1khz\(4) & (!\myclock|count_1khz[3]~22\ & VCC))
-- \myclock|count_1khz[4]~24\ = CARRY((\myclock|count_1khz\(4) & !\myclock|count_1khz[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(4),
	datad => VCC,
	cin => \myclock|count_1khz[3]~22\,
	combout => \myclock|count_1khz[4]~23_combout\,
	cout => \myclock|count_1khz[4]~24\);

-- Location: FF_X11_Y21_N11
\myclock|count_1khz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[4]~23_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(4));

-- Location: LCCOMB_X11_Y21_N12
\myclock|count_1khz[5]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[5]~25_combout\ = (\myclock|count_1khz\(5) & (!\myclock|count_1khz[4]~24\)) # (!\myclock|count_1khz\(5) & ((\myclock|count_1khz[4]~24\) # (GND)))
-- \myclock|count_1khz[5]~26\ = CARRY((!\myclock|count_1khz[4]~24\) # (!\myclock|count_1khz\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(5),
	datad => VCC,
	cin => \myclock|count_1khz[4]~24\,
	combout => \myclock|count_1khz[5]~25_combout\,
	cout => \myclock|count_1khz[5]~26\);

-- Location: FF_X11_Y21_N13
\myclock|count_1khz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[5]~25_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(5));

-- Location: LCCOMB_X11_Y21_N14
\myclock|count_1khz[6]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[6]~27_combout\ = (\myclock|count_1khz\(6) & (\myclock|count_1khz[5]~26\ $ (GND))) # (!\myclock|count_1khz\(6) & (!\myclock|count_1khz[5]~26\ & VCC))
-- \myclock|count_1khz[6]~28\ = CARRY((\myclock|count_1khz\(6) & !\myclock|count_1khz[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(6),
	datad => VCC,
	cin => \myclock|count_1khz[5]~26\,
	combout => \myclock|count_1khz[6]~27_combout\,
	cout => \myclock|count_1khz[6]~28\);

-- Location: FF_X11_Y21_N15
\myclock|count_1khz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[6]~27_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(6));

-- Location: LCCOMB_X11_Y21_N16
\myclock|count_1khz[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[7]~29_combout\ = (\myclock|count_1khz\(7) & (!\myclock|count_1khz[6]~28\)) # (!\myclock|count_1khz\(7) & ((\myclock|count_1khz[6]~28\) # (GND)))
-- \myclock|count_1khz[7]~30\ = CARRY((!\myclock|count_1khz[6]~28\) # (!\myclock|count_1khz\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(7),
	datad => VCC,
	cin => \myclock|count_1khz[6]~28\,
	combout => \myclock|count_1khz[7]~29_combout\,
	cout => \myclock|count_1khz[7]~30\);

-- Location: FF_X11_Y21_N17
\myclock|count_1khz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[7]~29_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(7));

-- Location: LCCOMB_X11_Y21_N18
\myclock|count_1khz[8]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[8]~31_combout\ = (\myclock|count_1khz\(8) & (\myclock|count_1khz[7]~30\ $ (GND))) # (!\myclock|count_1khz\(8) & (!\myclock|count_1khz[7]~30\ & VCC))
-- \myclock|count_1khz[8]~32\ = CARRY((\myclock|count_1khz\(8) & !\myclock|count_1khz[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(8),
	datad => VCC,
	cin => \myclock|count_1khz[7]~30\,
	combout => \myclock|count_1khz[8]~31_combout\,
	cout => \myclock|count_1khz[8]~32\);

-- Location: FF_X11_Y21_N19
\myclock|count_1khz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[8]~31_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(8));

-- Location: LCCOMB_X11_Y21_N20
\myclock|count_1khz[9]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[9]~33_combout\ = (\myclock|count_1khz\(9) & (!\myclock|count_1khz[8]~32\)) # (!\myclock|count_1khz\(9) & ((\myclock|count_1khz[8]~32\) # (GND)))
-- \myclock|count_1khz[9]~34\ = CARRY((!\myclock|count_1khz[8]~32\) # (!\myclock|count_1khz\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(9),
	datad => VCC,
	cin => \myclock|count_1khz[8]~32\,
	combout => \myclock|count_1khz[9]~33_combout\,
	cout => \myclock|count_1khz[9]~34\);

-- Location: FF_X11_Y21_N21
\myclock|count_1khz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[9]~33_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(9));

-- Location: LCCOMB_X11_Y21_N22
\myclock|count_1khz[10]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[10]~35_combout\ = (\myclock|count_1khz\(10) & (\myclock|count_1khz[9]~34\ $ (GND))) # (!\myclock|count_1khz\(10) & (!\myclock|count_1khz[9]~34\ & VCC))
-- \myclock|count_1khz[10]~36\ = CARRY((\myclock|count_1khz\(10) & !\myclock|count_1khz[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(10),
	datad => VCC,
	cin => \myclock|count_1khz[9]~34\,
	combout => \myclock|count_1khz[10]~35_combout\,
	cout => \myclock|count_1khz[10]~36\);

-- Location: FF_X11_Y21_N23
\myclock|count_1khz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[10]~35_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(10));

-- Location: LCCOMB_X11_Y21_N24
\myclock|count_1khz[11]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[11]~37_combout\ = (\myclock|count_1khz\(11) & (!\myclock|count_1khz[10]~36\)) # (!\myclock|count_1khz\(11) & ((\myclock|count_1khz[10]~36\) # (GND)))
-- \myclock|count_1khz[11]~38\ = CARRY((!\myclock|count_1khz[10]~36\) # (!\myclock|count_1khz\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(11),
	datad => VCC,
	cin => \myclock|count_1khz[10]~36\,
	combout => \myclock|count_1khz[11]~37_combout\,
	cout => \myclock|count_1khz[11]~38\);

-- Location: FF_X11_Y21_N25
\myclock|count_1khz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[11]~37_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(11));

-- Location: LCCOMB_X11_Y21_N26
\myclock|count_1khz[12]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[12]~39_combout\ = (\myclock|count_1khz\(12) & (\myclock|count_1khz[11]~38\ $ (GND))) # (!\myclock|count_1khz\(12) & (!\myclock|count_1khz[11]~38\ & VCC))
-- \myclock|count_1khz[12]~40\ = CARRY((\myclock|count_1khz\(12) & !\myclock|count_1khz[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(12),
	datad => VCC,
	cin => \myclock|count_1khz[11]~38\,
	combout => \myclock|count_1khz[12]~39_combout\,
	cout => \myclock|count_1khz[12]~40\);

-- Location: FF_X11_Y21_N27
\myclock|count_1khz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[12]~39_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(12));

-- Location: LCCOMB_X11_Y21_N28
\myclock|count_1khz[13]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[13]~41_combout\ = (\myclock|count_1khz\(13) & (!\myclock|count_1khz[12]~40\)) # (!\myclock|count_1khz\(13) & ((\myclock|count_1khz[12]~40\) # (GND)))
-- \myclock|count_1khz[13]~42\ = CARRY((!\myclock|count_1khz[12]~40\) # (!\myclock|count_1khz\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(13),
	datad => VCC,
	cin => \myclock|count_1khz[12]~40\,
	combout => \myclock|count_1khz[13]~41_combout\,
	cout => \myclock|count_1khz[13]~42\);

-- Location: FF_X11_Y21_N29
\myclock|count_1khz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[13]~41_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(13));

-- Location: LCCOMB_X11_Y21_N30
\myclock|count_1khz[14]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_1khz[14]~43_combout\ = \myclock|count_1khz\(14) $ (!\myclock|count_1khz[13]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(14),
	cin => \myclock|count_1khz[13]~42\,
	combout => \myclock|count_1khz[14]~43_combout\);

-- Location: FF_X11_Y21_N31
\myclock|count_1khz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|count_1khz[14]~43_combout\,
	sclr => \myclock|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_1khz\(14));

-- Location: LCCOMB_X10_Y21_N16
\myclock|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~2_combout\ = (!\myclock|count_1khz\(9) & (!\myclock|count_1khz\(10) & (!\myclock|count_1khz\(12) & !\myclock|count_1khz\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(9),
	datab => \myclock|count_1khz\(10),
	datac => \myclock|count_1khz\(12),
	datad => \myclock|count_1khz\(11),
	combout => \myclock|LessThan0~2_combout\);

-- Location: LCCOMB_X10_Y21_N0
\myclock|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~0_combout\ = (!\myclock|count_1khz\(6) & (((!\myclock|count_1khz\(4) & !\myclock|count_1khz\(3))) # (!\myclock|count_1khz\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(4),
	datab => \myclock|count_1khz\(3),
	datac => \myclock|count_1khz\(5),
	datad => \myclock|count_1khz\(6),
	combout => \myclock|LessThan0~0_combout\);

-- Location: LCCOMB_X10_Y21_N14
\myclock|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~1_combout\ = ((\myclock|LessThan0~0_combout\) # (!\myclock|count_1khz\(8))) # (!\myclock|count_1khz\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myclock|count_1khz\(7),
	datac => \myclock|count_1khz\(8),
	datad => \myclock|LessThan0~0_combout\,
	combout => \myclock|LessThan0~1_combout\);

-- Location: LCCOMB_X11_Y21_N0
\myclock|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|LessThan0~3_combout\ = (((\myclock|LessThan0~2_combout\ & \myclock|LessThan0~1_combout\)) # (!\myclock|count_1khz\(13))) # (!\myclock|count_1khz\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_1khz\(14),
	datab => \myclock|count_1khz\(13),
	datac => \myclock|LessThan0~2_combout\,
	datad => \myclock|LessThan0~1_combout\,
	combout => \myclock|LessThan0~3_combout\);

-- Location: LCCOMB_X12_Y21_N6
\myclock|CLK_1khz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_1khz~0_combout\ = \myclock|CLK_1khz~q\ $ (!\myclock|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \myclock|CLK_1khz~q\,
	datac => \myclock|LessThan0~3_combout\,
	combout => \myclock|CLK_1khz~0_combout\);

-- Location: LCCOMB_X12_Y21_N24
\myclock|CLK_1khz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_1khz~feeder_combout\ = \myclock|CLK_1khz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myclock|CLK_1khz~0_combout\,
	combout => \myclock|CLK_1khz~feeder_combout\);

-- Location: FF_X12_Y21_N25
\myclock|CLK_1khz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOck_50Mhz~inputclkctrl_outclk\,
	d => \myclock|CLK_1khz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|CLK_1khz~q\);

-- Location: CLKCTRL_G10
\myclock|CLK_1khz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \myclock|CLK_1khz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \myclock|CLK_1khz~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y14_N26
\myclock|count_100hz~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_100hz~2_combout\ = (!\myclock|count_100hz\(2) & (\myclock|count_100hz\(0) $ (\myclock|count_100hz\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_100hz\(0),
	datac => \myclock|count_100hz\(1),
	datad => \myclock|count_100hz\(2),
	combout => \myclock|count_100hz~2_combout\);

-- Location: FF_X1_Y14_N27
\myclock|count_100hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_1khz~clkctrl_outclk\,
	d => \myclock|count_100hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_100hz\(1));

-- Location: LCCOMB_X1_Y14_N12
\myclock|count_100hz~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_100hz~1_combout\ = (!\myclock|count_100hz\(0) & ((!\myclock|count_100hz\(2)) # (!\myclock|count_100hz\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_100hz\(1),
	datac => \myclock|count_100hz\(0),
	datad => \myclock|count_100hz\(2),
	combout => \myclock|count_100hz~1_combout\);

-- Location: FF_X1_Y14_N13
\myclock|count_100hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_1khz~clkctrl_outclk\,
	d => \myclock|count_100hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_100hz\(0));

-- Location: LCCOMB_X1_Y14_N30
\myclock|count_100hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_100hz~0_combout\ = (\myclock|count_100hz\(0) & (!\myclock|count_100hz\(2) & \myclock|count_100hz\(1))) # (!\myclock|count_100hz\(0) & (\myclock|count_100hz\(2) & !\myclock|count_100hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_100hz\(0),
	datac => \myclock|count_100hz\(2),
	datad => \myclock|count_100hz\(1),
	combout => \myclock|count_100hz~0_combout\);

-- Location: FF_X1_Y14_N31
\myclock|count_100hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_1khz~clkctrl_outclk\,
	d => \myclock|count_100hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_100hz\(2));

-- Location: LCCOMB_X1_Y14_N20
\myclock|CLK_100hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_100hz~0_combout\ = \myclock|CLK_100hz~q\ $ (((\myclock|count_100hz\(2) & ((\myclock|count_100hz\(1)) # (\myclock|count_100hz\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_100hz\(2),
	datab => \myclock|CLK_100hz~q\,
	datac => \myclock|count_100hz\(1),
	datad => \myclock|count_100hz\(0),
	combout => \myclock|CLK_100hz~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\myclock|CLK_100hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_100hz~feeder_combout\ = \myclock|CLK_100hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myclock|CLK_100hz~0_combout\,
	combout => \myclock|CLK_100hz~feeder_combout\);

-- Location: FF_X1_Y14_N15
\myclock|CLK_100hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_1khz~clkctrl_outclk\,
	d => \myclock|CLK_100hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|CLK_100hz~q\);

-- Location: CLKCTRL_G0
\myclock|CLK_100hz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \myclock|CLK_100hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \myclock|CLK_100hz~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y28_N6
\myclock|count_10hz~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_10hz~1_combout\ = (!\myclock|count_10hz\(0) & ((!\myclock|count_10hz\(2)) # (!\myclock|count_10hz\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_10hz\(1),
	datac => \myclock|count_10hz\(0),
	datad => \myclock|count_10hz\(2),
	combout => \myclock|count_10hz~1_combout\);

-- Location: FF_X19_Y28_N7
\myclock|count_10hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_100hz~clkctrl_outclk\,
	d => \myclock|count_10hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_10hz\(0));

-- Location: LCCOMB_X19_Y28_N30
\myclock|count_10hz~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_10hz~2_combout\ = (!\myclock|count_10hz\(2) & (\myclock|count_10hz\(1) $ (\myclock|count_10hz\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_10hz\(2),
	datac => \myclock|count_10hz\(1),
	datad => \myclock|count_10hz\(0),
	combout => \myclock|count_10hz~2_combout\);

-- Location: FF_X19_Y28_N31
\myclock|count_10hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_100hz~clkctrl_outclk\,
	d => \myclock|count_10hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_10hz\(1));

-- Location: LCCOMB_X19_Y28_N26
\myclock|count_10hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_10hz~0_combout\ = (\myclock|count_10hz\(1) & (!\myclock|count_10hz\(2) & \myclock|count_10hz\(0))) # (!\myclock|count_10hz\(1) & (\myclock|count_10hz\(2) & !\myclock|count_10hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_10hz\(1),
	datac => \myclock|count_10hz\(2),
	datad => \myclock|count_10hz\(0),
	combout => \myclock|count_10hz~0_combout\);

-- Location: FF_X19_Y28_N27
\myclock|count_10hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_100hz~clkctrl_outclk\,
	d => \myclock|count_10hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_10hz\(2));

-- Location: LCCOMB_X19_Y28_N28
\myclock|CLK_10hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_10hz~0_combout\ = \myclock|CLK_10hz~q\ $ (((\myclock|count_10hz\(2) & ((\myclock|count_10hz\(1)) # (\myclock|count_10hz\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|count_10hz\(2),
	datab => \myclock|CLK_10hz~q\,
	datac => \myclock|count_10hz\(1),
	datad => \myclock|count_10hz\(0),
	combout => \myclock|CLK_10hz~0_combout\);

-- Location: LCCOMB_X19_Y28_N24
\myclock|CLK_10hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_10hz~feeder_combout\ = \myclock|CLK_10hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \myclock|CLK_10hz~0_combout\,
	combout => \myclock|CLK_10hz~feeder_combout\);

-- Location: FF_X19_Y28_N25
\myclock|CLK_10hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_100hz~clkctrl_outclk\,
	d => \myclock|CLK_10hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|CLK_10hz~q\);

-- Location: CLKCTRL_G14
\myclock|CLK_10hz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \myclock|CLK_10hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \myclock|CLK_10hz~clkctrl_outclk\);

-- Location: LCCOMB_X40_Y15_N6
\myclock|count_5hz~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz~1_combout\ = (!\myclock|count_5hz\(0) & !\myclock|count_5hz\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myclock|count_5hz\(0),
	datad => \myclock|count_5hz\(1),
	combout => \myclock|count_5hz~1_combout\);

-- Location: FF_X40_Y15_N7
\myclock|count_5hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_10hz~clkctrl_outclk\,
	d => \myclock|count_5hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(0));

-- Location: LCCOMB_X40_Y15_N28
\myclock|count_5hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|count_5hz~0_combout\ = (!\myclock|count_5hz\(1) & \myclock|count_5hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \myclock|count_5hz\(1),
	datad => \myclock|count_5hz\(0),
	combout => \myclock|count_5hz~0_combout\);

-- Location: FF_X40_Y15_N29
\myclock|count_5hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_10hz~clkctrl_outclk\,
	d => \myclock|count_5hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|count_5hz\(1));

-- Location: LCCOMB_X40_Y15_N24
\myclock|CLK_5hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \myclock|CLK_5hz~0_combout\ = \myclock|CLK_5hz~q\ $ (\myclock|count_5hz\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \myclock|CLK_5hz~q\,
	datad => \myclock|count_5hz\(1),
	combout => \myclock|CLK_5hz~0_combout\);

-- Location: LCCOMB_X40_Y15_N26
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

-- Location: FF_X40_Y15_N27
\myclock|CLK_5hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_10hz~clkctrl_outclk\,
	d => \myclock|CLK_5hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \myclock|CLK_5hz~q\);

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X30_Y25_N12
\temp[0]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[0]~18_combout\ = !temp(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(0),
	combout => \temp[0]~18_combout\);

-- Location: IOIBUF_X21_Y0_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: CLKCTRL_G19
\KEY[1]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~inputclkctrl_outclk\);

-- Location: FF_X30_Y25_N13
\temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp[0]~18_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(0));

-- Location: LCCOMB_X30_Y25_N14
\temp[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[1]~6_combout\ = (temp(0) & (temp(1) $ (VCC))) # (!temp(0) & (temp(1) & VCC))
-- \temp[1]~7\ = CARRY((temp(0) & temp(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => temp(1),
	datad => VCC,
	combout => \temp[1]~6_combout\,
	cout => \temp[1]~7\);

-- Location: FF_X30_Y25_N15
\temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp[1]~6_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(1));

-- Location: LCCOMB_X30_Y25_N16
\temp[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[2]~8_combout\ = (temp(2) & (!\temp[1]~7\)) # (!temp(2) & ((\temp[1]~7\) # (GND)))
-- \temp[2]~9\ = CARRY((!\temp[1]~7\) # (!temp(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(2),
	datad => VCC,
	cin => \temp[1]~7\,
	combout => \temp[2]~8_combout\,
	cout => \temp[2]~9\);

-- Location: FF_X30_Y25_N17
\temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp[2]~8_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(2));

-- Location: LCCOMB_X30_Y25_N18
\temp[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[3]~10_combout\ = (temp(3) & (\temp[2]~9\ $ (GND))) # (!temp(3) & (!\temp[2]~9\ & VCC))
-- \temp[3]~11\ = CARRY((temp(3) & !\temp[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(3),
	datad => VCC,
	cin => \temp[2]~9\,
	combout => \temp[3]~10_combout\,
	cout => \temp[3]~11\);

-- Location: FF_X30_Y25_N19
\temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp[3]~10_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(3));

-- Location: LCCOMB_X30_Y25_N20
\temp[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[4]~12_combout\ = (temp(4) & (!\temp[3]~11\)) # (!temp(4) & ((\temp[3]~11\) # (GND)))
-- \temp[4]~13\ = CARRY((!\temp[3]~11\) # (!temp(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datad => VCC,
	cin => \temp[3]~11\,
	combout => \temp[4]~12_combout\,
	cout => \temp[4]~13\);

-- Location: FF_X30_Y25_N21
\temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp[4]~12_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(4));

-- Location: LCCOMB_X30_Y25_N22
\temp[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[5]~14_combout\ = (temp(5) & (\temp[4]~13\ $ (GND))) # (!temp(5) & (!\temp[4]~13\ & VCC))
-- \temp[5]~15\ = CARRY((temp(5) & !\temp[4]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datad => VCC,
	cin => \temp[4]~13\,
	combout => \temp[5]~14_combout\,
	cout => \temp[5]~15\);

-- Location: FF_X30_Y25_N23
\temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp[5]~14_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(5));

-- Location: LCCOMB_X30_Y25_N24
\temp[6]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp[6]~16_combout\ = \temp[5]~15\ $ (temp(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temp(6),
	cin => \temp[5]~15\,
	combout => \temp[6]~16_combout\);

-- Location: FF_X30_Y25_N25
\temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \myclock|CLK_5hz~clkctrl_outclk\,
	d => \temp[6]~16_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp(6));

-- Location: LCCOMB_X31_Y25_N6
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = temp(4) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(temp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X31_Y25_N8
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (temp(5) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!temp(5) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!temp(5) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(5),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X31_Y25_N10
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (temp(6) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!temp(6) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((temp(6) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(6),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X31_Y25_N12
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

-- Location: LCCOMB_X31_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (temp(6) & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(6),
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X32_Y25_N28
\Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X32_Y25_N22
\Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => temp(5),
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X32_Y25_N8
\Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X33_Y25_N4
\Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X32_Y25_N2
\Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => temp(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X32_Y25_N26
\Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => temp(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X32_Y25_N4
\Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => temp(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X32_Y25_N12
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X32_Y25_N14
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X32_Y25_N16
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X32_Y25_N18
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X32_Y25_N20
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

-- Location: LCCOMB_X31_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[32]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (temp(6))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => temp(6),
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\);

-- Location: LCCOMB_X32_Y26_N8
\Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X32_Y25_N30
\Mod0|auto_generated|divider|divider|StageOut[31]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((temp(5)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => temp(5),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\);

-- Location: LCCOMB_X32_Y25_N6
\Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: LCCOMB_X32_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[30]~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((temp(4)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => temp(4),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\);

-- Location: LCCOMB_X32_Y26_N14
\Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X31_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (temp(3) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X33_Y25_N2
\Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X31_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (temp(2) & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X31_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (temp(2) & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(2),
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X32_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X32_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X32_Y26_N22
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X32_Y26_N24
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X32_Y26_N26
\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X32_Y26_N28
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

-- Location: LCCOMB_X33_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[35]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\ = (temp(1) & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\);

-- Location: LCCOMB_X33_Y26_N8
\Mod0|auto_generated|divider|divider|StageOut[35]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\ = (temp(1) & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(1),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\);

-- Location: LCCOMB_X33_Y26_N14
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[35]~60_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[35]~59_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X32_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[40]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\);

-- Location: LCCOMB_X33_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[40]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\);

-- Location: LCCOMB_X33_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[39]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\);

-- Location: LCCOMB_X32_Y25_N24
\Mod0|auto_generated|divider|divider|StageOut[39]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\) # 
-- ((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\);

-- Location: LCCOMB_X32_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[38]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\);

-- Location: LCCOMB_X31_Y26_N14
\Mod0|auto_generated|divider|divider|StageOut[38]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\);

-- Location: LCCOMB_X32_Y26_N16
\Mod0|auto_generated|divider|divider|StageOut[37]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\);

-- Location: LCCOMB_X32_Y25_N10
\Mod0|auto_generated|divider|divider|StageOut[37]~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((temp(3)))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => temp(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\);

-- Location: LCCOMB_X33_Y25_N0
\Mod0|auto_generated|divider|divider|StageOut[36]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & temp(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => temp(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\);

-- Location: LCCOMB_X32_Y26_N6
\Mod0|auto_generated|divider|divider|StageOut[36]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\);

-- Location: LCCOMB_X33_Y26_N16
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X33_Y26_N18
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X33_Y26_N20
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[38]~69_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[38]~55_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X33_Y26_N22
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\))))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\) # (GND))))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[39]~54_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[39]~68_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X33_Y26_N24
\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[40]~67_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[40]~53_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X33_Y26_N26
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

-- Location: LCCOMB_X33_Y26_N12
\Mod0|auto_generated|divider|divider|StageOut[43]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((temp(1)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => temp(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\);

-- Location: LCCOMB_X33_Y26_N2
\Mod0|auto_generated|divider|divider|StageOut[45]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[37]~56_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[37]~73_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\);

-- Location: LCCOMB_X32_Y26_N30
\Mod0|auto_generated|divider|divider|StageOut[47]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[31]~71_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\);

-- Location: LCCOMB_X32_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[48]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[32]~70_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\);

-- Location: LCCOMB_X32_Y26_N4
\Mod0|auto_generated|divider|divider|StageOut[46]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[30]~72_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\);

-- Location: LCCOMB_X32_Y26_N10
\digit1display|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal0~1_combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[47]~62_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[48]~61_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[46]~63_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \digit1display|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y26_N28
\digit1display|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal0~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\) # ((!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \digit1display|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y27_N10
\digit1display|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal0~2_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (\digit1display|Equal0~1_combout\ & \digit1display|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datac => \digit1display|Equal0~1_combout\,
	datad => \digit1display|Equal0~0_combout\,
	combout => \digit1display|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y26_N0
\Mod0|auto_generated|divider|divider|StageOut[44]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[36]~57_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[36]~58_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\);

-- Location: LCCOMB_X30_Y27_N6
\digit1display|WideNor0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~0_combout\ = (\digit1display|Equal0~2_combout\ & ((temp(0) & (\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\))) # (!temp(0) & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ & \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \digit1display|Equal0~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideNor0~0_combout\);

-- Location: LCCOMB_X30_Y27_N16
\digit1display|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr2~0_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\)) # (!\digit1display|Equal0~2_combout\)) # (!temp(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \digit1display|Equal0~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y27_N20
\digit1display|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal1~2_combout\ = (!temp(0) & (!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (\digit1display|Equal0~1_combout\ & \digit1display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datac => \digit1display|Equal0~1_combout\,
	datad => \digit1display|Equal0~0_combout\,
	combout => \digit1display|Equal1~2_combout\);

-- Location: LCCOMB_X31_Y27_N28
\digit1display|Equal10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal10~0_combout\ = (\digit1display|Equal0~0_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (\digit1display|Equal0~1_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|Equal0~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datac => \digit1display|Equal0~1_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|Equal10~0_combout\);

-- Location: LCCOMB_X30_Y27_N8
\digit1display|Equal10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal10~1_combout\ = (!temp(0) & \digit1display|Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datad => \digit1display|Equal10~0_combout\,
	combout => \digit1display|Equal10~1_combout\);

-- Location: LCCOMB_X30_Y27_N14
\digit1display|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr3~0_combout\ = (\digit1display|Equal1~2_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ & \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\)))) # (!\digit1display|Equal1~2_combout\ & 
-- (((!\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\)) # (!\digit1display|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|Equal1~2_combout\,
	datab => \digit1display|Equal10~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y27_N12
\digit1display|WideNor0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (temp(0) & (\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideNor0~1_combout\);

-- Location: LCCOMB_X31_Y27_N6
\digit1display|WideNor0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideNor0~2_combout\ = (\digit1display|WideNor0~1_combout\ & (\digit1display|Equal0~1_combout\ & \digit1display|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideNor0~1_combout\,
	datac => \digit1display|Equal0~1_combout\,
	datad => \digit1display|Equal0~0_combout\,
	combout => \digit1display|WideNor0~2_combout\);

-- Location: LCCOMB_X30_Y27_N0
\digit1display|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr2~1_combout\ = (\digit1display|WideOr2~0_combout\ & ((\digit1display|WideNor0~0_combout\) # ((\digit1display|WideNor0~2_combout\) # (!\digit1display|WideOr3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideNor0~0_combout\,
	datab => \digit1display|WideOr2~0_combout\,
	datac => \digit1display|WideOr3~0_combout\,
	datad => \digit1display|WideNor0~2_combout\,
	combout => \digit1display|WideOr2~1_combout\);

-- Location: LCCOMB_X30_Y27_N18
\digit1display|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr5~combout\ = ((!\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ & (\digit1display|Equal1~2_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\))) # (!\digit1display|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datab => \digit1display|WideOr2~1_combout\,
	datac => \digit1display|Equal1~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideOr5~combout\);

-- Location: LCCOMB_X31_Y27_N22
\digit1display|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal0~3_combout\ = (temp(0) & (!\Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\ & (\digit1display|Equal0~1_combout\ & \digit1display|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \Mod0|auto_generated|divider|divider|StageOut[45]~64_combout\,
	datac => \digit1display|Equal0~1_combout\,
	datad => \digit1display|Equal0~0_combout\,
	combout => \digit1display|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y26_N10
\digit1display|Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal1~4_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (temp(1))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => temp(1),
	datac => \Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|Equal1~4_combout\);

-- Location: LCCOMB_X31_Y27_N24
\digit1display|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr4~combout\ = ((\digit1display|Equal1~4_combout\ & ((\digit1display|Equal0~3_combout\) # (\digit1display|Equal1~2_combout\)))) # (!\digit1display|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|Equal0~3_combout\,
	datab => \digit1display|Equal1~2_combout\,
	datac => \digit1display|WideOr2~1_combout\,
	datad => \digit1display|Equal1~4_combout\,
	combout => \digit1display|WideOr4~combout\);

-- Location: LCCOMB_X30_Y27_N20
\digit1display|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr3~combout\ = (\digit1display|Equal10~1_combout\) # ((\digit1display|Equal1~2_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\) # (!\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|Equal1~2_combout\,
	datab => \digit1display|Equal10~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideOr3~combout\);

-- Location: LCCOMB_X30_Y27_N10
\digit1display|WideOr2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr2~2_combout\ = (\digit1display|WideOr2~1_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\) # (!\digit1display|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datab => \digit1display|WideOr2~1_combout\,
	datac => \digit1display|Equal1~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideOr2~2_combout\);

-- Location: LCCOMB_X30_Y27_N24
\digit1display|WideOr2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr2~3_combout\ = ((\digit1display|Equal10~0_combout\ & (temp(0) $ (\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\)))) # (!\digit1display|WideOr2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(0),
	datab => \digit1display|Equal10~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datad => \digit1display|WideOr2~2_combout\,
	combout => \digit1display|WideOr2~3_combout\);

-- Location: LCCOMB_X31_Y27_N2
\digit1display|Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|Equal1~3_combout\ = (\digit1display|Equal1~2_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \digit1display|Equal1~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|Equal1~3_combout\);

-- Location: LCCOMB_X31_Y27_N16
\digit1display|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|HEX\(2) = (\digit1display|Equal1~3_combout\) # ((\digit1display|WideOr3~0_combout\ & (!\digit1display|WideNor0~0_combout\ & !\digit1display|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideOr3~0_combout\,
	datab => \digit1display|Equal1~3_combout\,
	datac => \digit1display|WideNor0~0_combout\,
	datad => \digit1display|WideNor0~2_combout\,
	combout => \digit1display|HEX\(2));

-- Location: LCCOMB_X31_Y27_N26
\digit1display|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr1~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ & (\digit1display|Equal1~2_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\ & ((\digit1display|Equal0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datab => \digit1display|Equal1~2_combout\,
	datac => \digit1display|Equal0~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideOr1~0_combout\);

-- Location: LCCOMB_X30_Y27_N22
\digit1display|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr1~combout\ = (\digit1display|WideOr1~0_combout\) # ((!\digit1display|WideNor0~0_combout\ & (\digit1display|WideOr3~0_combout\ & !\digit1display|WideNor0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideNor0~0_combout\,
	datab => \digit1display|WideOr1~0_combout\,
	datac => \digit1display|WideOr3~0_combout\,
	datad => \digit1display|WideNor0~2_combout\,
	combout => \digit1display|WideOr1~combout\);

-- Location: LCCOMB_X31_Y27_N0
\digit1display|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr0~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\ & (!\digit1display|Equal1~2_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\ & ((!\digit1display|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[43]~65_combout\,
	datab => \digit1display|Equal1~2_combout\,
	datac => \digit1display|Equal0~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[44]~66_combout\,
	combout => \digit1display|WideOr0~0_combout\);

-- Location: LCCOMB_X31_Y27_N14
\digit1display|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit1display|WideOr0~combout\ = ((\digit1display|WideOr3~0_combout\ & (!\digit1display|WideNor0~0_combout\ & !\digit1display|WideNor0~2_combout\))) # (!\digit1display|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \digit1display|WideOr3~0_combout\,
	datab => \digit1display|WideOr0~0_combout\,
	datac => \digit1display|WideNor0~0_combout\,
	datad => \digit1display|WideNor0~2_combout\,
	combout => \digit1display|WideOr0~combout\);

-- Location: LCCOMB_X30_Y25_N0
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = temp(4) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(temp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(4),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X30_Y25_N2
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (temp(5) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!temp(5) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!temp(5) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp(5),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X30_Y25_N4
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (temp(6) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!temp(6) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((temp(6) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp(6),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X30_Y25_N6
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

-- Location: LCCOMB_X31_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => temp(6),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X30_Y25_N30
\Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X30_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X30_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (temp(5) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(5),
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X30_Y25_N8
\Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X31_Y25_N28
\Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => temp(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X31_Y25_N26
\Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => temp(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X31_Y25_N4
\Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & temp(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => temp(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X31_Y25_N14
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~32_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[15]~33_combout\) # (\Div0|auto_generated|divider|divider|StageOut[15]~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X31_Y25_N16
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X31_Y25_N18
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X31_Y25_N20
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X31_Y25_N22
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X31_Y25_N2
\Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (temp(5))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => temp(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X30_Y26_N24
\Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X30_Y26_N22
\Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X30_Y25_N10
\Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((temp(4)))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => temp(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: LCCOMB_X30_Y26_N26
\Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X30_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (temp(3) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X30_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (temp(2) & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X30_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (temp(2) & \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp(2),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X30_Y26_N10
\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X30_Y26_N12
\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X30_Y26_N14
\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\)))))
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~35_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X30_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X30_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X29_Y26_N28
\Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X30_Y26_N20
\Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (temp(3))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => temp(3),
	datac => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X29_Y26_N14
\Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X29_Y26_N6
\Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X29_Y26_N4
\Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (temp(2) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp(2),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X29_Y26_N10
\Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (temp(1) & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X29_Y26_N8
\Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (temp(1) & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp(1),
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X29_Y26_N16
\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[25]~45_combout\) # (\Div0|auto_generated|divider|divider|StageOut[25]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X29_Y26_N18
\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X29_Y26_N20
\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[27]~49_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[27]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X29_Y26_N22
\Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X29_Y26_N24
\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X30_Y26_N2
\digit2display|WideOr5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr5~combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digit2display|WideOr5~combout\);

-- Location: LCCOMB_X30_Y26_N0
\digit2display|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr4~combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digit2display|WideOr4~combout\);

-- Location: LCCOMB_X29_Y26_N12
\digit2display|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr3~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\) # 
-- ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digit2display|WideOr3~0_combout\);

-- Location: LCCOMB_X29_Y26_N2
\digit2display|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr2~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digit2display|WideOr2~0_combout\);

-- Location: LCCOMB_X29_Y26_N30
\digit2display|HEX[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|HEX\(2) = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digit2display|HEX\(2));

-- Location: LCCOMB_X29_Y26_N0
\digit2display|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr1~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & !\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digit2display|WideOr1~0_combout\);

-- Location: LCCOMB_X29_Y26_N26
\digit2display|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \digit2display|WideOr0~combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (!\Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (((\Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \digit2display|WideOr0~combout\);

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


