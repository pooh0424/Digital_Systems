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

-- DATE "06/12/2024 21:54:15"

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

ENTITY 	paritice2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	PS2_KBDAT : IN std_logic;
	PS2_KBCLK : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic
	);
END paritice2;

-- Design Ports Information
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBCLK	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF paritice2 IS
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
SIGNAL ww_PS2_KBDAT : std_logic;
SIGNAL ww_PS2_KBCLK : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_div1|CLK_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~12_combout\ : std_logic;
SIGNAL \PS2_KBCLK~input_o\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\ : std_logic;
SIGNAL \PS2_KBDAT~input_o\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[3]~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[5]~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[6]~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[7]~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~15\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[10]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|state.new_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal1~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.translate~q\ : std_logic;
SIGNAL \ps2_ACCLL|state~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.output~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|break~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.ready~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|e0_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[5]~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~46_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[2]~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~41_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~42_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[6]~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[1]~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~41_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~43_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[4]~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~44_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[3]~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[0]~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[0]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~45_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[5]~5_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \cr~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \cr[2]~7_combout\ : std_logic;
SIGNAL \cr[2]~8_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \nowcolor[0]~feeder_combout\ : std_logic;
SIGNAL \nowcolor[0]~0_combout\ : std_logic;
SIGNAL \nowcolor[0]~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \nowcolor[1]~feeder_combout\ : std_logic;
SIGNAL \cg[1]~3_combout\ : std_logic;
SIGNAL \cr[3]~9_combout\ : std_logic;
SIGNAL \cr[3]~10_combout\ : std_logic;
SIGNAL \cr[1]~3_combout\ : std_logic;
SIGNAL \cr[1]~4_combout\ : std_logic;
SIGNAL \cr[1]~6_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \cr~1_combout\ : std_logic;
SIGNAL \cr[0]~0_combout\ : std_logic;
SIGNAL \cr~2_combout\ : std_logic;
SIGNAL \clock_div1|CLK_out~0_combout\ : std_logic;
SIGNAL \clock_div1|CLK_out~feeder_combout\ : std_logic;
SIGNAL \clock_div1|CLK_out~q\ : std_logic;
SIGNAL \clock_div1|CLK_out~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_sync1|Add0~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~1\ : std_logic;
SIGNAL \VGA_sync1|Add0~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~3\ : std_logic;
SIGNAL \VGA_sync1|Add0~4_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~5\ : std_logic;
SIGNAL \VGA_sync1|Add0~6_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~7\ : std_logic;
SIGNAL \VGA_sync1|Add0~8_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~9\ : std_logic;
SIGNAL \VGA_sync1|Add0~10_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~11\ : std_logic;
SIGNAL \VGA_sync1|Add0~12_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~13\ : std_logic;
SIGNAL \VGA_sync1|Add0~14_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~15\ : std_logic;
SIGNAL \VGA_sync1|Add0~16_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~17\ : std_logic;
SIGNAL \VGA_sync1|Add0~18_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~11\ : std_logic;
SIGNAL \VGA_sync1|Add1~12_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~13\ : std_logic;
SIGNAL \VGA_sync1|Add1~14_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~15\ : std_logic;
SIGNAL \VGA_sync1|Add1~16_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~0_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~3_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~1\ : std_logic;
SIGNAL \VGA_sync1|Add1~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~3\ : std_logic;
SIGNAL \VGA_sync1|Add1~4_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~17\ : std_logic;
SIGNAL \VGA_sync1|Add1~18_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~5\ : std_logic;
SIGNAL \VGA_sync1|Add1~6_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~7\ : std_logic;
SIGNAL \VGA_sync1|Add1~8_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~9\ : std_logic;
SIGNAL \VGA_sync1|Add1~10_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~2_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~3_combout\ : std_logic;
SIGNAL \VGA_sync1|video_on~0_combout\ : std_logic;
SIGNAL \dot_display1|Rout[0]~0_combout\ : std_logic;
SIGNAL \dot_display1|Rout[1]~1_combout\ : std_logic;
SIGNAL \dot_display1|Rout[2]~2_combout\ : std_logic;
SIGNAL \dot_display1|Rout[3]~3_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \cg~9_combout\ : std_logic;
SIGNAL \cg[2]~11_combout\ : std_logic;
SIGNAL \cg[2]~12_combout\ : std_logic;
SIGNAL \cg~13_combout\ : std_logic;
SIGNAL \cg[3]~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \cg~14_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \cg[1]~8_combout\ : std_logic;
SIGNAL \cg[1]~10_combout\ : std_logic;
SIGNAL \cg[1]~4_combout\ : std_logic;
SIGNAL \cg[1]~5_combout\ : std_logic;
SIGNAL \cg~15_combout\ : std_logic;
SIGNAL \cg~6_combout\ : std_logic;
SIGNAL \cg~7_combout\ : std_logic;
SIGNAL \dot_display1|Gout[0]~0_combout\ : std_logic;
SIGNAL \dot_display1|Gout[1]~1_combout\ : std_logic;
SIGNAL \dot_display1|Gout[2]~2_combout\ : std_logic;
SIGNAL \dot_display1|Gout[3]~3_combout\ : std_logic;
SIGNAL \cb~11_combout\ : std_logic;
SIGNAL \cb[3]~9_combout\ : std_logic;
SIGNAL \cb[2]~13_combout\ : std_logic;
SIGNAL \cb[2]~14_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \cb[1]~17_combout\ : std_logic;
SIGNAL \cb[1]~10_combout\ : std_logic;
SIGNAL \cb[1]~12_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \cb[3]~18_combout\ : std_logic;
SIGNAL \cb[3]~15_combout\ : std_logic;
SIGNAL \cb[3]~16_combout\ : std_logic;
SIGNAL \cb~4_combout\ : std_logic;
SIGNAL \cb~5_combout\ : std_logic;
SIGNAL \cb~6_combout\ : std_logic;
SIGNAL \cb~7_combout\ : std_logic;
SIGNAL \cb~8_combout\ : std_logic;
SIGNAL \dot_display1|Bout[0]~0_combout\ : std_logic;
SIGNAL \dot_display1|Bout[1]~1_combout\ : std_logic;
SIGNAL \dot_display1|Bout[2]~2_combout\ : std_logic;
SIGNAL \dot_display1|Bout[3]~3_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~2_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|sync_ffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VGA_sync1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL cr : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL cb : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii\ : std_logic_vector(7 DOWNTO 0);
SIGNAL cg : std_logic_vector(3 DOWNTO 0);
SIGNAL nowcolor : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_sync1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_PS2_KBDAT <= PS2_KBDAT;
ww_PS2_KBCLK <= PS2_KBCLK;
ww_KEY <= KEY;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ascii_new~q\);

\clock_div1|CLK_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_div1|CLK_out~q\);

\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\;
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[1]~1_combout\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[2]~2_combout\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[3]~3_combout\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Gout[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Gout[1]~1_combout\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Gout[2]~2_combout\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Gout[3]~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Bout[0]~0_combout\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Bout[1]~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Bout[2]~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Bout[3]~3_combout\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_sync1|process_2~2_combout\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_sync1|process_3~2_combout\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

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

-- Location: LCCOMB_X29_Y18_N4
\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~12_combout\ = \ps2_ACCLL|ps2_keyboard_0|count_idle\(0) $ (VCC)
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\ = CARRY(\ps2_ACCLL|ps2_keyboard_0|count_idle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(0),
	datad => VCC,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~12_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\);

-- Location: IOIBUF_X41_Y11_N1
\PS2_KBCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBCLK,
	o => \PS2_KBCLK~input_o\);

-- Location: FF_X32_Y13_N27
\ps2_ACCLL|ps2_keyboard_0|sync_ffs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \PS2_KBCLK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(0));

-- Location: LCCOMB_X32_Y13_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder_combout\);

-- Location: FF_X32_Y13_N29
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0));

-- Location: LCCOMB_X32_Y13_N16
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder_combout\);

-- Location: FF_X32_Y13_N17
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1));

-- Location: LCCOMB_X32_Y13_N30
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\);

-- Location: LCCOMB_X32_Y13_N26
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\);

-- Location: LCCOMB_X31_Y13_N12
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0) $ (VCC)
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\ = CARRY(\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0),
	datad => VCC,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\);

-- Location: LCCOMB_X32_Y13_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\);

-- Location: FF_X31_Y13_N27
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0));

-- Location: LCCOMB_X31_Y13_N14
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\);

-- Location: LCCOMB_X32_Y13_N2
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8_combout\);

-- Location: FF_X32_Y13_N3
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1));

-- Location: LCCOMB_X31_Y13_N16
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\);

-- Location: LCCOMB_X31_Y13_N10
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\);

-- Location: FF_X31_Y13_N11
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2));

-- Location: LCCOMB_X31_Y13_N18
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\);

-- Location: LCCOMB_X31_Y13_N6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6_combout\);

-- Location: FF_X31_Y13_N7
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3));

-- Location: LCCOMB_X31_Y13_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\);

-- Location: LCCOMB_X31_Y13_N8
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\);

-- Location: FF_X31_Y13_N9
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4));

-- Location: LCCOMB_X31_Y13_N22
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\);

-- Location: LCCOMB_X31_Y13_N2
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\);

-- Location: FF_X31_Y13_N3
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5));

-- Location: LCCOMB_X31_Y13_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\);

-- Location: LCCOMB_X31_Y13_N0
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3_combout\);

-- Location: FF_X31_Y13_N1
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6));

-- Location: LCCOMB_X31_Y13_N26
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\);

-- Location: LCCOMB_X31_Y13_N30
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\);

-- Location: FF_X31_Y13_N31
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7));

-- Location: LCCOMB_X31_Y13_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16_combout\);

-- Location: LCCOMB_X31_Y13_N4
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) $ ((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out~0_combout\);

-- Location: FF_X31_Y13_N5
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8));

-- Location: LCCOMB_X32_Y13_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\) # ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & 
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\);

-- Location: LCCOMB_X32_Y13_N22
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder_combout\);

-- Location: FF_X32_Y13_N23
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\);

-- Location: LCCOMB_X29_Y18_N10
\ps2_ACCLL|ps2_keyboard_0|count_idle[3]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(3) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\)) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(3) & ((\ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(3),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~19_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\);

-- Location: LCCOMB_X29_Y18_N12
\ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\);

-- Location: FF_X29_Y18_N13
\ps2_ACCLL|ps2_keyboard_0|count_idle[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4));

-- Location: LCCOMB_X29_Y18_N14
\ps2_ACCLL|ps2_keyboard_0|count_idle[5]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(5) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\)) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(5) & ((\ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(5),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~23_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\);

-- Location: FF_X29_Y18_N15
\ps2_ACCLL|ps2_keyboard_0|count_idle[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~23_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(5));

-- Location: LCCOMB_X29_Y18_N16
\ps2_ACCLL|ps2_keyboard_0|count_idle[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(6) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(6) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(6) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(6),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~25_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\);

-- Location: FF_X29_Y18_N17
\ps2_ACCLL|ps2_keyboard_0|count_idle[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~25_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(6));

-- Location: LCCOMB_X29_Y18_N18
\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(7) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\)) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(7) & ((\ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(7),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~27_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\);

-- Location: FF_X29_Y18_N19
\ps2_ACCLL|ps2_keyboard_0|count_idle[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~27_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(7));

-- Location: LCCOMB_X29_Y18_N30
\ps2_ACCLL|ps2_keyboard_0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & (\ps2_ACCLL|ps2_keyboard_0|count_idle\(6) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(5) & \ps2_ACCLL|ps2_keyboard_0|count_idle\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|count_idle\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|count_idle\(7),
	combout => \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y18_N20
\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(8) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(8) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(8) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\);

-- Location: FF_X29_Y18_N21
\ps2_ACCLL|ps2_keyboard_0|count_idle[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8));

-- Location: LCCOMB_X29_Y18_N22
\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(9) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\)) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(9) & ((\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\);

-- Location: FF_X29_Y18_N23
\ps2_ACCLL|ps2_keyboard_0|count_idle[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9));

-- Location: LCCOMB_X29_Y18_N24
\ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ & 
-- VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\);

-- Location: FF_X29_Y18_N25
\ps2_ACCLL|ps2_keyboard_0|count_idle[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10));

-- Location: LCCOMB_X29_Y18_N26
\ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\ = \ps2_ACCLL|ps2_keyboard_0|count_idle\(11) $ (\ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11),
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\);

-- Location: FF_X29_Y18_N27
\ps2_ACCLL|ps2_keyboard_0|count_idle[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11));

-- Location: LCCOMB_X29_Y18_N28
\ps2_ACCLL|ps2_keyboard_0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(11) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & (\ps2_ACCLL|ps2_keyboard_0|count_idle\(9) & !\ps2_ACCLL|ps2_keyboard_0|count_idle\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11),
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10),
	datac => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9),
	datad => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y18_N2
\ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\ = (((!\ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\);

-- Location: FF_X29_Y18_N5
\ps2_ACCLL|ps2_keyboard_0|count_idle[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~12_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(0));

-- Location: LCCOMB_X29_Y18_N6
\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(1) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\)) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(1) & ((\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\);

-- Location: FF_X29_Y18_N7
\ps2_ACCLL|ps2_keyboard_0|count_idle[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1));

-- Location: LCCOMB_X29_Y18_N8
\ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(2) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(2) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(2) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\);

-- Location: FF_X29_Y18_N9
\ps2_ACCLL|ps2_keyboard_0|count_idle[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2));

-- Location: FF_X29_Y18_N11
\ps2_ACCLL|ps2_keyboard_0|count_idle[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~19_combout\,
	sclr => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\,
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(3));

-- Location: LCCOMB_X29_Y18_N0
\ps2_ACCLL|ps2_keyboard_0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(3) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(2) & (\ps2_ACCLL|ps2_keyboard_0|count_idle\(0) & !\ps2_ACCLL|ps2_keyboard_0|count_idle\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|count_idle\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\);

-- Location: CLKCTRL_G6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\);

-- Location: IOIBUF_X41_Y12_N22
\PS2_KBDAT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBDAT,
	o => \PS2_KBDAT~input_o\);

-- Location: LCCOMB_X26_Y12_N4
\ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]~feeder_combout\ = \PS2_KBDAT~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_KBDAT~input_o\,
	combout => \ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]~feeder_combout\);

-- Location: FF_X26_Y12_N5
\ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(1));

-- Location: LCCOMB_X23_Y8_N14
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[0]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[0]~feeder_combout\);

-- Location: FF_X23_Y8_N15
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0));

-- Location: LCCOMB_X23_Y8_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder_combout\);

-- Location: FF_X23_Y8_N21
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1));

-- Location: LCCOMB_X23_Y8_N2
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\);

-- Location: LCCOMB_X23_Y8_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\);

-- Location: LCCOMB_X24_Y8_N10
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0) $ (VCC)
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\ = CARRY(\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0),
	datad => VCC,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\);

-- Location: LCCOMB_X24_Y8_N6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9_combout\);

-- Location: FF_X24_Y8_N7
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0));

-- Location: LCCOMB_X24_Y8_N12
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\);

-- Location: LCCOMB_X23_Y8_N6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\);

-- Location: FF_X23_Y8_N7
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1));

-- Location: LCCOMB_X24_Y8_N14
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\);

-- Location: LCCOMB_X24_Y8_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7_combout\);

-- Location: FF_X24_Y8_N29
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2));

-- Location: LCCOMB_X24_Y8_N16
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~6_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\);

-- Location: LCCOMB_X24_Y8_N8
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[3]~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~6_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~6_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[3]~6_combout\);

-- Location: FF_X24_Y8_N9
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(3));

-- Location: LCCOMB_X24_Y8_N18
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\);

-- Location: LCCOMB_X23_Y8_N16
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\);

-- Location: FF_X23_Y8_N17
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4));

-- Location: LCCOMB_X24_Y8_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~10_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\);

-- Location: LCCOMB_X24_Y8_N2
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[5]~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~10_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~10_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[5]~4_combout\);

-- Location: FF_X24_Y8_N3
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(5));

-- Location: LCCOMB_X24_Y8_N22
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\);

-- Location: LCCOMB_X24_Y8_N4
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[6]~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[6]~3_combout\);

-- Location: FF_X24_Y8_N5
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6));

-- Location: LCCOMB_X24_Y8_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~15\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~15\);

-- Location: LCCOMB_X24_Y8_N30
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[7]~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[7]~2_combout\);

-- Location: FF_X24_Y8_N31
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7));

-- Location: LCCOMB_X24_Y8_N26
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~15\ $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~15\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16_combout\);

-- Location: LCCOMB_X24_Y8_N0
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) $ 
-- ((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0_combout\);

-- Location: FF_X24_Y8_N1
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8));

-- Location: LCCOMB_X22_Y21_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\) # 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\);

-- Location: FF_X22_Y21_N21
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\);

-- Location: LCCOMB_X22_Y21_N8
\ps2_ACCLL|ps2_keyboard_0|ps2_word[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[10]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\,
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[10]~feeder_combout\);

-- Location: FF_X22_Y21_N9
\ps2_ACCLL|ps2_keyboard_0|ps2_word[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(10));

-- Location: FF_X22_Y21_N27
\ps2_ACCLL|ps2_keyboard_0|ps2_word[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(9));

-- Location: FF_X22_Y21_N25
\ps2_ACCLL|ps2_keyboard_0|ps2_word[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8));

-- Location: FF_X22_Y21_N17
\ps2_ACCLL|ps2_keyboard_0|ps2_word[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7));

-- Location: FF_X22_Y21_N1
\ps2_ACCLL|ps2_keyboard_0|ps2_word[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6));

-- Location: FF_X22_Y21_N29
\ps2_ACCLL|ps2_keyboard_0|ps2_word[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5));

-- Location: FF_X22_Y21_N31
\ps2_ACCLL|ps2_keyboard_0|ps2_word[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4));

-- Location: FF_X22_Y21_N23
\ps2_ACCLL|ps2_keyboard_0|ps2_word[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3));

-- Location: FF_X22_Y21_N5
\ps2_ACCLL|ps2_keyboard_0|ps2_word[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2));

-- Location: FF_X22_Y21_N15
\ps2_ACCLL|ps2_keyboard_0|ps2_word[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1));

-- Location: FF_X22_Y21_N11
\ps2_ACCLL|ps2_keyboard_0|ps2_word[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(0));

-- Location: LCCOMB_X22_Y21_N10
\ps2_ACCLL|ps2_keyboard_0|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(10) & !\ps2_ACCLL|ps2_keyboard_0|ps2_word\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(10),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\);

-- Location: LCCOMB_X22_Y21_N18
\ps2_ACCLL|ps2_keyboard_0|error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(7) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(8) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\);

-- Location: LCCOMB_X22_Y21_N12
\ps2_ACCLL|ps2_keyboard_0|error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\);

-- Location: LCCOMB_X22_Y21_N26
\ps2_ACCLL|ps2_keyboard_0|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|error~1_combout\ $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(9) $ (\ps2_ACCLL|ps2_keyboard_0|error~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(9),
	datad => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\);

-- Location: LCCOMB_X22_Y21_N2
\ps2_ACCLL|ps2_keyboard_0|process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\);

-- Location: FF_X22_Y21_N3
\ps2_ACCLL|ps2_keyboard_0|ps2_code_new\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\);

-- Location: LCCOMB_X21_Y16_N2
\ps2_ACCLL|prev_ps2_code_new~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|prev_ps2_code_new~0_combout\ = !\ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\,
	combout => \ps2_ACCLL|prev_ps2_code_new~0_combout\);

-- Location: FF_X21_Y16_N3
\ps2_ACCLL|prev_ps2_code_new\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|prev_ps2_code_new~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|prev_ps2_code_new~q\);

-- Location: FF_X21_Y16_N13
\ps2_ACCLL|state.new_code\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|Selector1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.new_code~q\);

-- Location: FF_X20_Y21_N7
\ps2_ACCLL|ps2_keyboard_0|ps2_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3));

-- Location: FF_X21_Y21_N11
\ps2_ACCLL|ps2_keyboard_0|ps2_code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4));

-- Location: LCCOMB_X20_Y21_N24
\ps2_ACCLL|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y21_N12
\ps2_ACCLL|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal1~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Equal1~0_combout\);

-- Location: FF_X21_Y21_N29
\ps2_ACCLL|ps2_keyboard_0|ps2_code[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7));

-- Location: FF_X21_Y21_N9
\ps2_ACCLL|ps2_keyboard_0|ps2_code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6));

-- Location: FF_X20_Y21_N21
\ps2_ACCLL|ps2_keyboard_0|ps2_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0));

-- Location: LCCOMB_X24_Y17_N22
\ps2_ACCLL|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux13~2_combout\);

-- Location: FF_X21_Y21_N7
\ps2_ACCLL|ps2_keyboard_0|ps2_code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5));

-- Location: FF_X21_Y21_N1
\ps2_ACCLL|ps2_keyboard_0|ps2_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2));

-- Location: FF_X21_Y21_N23
\ps2_ACCLL|ps2_keyboard_0|ps2_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2),
	sload => VCC,
	ena => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1));

-- Location: LCCOMB_X24_Y17_N24
\ps2_ACCLL|Mux41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~4_combout\);

-- Location: LCCOMB_X24_Y17_N20
\ps2_ACCLL|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux13~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux41~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux13~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux41~4_combout\,
	combout => \ps2_ACCLL|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y16_N6
\ps2_ACCLL|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~1_combout\ = (\ps2_ACCLL|state.new_code~q\ & (((!\ps2_ACCLL|Equal0~1_combout\ & !\ps2_ACCLL|Equal1~0_combout\)) # (!\ps2_ACCLL|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.new_code~q\,
	datab => \ps2_ACCLL|Equal0~1_combout\,
	datac => \ps2_ACCLL|Equal1~0_combout\,
	datad => \ps2_ACCLL|Equal0~0_combout\,
	combout => \ps2_ACCLL|Selector1~1_combout\);

-- Location: FF_X21_Y16_N7
\ps2_ACCLL|state.translate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.translate~q\);

-- Location: LCCOMB_X21_Y16_N8
\ps2_ACCLL|state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|state~6_combout\ = (\ps2_ACCLL|state.translate~q\ & !\ps2_ACCLL|break~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|state~6_combout\);

-- Location: FF_X21_Y16_N9
\ps2_ACCLL|state.output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.output~q\);

-- Location: LCCOMB_X21_Y16_N28
\ps2_ACCLL|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~0_combout\ = (\ps2_ACCLL|break~q\ & ((\ps2_ACCLL|state.new_code~q\) # ((\ps2_ACCLL|state.output~q\) # (!\ps2_ACCLL|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.new_code~q\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|state.output~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector2~0_combout\);

-- Location: LCCOMB_X21_Y16_N20
\ps2_ACCLL|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~1_combout\ = (\ps2_ACCLL|Selector2~0_combout\) # ((\ps2_ACCLL|state.new_code~q\ & (\ps2_ACCLL|Equal0~1_combout\ & \ps2_ACCLL|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.new_code~q\,
	datab => \ps2_ACCLL|Selector2~0_combout\,
	datac => \ps2_ACCLL|Equal0~1_combout\,
	datad => \ps2_ACCLL|Equal0~0_combout\,
	combout => \ps2_ACCLL|Selector2~1_combout\);

-- Location: FF_X21_Y16_N21
\ps2_ACCLL|break\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|break~q\);

-- Location: LCCOMB_X21_Y16_N24
\ps2_ACCLL|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~2_combout\ = (\ps2_ACCLL|Selector1~0_combout\) # ((\ps2_ACCLL|Selector1~1_combout\) # ((!\ps2_ACCLL|break~q\ & \ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector1~0_combout\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|Selector1~1_combout\,
	datad => \ps2_ACCLL|state.translate~q\,
	combout => \ps2_ACCLL|Selector1~2_combout\);

-- Location: FF_X21_Y16_N25
\ps2_ACCLL|state.ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.ready~q\);

-- Location: LCCOMB_X21_Y16_N30
\ps2_ACCLL|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ & (\ps2_ACCLL|prev_ps2_code_new~q\ & !\ps2_ACCLL|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\,
	datab => \ps2_ACCLL|prev_ps2_code_new~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector1~0_combout\);

-- Location: LCCOMB_X24_Y19_N2
\ps2_ACCLL|caps_lock~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|caps_lock~1_combout\);

-- Location: LCCOMB_X24_Y19_N8
\ps2_ACCLL|shift_l~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~7_combout\ = (\ps2_ACCLL|caps_lock~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|state.translate~q\,
	combout => \ps2_ACCLL|shift_l~7_combout\);

-- Location: LCCOMB_X22_Y21_N24
\ps2_ACCLL|Mux38~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~6_combout\);

-- Location: LCCOMB_X24_Y19_N12
\ps2_ACCLL|control_l~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|shift_l~7_combout\ & (\ps2_ACCLL|Mux38~6_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|shift_l~7_combout\,
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|control_l~1_combout\);

-- Location: LCCOMB_X21_Y16_N18
\ps2_ACCLL|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~1_combout\ = (\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|state.new_code~q\) # ((\ps2_ACCLL|state.output~q\) # (!\ps2_ACCLL|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.new_code~q\,
	datab => \ps2_ACCLL|state.output~q\,
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector3~1_combout\);

-- Location: LCCOMB_X21_Y16_N16
\ps2_ACCLL|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~0_combout\ = (\ps2_ACCLL|state.new_code~q\ & (!\ps2_ACCLL|Equal0~1_combout\ & (\ps2_ACCLL|Equal1~0_combout\ & \ps2_ACCLL|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.new_code~q\,
	datab => \ps2_ACCLL|Equal0~1_combout\,
	datac => \ps2_ACCLL|Equal1~0_combout\,
	datad => \ps2_ACCLL|Equal0~0_combout\,
	combout => \ps2_ACCLL|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y21_N12
\ps2_ACCLL|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~2_combout\ = (\ps2_ACCLL|Selector3~1_combout\) # (\ps2_ACCLL|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Selector3~1_combout\,
	datad => \ps2_ACCLL|Selector3~0_combout\,
	combout => \ps2_ACCLL|Selector3~2_combout\);

-- Location: FF_X21_Y21_N13
\ps2_ACCLL|e0_code\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|e0_code~q\);

-- Location: LCCOMB_X24_Y19_N14
\ps2_ACCLL|control_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_r~0_combout\ = (\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|e0_code~q\ & (!\ps2_ACCLL|break~q\)) # (!\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|control_r~q\))))) # (!\ps2_ACCLL|control_l~1_combout\ & (((\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~1_combout\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|e0_code~q\,
	combout => \ps2_ACCLL|control_r~0_combout\);

-- Location: FF_X24_Y19_N15
\ps2_ACCLL|control_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|control_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|control_r~q\);

-- Location: LCCOMB_X24_Y19_N4
\ps2_ACCLL|control_l~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~2_combout\ = (\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|control_l~q\))) # (!\ps2_ACCLL|e0_code~q\ & (!\ps2_ACCLL|break~q\)))) # (!\ps2_ACCLL|control_l~1_combout\ & (((\ps2_ACCLL|control_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~1_combout\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|e0_code~q\,
	combout => \ps2_ACCLL|control_l~2_combout\);

-- Location: FF_X24_Y19_N5
\ps2_ACCLL|control_l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|control_l~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|control_l~q\);

-- Location: LCCOMB_X21_Y16_N0
\ps2_ACCLL|Selector4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((!\ps2_ACCLL|control_r~q\ & !\ps2_ACCLL|control_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|control_l~q\,
	combout => \ps2_ACCLL|Selector4~9_combout\);

-- Location: LCCOMB_X20_Y18_N16
\ps2_ACCLL|Selector4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Selector4~6_combout\);

-- Location: LCCOMB_X21_Y17_N0
\ps2_ACCLL|Selector4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Selector4~7_combout\);

-- Location: LCCOMB_X21_Y18_N28
\ps2_ACCLL|Selector4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~8_combout\ = (\ps2_ACCLL|Selector4~6_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Selector4~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector4~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Selector4~7_combout\,
	combout => \ps2_ACCLL|Selector4~8_combout\);

-- Location: LCCOMB_X21_Y16_N14
\ps2_ACCLL|Selector4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~14_combout\ = (\ps2_ACCLL|Selector4~8_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|control_l~q\) # (\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datab => \ps2_ACCLL|Selector4~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|control_r~q\,
	combout => \ps2_ACCLL|Selector4~14_combout\);

-- Location: LCCOMB_X21_Y16_N26
\ps2_ACCLL|Selector4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~10_combout\ = (!\ps2_ACCLL|ascii\(7) & (((\ps2_ACCLL|Selector4~9_combout\) # (\ps2_ACCLL|Selector4~14_combout\)) # (!\ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|Selector4~9_combout\,
	datac => \ps2_ACCLL|Selector4~14_combout\,
	datad => \ps2_ACCLL|ascii\(7),
	combout => \ps2_ACCLL|Selector4~10_combout\);

-- Location: LCCOMB_X26_Y21_N2
\ps2_ACCLL|Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux5~15_combout\);

-- Location: LCCOMB_X26_Y21_N4
\ps2_ACCLL|Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~16_combout\ = (\ps2_ACCLL|Mux5~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux5~15_combout\,
	combout => \ps2_ACCLL|Mux5~16_combout\);

-- Location: LCCOMB_X26_Y21_N20
\ps2_ACCLL|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~6_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux5~6_combout\);

-- Location: LCCOMB_X26_Y21_N0
\ps2_ACCLL|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux5~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux5~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux5~4_combout\);

-- Location: LCCOMB_X26_Y21_N14
\ps2_ACCLL|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux5~16_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux5~16_combout\,
	datad => \ps2_ACCLL|Mux5~4_combout\,
	combout => \ps2_ACCLL|Mux5~3_combout\);

-- Location: LCCOMB_X20_Y18_N24
\ps2_ACCLL|Mux5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~14_combout\ = (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ascii\(7),
	datad => \ps2_ACCLL|Mux5~3_combout\,
	combout => \ps2_ACCLL|Mux5~14_combout\);

-- Location: LCCOMB_X20_Y18_N12
\ps2_ACCLL|Selector4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux5~14_combout\ & ((\ps2_ACCLL|control_l~q\) # (\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|Mux5~14_combout\,
	combout => \ps2_ACCLL|Selector4~15_combout\);

-- Location: LCCOMB_X23_Y18_N30
\ps2_ACCLL|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~0_combout\ = (\ps2_ACCLL|control_l~q\) # (\ps2_ACCLL|control_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|control_r~q\,
	combout => \ps2_ACCLL|process_0~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\ps2_ACCLL|Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux37~2_combout\);

-- Location: LCCOMB_X19_Y18_N10
\ps2_ACCLL|Mux37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux37~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux37~3_combout\);

-- Location: LCCOMB_X20_Y18_N30
\ps2_ACCLL|Mux37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux37~4_combout\);

-- Location: LCCOMB_X20_Y18_N20
\ps2_ACCLL|Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux37~1_combout\);

-- Location: LCCOMB_X20_Y18_N14
\ps2_ACCLL|Mux37~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux37~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux37~4_combout\,
	datad => \ps2_ACCLL|Mux37~1_combout\,
	combout => \ps2_ACCLL|Mux37~5_combout\);

-- Location: LCCOMB_X24_Y18_N10
\ps2_ACCLL|Mux24~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux24~4_combout\);

-- Location: LCCOMB_X19_Y18_N20
\ps2_ACCLL|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux22~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\ps2_ACCLL|Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux24~4_combout\) # (!\ps2_ACCLL|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux24~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux22~0_combout\,
	combout => \ps2_ACCLL|Mux22~1_combout\);

-- Location: LCCOMB_X21_Y21_N22
\ps2_ACCLL|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux16~0_combout\);

-- Location: LCCOMB_X22_Y22_N28
\ps2_ACCLL|Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux13~4_combout\);

-- Location: LCCOMB_X21_Y21_N6
\ps2_ACCLL|Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~3_combout\);

-- Location: LCCOMB_X21_Y18_N22
\ps2_ACCLL|Mux13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux13~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux13~4_combout\,
	datad => \ps2_ACCLL|Mux13~3_combout\,
	combout => \ps2_ACCLL|Mux13~5_combout\);

-- Location: LCCOMB_X21_Y18_N6
\ps2_ACCLL|Mux13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux13~12_combout\);

-- Location: LCCOMB_X21_Y18_N20
\ps2_ACCLL|Mux13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~6_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux16~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|Mux13~5_combout\)))) # (!\ps2_ACCLL|Mux13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux16~0_combout\,
	datac => \ps2_ACCLL|Mux13~5_combout\,
	datad => \ps2_ACCLL|Mux13~12_combout\,
	combout => \ps2_ACCLL|Mux13~6_combout\);

-- Location: LCCOMB_X20_Y18_N6
\ps2_ACCLL|Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~2_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux22~2_combout\);

-- Location: LCCOMB_X21_Y18_N10
\ps2_ACCLL|Mux22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux22~3_combout\);

-- Location: LCCOMB_X21_Y18_N8
\ps2_ACCLL|Mux22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux22~3_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux22~2_combout\)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux22~2_combout\,
	datad => \ps2_ACCLL|Mux22~3_combout\,
	combout => \ps2_ACCLL|Mux22~4_combout\);

-- Location: LCCOMB_X20_Y17_N8
\ps2_ACCLL|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux19~4_combout\);

-- Location: LCCOMB_X21_Y21_N28
\ps2_ACCLL|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux14~2_combout\);

-- Location: LCCOMB_X20_Y17_N6
\ps2_ACCLL|Mux13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux19~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~4_combout\,
	datab => \ps2_ACCLL|Mux14~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux13~7_combout\);

-- Location: LCCOMB_X21_Y18_N30
\ps2_ACCLL|Mux22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux13~7_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux22~4_combout\,
	datad => \ps2_ACCLL|Mux13~7_combout\,
	combout => \ps2_ACCLL|Mux22~5_combout\);

-- Location: LCCOMB_X21_Y18_N24
\ps2_ACCLL|Mux22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux22~6_combout\);

-- Location: LCCOMB_X21_Y18_N2
\ps2_ACCLL|Mux22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~7_combout\ = (\ps2_ACCLL|ascii\(7)) # ((\ps2_ACCLL|Mux22~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|Mux22~4_combout\,
	datad => \ps2_ACCLL|Mux22~6_combout\,
	combout => \ps2_ACCLL|Mux22~7_combout\);

-- Location: LCCOMB_X21_Y18_N0
\ps2_ACCLL|Mux22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~8_combout\ = (!\ps2_ACCLL|Mux22~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux13~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|Mux22~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux13~6_combout\,
	datac => \ps2_ACCLL|Mux22~5_combout\,
	datad => \ps2_ACCLL|Mux22~7_combout\,
	combout => \ps2_ACCLL|Mux22~8_combout\);

-- Location: LCCOMB_X21_Y18_N18
\ps2_ACCLL|Mux13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~8_combout\ = ((\ps2_ACCLL|Mux13~7_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux13~7_combout\,
	combout => \ps2_ACCLL|Mux13~8_combout\);

-- Location: LCCOMB_X21_Y18_N16
\ps2_ACCLL|Mux13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~9_combout\ = (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux13~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux13~6_combout\,
	datac => \ps2_ACCLL|ascii\(7),
	datad => \ps2_ACCLL|Mux13~8_combout\,
	combout => \ps2_ACCLL|Mux13~9_combout\);

-- Location: LCCOMB_X20_Y18_N0
\ps2_ACCLL|Mux22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~9_combout\ = (\ps2_ACCLL|Mux38~6_combout\ & ((\ps2_ACCLL|Mux22~8_combout\) # ((\ps2_ACCLL|Mux22~1_combout\ & \ps2_ACCLL|Mux13~9_combout\)))) # (!\ps2_ACCLL|Mux38~6_combout\ & (\ps2_ACCLL|Mux22~1_combout\ & 
-- ((\ps2_ACCLL|Mux13~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~6_combout\,
	datab => \ps2_ACCLL|Mux22~1_combout\,
	datac => \ps2_ACCLL|Mux22~8_combout\,
	datad => \ps2_ACCLL|Mux13~9_combout\,
	combout => \ps2_ACCLL|Mux22~9_combout\);

-- Location: LCCOMB_X20_Y18_N4
\ps2_ACCLL|Mux37~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~6_combout\ = (\ps2_ACCLL|Mux22~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux37~5_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux37~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux37~3_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux37~5_combout\,
	datad => \ps2_ACCLL|Mux22~9_combout\,
	combout => \ps2_ACCLL|Mux37~6_combout\);

-- Location: LCCOMB_X20_Y18_N18
\ps2_ACCLL|Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux37~0_combout\);

-- Location: LCCOMB_X20_Y18_N22
\ps2_ACCLL|Selector4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|Mux37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux37~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Selector4~16_combout\);

-- Location: LCCOMB_X20_Y18_N28
\ps2_ACCLL|Selector4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux37~6_combout\) # ((\ps2_ACCLL|Selector4~16_combout\ & \ps2_ACCLL|Mux22~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Selector4~16_combout\ & \ps2_ACCLL|Mux22~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux37~6_combout\,
	datac => \ps2_ACCLL|Selector4~16_combout\,
	datad => \ps2_ACCLL|Mux22~9_combout\,
	combout => \ps2_ACCLL|Selector4~11_combout\);

-- Location: LCCOMB_X20_Y18_N26
\ps2_ACCLL|Selector4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~12_combout\ = (\ps2_ACCLL|Selector4~15_combout\) # ((!\ps2_ACCLL|process_0~0_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Selector4~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector4~15_combout\,
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Selector4~11_combout\,
	combout => \ps2_ACCLL|Selector4~12_combout\);

-- Location: LCCOMB_X21_Y16_N4
\ps2_ACCLL|Selector4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~13_combout\ = (!\ps2_ACCLL|Selector4~10_combout\ & ((\ps2_ACCLL|state.translate~q\ & ((!\ps2_ACCLL|Selector4~12_combout\))) # (!\ps2_ACCLL|state.translate~q\ & (!\ps2_ACCLL|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|Selector1~1_combout\,
	datac => \ps2_ACCLL|Selector4~10_combout\,
	datad => \ps2_ACCLL|Selector4~12_combout\,
	combout => \ps2_ACCLL|Selector4~13_combout\);

-- Location: FF_X21_Y16_N5
\ps2_ACCLL|ascii[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector4~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(7));

-- Location: LCCOMB_X21_Y16_N22
\ps2_ACCLL|ascii_code[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[5]~0_combout\ = (\ps2_ACCLL|state.output~q\ & \ps2_ACCLL|ascii\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|state.output~q\,
	datad => \ps2_ACCLL|ascii\(7),
	combout => \ps2_ACCLL|ascii_code[5]~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\ps2_ACCLL|ascii_new~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_new~2_combout\ = (\ps2_ACCLL|Selector1~0_combout\ & (\ps2_ACCLL|ascii_code[5]~0_combout\ & ((\ps2_ACCLL|state.ready~q\)))) # (!\ps2_ACCLL|Selector1~0_combout\ & ((\ps2_ACCLL|ascii_new~q\) # ((\ps2_ACCLL|ascii_code[5]~0_combout\ & 
-- \ps2_ACCLL|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector1~0_combout\,
	datab => \ps2_ACCLL|ascii_code[5]~0_combout\,
	datac => \ps2_ACCLL|ascii_new~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|ascii_new~2_combout\);

-- Location: FF_X21_Y16_N31
\ps2_ACCLL|ascii_new\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_new~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_new~q\);

-- Location: CLKCTRL_G15
\ps2_ACCLL|ascii_new~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ps2_ACCLL|ascii_new~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y22_N22
\ps2_ACCLL|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~19_combout\ = (\ps2_ACCLL|ascii\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~19_combout\);

-- Location: LCCOMB_X24_Y22_N8
\ps2_ACCLL|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~11_combout\);

-- Location: LCCOMB_X24_Y22_N24
\ps2_ACCLL|Mux18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~20_combout\);

-- Location: LCCOMB_X24_Y22_N14
\ps2_ACCLL|Mux18~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux18~20_combout\) # (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux18~20_combout\,
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~21_combout\);

-- Location: LCCOMB_X24_Y22_N20
\ps2_ACCLL|Mux18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~22_combout\ = (\ps2_ACCLL|Mux18~21_combout\ & (((\ps2_ACCLL|Mux18~11_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux18~21_combout\ & (\ps2_ACCLL|Mux18~19_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~19_combout\,
	datab => \ps2_ACCLL|Mux18~11_combout\,
	datac => \ps2_ACCLL|Mux18~21_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~22_combout\);

-- Location: LCCOMB_X24_Y22_N2
\ps2_ACCLL|Mux18~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~22_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~22_combout\,
	combout => \ps2_ACCLL|Mux18~23_combout\);

-- Location: LCCOMB_X23_Y20_N22
\ps2_ACCLL|Mux17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~5_combout\);

-- Location: LCCOMB_X23_Y22_N30
\ps2_ACCLL|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ascii\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~5_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux17~5_combout\ & 
-- ((!\ps2_ACCLL|ascii\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux17~5_combout\,
	combout => \ps2_ACCLL|Mux18~17_combout\);

-- Location: LCCOMB_X22_Y22_N24
\ps2_ACCLL|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~14_combout\);

-- Location: LCCOMB_X22_Y21_N4
\ps2_ACCLL|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~4_combout\);

-- Location: LCCOMB_X22_Y22_N30
\ps2_ACCLL|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~14_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux18~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux15~4_combout\,
	combout => \ps2_ACCLL|Mux18~15_combout\);

-- Location: LCCOMB_X23_Y22_N28
\ps2_ACCLL|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~15_combout\ & ((!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|Mux18~15_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) 
-- & (!\ps2_ACCLL|ascii\(2) & ((!\ps2_ACCLL|Mux18~15_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~15_combout\,
	combout => \ps2_ACCLL|Mux18~16_combout\);

-- Location: LCCOMB_X23_Y22_N20
\ps2_ACCLL|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~16_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux18~17_combout\,
	datad => \ps2_ACCLL|Mux18~16_combout\,
	combout => \ps2_ACCLL|Mux18~18_combout\);

-- Location: LCCOMB_X23_Y22_N10
\ps2_ACCLL|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux18~18_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux18~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux18~18_combout\,
	combout => \ps2_ACCLL|Mux10~0_combout\);

-- Location: LCCOMB_X24_Y22_N30
\ps2_ACCLL|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~9_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~9_combout\);

-- Location: LCCOMB_X23_Y22_N26
\ps2_ACCLL|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~10_combout\ = (\ps2_ACCLL|Mux15~4_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux15~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~4_combout\,
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~10_combout\);

-- Location: LCCOMB_X24_Y22_N26
\ps2_ACCLL|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~12_combout\ = (\ps2_ACCLL|Mux18~10_combout\ & (((\ps2_ACCLL|Mux18~11_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux18~10_combout\ & (\ps2_ACCLL|Mux18~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~9_combout\,
	datab => \ps2_ACCLL|Mux18~11_combout\,
	datac => \ps2_ACCLL|Mux18~10_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~12_combout\);

-- Location: LCCOMB_X24_Y22_N16
\ps2_ACCLL|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~6_combout\);

-- Location: LCCOMB_X22_Y21_N0
\ps2_ACCLL|Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux42~2_combout\);

-- Location: LCCOMB_X24_Y22_N10
\ps2_ACCLL|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux42~2_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux42~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~7_combout\);

-- Location: LCCOMB_X24_Y22_N28
\ps2_ACCLL|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~8_combout\ = (\ps2_ACCLL|Mux18~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|Mux18~7_combout\)) # (!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|Mux18~6_combout\ & ((\ps2_ACCLL|Mux18~7_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux18~7_combout\ & ((!\ps2_ACCLL|ascii\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux18~6_combout\,
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~7_combout\,
	combout => \ps2_ACCLL|Mux18~8_combout\);

-- Location: LCCOMB_X24_Y22_N12
\ps2_ACCLL|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~8_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux18~12_combout\,
	datad => \ps2_ACCLL|Mux18~8_combout\,
	combout => \ps2_ACCLL|Mux18~13_combout\);

-- Location: LCCOMB_X24_Y22_N18
\ps2_ACCLL|Mux18~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~25_combout\);

-- Location: LCCOMB_X24_Y22_N4
\ps2_ACCLL|Mux18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~24_combout\);

-- Location: LCCOMB_X24_Y22_N0
\ps2_ACCLL|Mux18~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~26_combout\ = (\ps2_ACCLL|Mux18~25_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|Mux18~25_combout\ & ((\ps2_ACCLL|Mux18~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux18~19_combout\,
	datad => \ps2_ACCLL|Mux18~25_combout\,
	combout => \ps2_ACCLL|Mux18~26_combout\);

-- Location: LCCOMB_X24_Y22_N6
\ps2_ACCLL|Mux18~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~27_combout\ = (\ps2_ACCLL|Mux18~25_combout\ & ((\ps2_ACCLL|Mux18~26_combout\ & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|Mux18~26_combout\ & ((\ps2_ACCLL|Mux18~24_combout\))))) # (!\ps2_ACCLL|Mux18~25_combout\ & 
-- ((\ps2_ACCLL|Mux18~24_combout\ & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|Mux18~24_combout\ & ((\ps2_ACCLL|Mux18~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|Mux18~25_combout\,
	datac => \ps2_ACCLL|Mux18~24_combout\,
	datad => \ps2_ACCLL|Mux18~26_combout\,
	combout => \ps2_ACCLL|Mux18~27_combout\);

-- Location: LCCOMB_X23_Y22_N0
\ps2_ACCLL|Mux18~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~27_combout\,
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux18~28_combout\);

-- Location: LCCOMB_X23_Y22_N18
\ps2_ACCLL|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~1_combout\ = (\ps2_ACCLL|Mux10~0_combout\ & (((\ps2_ACCLL|Mux18~28_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|Mux10~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux18~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux10~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux18~13_combout\,
	datad => \ps2_ACCLL|Mux18~28_combout\,
	combout => \ps2_ACCLL|Mux10~1_combout\);

-- Location: LCCOMB_X23_Y20_N12
\ps2_ACCLL|Mux24~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~5_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux24~5_combout\);

-- Location: LCCOMB_X23_Y18_N6
\ps2_ACCLL|Mux42~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~19_combout\ = (\ps2_ACCLL|Mux42~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux24~5_combout\,
	combout => \ps2_ACCLL|Mux42~19_combout\);

-- Location: LCCOMB_X24_Y18_N12
\ps2_ACCLL|Mux42~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux42~17_combout\);

-- Location: LCCOMB_X24_Y18_N26
\ps2_ACCLL|Mux42~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux42~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux42~17_combout\,
	combout => \ps2_ACCLL|Mux42~21_combout\);

-- Location: LCCOMB_X24_Y19_N10
\ps2_ACCLL|shift_l~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|shift_l~5_combout\);

-- Location: LCCOMB_X24_Y19_N18
\ps2_ACCLL|shift_l~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~6_combout\ = (\ps2_ACCLL|shift_l~5_combout\ & ((\ps2_ACCLL|shift_l~7_combout\ & ((!\ps2_ACCLL|break~q\))) # (!\ps2_ACCLL|shift_l~7_combout\ & (\ps2_ACCLL|shift_l~q\)))) # (!\ps2_ACCLL|shift_l~5_combout\ & (((\ps2_ACCLL|shift_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~5_combout\,
	datab => \ps2_ACCLL|shift_l~7_combout\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|shift_l~6_combout\);

-- Location: FF_X24_Y19_N19
\ps2_ACCLL|shift_l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|shift_l~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|shift_l~q\);

-- Location: LCCOMB_X24_Y19_N26
\ps2_ACCLL|shift_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_r~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|shift_r~0_combout\);

-- Location: LCCOMB_X20_Y19_N14
\ps2_ACCLL|Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~4_combout\);

-- Location: LCCOMB_X21_Y21_N2
\ps2_ACCLL|Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~5_combout\);

-- Location: LCCOMB_X24_Y19_N20
\ps2_ACCLL|caps_lock~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~2_combout\ = (\ps2_ACCLL|Mux20~4_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux15~5_combout\ & \ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~5_combout\,
	datad => \ps2_ACCLL|state.translate~q\,
	combout => \ps2_ACCLL|caps_lock~2_combout\);

-- Location: LCCOMB_X24_Y19_N16
\ps2_ACCLL|shift_r~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_r~1_combout\ = (\ps2_ACCLL|shift_r~0_combout\ & ((\ps2_ACCLL|caps_lock~2_combout\ & (!\ps2_ACCLL|break~q\)) # (!\ps2_ACCLL|caps_lock~2_combout\ & ((\ps2_ACCLL|shift_r~q\))))) # (!\ps2_ACCLL|shift_r~0_combout\ & 
-- (((\ps2_ACCLL|shift_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_r~0_combout\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|shift_r~q\,
	datad => \ps2_ACCLL|caps_lock~2_combout\,
	combout => \ps2_ACCLL|shift_r~1_combout\);

-- Location: FF_X24_Y19_N17
\ps2_ACCLL|shift_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|shift_r~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|shift_r~q\);

-- Location: LCCOMB_X24_Y19_N30
\ps2_ACCLL|Mux42~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~18_combout\ = ((!\ps2_ACCLL|shift_l~q\ & !\ps2_ACCLL|shift_r~q\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|shift_l~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|Mux42~18_combout\);

-- Location: LCCOMB_X22_Y20_N22
\ps2_ACCLL|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux26~0_combout\);

-- Location: LCCOMB_X21_Y18_N26
\ps2_ACCLL|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~3_combout\);

-- Location: LCCOMB_X21_Y18_N12
\ps2_ACCLL|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~4_combout\);

-- Location: LCCOMB_X21_Y18_N14
\ps2_ACCLL|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~5_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux18~4_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux18~4_combout\)))) # (!\ps2_ACCLL|Mux18~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux18~3_combout\,
	datad => \ps2_ACCLL|Mux18~4_combout\,
	combout => \ps2_ACCLL|Mux18~5_combout\);

-- Location: LCCOMB_X19_Y21_N8
\ps2_ACCLL|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux18~0_combout\);

-- Location: LCCOMB_X19_Y21_N2
\ps2_ACCLL|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux8~8_combout\);

-- Location: LCCOMB_X19_Y21_N6
\ps2_ACCLL|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|Mux8~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|Mux8~8_combout\,
	combout => \ps2_ACCLL|Mux18~1_combout\);

-- Location: LCCOMB_X19_Y21_N0
\ps2_ACCLL|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~2_combout\ = (\ps2_ACCLL|Mux15~5_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~0_combout\) # (\ps2_ACCLL|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux18~0_combout\,
	datad => \ps2_ACCLL|Mux18~1_combout\,
	combout => \ps2_ACCLL|Mux18~2_combout\);

-- Location: LCCOMB_X22_Y18_N0
\ps2_ACCLL|Mux27~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~12_combout\ = (\ps2_ACCLL|Mux18~2_combout\) # ((!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|Mux18~5_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~2_combout\,
	combout => \ps2_ACCLL|Mux27~12_combout\);

-- Location: LCCOMB_X24_Y18_N20
\ps2_ACCLL|Mux27~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux27~8_combout\);

-- Location: LCCOMB_X21_Y21_N8
\ps2_ACCLL|Mux25~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~11_combout\);

-- Location: LCCOMB_X21_Y19_N16
\ps2_ACCLL|Mux27~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux27~10_combout\);

-- Location: LCCOMB_X22_Y18_N8
\ps2_ACCLL|Mux27~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~9_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~5_combout\,
	combout => \ps2_ACCLL|Mux27~9_combout\);

-- Location: LCCOMB_X22_Y18_N14
\ps2_ACCLL|Mux27~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~11_combout\ = (\ps2_ACCLL|Mux27~10_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux27~10_combout\ & (((\ps2_ACCLL|Mux27~9_combout\) # (\ps2_ACCLL|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~10_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux27~9_combout\,
	datad => \ps2_ACCLL|Mux18~2_combout\,
	combout => \ps2_ACCLL|Mux27~11_combout\);

-- Location: LCCOMB_X22_Y18_N10
\ps2_ACCLL|Mux27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~13_combout\ = (\ps2_ACCLL|Mux27~12_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|Mux27~11_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux27~11_combout\,
	datad => \ps2_ACCLL|Mux27~12_combout\,
	combout => \ps2_ACCLL|Mux27~13_combout\);

-- Location: LCCOMB_X22_Y18_N4
\ps2_ACCLL|Mux27~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~13_combout\) # ((\ps2_ACCLL|Mux25~11_combout\ & !\ps2_ACCLL|Mux27~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux27~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux25~11_combout\,
	datac => \ps2_ACCLL|Mux27~11_combout\,
	datad => \ps2_ACCLL|Mux27~13_combout\,
	combout => \ps2_ACCLL|Mux27~14_combout\);

-- Location: LCCOMB_X21_Y19_N18
\ps2_ACCLL|Mux27~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux27~17_combout\);

-- Location: LCCOMB_X21_Y18_N4
\ps2_ACCLL|Mux27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux27~18_combout\);

-- Location: LCCOMB_X22_Y18_N22
\ps2_ACCLL|Mux27~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~19_combout\ = (\ps2_ACCLL|Mux27~17_combout\ & (\ps2_ACCLL|Mux27~18_combout\ & ((\ps2_ACCLL|Mux27~9_combout\) # (\ps2_ACCLL|Mux18~2_combout\)))) # (!\ps2_ACCLL|Mux27~17_combout\ & ((\ps2_ACCLL|Mux27~18_combout\) # 
-- ((\ps2_ACCLL|Mux27~9_combout\) # (\ps2_ACCLL|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~17_combout\,
	datab => \ps2_ACCLL|Mux27~18_combout\,
	datac => \ps2_ACCLL|Mux27~9_combout\,
	datad => \ps2_ACCLL|Mux18~2_combout\,
	combout => \ps2_ACCLL|Mux27~19_combout\);

-- Location: LCCOMB_X22_Y18_N28
\ps2_ACCLL|Mux27~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux27~19_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((\ps2_ACCLL|Mux27~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux27~19_combout\,
	datad => \ps2_ACCLL|Mux27~12_combout\,
	combout => \ps2_ACCLL|Mux27~20_combout\);

-- Location: LCCOMB_X22_Y18_N6
\ps2_ACCLL|Mux27~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux27~27_combout\);

-- Location: LCCOMB_X22_Y18_N24
\ps2_ACCLL|Mux27~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux27~26_combout\);

-- Location: LCCOMB_X22_Y18_N30
\ps2_ACCLL|Mux27~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~21_combout\ = (\ps2_ACCLL|Mux27~27_combout\ & ((\ps2_ACCLL|Mux27~26_combout\) # ((\ps2_ACCLL|Mux27~12_combout\)))) # (!\ps2_ACCLL|Mux27~27_combout\ & (!\ps2_ACCLL|Mux27~26_combout\ & (!\ps2_ACCLL|ascii\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~27_combout\,
	datab => \ps2_ACCLL|Mux27~26_combout\,
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux27~12_combout\,
	combout => \ps2_ACCLL|Mux27~21_combout\);

-- Location: LCCOMB_X22_Y18_N26
\ps2_ACCLL|Mux27~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux27~12_combout\ $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|Mux27~12_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux27~12_combout\,
	combout => \ps2_ACCLL|Mux27~25_combout\);

-- Location: LCCOMB_X22_Y18_N18
\ps2_ACCLL|Mux27~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~15_combout\ = (\ps2_ACCLL|Mux27~12_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux27~12_combout\,
	combout => \ps2_ACCLL|Mux27~15_combout\);

-- Location: LCCOMB_X22_Y18_N16
\ps2_ACCLL|Mux27~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~11_combout\) # ((\ps2_ACCLL|Mux27~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~25_combout\ $ (\ps2_ACCLL|Mux27~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux25~11_combout\,
	datac => \ps2_ACCLL|Mux27~25_combout\,
	datad => \ps2_ACCLL|Mux27~15_combout\,
	combout => \ps2_ACCLL|Mux27~16_combout\);

-- Location: LCCOMB_X22_Y18_N20
\ps2_ACCLL|Mux27~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux27~20_combout\ & (\ps2_ACCLL|Mux27~21_combout\)) # (!\ps2_ACCLL|Mux27~20_combout\ & ((\ps2_ACCLL|Mux27~16_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux27~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux27~20_combout\,
	datac => \ps2_ACCLL|Mux27~21_combout\,
	datad => \ps2_ACCLL|Mux27~16_combout\,
	combout => \ps2_ACCLL|Mux27~22_combout\);

-- Location: LCCOMB_X22_Y18_N2
\ps2_ACCLL|Mux27~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux27~8_combout\ & (\ps2_ACCLL|Mux27~14_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux27~22_combout\) # ((\ps2_ACCLL|Mux27~8_combout\ & 
-- \ps2_ACCLL|Mux27~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux27~8_combout\,
	datac => \ps2_ACCLL|Mux27~14_combout\,
	datad => \ps2_ACCLL|Mux27~22_combout\,
	combout => \ps2_ACCLL|Mux27~23_combout\);

-- Location: LCCOMB_X22_Y18_N12
\ps2_ACCLL|Mux27~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~24_combout\ = (\ps2_ACCLL|Mux26~0_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux27~23_combout\)))) # (!\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|Mux27~12_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & 
-- \ps2_ACCLL|Mux27~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datab => \ps2_ACCLL|Mux27~12_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux27~23_combout\,
	combout => \ps2_ACCLL|Mux27~24_combout\);

-- Location: LCCOMB_X23_Y18_N4
\ps2_ACCLL|Mux42~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~20_combout\ = (\ps2_ACCLL|Mux42~21_combout\) # ((\ps2_ACCLL|Mux42~19_combout\ & (\ps2_ACCLL|Mux42~18_combout\)) # (!\ps2_ACCLL|Mux42~19_combout\ & ((\ps2_ACCLL|Mux27~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~19_combout\,
	datab => \ps2_ACCLL|Mux42~21_combout\,
	datac => \ps2_ACCLL|Mux42~18_combout\,
	datad => \ps2_ACCLL|Mux27~24_combout\,
	combout => \ps2_ACCLL|Mux42~20_combout\);

-- Location: LCCOMB_X24_Y19_N24
\ps2_ACCLL|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~1_combout\ = (\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|process_0~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\ps2_ACCLL|Mux42~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~3_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~3_combout\);

-- Location: LCCOMB_X24_Y18_N8
\ps2_ACCLL|Mux42~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~5_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux42~5_combout\);

-- Location: LCCOMB_X23_Y20_N28
\ps2_ACCLL|Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~4_combout\);

-- Location: LCCOMB_X24_Y18_N2
\ps2_ACCLL|Mux42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~4_combout\ = (\ps2_ACCLL|Mux17~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux17~4_combout\,
	combout => \ps2_ACCLL|Mux42~4_combout\);

-- Location: LCCOMB_X24_Y18_N18
\ps2_ACCLL|Mux42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux42~4_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux42~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux42~5_combout\,
	datad => \ps2_ACCLL|Mux42~4_combout\,
	combout => \ps2_ACCLL|Mux42~6_combout\);

-- Location: LCCOMB_X20_Y22_N0
\ps2_ACCLL|Mux43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~4_combout\);

-- Location: LCCOMB_X23_Y18_N14
\ps2_ACCLL|Mux42~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~7_combout\ = (\ps2_ACCLL|Mux42~6_combout\ & ((\ps2_ACCLL|Mux43~4_combout\) # ((\ps2_ACCLL|Equal0~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux43~4_combout\,
	datad => \ps2_ACCLL|Mux42~6_combout\,
	combout => \ps2_ACCLL|Mux42~7_combout\);

-- Location: LCCOMB_X23_Y18_N20
\ps2_ACCLL|Mux42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~8_combout\ = (\ps2_ACCLL|Mux42~3_combout\ & ((\ps2_ACCLL|Mux42~7_combout\) # ((!\ps2_ACCLL|Mux42~6_combout\ & \ps2_ACCLL|Mux27~24_combout\)))) # (!\ps2_ACCLL|Mux42~3_combout\ & (!\ps2_ACCLL|Mux42~6_combout\ & 
-- ((\ps2_ACCLL|Mux27~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~3_combout\,
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|Mux42~7_combout\,
	datad => \ps2_ACCLL|Mux27~24_combout\,
	combout => \ps2_ACCLL|Mux42~8_combout\);

-- Location: LCCOMB_X23_Y19_N0
\ps2_ACCLL|Mux42~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux42~14_combout\);

-- Location: LCCOMB_X24_Y18_N22
\ps2_ACCLL|Mux42~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux42~9_combout\);

-- Location: LCCOMB_X23_Y19_N30
\ps2_ACCLL|Mux13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux13~11_combout\);

-- Location: LCCOMB_X23_Y18_N26
\ps2_ACCLL|Mux42~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~15_combout\ = (\ps2_ACCLL|Mux42~9_combout\ & ((\ps2_ACCLL|Mux13~11_combout\ & ((\ps2_ACCLL|Mux27~24_combout\))) # (!\ps2_ACCLL|Mux13~11_combout\ & (\ps2_ACCLL|Mux42~14_combout\)))) # (!\ps2_ACCLL|Mux42~9_combout\ & 
-- (((\ps2_ACCLL|Mux27~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~14_combout\,
	datab => \ps2_ACCLL|Mux42~9_combout\,
	datac => \ps2_ACCLL|Mux13~11_combout\,
	datad => \ps2_ACCLL|Mux27~24_combout\,
	combout => \ps2_ACCLL|Mux42~15_combout\);

-- Location: LCCOMB_X23_Y18_N12
\ps2_ACCLL|Mux42~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~11_combout\);

-- Location: LCCOMB_X23_Y18_N22
\ps2_ACCLL|Mux42~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~12_combout\ = (\ps2_ACCLL|Mux42~11_combout\ & ((\ps2_ACCLL|Mux42~7_combout\) # ((!\ps2_ACCLL|Mux42~6_combout\ & \ps2_ACCLL|Mux27~24_combout\)))) # (!\ps2_ACCLL|Mux42~11_combout\ & (!\ps2_ACCLL|Mux42~6_combout\ & 
-- ((\ps2_ACCLL|Mux27~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~11_combout\,
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|Mux42~7_combout\,
	datad => \ps2_ACCLL|Mux27~24_combout\,
	combout => \ps2_ACCLL|Mux42~12_combout\);

-- Location: LCCOMB_X23_Y18_N18
\ps2_ACCLL|Mux42~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~10_combout\ = (\ps2_ACCLL|Mux13~11_combout\ & (((\ps2_ACCLL|Mux27~24_combout\)))) # (!\ps2_ACCLL|Mux13~11_combout\ & ((\ps2_ACCLL|Mux42~9_combout\ & (\ps2_ACCLL|Mux24~4_combout\)) # (!\ps2_ACCLL|Mux42~9_combout\ & 
-- ((\ps2_ACCLL|Mux27~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~11_combout\,
	datab => \ps2_ACCLL|Mux42~9_combout\,
	datac => \ps2_ACCLL|Mux24~4_combout\,
	datad => \ps2_ACCLL|Mux27~24_combout\,
	combout => \ps2_ACCLL|Mux42~10_combout\);

-- Location: LCCOMB_X23_Y18_N28
\ps2_ACCLL|Mux42~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~13_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux42~10_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux42~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux42~12_combout\,
	datad => \ps2_ACCLL|Mux42~10_combout\,
	combout => \ps2_ACCLL|Mux42~13_combout\);

-- Location: LCCOMB_X23_Y18_N24
\ps2_ACCLL|Mux42~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~16_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux42~13_combout\ & ((\ps2_ACCLL|Mux42~15_combout\))) # (!\ps2_ACCLL|Mux42~13_combout\ & (\ps2_ACCLL|Mux42~8_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux42~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux42~8_combout\,
	datac => \ps2_ACCLL|Mux42~15_combout\,
	datad => \ps2_ACCLL|Mux42~13_combout\,
	combout => \ps2_ACCLL|Mux42~16_combout\);

-- Location: LCCOMB_X23_Y18_N10
\ps2_ACCLL|ascii~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~40_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux42~16_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux42~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux42~20_combout\,
	datad => \ps2_ACCLL|Mux42~16_combout\,
	combout => \ps2_ACCLL|ascii~40_combout\);

-- Location: LCCOMB_X23_Y18_N0
\ps2_ACCLL|ascii~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~46_combout\ = (!\ps2_ACCLL|ascii~40_combout\ & (((!\ps2_ACCLL|control_l~q\ & !\ps2_ACCLL|control_r~q\)) # (!\ps2_ACCLL|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datab => \ps2_ACCLL|control_r~q\,
	datac => \ps2_ACCLL|Mux10~1_combout\,
	datad => \ps2_ACCLL|ascii~40_combout\,
	combout => \ps2_ACCLL|ascii~46_combout\);

-- Location: FF_X23_Y18_N1
\ps2_ACCLL|ascii[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~46_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(2));

-- Location: LCCOMB_X29_Y21_N22
\ps2_ACCLL|ascii_code[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[2]~7_combout\ = !\ps2_ACCLL|ascii\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|ascii_code[2]~7_combout\);

-- Location: FF_X29_Y21_N23
\ps2_ACCLL|ascii_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[2]~7_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(2));

-- Location: LCCOMB_X17_Y18_N12
\ps2_ACCLL|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux6~9_combout\);

-- Location: LCCOMB_X19_Y18_N14
\ps2_ACCLL|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux6~5_combout\);

-- Location: LCCOMB_X19_Y18_N12
\ps2_ACCLL|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux6~6_combout\);

-- Location: LCCOMB_X19_Y18_N2
\ps2_ACCLL|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|Mux6~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux6~5_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux6~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux6~6_combout\,
	combout => \ps2_ACCLL|Mux6~12_combout\);

-- Location: LCCOMB_X19_Y18_N18
\ps2_ACCLL|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux6~8_combout\);

-- Location: LCCOMB_X17_Y18_N28
\ps2_ACCLL|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~13_combout\ = (\ps2_ACCLL|Mux6~12_combout\ & ((\ps2_ACCLL|Mux6~9_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux6~12_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux6~9_combout\,
	datab => \ps2_ACCLL|Mux6~12_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux6~8_combout\,
	combout => \ps2_ACCLL|Mux6~13_combout\);

-- Location: LCCOMB_X17_Y18_N26
\ps2_ACCLL|Mux6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~14_combout\ = (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux6~13_combout\,
	datac => \ps2_ACCLL|ascii\(6),
	combout => \ps2_ACCLL|Mux6~14_combout\);

-- Location: LCCOMB_X17_Y18_N22
\ps2_ACCLL|ascii~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|ascii~12_combout\);

-- Location: LCCOMB_X17_Y18_N0
\ps2_ACCLL|Mux25~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~10_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux25~10_combout\);

-- Location: LCCOMB_X17_Y18_N20
\ps2_ACCLL|ascii~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~13_combout\ = (\ps2_ACCLL|ascii~12_combout\ & ((\ps2_ACCLL|Mux13~3_combout\) # ((\ps2_ACCLL|Mux25~10_combout\ & \ps2_ACCLL|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~12_combout\,
	datab => \ps2_ACCLL|Mux25~10_combout\,
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux17~5_combout\,
	combout => \ps2_ACCLL|ascii~13_combout\);

-- Location: LCCOMB_X17_Y18_N14
\ps2_ACCLL|ascii~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~14_combout\ = (\ps2_ACCLL|Mux15~4_combout\ & (!\ps2_ACCLL|Mux25~10_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux15~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) 
-- $ ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~10_combout\,
	combout => \ps2_ACCLL|ascii~14_combout\);

-- Location: LCCOMB_X17_Y18_N8
\ps2_ACCLL|ascii~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|Mux17~5_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux17~5_combout\,
	combout => \ps2_ACCLL|ascii~15_combout\);

-- Location: LCCOMB_X17_Y18_N2
\ps2_ACCLL|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux25~10_combout\ & ((\ps2_ACCLL|Mux17~5_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~3_combout\) # ((\ps2_ACCLL|Mux25~10_combout\ & 
-- \ps2_ACCLL|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux25~10_combout\,
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux17~5_combout\,
	combout => \ps2_ACCLL|Mux14~3_combout\);

-- Location: LCCOMB_X17_Y18_N24
\ps2_ACCLL|ascii~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux14~3_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ascii~15_combout\ & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii~15_combout\,
	datac => \ps2_ACCLL|Mux14~3_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|ascii~16_combout\);

-- Location: LCCOMB_X17_Y18_N18
\ps2_ACCLL|ascii~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~17_combout\ = (\ps2_ACCLL|ascii~13_combout\) # ((!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|ascii~14_combout\) # (\ps2_ACCLL|ascii~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|ascii~13_combout\,
	datac => \ps2_ACCLL|ascii~14_combout\,
	datad => \ps2_ACCLL|ascii~16_combout\,
	combout => \ps2_ACCLL|ascii~17_combout\);

-- Location: LCCOMB_X17_Y18_N4
\ps2_ACCLL|ascii~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~18_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux6~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux6~14_combout\,
	datad => \ps2_ACCLL|ascii~17_combout\,
	combout => \ps2_ACCLL|ascii~18_combout\);

-- Location: LCCOMB_X19_Y21_N24
\ps2_ACCLL|Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~6_combout\);

-- Location: LCCOMB_X17_Y21_N30
\ps2_ACCLL|ascii~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~41_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux41~6_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux41~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~41_combout\);

-- Location: LCCOMB_X22_Y20_N0
\ps2_ACCLL|Mux38~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~18_combout\);

-- Location: LCCOMB_X16_Y21_N10
\ps2_ACCLL|ascii~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux41~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux38~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~6_combout\,
	datac => \ps2_ACCLL|Mux38~18_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~21_combout\);

-- Location: LCCOMB_X16_Y21_N4
\ps2_ACCLL|ascii~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~22_combout\ = (\ps2_ACCLL|ascii~21_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|process_0~1_combout\)))) # (!\ps2_ACCLL|ascii~21_combout\ & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~21_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~22_combout\);

-- Location: LCCOMB_X21_Y21_N20
\ps2_ACCLL|Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~6_combout\);

-- Location: LCCOMB_X19_Y21_N18
\ps2_ACCLL|ascii~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux38~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux15~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux15~6_combout\,
	combout => \ps2_ACCLL|ascii~20_combout\);

-- Location: LCCOMB_X16_Y21_N12
\ps2_ACCLL|ascii~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~24_combout\ = (\ps2_ACCLL|ascii~22_combout\ & (\ps2_ACCLL|ascii~20_combout\ & ((\ps2_ACCLL|ascii~41_combout\) # (!\ps2_ACCLL|process_0~1_combout\)))) # (!\ps2_ACCLL|ascii~22_combout\ & (\ps2_ACCLL|ascii~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~41_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|ascii~22_combout\,
	datad => \ps2_ACCLL|ascii~20_combout\,
	combout => \ps2_ACCLL|ascii~24_combout\);

-- Location: LCCOMB_X21_Y21_N10
\ps2_ACCLL|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux15~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux15~5_combout\,
	combout => \ps2_ACCLL|Mux16~2_combout\);

-- Location: LCCOMB_X21_Y21_N0
\ps2_ACCLL|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux16~1_combout\);

-- Location: LCCOMB_X17_Y21_N16
\ps2_ACCLL|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~4_combout\ = (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux13~3_combout\) # (!\ps2_ACCLL|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~1_combout\,
	datad => \ps2_ACCLL|Mux13~3_combout\,
	combout => \ps2_ACCLL|Mux14~4_combout\);

-- Location: LCCOMB_X17_Y21_N18
\ps2_ACCLL|Mux14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~7_combout\ = (\ps2_ACCLL|Mux14~4_combout\) # ((\ps2_ACCLL|Mux16~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux14~4_combout\,
	combout => \ps2_ACCLL|Mux14~7_combout\);

-- Location: LCCOMB_X17_Y21_N2
\ps2_ACCLL|Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux16~0_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (!\ps2_ACCLL|Mux16~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|Mux14~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux16~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux14~2_combout\,
	combout => \ps2_ACCLL|Mux14~5_combout\);

-- Location: LCCOMB_X17_Y21_N6
\ps2_ACCLL|Mux14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~6_combout\ = (\ps2_ACCLL|Mux14~5_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux14~5_combout\,
	combout => \ps2_ACCLL|Mux14~6_combout\);

-- Location: LCCOMB_X17_Y21_N0
\ps2_ACCLL|Mux14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|Mux14~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux14~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|Mux14~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux14~6_combout\,
	combout => \ps2_ACCLL|Mux14~8_combout\);

-- Location: LCCOMB_X17_Y21_N4
\ps2_ACCLL|Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~2_combout\ = (\ps2_ACCLL|ascii\(6) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|Mux14~5_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux14~5_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux14~5_combout\,
	combout => \ps2_ACCLL|Mux23~2_combout\);

-- Location: LCCOMB_X17_Y21_N22
\ps2_ACCLL|Mux23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ ((!\ps2_ACCLL|Mux23~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux23~2_combout\,
	datad => \ps2_ACCLL|Mux14~4_combout\,
	combout => \ps2_ACCLL|Mux23~3_combout\);

-- Location: LCCOMB_X17_Y21_N12
\ps2_ACCLL|Mux23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux23~3_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- \ps2_ACCLL|Mux22~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux23~3_combout\,
	datad => \ps2_ACCLL|Mux22~6_combout\,
	combout => \ps2_ACCLL|Mux23~4_combout\);

-- Location: LCCOMB_X17_Y21_N20
\ps2_ACCLL|Mux23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~5_combout\ = (\ps2_ACCLL|Mux14~4_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux16~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~2_combout\,
	datad => \ps2_ACCLL|Mux14~4_combout\,
	combout => \ps2_ACCLL|Mux23~5_combout\);

-- Location: LCCOMB_X17_Y21_N10
\ps2_ACCLL|Mux23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|Mux14~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|Mux23~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux14~6_combout\,
	combout => \ps2_ACCLL|Mux23~6_combout\);

-- Location: LCCOMB_X17_Y21_N28
\ps2_ACCLL|Mux23~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~7_combout\ = (\ps2_ACCLL|Mux23~6_combout\) # ((\ps2_ACCLL|Mux22~2_combout\ & !\ps2_ACCLL|Mux23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux23~6_combout\,
	datac => \ps2_ACCLL|Mux22~2_combout\,
	datad => \ps2_ACCLL|Mux23~4_combout\,
	combout => \ps2_ACCLL|Mux23~7_combout\);

-- Location: LCCOMB_X17_Y21_N26
\ps2_ACCLL|Mux23~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux23~7_combout\) # ((\ps2_ACCLL|Mux23~4_combout\ & \ps2_ACCLL|Mux22~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux23~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux23~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux22~3_combout\,
	datad => \ps2_ACCLL|Mux23~7_combout\,
	combout => \ps2_ACCLL|Mux23~8_combout\);

-- Location: LCCOMB_X17_Y21_N24
\ps2_ACCLL|Mux23~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux24~4_combout\ & ((\ps2_ACCLL|Mux22~0_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux23~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux24~4_combout\,
	datac => \ps2_ACCLL|Mux23~8_combout\,
	datad => \ps2_ACCLL|Mux22~0_combout\,
	combout => \ps2_ACCLL|Mux23~9_combout\);

-- Location: LCCOMB_X16_Y21_N2
\ps2_ACCLL|Mux23~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux14~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux23~9_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- \ps2_ACCLL|Mux14~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux14~8_combout\,
	datad => \ps2_ACCLL|Mux23~9_combout\,
	combout => \ps2_ACCLL|Mux23~10_combout\);

-- Location: LCCOMB_X16_Y21_N26
\ps2_ACCLL|ascii~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~23_combout\ = (\ps2_ACCLL|ascii~41_combout\ & ((\ps2_ACCLL|ascii~22_combout\) # ((!\ps2_ACCLL|process_0~1_combout\ & !\ps2_ACCLL|ascii~20_combout\)))) # (!\ps2_ACCLL|ascii~41_combout\ & (\ps2_ACCLL|ascii~22_combout\ & 
-- ((\ps2_ACCLL|process_0~1_combout\) # (!\ps2_ACCLL|ascii~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~41_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|ascii~22_combout\,
	datad => \ps2_ACCLL|ascii~20_combout\,
	combout => \ps2_ACCLL|ascii~23_combout\);

-- Location: LCCOMB_X17_Y21_N8
\ps2_ACCLL|Mux41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~5_combout\);

-- Location: LCCOMB_X16_Y21_N28
\ps2_ACCLL|Mux38~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~17_combout\ = (\ps2_ACCLL|Mux23~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux41~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux41~5_combout\,
	datad => \ps2_ACCLL|Mux23~10_combout\,
	combout => \ps2_ACCLL|Mux38~17_combout\);

-- Location: LCCOMB_X16_Y21_N22
\ps2_ACCLL|ascii~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~25_combout\ = (\ps2_ACCLL|ascii~24_combout\ & (((!\ps2_ACCLL|ascii~23_combout\)))) # (!\ps2_ACCLL|ascii~24_combout\ & ((\ps2_ACCLL|ascii~23_combout\ & (\ps2_ACCLL|Mux23~10_combout\)) # (!\ps2_ACCLL|ascii~23_combout\ & 
-- ((\ps2_ACCLL|Mux38~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~24_combout\,
	datab => \ps2_ACCLL|Mux23~10_combout\,
	datac => \ps2_ACCLL|ascii~23_combout\,
	datad => \ps2_ACCLL|Mux38~17_combout\,
	combout => \ps2_ACCLL|ascii~25_combout\);

-- Location: LCCOMB_X16_Y21_N8
\ps2_ACCLL|Mux38~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~19_combout\ = (\ps2_ACCLL|Mux23~10_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux42~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|Mux23~10_combout\,
	combout => \ps2_ACCLL|Mux38~19_combout\);

-- Location: LCCOMB_X16_Y21_N6
\ps2_ACCLL|Mux38~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~12_combout\);

-- Location: LCCOMB_X17_Y21_N14
\ps2_ACCLL|Mux38~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux38~13_combout\);

-- Location: LCCOMB_X22_Y20_N24
\ps2_ACCLL|Mux38~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~14_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux38~14_combout\);

-- Location: LCCOMB_X22_Y20_N2
\ps2_ACCLL|Mux38~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~15_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux38~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux38~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~15_combout\);

-- Location: LCCOMB_X16_Y21_N24
\ps2_ACCLL|Mux38~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~16_combout\ = (\ps2_ACCLL|Mux38~12_combout\ & ((\ps2_ACCLL|Mux38~13_combout\) # ((\ps2_ACCLL|Mux38~15_combout\ & \ps2_ACCLL|Mux23~10_combout\)))) # (!\ps2_ACCLL|Mux38~12_combout\ & (((\ps2_ACCLL|Mux38~15_combout\ & 
-- \ps2_ACCLL|Mux23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~12_combout\,
	datab => \ps2_ACCLL|Mux38~13_combout\,
	datac => \ps2_ACCLL|Mux38~15_combout\,
	datad => \ps2_ACCLL|Mux23~10_combout\,
	combout => \ps2_ACCLL|Mux38~16_combout\);

-- Location: LCCOMB_X16_Y21_N14
\ps2_ACCLL|ascii~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux38~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux38~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux38~19_combout\,
	datad => \ps2_ACCLL|Mux38~16_combout\,
	combout => \ps2_ACCLL|ascii~19_combout\);

-- Location: LCCOMB_X19_Y21_N10
\ps2_ACCLL|Mux38~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~20_combout\);

-- Location: LCCOMB_X16_Y21_N30
\ps2_ACCLL|Mux38~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~21_combout\ = (\ps2_ACCLL|Mux38~20_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux23~10_combout\))))) # 
-- (!\ps2_ACCLL|Mux38~20_combout\ & (\ps2_ACCLL|Mux23~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux23~10_combout\,
	combout => \ps2_ACCLL|Mux38~21_combout\);

-- Location: LCCOMB_X21_Y21_N24
\ps2_ACCLL|Mux38~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux38~7_combout\);

-- Location: LCCOMB_X17_Y19_N16
\ps2_ACCLL|Mux38~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~8_combout\);

-- Location: LCCOMB_X17_Y19_N2
\ps2_ACCLL|Mux38~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|Mux38~8_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux38~7_combout\ & 
-- \ps2_ACCLL|Mux38~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux38~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux38~8_combout\,
	combout => \ps2_ACCLL|Mux38~9_combout\);

-- Location: LCCOMB_X16_Y21_N18
\ps2_ACCLL|Mux38~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~10_combout\ = (\ps2_ACCLL|Mux38~9_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux38~9_combout\ & (((\ps2_ACCLL|Mux23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux38~9_combout\,
	datad => \ps2_ACCLL|Mux23~10_combout\,
	combout => \ps2_ACCLL|Mux38~10_combout\);

-- Location: LCCOMB_X16_Y21_N0
\ps2_ACCLL|Mux38~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux38~10_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux38~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux38~21_combout\,
	datad => \ps2_ACCLL|Mux38~10_combout\,
	combout => \ps2_ACCLL|Mux38~11_combout\);

-- Location: LCCOMB_X16_Y21_N20
\ps2_ACCLL|ascii~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ascii~19_combout\ & (\ps2_ACCLL|ascii~25_combout\)) # (!\ps2_ACCLL|ascii~19_combout\ & ((\ps2_ACCLL|Mux38~11_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ascii~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~25_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii~19_combout\,
	datad => \ps2_ACCLL|Mux38~11_combout\,
	combout => \ps2_ACCLL|ascii~26_combout\);

-- Location: LCCOMB_X16_Y21_N16
\ps2_ACCLL|ascii~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~42_combout\ = (!\ps2_ACCLL|ascii~18_combout\ & ((\ps2_ACCLL|control_l~q\) # ((\ps2_ACCLL|control_r~q\) # (!\ps2_ACCLL|ascii~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~18_combout\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|ascii~26_combout\,
	combout => \ps2_ACCLL|ascii~42_combout\);

-- Location: FF_X16_Y21_N17
\ps2_ACCLL|ascii[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~42_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(6));

-- Location: LCCOMB_X29_Y21_N24
\ps2_ACCLL|ascii_code[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[6]~1_combout\ = !\ps2_ACCLL|ascii\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(6),
	combout => \ps2_ACCLL|ascii_code[6]~1_combout\);

-- Location: FF_X29_Y21_N25
\ps2_ACCLL|ascii_code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[6]~1_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(6));

-- Location: LCCOMB_X22_Y19_N28
\ps2_ACCLL|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~5_combout\);

-- Location: LCCOMB_X22_Y19_N0
\ps2_ACCLL|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~6_combout\ = (\ps2_ACCLL|Mux38~18_combout\) # ((!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~5_combout\) # (!\ps2_ACCLL|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~4_combout\,
	datab => \ps2_ACCLL|Mux19~5_combout\,
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux38~18_combout\,
	combout => \ps2_ACCLL|Mux19~6_combout\);

-- Location: LCCOMB_X22_Y19_N30
\ps2_ACCLL|Mux13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux13~10_combout\);

-- Location: LCCOMB_X22_Y19_N14
\ps2_ACCLL|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~7_combout\ = (\ps2_ACCLL|Mux13~10_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux13~10_combout\ & (((!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~10_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~7_combout\);

-- Location: LCCOMB_X22_Y19_N24
\ps2_ACCLL|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux13~10_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux13~10_combout\ & ((!\ps2_ACCLL|ascii\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux13~10_combout\,
	combout => \ps2_ACCLL|Mux19~8_combout\);

-- Location: LCCOMB_X22_Y19_N2
\ps2_ACCLL|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~9_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~9_combout\);

-- Location: LCCOMB_X22_Y19_N16
\ps2_ACCLL|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~10_combout\ = (\ps2_ACCLL|Mux19~8_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~4_combout\) # (\ps2_ACCLL|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux19~8_combout\,
	datac => \ps2_ACCLL|Mux19~4_combout\,
	datad => \ps2_ACCLL|Mux19~9_combout\,
	combout => \ps2_ACCLL|Mux19~10_combout\);

-- Location: LCCOMB_X22_Y19_N26
\ps2_ACCLL|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux19~7_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux19~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux19~7_combout\,
	datad => \ps2_ACCLL|Mux19~10_combout\,
	combout => \ps2_ACCLL|Mux11~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\ps2_ACCLL|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~11_combout\ = (\ps2_ACCLL|Mux19~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ascii\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux19~4_combout\ & (((!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~11_combout\);

-- Location: LCCOMB_X22_Y19_N10
\ps2_ACCLL|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux11~0_combout\ & ((\ps2_ACCLL|Mux19~11_combout\))) # (!\ps2_ACCLL|Mux11~0_combout\ & (\ps2_ACCLL|Mux19~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux11~0_combout\,
	datad => \ps2_ACCLL|Mux19~11_combout\,
	combout => \ps2_ACCLL|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y22_N26
\ps2_ACCLL|Mux19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux19~16_combout\);

-- Location: LCCOMB_X22_Y22_N16
\ps2_ACCLL|Mux19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux19~16_combout\ & !\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~16_combout\) # (!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~17_combout\);

-- Location: LCCOMB_X23_Y22_N24
\ps2_ACCLL|Mux19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ascii\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux19~18_combout\);

-- Location: LCCOMB_X23_Y22_N22
\ps2_ACCLL|Mux19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux19~18_combout\ & ((\ps2_ACCLL|Mux19~17_combout\) # (!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux19~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~17_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux19~18_combout\,
	combout => \ps2_ACCLL|Mux19~19_combout\);

-- Location: LCCOMB_X22_Y22_N12
\ps2_ACCLL|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux13~3_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux13~3_combout\ & 
-- ((!\ps2_ACCLL|ascii\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux13~3_combout\,
	combout => \ps2_ACCLL|Mux19~15_combout\);

-- Location: LCCOMB_X23_Y22_N8
\ps2_ACCLL|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ascii\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ascii\(1))))) 
-- # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~14_combout\);

-- Location: LCCOMB_X23_Y22_N12
\ps2_ACCLL|Mux19~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~26_combout\ = \ps2_ACCLL|ascii\(1) $ ((((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|Mux19~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux19~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~26_combout\);

-- Location: LCCOMB_X23_Y22_N14
\ps2_ACCLL|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux19~26_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux19~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux19~26_combout\,
	combout => \ps2_ACCLL|Mux11~2_combout\);

-- Location: LCCOMB_X22_Y22_N10
\ps2_ACCLL|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux17~6_combout\);

-- Location: LCCOMB_X23_Y22_N4
\ps2_ACCLL|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux19~12_combout\);

-- Location: LCCOMB_X23_Y22_N2
\ps2_ACCLL|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~13_combout\ = (\ps2_ACCLL|Mux19~12_combout\) # ((!\ps2_ACCLL|ascii\(1) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~6_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~12_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~13_combout\);

-- Location: LCCOMB_X23_Y22_N16
\ps2_ACCLL|Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux11~2_combout\ & (\ps2_ACCLL|Mux19~19_combout\)) # (!\ps2_ACCLL|Mux11~2_combout\ & ((\ps2_ACCLL|Mux19~13_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~19_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux11~2_combout\,
	datad => \ps2_ACCLL|Mux19~13_combout\,
	combout => \ps2_ACCLL|Mux11~3_combout\);

-- Location: LCCOMB_X22_Y22_N14
\ps2_ACCLL|ascii~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~36_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux11~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux11~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux11~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|process_0~0_combout\,
	datad => \ps2_ACCLL|Mux11~3_combout\,
	combout => \ps2_ACCLL|ascii~36_combout\);

-- Location: LCCOMB_X19_Y22_N20
\ps2_ACCLL|Mux39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~8_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~8_combout\);

-- Location: LCCOMB_X19_Y22_N12
\ps2_ACCLL|Mux43~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|Mux39~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux39~8_combout\,
	combout => \ps2_ACCLL|Mux43~7_combout\);

-- Location: LCCOMB_X19_Y20_N2
\ps2_ACCLL|Mux43~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~5_combout\ = (\ps2_ACCLL|Mux42~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux24~5_combout\,
	datad => \ps2_ACCLL|Mux20~4_combout\,
	combout => \ps2_ACCLL|Mux43~5_combout\);

-- Location: LCCOMB_X19_Y22_N2
\ps2_ACCLL|Mux43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux43~5_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~5_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~6_combout\);

-- Location: LCCOMB_X21_Y20_N12
\ps2_ACCLL|Mux19~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~23_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux14~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux14~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux19~23_combout\);

-- Location: LCCOMB_X21_Y20_N6
\ps2_ACCLL|Mux19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux19~23_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~2_combout\,
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux19~24_combout\);

-- Location: LCCOMB_X21_Y20_N26
\ps2_ACCLL|Mux19~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # 
-- (!\ps2_ACCLL|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux14~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~27_combout\);

-- Location: LCCOMB_X20_Y17_N16
\ps2_ACCLL|Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~9_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux15~9_combout\);

-- Location: LCCOMB_X20_Y17_N2
\ps2_ACCLL|Mux19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~20_combout\ = (\ps2_ACCLL|Mux15~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((!\ps2_ACCLL|Mux19~4_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux19~4_combout\,
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux19~20_combout\);

-- Location: LCCOMB_X21_Y20_N30
\ps2_ACCLL|Mux19~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~27_combout\) # (\ps2_ACCLL|Mux19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~27_combout\,
	datad => \ps2_ACCLL|Mux19~20_combout\,
	combout => \ps2_ACCLL|Mux19~21_combout\);

-- Location: LCCOMB_X20_Y22_N14
\ps2_ACCLL|Mux19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~22_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux13~3_combout\) # (!\ps2_ACCLL|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux16~1_combout\,
	datad => \ps2_ACCLL|Mux13~3_combout\,
	combout => \ps2_ACCLL|Mux19~22_combout\);

-- Location: LCCOMB_X21_Y20_N4
\ps2_ACCLL|Mux19~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~25_combout\ = (\ps2_ACCLL|Mux19~21_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux19~24_combout\) # (\ps2_ACCLL|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux19~21_combout\,
	datad => \ps2_ACCLL|Mux19~22_combout\,
	combout => \ps2_ACCLL|Mux19~25_combout\);

-- Location: LCCOMB_X21_Y22_N18
\ps2_ACCLL|Mux28~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux28~31_combout\);

-- Location: LCCOMB_X21_Y20_N18
\ps2_ACCLL|Mux28~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~9_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~27_combout\) # (\ps2_ACCLL|Mux19~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~27_combout\,
	datad => \ps2_ACCLL|Mux19~20_combout\,
	combout => \ps2_ACCLL|Mux28~9_combout\);

-- Location: LCCOMB_X21_Y20_N8
\ps2_ACCLL|Mux28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux28~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux19~24_combout\) # ((\ps2_ACCLL|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux19~22_combout\,
	datad => \ps2_ACCLL|Mux28~9_combout\,
	combout => \ps2_ACCLL|Mux28~10_combout\);

-- Location: LCCOMB_X20_Y22_N12
\ps2_ACCLL|Mux28~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~11_combout\ = (\ps2_ACCLL|Mux28~31_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux28~31_combout\ & ((\ps2_ACCLL|Mux28~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux28~31_combout\,
	datad => \ps2_ACCLL|Mux28~10_combout\,
	combout => \ps2_ACCLL|Mux28~11_combout\);

-- Location: LCCOMB_X20_Y22_N22
\ps2_ACCLL|Mux28~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~29_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux28~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux28~11_combout\,
	combout => \ps2_ACCLL|Mux28~29_combout\);

-- Location: LCCOMB_X20_Y19_N30
\ps2_ACCLL|Mux28~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux28~18_combout\);

-- Location: LCCOMB_X20_Y19_N20
\ps2_ACCLL|Mux28~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux28~19_combout\);

-- Location: LCCOMB_X20_Y19_N8
\ps2_ACCLL|Mux28~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~17_combout\ = (\ps2_ACCLL|Mux19~22_combout\) # (\ps2_ACCLL|Mux19~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux19~22_combout\,
	datad => \ps2_ACCLL|Mux19~24_combout\,
	combout => \ps2_ACCLL|Mux28~17_combout\);

-- Location: LCCOMB_X20_Y19_N18
\ps2_ACCLL|Mux28~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~20_combout\ = (\ps2_ACCLL|Mux28~19_combout\ & (!\ps2_ACCLL|Mux28~18_combout\)) # (!\ps2_ACCLL|Mux28~19_combout\ & ((\ps2_ACCLL|Mux19~21_combout\) # ((!\ps2_ACCLL|Mux28~18_combout\ & \ps2_ACCLL|Mux28~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~18_combout\,
	datab => \ps2_ACCLL|Mux28~19_combout\,
	datac => \ps2_ACCLL|Mux28~17_combout\,
	datad => \ps2_ACCLL|Mux19~21_combout\,
	combout => \ps2_ACCLL|Mux28~20_combout\);

-- Location: LCCOMB_X20_Y22_N28
\ps2_ACCLL|Mux28~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux28~20_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux19~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux28~20_combout\,
	datad => \ps2_ACCLL|Mux19~25_combout\,
	combout => \ps2_ACCLL|Mux28~21_combout\);

-- Location: LCCOMB_X21_Y20_N14
\ps2_ACCLL|Mux28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~12_combout\ = (\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux28~12_combout\);

-- Location: LCCOMB_X21_Y20_N20
\ps2_ACCLL|Mux28~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux28~12_combout\ & ((\ps2_ACCLL|Mux19~27_combout\) # (\ps2_ACCLL|Mux19~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux28~12_combout\,
	datad => \ps2_ACCLL|Mux19~20_combout\,
	combout => \ps2_ACCLL|Mux28~13_combout\);

-- Location: LCCOMB_X21_Y20_N2
\ps2_ACCLL|Mux28~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~14_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|Mux28~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux28~13_combout\,
	combout => \ps2_ACCLL|Mux28~14_combout\);

-- Location: LCCOMB_X21_Y20_N24
\ps2_ACCLL|Mux28~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux19~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux28~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # 
-- (!\ps2_ACCLL|Mux28~14_combout\ & ((\ps2_ACCLL|Mux19~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux19~25_combout\,
	datad => \ps2_ACCLL|Mux28~14_combout\,
	combout => \ps2_ACCLL|Mux28~15_combout\);

-- Location: LCCOMB_X20_Y22_N26
\ps2_ACCLL|Mux28~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux28~15_combout\ & ((\ps2_ACCLL|Mux28~14_combout\) # (!\ps2_ACCLL|Mux25~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux28~14_combout\,
	datad => \ps2_ACCLL|Mux28~15_combout\,
	combout => \ps2_ACCLL|Mux28~16_combout\);

-- Location: LCCOMB_X20_Y22_N8
\ps2_ACCLL|Mux28~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~22_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (\ps2_ACCLL|Mux19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~22_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux19~24_combout\,
	combout => \ps2_ACCLL|Mux28~30_combout\);

-- Location: LCCOMB_X20_Y22_N10
\ps2_ACCLL|Mux28~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux19~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux19~21_combout\,
	combout => \ps2_ACCLL|Mux28~22_combout\);

-- Location: LCCOMB_X20_Y22_N4
\ps2_ACCLL|Mux28~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux28~22_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|Mux28~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux28~30_combout\,
	datad => \ps2_ACCLL|Mux28~22_combout\,
	combout => \ps2_ACCLL|Mux28~23_combout\);

-- Location: LCCOMB_X20_Y22_N30
\ps2_ACCLL|Mux28~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~24_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux19~22_combout\) # (\ps2_ACCLL|Mux19~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux19~22_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux19~24_combout\,
	combout => \ps2_ACCLL|Mux28~24_combout\);

-- Location: LCCOMB_X20_Y22_N20
\ps2_ACCLL|Mux28~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~25_combout\ = (\ps2_ACCLL|Mux28~24_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux28~23_combout\)))) # (!\ps2_ACCLL|Mux28~24_combout\ & (\ps2_ACCLL|Mux19~21_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (\ps2_ACCLL|Mux28~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|Mux19~21_combout\,
	combout => \ps2_ACCLL|Mux28~25_combout\);

-- Location: LCCOMB_X20_Y22_N2
\ps2_ACCLL|Mux28~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~11_combout\ & (!\ps2_ACCLL|Mux28~23_combout\)) # (!\ps2_ACCLL|Mux25~11_combout\ & ((\ps2_ACCLL|Mux28~25_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux28~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|Mux28~25_combout\,
	combout => \ps2_ACCLL|Mux28~26_combout\);

-- Location: LCCOMB_X20_Y22_N16
\ps2_ACCLL|Mux28~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux28~21_combout\ & ((\ps2_ACCLL|Mux28~26_combout\))) # (!\ps2_ACCLL|Mux28~21_combout\ & (\ps2_ACCLL|Mux28~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux28~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux28~21_combout\,
	datac => \ps2_ACCLL|Mux28~16_combout\,
	datad => \ps2_ACCLL|Mux28~26_combout\,
	combout => \ps2_ACCLL|Mux28~27_combout\);

-- Location: LCCOMB_X20_Y22_N6
\ps2_ACCLL|Mux28~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~28_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux28~29_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux28~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux28~29_combout\,
	datad => \ps2_ACCLL|Mux28~27_combout\,
	combout => \ps2_ACCLL|Mux28~28_combout\);

-- Location: LCCOMB_X20_Y22_N18
\ps2_ACCLL|Mux43~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~23_combout\ = (\ps2_ACCLL|Mux28~28_combout\) # ((\ps2_ACCLL|Mux19~25_combout\ & !\ps2_ACCLL|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~25_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux28~28_combout\,
	combout => \ps2_ACCLL|Mux43~23_combout\);

-- Location: LCCOMB_X19_Y22_N18
\ps2_ACCLL|Mux43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~6_combout\ & (!\ps2_ACCLL|Mux43~7_combout\)) # (!\ps2_ACCLL|Mux43~6_combout\ & ((\ps2_ACCLL|Mux43~23_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux43~7_combout\ & (\ps2_ACCLL|Mux43~6_combout\)) # (!\ps2_ACCLL|Mux43~7_combout\ & ((\ps2_ACCLL|Mux43~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~7_combout\,
	datab => \ps2_ACCLL|Mux43~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux43~23_combout\,
	combout => \ps2_ACCLL|Mux43~8_combout\);

-- Location: LCCOMB_X19_Y22_N16
\ps2_ACCLL|ascii~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~37_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux43~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux43~8_combout\,
	combout => \ps2_ACCLL|ascii~37_combout\);

-- Location: LCCOMB_X22_Y22_N4
\ps2_ACCLL|Mux43~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux42~2_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~4_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~4_combout\,
	datab => \ps2_ACCLL|Mux42~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~12_combout\);

-- Location: LCCOMB_X21_Y22_N24
\ps2_ACCLL|Mux43~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux43~11_combout\);

-- Location: LCCOMB_X21_Y22_N6
\ps2_ACCLL|Mux28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~8_combout\ = (!\ps2_ACCLL|Mux26~0_combout\ & \ps2_ACCLL|Mux19~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux26~0_combout\,
	datac => \ps2_ACCLL|Mux19~25_combout\,
	combout => \ps2_ACCLL|Mux28~8_combout\);

-- Location: LCCOMB_X21_Y22_N14
\ps2_ACCLL|Mux43~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~13_combout\ = (\ps2_ACCLL|Mux43~12_combout\ & (\ps2_ACCLL|Mux43~11_combout\)) # (!\ps2_ACCLL|Mux43~12_combout\ & (((\ps2_ACCLL|Mux28~28_combout\) # (\ps2_ACCLL|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~12_combout\,
	datab => \ps2_ACCLL|Mux43~11_combout\,
	datac => \ps2_ACCLL|Mux28~28_combout\,
	datad => \ps2_ACCLL|Mux28~8_combout\,
	combout => \ps2_ACCLL|Mux43~13_combout\);

-- Location: LCCOMB_X21_Y22_N12
\ps2_ACCLL|Mux43~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~14_combout\ = (\ps2_ACCLL|Mux28~28_combout\) # ((\ps2_ACCLL|Mux28~8_combout\) # ((\ps2_ACCLL|Mux42~2_combout\ & \ps2_ACCLL|Mux24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|Mux24~5_combout\,
	datac => \ps2_ACCLL|Mux28~28_combout\,
	datad => \ps2_ACCLL|Mux28~8_combout\,
	combout => \ps2_ACCLL|Mux43~14_combout\);

-- Location: LCCOMB_X21_Y22_N22
\ps2_ACCLL|Mux43~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux43~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux43~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~13_combout\,
	datad => \ps2_ACCLL|Mux43~14_combout\,
	combout => \ps2_ACCLL|Mux43~15_combout\);

-- Location: LCCOMB_X19_Y22_N26
\ps2_ACCLL|Mux43~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|Mux24~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|Mux24~4_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux43~9_combout\);

-- Location: LCCOMB_X20_Y22_N24
\ps2_ACCLL|Mux43~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~10_combout\ = (\ps2_ACCLL|Mux43~9_combout\ & (((\ps2_ACCLL|Mux43~23_combout\)))) # (!\ps2_ACCLL|Mux43~9_combout\ & (\ps2_ACCLL|Mux43~4_combout\ $ ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~4_combout\,
	datab => \ps2_ACCLL|Mux43~9_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux43~23_combout\,
	combout => \ps2_ACCLL|Mux43~10_combout\);

-- Location: LCCOMB_X21_Y22_N8
\ps2_ACCLL|Mux43~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~15_combout\ & (\ps2_ACCLL|Mux43~23_combout\)) # (!\ps2_ACCLL|Mux43~15_combout\ & ((\ps2_ACCLL|Mux43~10_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux43~23_combout\,
	datac => \ps2_ACCLL|Mux43~15_combout\,
	datad => \ps2_ACCLL|Mux43~10_combout\,
	combout => \ps2_ACCLL|Mux43~16_combout\);

-- Location: LCCOMB_X21_Y22_N0
\ps2_ACCLL|Mux43~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux43~19_combout\);

-- Location: LCCOMB_X21_Y22_N26
\ps2_ACCLL|Mux43~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~20_combout\ = (\ps2_ACCLL|Mux43~12_combout\ & (\ps2_ACCLL|Mux43~19_combout\)) # (!\ps2_ACCLL|Mux43~12_combout\ & (((\ps2_ACCLL|Mux28~28_combout\) # (\ps2_ACCLL|Mux28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~12_combout\,
	datab => \ps2_ACCLL|Mux43~19_combout\,
	datac => \ps2_ACCLL|Mux28~28_combout\,
	datad => \ps2_ACCLL|Mux28~8_combout\,
	combout => \ps2_ACCLL|Mux43~20_combout\);

-- Location: LCCOMB_X21_Y22_N4
\ps2_ACCLL|Mux43~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux43~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux43~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~20_combout\,
	datad => \ps2_ACCLL|Mux43~14_combout\,
	combout => \ps2_ACCLL|Mux43~21_combout\);

-- Location: LCCOMB_X22_Y20_N28
\ps2_ACCLL|Mux43~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~24_combout\ = (\ps2_ACCLL|Mux38~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~24_combout\);

-- Location: LCCOMB_X22_Y22_N22
\ps2_ACCLL|Mux43~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~17_combout\);

-- Location: LCCOMB_X21_Y22_N10
\ps2_ACCLL|Mux43~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~18_combout\ = (\ps2_ACCLL|Mux43~24_combout\) # ((\ps2_ACCLL|Mux43~23_combout\ & ((\ps2_ACCLL|Mux43~17_combout\) # (!\ps2_ACCLL|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~24_combout\,
	datab => \ps2_ACCLL|Mux43~17_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux43~23_combout\,
	combout => \ps2_ACCLL|Mux43~18_combout\);

-- Location: LCCOMB_X21_Y22_N2
\ps2_ACCLL|Mux43~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~21_combout\ & (\ps2_ACCLL|Mux43~23_combout\)) # (!\ps2_ACCLL|Mux43~21_combout\ & ((\ps2_ACCLL|Mux43~18_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux43~23_combout\,
	datac => \ps2_ACCLL|Mux43~21_combout\,
	datad => \ps2_ACCLL|Mux43~18_combout\,
	combout => \ps2_ACCLL|Mux43~22_combout\);

-- Location: LCCOMB_X21_Y22_N28
\ps2_ACCLL|ascii~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~38_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|Mux43~16_combout\)) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux43~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux43~16_combout\,
	datad => \ps2_ACCLL|Mux43~22_combout\,
	combout => \ps2_ACCLL|ascii~38_combout\);

-- Location: LCCOMB_X21_Y22_N16
\ps2_ACCLL|ascii~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~39_combout\ = (!\ps2_ACCLL|ascii~36_combout\ & ((\ps2_ACCLL|process_0~0_combout\) # ((!\ps2_ACCLL|ascii~37_combout\ & !\ps2_ACCLL|ascii~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ascii~36_combout\,
	datac => \ps2_ACCLL|ascii~37_combout\,
	datad => \ps2_ACCLL|ascii~38_combout\,
	combout => \ps2_ACCLL|ascii~39_combout\);

-- Location: FF_X21_Y22_N17
\ps2_ACCLL|ascii[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~39_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(1));

-- Location: LCCOMB_X29_Y21_N4
\ps2_ACCLL|ascii_code[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[1]~6_combout\ = !\ps2_ACCLL|ascii\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|ascii_code[1]~6_combout\);

-- Location: FF_X29_Y21_N5
\ps2_ACCLL|ascii_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[1]~6_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(1));

-- Location: LCCOMB_X17_Y19_N10
\ps2_ACCLL|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~8_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux16~8_combout\);

-- Location: LCCOMB_X17_Y19_N24
\ps2_ACCLL|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ascii\(4) & ((!\ps2_ACCLL|Mux38~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux13~3_combout\)) # (!\ps2_ACCLL|ascii\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux38~6_combout\,
	combout => \ps2_ACCLL|Mux16~9_combout\);

-- Location: LCCOMB_X17_Y19_N22
\ps2_ACCLL|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux16~8_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- \ps2_ACCLL|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~8_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux8~12_combout\);

-- Location: LCCOMB_X19_Y21_N16
\ps2_ACCLL|Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux15~7_combout\);

-- Location: LCCOMB_X19_Y20_N28
\ps2_ACCLL|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~14_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux15~7_combout\ & !\ps2_ACCLL|Mux8~12_combout\))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux15~7_combout\,
	datad => \ps2_ACCLL|Mux8~12_combout\,
	combout => \ps2_ACCLL|Mux8~14_combout\);

-- Location: LCCOMB_X19_Y20_N14
\ps2_ACCLL|Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux8~14_combout\) # ((\ps2_ACCLL|Mux16~0_combout\ & \ps2_ACCLL|Mux8~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux8~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux8~12_combout\,
	datad => \ps2_ACCLL|Mux8~14_combout\,
	combout => \ps2_ACCLL|Mux8~15_combout\);

-- Location: LCCOMB_X22_Y22_N8
\ps2_ACCLL|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux8~0_combout\);

-- Location: LCCOMB_X22_Y22_N18
\ps2_ACCLL|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|Mux8~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux13~4_combout\,
	combout => \ps2_ACCLL|Mux8~1_combout\);

-- Location: LCCOMB_X22_Y22_N20
\ps2_ACCLL|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~2_combout\ = (\ps2_ACCLL|Mux17~6_combout\) # ((\ps2_ACCLL|Mux8~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux8~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux17~6_combout\,
	combout => \ps2_ACCLL|Mux8~2_combout\);

-- Location: LCCOMB_X22_Y22_N2
\ps2_ACCLL|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~3_combout\ = (\ps2_ACCLL|ascii\(4) & (\ps2_ACCLL|Mux8~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ascii\(4) & (((\ps2_ACCLL|Mux8~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # 
-- (!\ps2_ACCLL|Mux8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|Mux8~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux8~1_combout\,
	combout => \ps2_ACCLL|Mux8~3_combout\);

-- Location: LCCOMB_X17_Y19_N12
\ps2_ACCLL|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~7_combout\ = (\ps2_ACCLL|Mux13~10_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux13~10_combout\ & (!\ps2_ACCLL|ascii\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~10_combout\,
	datab => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux16~7_combout\);

-- Location: LCCOMB_X17_Y19_N28
\ps2_ACCLL|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux8~7_combout\);

-- Location: LCCOMB_X17_Y19_N26
\ps2_ACCLL|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~9_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|Mux8~7_combout\) # ((\ps2_ACCLL|Mux8~8_combout\ & !\ps2_ACCLL|Mux38~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~7_combout\,
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux8~8_combout\,
	datad => \ps2_ACCLL|Mux38~6_combout\,
	combout => \ps2_ACCLL|Mux8~9_combout\);

-- Location: LCCOMB_X17_Y19_N30
\ps2_ACCLL|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~10_combout\ = (\ps2_ACCLL|Mux8~9_combout\) # ((\ps2_ACCLL|Mux16~7_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux8~9_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux8~10_combout\);

-- Location: LCCOMB_X19_Y20_N8
\ps2_ACCLL|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux16~3_combout\);

-- Location: LCCOMB_X24_Y18_N28
\ps2_ACCLL|shift_l~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|shift_l~4_combout\);

-- Location: LCCOMB_X17_Y19_N4
\ps2_ACCLL|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|shift_l~4_combout\) # ((!\ps2_ACCLL|ascii\(4) & \ps2_ACCLL|Mux16~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ascii\(4) & 
-- (\ps2_ACCLL|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux16~3_combout\,
	datad => \ps2_ACCLL|shift_l~4_combout\,
	combout => \ps2_ACCLL|Mux16~4_combout\);

-- Location: LCCOMB_X17_Y19_N8
\ps2_ACCLL|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~6_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux16~6_combout\);

-- Location: LCCOMB_X17_Y19_N14
\ps2_ACCLL|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux16~5_combout\);

-- Location: LCCOMB_X17_Y19_N20
\ps2_ACCLL|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~4_combout\ = (\ps2_ACCLL|Mux13~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ascii\(4)))))) # (!\ps2_ACCLL|Mux13~10_combout\ & 
-- (((\ps2_ACCLL|ascii\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux13~10_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux8~4_combout\);

-- Location: LCCOMB_X17_Y19_N18
\ps2_ACCLL|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux16~5_combout\)) # 
-- (!\ps2_ACCLL|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~5_combout\,
	datad => \ps2_ACCLL|Mux8~4_combout\,
	combout => \ps2_ACCLL|Mux8~5_combout\);

-- Location: LCCOMB_X17_Y19_N6
\ps2_ACCLL|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux8~5_combout\ & ((\ps2_ACCLL|Mux16~6_combout\))) # (!\ps2_ACCLL|Mux8~5_combout\ & (\ps2_ACCLL|Mux16~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux16~4_combout\,
	datac => \ps2_ACCLL|Mux16~6_combout\,
	datad => \ps2_ACCLL|Mux8~5_combout\,
	combout => \ps2_ACCLL|Mux8~6_combout\);

-- Location: LCCOMB_X17_Y19_N0
\ps2_ACCLL|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux8~6_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux8~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux8~10_combout\,
	datad => \ps2_ACCLL|Mux8~6_combout\,
	combout => \ps2_ACCLL|Mux8~11_combout\);

-- Location: LCCOMB_X17_Y20_N30
\ps2_ACCLL|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux8~11_combout\ & (\ps2_ACCLL|Mux8~15_combout\)) # (!\ps2_ACCLL|Mux8~11_combout\ & ((\ps2_ACCLL|Mux8~3_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux8~3_combout\,
	datad => \ps2_ACCLL|Mux8~11_combout\,
	combout => \ps2_ACCLL|Mux8~13_combout\);

-- Location: LCCOMB_X20_Y20_N10
\ps2_ACCLL|Mux16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~11_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux16~2_combout\)) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux16~2_combout\,
	combout => \ps2_ACCLL|Mux16~11_combout\);

-- Location: LCCOMB_X20_Y20_N26
\ps2_ACCLL|Mux16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~13_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux16~13_combout\);

-- Location: LCCOMB_X20_Y20_N4
\ps2_ACCLL|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~10_combout\ = (\ps2_ACCLL|Mux13~3_combout\ & ((\ps2_ACCLL|Mux16~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux16~1_combout\ & (!\ps2_ACCLL|ascii\(4))))) # (!\ps2_ACCLL|Mux13~3_combout\ & 
-- (!\ps2_ACCLL|ascii\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux16~10_combout\);

-- Location: LCCOMB_X20_Y20_N20
\ps2_ACCLL|Mux16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~12_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux14~2_combout\,
	datad => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|Mux16~12_combout\);

-- Location: LCCOMB_X20_Y20_N16
\ps2_ACCLL|Mux16~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux16~12_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~10_combout\,
	datad => \ps2_ACCLL|Mux16~12_combout\,
	combout => \ps2_ACCLL|Mux16~14_combout\);

-- Location: LCCOMB_X20_Y20_N22
\ps2_ACCLL|Mux16~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~14_combout\ & ((\ps2_ACCLL|Mux16~13_combout\))) # (!\ps2_ACCLL|Mux16~14_combout\ & (\ps2_ACCLL|Mux16~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux16~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~13_combout\,
	datad => \ps2_ACCLL|Mux16~14_combout\,
	combout => \ps2_ACCLL|Mux16~15_combout\);

-- Location: LCCOMB_X20_Y18_N8
\ps2_ACCLL|Mux25~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~21_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux25~21_combout\);

-- Location: LCCOMB_X19_Y20_N26
\ps2_ACCLL|Mux25~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~19_combout\ = (\ps2_ACCLL|Mux16~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux16~15_combout\,
	combout => \ps2_ACCLL|Mux25~19_combout\);

-- Location: LCCOMB_X21_Y20_N0
\ps2_ACCLL|Mux25~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux25~12_combout\);

-- Location: LCCOMB_X21_Y20_N10
\ps2_ACCLL|Mux25~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux25~12_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|Mux14~2_combout\ & !\ps2_ACCLL|Mux25~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux14~2_combout\,
	datad => \ps2_ACCLL|Mux25~12_combout\,
	combout => \ps2_ACCLL|Mux25~13_combout\);

-- Location: LCCOMB_X21_Y20_N28
\ps2_ACCLL|Mux25~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~14_combout\ = (\ps2_ACCLL|Mux25~13_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|Mux16~11_combout\)))) # (!\ps2_ACCLL|Mux25~13_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~13_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~10_combout\,
	datad => \ps2_ACCLL|Mux16~11_combout\,
	combout => \ps2_ACCLL|Mux25~14_combout\);

-- Location: LCCOMB_X21_Y20_N22
\ps2_ACCLL|Mux25~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~15_combout\ = (!\ps2_ACCLL|Mux25~11_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(4) & !\ps2_ACCLL|Mux25~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~11_combout\,
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~14_combout\,
	combout => \ps2_ACCLL|Mux25~15_combout\);

-- Location: LCCOMB_X19_Y20_N22
\ps2_ACCLL|Mux25~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux16~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux16~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux16~12_combout\,
	datad => \ps2_ACCLL|Mux16~13_combout\,
	combout => \ps2_ACCLL|Mux25~17_combout\);

-- Location: LCCOMB_X21_Y20_N16
\ps2_ACCLL|Mux25~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(4) & !\ps2_ACCLL|Mux25~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~14_combout\,
	combout => \ps2_ACCLL|Mux25~16_combout\);

-- Location: LCCOMB_X19_Y20_N0
\ps2_ACCLL|Mux25~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~17_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- \ps2_ACCLL|Mux25~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~17_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux25~16_combout\,
	combout => \ps2_ACCLL|Mux25~18_combout\);

-- Location: LCCOMB_X19_Y20_N16
\ps2_ACCLL|Mux25~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~18_combout\ & (\ps2_ACCLL|Mux25~19_combout\)) # (!\ps2_ACCLL|Mux25~18_combout\ & ((\ps2_ACCLL|Mux25~15_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~19_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~15_combout\,
	datad => \ps2_ACCLL|Mux25~18_combout\,
	combout => \ps2_ACCLL|Mux25~20_combout\);

-- Location: LCCOMB_X19_Y20_N18
\ps2_ACCLL|Mux25~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~22_combout\ = (\ps2_ACCLL|Mux26~0_combout\ & (((\ps2_ACCLL|Mux25~21_combout\ & \ps2_ACCLL|Mux25~20_combout\)))) # (!\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|Mux16~15_combout\) # ((\ps2_ACCLL|Mux25~21_combout\ & 
-- \ps2_ACCLL|Mux25~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datab => \ps2_ACCLL|Mux16~15_combout\,
	datac => \ps2_ACCLL|Mux25~21_combout\,
	datad => \ps2_ACCLL|Mux25~20_combout\,
	combout => \ps2_ACCLL|Mux25~22_combout\);

-- Location: LCCOMB_X19_Y20_N30
\ps2_ACCLL|Mux25~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~36_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux25~36_combout\);

-- Location: LCCOMB_X19_Y20_N4
\ps2_ACCLL|Mux25~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux25~35_combout\);

-- Location: LCCOMB_X19_Y20_N6
\ps2_ACCLL|Mux25~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~32_combout\ = (\ps2_ACCLL|Mux25~36_combout\ & (((\ps2_ACCLL|Mux25~35_combout\) # (\ps2_ACCLL|Mux25~16_combout\)))) # (!\ps2_ACCLL|Mux25~36_combout\ & (\ps2_ACCLL|Mux16~15_combout\ & (!\ps2_ACCLL|Mux25~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~36_combout\,
	datab => \ps2_ACCLL|Mux16~15_combout\,
	datac => \ps2_ACCLL|Mux25~35_combout\,
	datad => \ps2_ACCLL|Mux25~16_combout\,
	combout => \ps2_ACCLL|Mux25~32_combout\);

-- Location: LCCOMB_X19_Y20_N24
\ps2_ACCLL|Mux25~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~26_combout\ = (\ps2_ACCLL|Mux16~15_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux16~15_combout\,
	combout => \ps2_ACCLL|Mux25~26_combout\);

-- Location: LCCOMB_X20_Y20_N24
\ps2_ACCLL|Mux25~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~23_combout\ = (\ps2_ACCLL|Mux16~14_combout\ & ((\ps2_ACCLL|Mux16~13_combout\))) # (!\ps2_ACCLL|Mux16~14_combout\ & (\ps2_ACCLL|Mux16~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~11_combout\,
	datac => \ps2_ACCLL|Mux16~13_combout\,
	datad => \ps2_ACCLL|Mux16~14_combout\,
	combout => \ps2_ACCLL|Mux25~23_combout\);

-- Location: LCCOMB_X20_Y20_N2
\ps2_ACCLL|Mux25~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux25~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~14_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux16~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux25~23_combout\,
	combout => \ps2_ACCLL|Mux25~24_combout\);

-- Location: LCCOMB_X20_Y20_N12
\ps2_ACCLL|Mux25~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux25~24_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~24_combout\,
	combout => \ps2_ACCLL|Mux25~25_combout\);

-- Location: LCCOMB_X20_Y20_N30
\ps2_ACCLL|Mux25~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~25_combout\ & (\ps2_ACCLL|Mux25~26_combout\)) # (!\ps2_ACCLL|Mux25~25_combout\ & ((\ps2_ACCLL|Mux25~15_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux25~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux25~26_combout\,
	datac => \ps2_ACCLL|Mux25~15_combout\,
	datad => \ps2_ACCLL|Mux25~25_combout\,
	combout => \ps2_ACCLL|Mux25~27_combout\);

-- Location: LCCOMB_X20_Y20_N0
\ps2_ACCLL|Mux25~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux16~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- !\ps2_ACCLL|Mux16~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux16~14_combout\,
	combout => \ps2_ACCLL|Mux25~28_combout\);

-- Location: LCCOMB_X20_Y20_N18
\ps2_ACCLL|Mux25~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~14_combout\ $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|Mux25~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux16~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux25~28_combout\,
	combout => \ps2_ACCLL|Mux25~29_combout\);

-- Location: LCCOMB_X20_Y20_N14
\ps2_ACCLL|Mux25~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~34_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux25~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux25~29_combout\,
	combout => \ps2_ACCLL|Mux25~34_combout\);

-- Location: LCCOMB_X20_Y20_N28
\ps2_ACCLL|Mux25~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux25~23_combout\) # ((\ps2_ACCLL|Mux25~34_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux25~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux25~23_combout\,
	datac => \ps2_ACCLL|Mux25~34_combout\,
	datad => \ps2_ACCLL|Mux25~29_combout\,
	combout => \ps2_ACCLL|Mux25~30_combout\);

-- Location: LCCOMB_X20_Y20_N6
\ps2_ACCLL|Mux25~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux25~30_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux16~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux16~15_combout\,
	datad => \ps2_ACCLL|Mux25~30_combout\,
	combout => \ps2_ACCLL|Mux25~31_combout\);

-- Location: LCCOMB_X20_Y20_N8
\ps2_ACCLL|Mux25~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux25~31_combout\ & (\ps2_ACCLL|Mux25~32_combout\)) # (!\ps2_ACCLL|Mux25~31_combout\ & ((\ps2_ACCLL|Mux25~27_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux25~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux25~32_combout\,
	datac => \ps2_ACCLL|Mux25~27_combout\,
	datad => \ps2_ACCLL|Mux25~31_combout\,
	combout => \ps2_ACCLL|Mux25~33_combout\);

-- Location: LCCOMB_X16_Y20_N16
\ps2_ACCLL|Mux40~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~40_combout\ = (\ps2_ACCLL|Mux25~22_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux25~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux25~22_combout\,
	datad => \ps2_ACCLL|Mux25~33_combout\,
	combout => \ps2_ACCLL|Mux40~40_combout\);

-- Location: LCCOMB_X16_Y20_N18
\ps2_ACCLL|Mux40~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~34_combout\ = (\ps2_ACCLL|Mux40~40_combout\) # ((\ps2_ACCLL|Mux20~4_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~34_combout\);

-- Location: LCCOMB_X19_Y20_N12
\ps2_ACCLL|Mux40~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~36_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux24~5_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux24~5_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux40~36_combout\);

-- Location: LCCOMB_X17_Y20_N24
\ps2_ACCLL|Mux40~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~16_combout\ = (!\ps2_ACCLL|Mux40~36_combout\ & ((\ps2_ACCLL|Mux25~22_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux25~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux25~33_combout\,
	datad => \ps2_ACCLL|Mux25~22_combout\,
	combout => \ps2_ACCLL|Mux40~16_combout\);

-- Location: LCCOMB_X17_Y20_N18
\ps2_ACCLL|Mux40~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~17_combout\ = (\ps2_ACCLL|Mux40~16_combout\) # ((\ps2_ACCLL|Mux40~36_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux40~16_combout\,
	combout => \ps2_ACCLL|Mux40~17_combout\);

-- Location: LCCOMB_X16_Y20_N24
\ps2_ACCLL|Mux40~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~18_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux40~18_combout\);

-- Location: LCCOMB_X17_Y20_N8
\ps2_ACCLL|Mux40~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~37_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux40~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux40~37_combout\);

-- Location: LCCOMB_X17_Y20_N4
\ps2_ACCLL|Mux40~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux40~19_combout\);

-- Location: LCCOMB_X17_Y20_N6
\ps2_ACCLL|Mux40~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|Mux40~19_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux40~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|Mux40~19_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux40~20_combout\);

-- Location: LCCOMB_X17_Y20_N12
\ps2_ACCLL|Mux40~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~21_combout\ = (!\ps2_ACCLL|Mux40~20_combout\ & ((\ps2_ACCLL|Mux25~22_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux25~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~20_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux25~33_combout\,
	datad => \ps2_ACCLL|Mux25~22_combout\,
	combout => \ps2_ACCLL|Mux40~21_combout\);

-- Location: LCCOMB_X17_Y20_N26
\ps2_ACCLL|Mux40~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~22_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux40~21_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux40~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux40~37_combout\,
	datad => \ps2_ACCLL|Mux40~21_combout\,
	combout => \ps2_ACCLL|Mux40~22_combout\);

-- Location: LCCOMB_X17_Y20_N22
\ps2_ACCLL|Mux40~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~38_combout\ = (\ps2_ACCLL|Mux25~22_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux25~22_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux40~38_combout\);

-- Location: LCCOMB_X19_Y20_N10
\ps2_ACCLL|Mux40~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~39_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux16~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux16~15_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux16~15_combout\,
	combout => \ps2_ACCLL|Mux40~39_combout\);

-- Location: LCCOMB_X17_Y20_N28
\ps2_ACCLL|Mux40~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~23_combout\ = (!\ps2_ACCLL|Mux15~4_combout\ & ((\ps2_ACCLL|Mux25~22_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux25~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~4_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux25~33_combout\,
	datad => \ps2_ACCLL|Mux25~22_combout\,
	combout => \ps2_ACCLL|Mux40~23_combout\);

-- Location: LCCOMB_X17_Y20_N2
\ps2_ACCLL|Mux40~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|Mux40~39_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux40~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux40~39_combout\,
	datad => \ps2_ACCLL|Mux40~23_combout\,
	combout => \ps2_ACCLL|Mux40~24_combout\);

-- Location: LCCOMB_X17_Y20_N0
\ps2_ACCLL|Mux40~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux40~38_combout\) # ((\ps2_ACCLL|Mux17~5_combout\ & !\ps2_ACCLL|Mux40~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux40~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux40~38_combout\,
	datad => \ps2_ACCLL|Mux40~24_combout\,
	combout => \ps2_ACCLL|Mux40~25_combout\);

-- Location: LCCOMB_X17_Y20_N14
\ps2_ACCLL|Mux40~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~26_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux40~22_combout\ & ((\ps2_ACCLL|Mux40~25_combout\))) # (!\ps2_ACCLL|Mux40~22_combout\ & (\ps2_ACCLL|Mux40~17_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux40~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux40~17_combout\,
	datac => \ps2_ACCLL|Mux40~22_combout\,
	datad => \ps2_ACCLL|Mux40~25_combout\,
	combout => \ps2_ACCLL|Mux40~26_combout\);

-- Location: LCCOMB_X16_Y20_N30
\ps2_ACCLL|Mux40~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~32_combout\ = (\ps2_ACCLL|Mux40~40_combout\) # ((\ps2_ACCLL|Mux40~36_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~32_combout\);

-- Location: LCCOMB_X19_Y22_N24
\ps2_ACCLL|Mux40~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~41_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux42~2_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~4_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux40~41_combout\);

-- Location: LCCOMB_X19_Y22_N0
\ps2_ACCLL|Mux40~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~30_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (!\ps2_ACCLL|Mux39~8_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|Mux40~41_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux40~41_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux39~8_combout\,
	combout => \ps2_ACCLL|Mux40~30_combout\);

-- Location: LCCOMB_X19_Y22_N22
\ps2_ACCLL|Mux40~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\) # ((!\ps2_ACCLL|Mux40~41_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux39~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux40~41_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux39~8_combout\,
	combout => \ps2_ACCLL|Mux40~29_combout\);

-- Location: LCCOMB_X17_Y20_N20
\ps2_ACCLL|Mux40~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux42~2_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux15~4_combout\,
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux40~27_combout\);

-- Location: LCCOMB_X16_Y20_N10
\ps2_ACCLL|Mux40~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~28_combout\ = (\ps2_ACCLL|Mux40~27_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux40~27_combout\ & (((\ps2_ACCLL|Mux40~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~28_combout\);

-- Location: LCCOMB_X16_Y20_N12
\ps2_ACCLL|Mux40~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~31_combout\ = (\ps2_ACCLL|Mux40~30_combout\ & (((\ps2_ACCLL|Mux40~28_combout\)) # (!\ps2_ACCLL|Mux40~29_combout\))) # (!\ps2_ACCLL|Mux40~30_combout\ & (\ps2_ACCLL|Mux40~29_combout\ & (\ps2_ACCLL|Mux40~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~30_combout\,
	datab => \ps2_ACCLL|Mux40~29_combout\,
	datac => \ps2_ACCLL|Mux40~40_combout\,
	datad => \ps2_ACCLL|Mux40~28_combout\,
	combout => \ps2_ACCLL|Mux40~31_combout\);

-- Location: LCCOMB_X16_Y20_N20
\ps2_ACCLL|Mux40~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux40~31_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|Mux40~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux40~32_combout\,
	datad => \ps2_ACCLL|Mux40~31_combout\,
	combout => \ps2_ACCLL|Mux40~33_combout\);

-- Location: LCCOMB_X17_Y20_N10
\ps2_ACCLL|Mux40~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux40~33_combout\ & (\ps2_ACCLL|Mux40~34_combout\)) # (!\ps2_ACCLL|Mux40~33_combout\ & ((\ps2_ACCLL|Mux40~26_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux40~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux40~34_combout\,
	datac => \ps2_ACCLL|Mux40~26_combout\,
	datad => \ps2_ACCLL|Mux40~33_combout\,
	combout => \ps2_ACCLL|Mux40~35_combout\);

-- Location: LCCOMB_X17_Y20_N16
\ps2_ACCLL|ascii~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~43_combout\ = (\ps2_ACCLL|control_r~q\ & (((!\ps2_ACCLL|Mux8~13_combout\)))) # (!\ps2_ACCLL|control_r~q\ & ((\ps2_ACCLL|control_l~q\ & (!\ps2_ACCLL|Mux8~13_combout\)) # (!\ps2_ACCLL|control_l~q\ & ((!\ps2_ACCLL|Mux40~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|Mux8~13_combout\,
	datad => \ps2_ACCLL|Mux40~35_combout\,
	combout => \ps2_ACCLL|ascii~43_combout\);

-- Location: FF_X17_Y20_N17
\ps2_ACCLL|ascii[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~43_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(4));

-- Location: LCCOMB_X29_Y21_N26
\ps2_ACCLL|ascii_code[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[4]~2_combout\ = !\ps2_ACCLL|ascii\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|ascii_code[4]~2_combout\);

-- Location: FF_X29_Y21_N27
\ps2_ACCLL|ascii_code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[4]~2_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(4));

-- Location: LCCOMB_X20_Y17_N26
\ps2_ACCLL|Mux17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~16_combout\ = (\ps2_ACCLL|Mux25~11_combout\ & ((\ps2_ACCLL|Mux15~4_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux15~4_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux25~11_combout\ & 
-- (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|Mux25~11_combout\,
	datac => \ps2_ACCLL|Mux15~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~16_combout\);

-- Location: LCCOMB_X22_Y21_N14
\ps2_ACCLL|Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~8_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux15~8_combout\);

-- Location: LCCOMB_X22_Y20_N16
\ps2_ACCLL|Mux17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~20_combout\ = (\ps2_ACCLL|Mux15~8_combout\ & ((\ps2_ACCLL|Mux42~2_combout\) # ((\ps2_ACCLL|Mux19~4_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|Mux15~8_combout\ & (((\ps2_ACCLL|Mux19~4_combout\ & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~8_combout\,
	datab => \ps2_ACCLL|Mux42~2_combout\,
	datac => \ps2_ACCLL|Mux19~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~20_combout\);

-- Location: LCCOMB_X20_Y17_N14
\ps2_ACCLL|Mux17~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~27_combout\ = (\ps2_ACCLL|Mux17~20_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux17~20_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|Mux17~20_combout\,
	combout => \ps2_ACCLL|Mux17~27_combout\);

-- Location: LCCOMB_X20_Y17_N0
\ps2_ACCLL|Mux17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~4_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux15~4_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~17_combout\);

-- Location: LCCOMB_X20_Y17_N22
\ps2_ACCLL|Mux17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~18_combout\ = (\ps2_ACCLL|Mux17~5_combout\ & ((\ps2_ACCLL|Mux25~11_combout\ & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|Mux25~11_combout\ & ((!\ps2_ACCLL|Mux8~8_combout\))))) # (!\ps2_ACCLL|Mux17~5_combout\ & (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|Mux17~5_combout\,
	datac => \ps2_ACCLL|Mux8~8_combout\,
	datad => \ps2_ACCLL|Mux25~11_combout\,
	combout => \ps2_ACCLL|Mux17~18_combout\);

-- Location: LCCOMB_X20_Y17_N12
\ps2_ACCLL|Mux17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~19_combout\ = (\ps2_ACCLL|Mux17~18_combout\) # ((\ps2_ACCLL|Mux13~3_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~18_combout\,
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~19_combout\);

-- Location: LCCOMB_X20_Y17_N18
\ps2_ACCLL|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux17~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux17~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~17_combout\,
	datad => \ps2_ACCLL|Mux17~19_combout\,
	combout => \ps2_ACCLL|Mux9~2_combout\);

-- Location: LCCOMB_X20_Y17_N24
\ps2_ACCLL|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux9~2_combout\ & ((\ps2_ACCLL|Mux17~27_combout\))) # (!\ps2_ACCLL|Mux9~2_combout\ & (\ps2_ACCLL|Mux17~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~27_combout\,
	datad => \ps2_ACCLL|Mux9~2_combout\,
	combout => \ps2_ACCLL|Mux9~3_combout\);

-- Location: LCCOMB_X24_Y17_N18
\ps2_ACCLL|Mux17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~13_combout\);

-- Location: LCCOMB_X24_Y17_N4
\ps2_ACCLL|Mux17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux19~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux17~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux19~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux17~13_combout\,
	combout => \ps2_ACCLL|Mux17~14_combout\);

-- Location: LCCOMB_X24_Y17_N26
\ps2_ACCLL|Mux17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~15_combout\ = (\ps2_ACCLL|Mux17~14_combout\ & (((!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux17~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux17~14_combout\,
	datad => \ps2_ACCLL|Mux17~4_combout\,
	combout => \ps2_ACCLL|Mux17~15_combout\);

-- Location: LCCOMB_X24_Y17_N14
\ps2_ACCLL|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux17~7_combout\);

-- Location: LCCOMB_X24_Y17_N16
\ps2_ACCLL|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~8_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ascii\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux17~8_combout\);

-- Location: LCCOMB_X24_Y17_N10
\ps2_ACCLL|Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux17~7_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux17~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux17~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux17~8_combout\,
	combout => \ps2_ACCLL|Mux17~9_combout\);

-- Location: LCCOMB_X24_Y17_N0
\ps2_ACCLL|Mux17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~4_combout\ & ((\ps2_ACCLL|Mux17~9_combout\))) # (!\ps2_ACCLL|Mux19~4_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux19~4_combout\,
	datad => \ps2_ACCLL|Mux17~9_combout\,
	combout => \ps2_ACCLL|Mux17~10_combout\);

-- Location: LCCOMB_X22_Y21_N16
\ps2_ACCLL|Mux44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux44~4_combout\);

-- Location: LCCOMB_X20_Y17_N20
\ps2_ACCLL|Mux17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~11_combout\ = (\ps2_ACCLL|shift_l~4_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|shift_l~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~11_combout\);

-- Location: LCCOMB_X20_Y17_N10
\ps2_ACCLL|Mux17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~12_combout\ = (\ps2_ACCLL|Mux17~11_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux44~4_combout\)))) # (!\ps2_ACCLL|Mux17~11_combout\ & (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|Mux44~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~11_combout\,
	combout => \ps2_ACCLL|Mux17~12_combout\);

-- Location: LCCOMB_X20_Y17_N4
\ps2_ACCLL|Mux17~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~26_combout\ = (\ps2_ACCLL|Mux17~5_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|ascii\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux17~5_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux17~5_combout\,
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux17~26_combout\);

-- Location: LCCOMB_X20_Y17_N28
\ps2_ACCLL|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~12_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux17~26_combout\ & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~12_combout\,
	datab => \ps2_ACCLL|Mux17~26_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y17_N28
\ps2_ACCLL|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux9~0_combout\ & (\ps2_ACCLL|Mux17~15_combout\)) # (!\ps2_ACCLL|Mux9~0_combout\ & ((\ps2_ACCLL|Mux17~10_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~15_combout\,
	datab => \ps2_ACCLL|Mux17~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux9~0_combout\,
	combout => \ps2_ACCLL|Mux9~1_combout\);

-- Location: LCCOMB_X24_Y17_N6
\ps2_ACCLL|ascii~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~27_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux9~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux9~3_combout\,
	datad => \ps2_ACCLL|Mux9~1_combout\,
	combout => \ps2_ACCLL|ascii~27_combout\);

-- Location: LCCOMB_X19_Y17_N20
\ps2_ACCLL|Mux41~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~8_combout\);

-- Location: LCCOMB_X23_Y20_N18
\ps2_ACCLL|Mux41~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~7_combout\);

-- Location: LCCOMB_X21_Y17_N14
\ps2_ACCLL|Mux17~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux16~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux13~3_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~3_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux16~2_combout\,
	combout => \ps2_ACCLL|Mux17~21_combout\);

-- Location: LCCOMB_X21_Y17_N4
\ps2_ACCLL|Mux17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~22_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux17~21_combout\)) # (!\ps2_ACCLL|ascii\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux17~22_combout\);

-- Location: LCCOMB_X22_Y17_N28
\ps2_ACCLL|Mux17~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~24_combout\);

-- Location: LCCOMB_X20_Y17_N30
\ps2_ACCLL|Mux17~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux13~3_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux19~4_combout\,
	combout => \ps2_ACCLL|Mux17~23_combout\);

-- Location: LCCOMB_X22_Y17_N2
\ps2_ACCLL|Mux17~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~25_combout\ = (\ps2_ACCLL|Mux17~24_combout\ & ((\ps2_ACCLL|Mux17~23_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux17~23_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux17~24_combout\ & 
-- (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~24_combout\,
	datad => \ps2_ACCLL|Mux17~23_combout\,
	combout => \ps2_ACCLL|Mux17~25_combout\);

-- Location: LCCOMB_X22_Y17_N4
\ps2_ACCLL|Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~1_combout\ = (!\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|Mux17~22_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux26~0_combout\,
	datac => \ps2_ACCLL|Mux17~22_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~1_combout\);

-- Location: LCCOMB_X21_Y17_N22
\ps2_ACCLL|Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux16~2_combout\,
	combout => \ps2_ACCLL|Mux26~2_combout\);

-- Location: LCCOMB_X21_Y17_N8
\ps2_ACCLL|Mux26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux26~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii\(3) & (!\ps2_ACCLL|Mux26~2_combout\ & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux26~3_combout\);

-- Location: LCCOMB_X21_Y17_N30
\ps2_ACCLL|Mux26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux26~3_combout\) # (\ps2_ACCLL|Mux17~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux26~3_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~4_combout\);

-- Location: LCCOMB_X21_Y17_N16
\ps2_ACCLL|Mux26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~5_combout\ = (\ps2_ACCLL|ascii\(3) & ((!\ps2_ACCLL|Mux17~21_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux26~5_combout\);

-- Location: LCCOMB_X21_Y17_N6
\ps2_ACCLL|Mux26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|Mux17~25_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux26~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux26~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~6_combout\);

-- Location: LCCOMB_X21_Y17_N12
\ps2_ACCLL|Mux26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~7_combout\ = (\ps2_ACCLL|Mux26~6_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux26~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~4_combout\,
	datad => \ps2_ACCLL|Mux26~6_combout\,
	combout => \ps2_ACCLL|Mux26~7_combout\);

-- Location: LCCOMB_X21_Y17_N18
\ps2_ACCLL|Mux26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux25~11_combout\ & !\ps2_ACCLL|Mux26~4_combout\)) # (!\ps2_ACCLL|Mux26~7_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux26~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux25~11_combout\,
	datac => \ps2_ACCLL|Mux26~4_combout\,
	datad => \ps2_ACCLL|Mux26~7_combout\,
	combout => \ps2_ACCLL|Mux26~8_combout\);

-- Location: LCCOMB_X22_Y17_N20
\ps2_ACCLL|Mux26~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~25_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~5_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~17_combout\);

-- Location: LCCOMB_X22_Y17_N30
\ps2_ACCLL|Mux26~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux26~17_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux26~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux26~17_combout\,
	combout => \ps2_ACCLL|Mux26~18_combout\);

-- Location: LCCOMB_X22_Y17_N16
\ps2_ACCLL|Mux26~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux17~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux26~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~5_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~19_combout\);

-- Location: LCCOMB_X22_Y17_N22
\ps2_ACCLL|Mux26~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|Mux26~19_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|Mux26~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~18_combout\,
	datad => \ps2_ACCLL|Mux26~19_combout\,
	combout => \ps2_ACCLL|Mux26~20_combout\);

-- Location: LCCOMB_X22_Y17_N8
\ps2_ACCLL|Mux26~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|Mux17~25_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|Mux17~25_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux26~15_combout\);

-- Location: LCCOMB_X22_Y17_N24
\ps2_ACCLL|Mux26~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux17~25_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~23_combout\);

-- Location: LCCOMB_X22_Y17_N6
\ps2_ACCLL|Mux26~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux26~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux26~23_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux26~5_combout\,
	datad => \ps2_ACCLL|Mux26~23_combout\,
	combout => \ps2_ACCLL|Mux26~24_combout\);

-- Location: LCCOMB_X22_Y17_N10
\ps2_ACCLL|Mux26~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|Mux26~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|Mux26~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~6_combout\,
	datad => \ps2_ACCLL|Mux26~24_combout\,
	combout => \ps2_ACCLL|Mux26~14_combout\);

-- Location: LCCOMB_X22_Y17_N14
\ps2_ACCLL|Mux26~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux26~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (!\ps2_ACCLL|Mux26~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux26~15_combout\,
	datad => \ps2_ACCLL|Mux26~14_combout\,
	combout => \ps2_ACCLL|Mux26~16_combout\);

-- Location: LCCOMB_X21_Y17_N24
\ps2_ACCLL|Mux26~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~9_combout\ = (!\ps2_ACCLL|Mux25~11_combout\ & ((\ps2_ACCLL|Mux17~22_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux17~22_combout\,
	datac => \ps2_ACCLL|Mux25~11_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~9_combout\);

-- Location: LCCOMB_X21_Y17_N26
\ps2_ACCLL|Mux26~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux17~22_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux17~22_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~12_combout\);

-- Location: LCCOMB_X21_Y17_N10
\ps2_ACCLL|Mux26~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~25_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux26~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~10_combout\);

-- Location: LCCOMB_X21_Y17_N20
\ps2_ACCLL|Mux26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux26~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|Mux26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux26~10_combout\,
	combout => \ps2_ACCLL|Mux26~11_combout\);

-- Location: LCCOMB_X21_Y17_N28
\ps2_ACCLL|Mux26~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux26~11_combout\ & ((\ps2_ACCLL|Mux26~12_combout\))) # (!\ps2_ACCLL|Mux26~11_combout\ & (\ps2_ACCLL|Mux26~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux26~9_combout\,
	datac => \ps2_ACCLL|Mux26~12_combout\,
	datad => \ps2_ACCLL|Mux26~11_combout\,
	combout => \ps2_ACCLL|Mux26~13_combout\);

-- Location: LCCOMB_X22_Y17_N12
\ps2_ACCLL|Mux41~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux26~16_combout\ & (\ps2_ACCLL|Mux26~20_combout\)) # (!\ps2_ACCLL|Mux26~16_combout\ & ((\ps2_ACCLL|Mux26~13_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux26~16_combout\,
	datad => \ps2_ACCLL|Mux26~13_combout\,
	combout => \ps2_ACCLL|Mux41~9_combout\);

-- Location: LCCOMB_X22_Y17_N18
\ps2_ACCLL|Mux41~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~10_combout\ = (\ps2_ACCLL|Mux25~21_combout\ & ((\ps2_ACCLL|Mux26~8_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux41~9_combout\)))) # (!\ps2_ACCLL|Mux25~21_combout\ & (((\ps2_ACCLL|Mux38~6_combout\ & 
-- \ps2_ACCLL|Mux41~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~21_combout\,
	datab => \ps2_ACCLL|Mux26~8_combout\,
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|Mux41~9_combout\,
	combout => \ps2_ACCLL|Mux41~10_combout\);

-- Location: LCCOMB_X23_Y17_N2
\ps2_ACCLL|Mux41~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~11_combout\ = (\ps2_ACCLL|Mux41~8_combout\ & (\ps2_ACCLL|Mux41~7_combout\ & ((\ps2_ACCLL|Mux26~1_combout\) # (\ps2_ACCLL|Mux41~10_combout\)))) # (!\ps2_ACCLL|Mux41~8_combout\ & (((\ps2_ACCLL|Mux26~1_combout\) # 
-- (\ps2_ACCLL|Mux41~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~8_combout\,
	datab => \ps2_ACCLL|Mux41~7_combout\,
	datac => \ps2_ACCLL|Mux26~1_combout\,
	datad => \ps2_ACCLL|Mux41~10_combout\,
	combout => \ps2_ACCLL|Mux41~11_combout\);

-- Location: LCCOMB_X22_Y17_N26
\ps2_ACCLL|Mux41~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~27_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux41~27_combout\);

-- Location: LCCOMB_X23_Y17_N0
\ps2_ACCLL|Mux41~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|shift_r~q\) # ((\ps2_ACCLL|shift_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|shift_r~q\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~26_combout\);

-- Location: LCCOMB_X21_Y17_N2
\ps2_ACCLL|Mux26~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~21_combout\ = (\ps2_ACCLL|Mux25~21_combout\ & \ps2_ACCLL|Mux26~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux25~21_combout\,
	datad => \ps2_ACCLL|Mux26~8_combout\,
	combout => \ps2_ACCLL|Mux26~21_combout\);

-- Location: LCCOMB_X23_Y17_N12
\ps2_ACCLL|Mux26~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~22_combout\ = (\ps2_ACCLL|Mux26~1_combout\) # ((\ps2_ACCLL|Mux26~21_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux41~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~6_combout\,
	datab => \ps2_ACCLL|Mux26~1_combout\,
	datac => \ps2_ACCLL|Mux26~21_combout\,
	datad => \ps2_ACCLL|Mux41~9_combout\,
	combout => \ps2_ACCLL|Mux26~22_combout\);

-- Location: LCCOMB_X23_Y17_N22
\ps2_ACCLL|Mux41~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~28_combout\ = (\ps2_ACCLL|Mux41~27_combout\ & ((\ps2_ACCLL|Mux41~8_combout\ & (\ps2_ACCLL|Mux41~26_combout\)) # (!\ps2_ACCLL|Mux41~8_combout\ & ((\ps2_ACCLL|Mux26~22_combout\))))) # (!\ps2_ACCLL|Mux41~27_combout\ & 
-- (((\ps2_ACCLL|Mux26~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~27_combout\,
	datab => \ps2_ACCLL|Mux41~26_combout\,
	datac => \ps2_ACCLL|Mux41~8_combout\,
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux41~28_combout\);

-- Location: LCCOMB_X23_Y17_N8
\ps2_ACCLL|Mux41~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~16_combout\);

-- Location: LCCOMB_X22_Y17_N0
\ps2_ACCLL|Mux41~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~13_combout\);

-- Location: LCCOMB_X24_Y17_N12
\ps2_ACCLL|Mux41~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|shift_l~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|shift_l~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux41~14_combout\);

-- Location: LCCOMB_X17_Y18_N30
\ps2_ACCLL|Mux41~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux25~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~10_combout\,
	combout => \ps2_ACCLL|Mux41~12_combout\);

-- Location: LCCOMB_X23_Y17_N10
\ps2_ACCLL|Mux41~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~15_combout\ = (\ps2_ACCLL|Mux41~13_combout\) # ((\ps2_ACCLL|Mux41~12_combout\) # ((\ps2_ACCLL|Mux41~14_combout\ & \ps2_ACCLL|Mux26~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~13_combout\,
	datab => \ps2_ACCLL|Mux41~14_combout\,
	datac => \ps2_ACCLL|Mux41~12_combout\,
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux41~15_combout\);

-- Location: LCCOMB_X23_Y17_N30
\ps2_ACCLL|Mux41~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux41~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux26~22_combout\ & (!\ps2_ACCLL|Mux41~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~22_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux41~16_combout\,
	datad => \ps2_ACCLL|Mux41~15_combout\,
	combout => \ps2_ACCLL|Mux41~17_combout\);

-- Location: LCCOMB_X19_Y17_N10
\ps2_ACCLL|Mux41~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~18_combout\);

-- Location: LCCOMB_X19_Y17_N2
\ps2_ACCLL|Mux41~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~30_combout\);

-- Location: LCCOMB_X19_Y17_N12
\ps2_ACCLL|Mux41~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux41~30_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux41~18_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux41~30_combout\,
	combout => \ps2_ACCLL|Mux41~19_combout\);

-- Location: LCCOMB_X23_Y17_N4
\ps2_ACCLL|Mux41~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~20_combout\ = (\ps2_ACCLL|Mux26~22_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|Mux41~19_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux41~16_combout\ & \ps2_ACCLL|Mux41~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux41~16_combout\,
	datac => \ps2_ACCLL|Mux41~19_combout\,
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux41~20_combout\);

-- Location: LCCOMB_X23_Y17_N26
\ps2_ACCLL|Mux41~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~21_combout\ = (\ps2_ACCLL|Mux41~18_combout\ & (((\ps2_ACCLL|Mux26~22_combout\)))) # (!\ps2_ACCLL|Mux41~18_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux41~18_combout\,
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux41~21_combout\);

-- Location: LCCOMB_X23_Y17_N14
\ps2_ACCLL|Mux41~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~23_combout\ = (\ps2_ACCLL|Mux26~22_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux41~4_combout\ $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux41~23_combout\);

-- Location: LCCOMB_X23_Y17_N28
\ps2_ACCLL|Mux41~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux26~22_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux41~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux41~16_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux41~22_combout\);

-- Location: LCCOMB_X23_Y17_N24
\ps2_ACCLL|Mux41~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux41~22_combout\ & ((\ps2_ACCLL|Mux41~23_combout\))) # (!\ps2_ACCLL|Mux41~22_combout\ & (\ps2_ACCLL|Mux41~21_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (((\ps2_ACCLL|Mux41~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~21_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux41~23_combout\,
	datad => \ps2_ACCLL|Mux41~22_combout\,
	combout => \ps2_ACCLL|Mux41~24_combout\);

-- Location: LCCOMB_X23_Y17_N6
\ps2_ACCLL|Mux41~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~31_combout\ = (\ps2_ACCLL|shift_l~q\ & (((\ps2_ACCLL|Mux41~20_combout\)))) # (!\ps2_ACCLL|shift_l~q\ & ((\ps2_ACCLL|shift_r~q\ & (\ps2_ACCLL|Mux41~20_combout\)) # (!\ps2_ACCLL|shift_r~q\ & ((\ps2_ACCLL|Mux41~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~q\,
	datab => \ps2_ACCLL|shift_r~q\,
	datac => \ps2_ACCLL|Mux41~20_combout\,
	datad => \ps2_ACCLL|Mux41~24_combout\,
	combout => \ps2_ACCLL|Mux41~31_combout\);

-- Location: LCCOMB_X23_Y17_N18
\ps2_ACCLL|Mux41~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux41~17_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux41~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux41~17_combout\,
	datad => \ps2_ACCLL|Mux41~31_combout\,
	combout => \ps2_ACCLL|Mux41~25_combout\);

-- Location: LCCOMB_X23_Y17_N16
\ps2_ACCLL|Mux41~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux41~25_combout\ & ((\ps2_ACCLL|Mux41~28_combout\))) # (!\ps2_ACCLL|Mux41~25_combout\ & (\ps2_ACCLL|Mux41~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux41~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux41~11_combout\,
	datac => \ps2_ACCLL|Mux41~28_combout\,
	datad => \ps2_ACCLL|Mux41~25_combout\,
	combout => \ps2_ACCLL|Mux41~29_combout\);

-- Location: LCCOMB_X23_Y17_N20
\ps2_ACCLL|ascii~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~44_combout\ = (!\ps2_ACCLL|ascii~27_combout\ & ((\ps2_ACCLL|control_r~q\) # ((\ps2_ACCLL|control_l~q\) # (!\ps2_ACCLL|Mux41~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~27_combout\,
	datab => \ps2_ACCLL|control_r~q\,
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|Mux41~29_combout\,
	combout => \ps2_ACCLL|ascii~44_combout\);

-- Location: FF_X23_Y17_N21
\ps2_ACCLL|ascii[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~44_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(3));

-- Location: LCCOMB_X29_Y21_N8
\ps2_ACCLL|ascii_code[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[3]~3_combout\ = !\ps2_ACCLL|ascii\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|ascii_code[3]~3_combout\);

-- Location: FF_X29_Y21_N9
\ps2_ACCLL|ascii_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[3]~3_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(3));

-- Location: LCCOMB_X19_Y20_N20
\ps2_ACCLL|Mux44~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~25_combout\ = (\ps2_ACCLL|Mux42~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux24~5_combout\,
	datad => \ps2_ACCLL|Mux20~4_combout\,
	combout => \ps2_ACCLL|Mux44~25_combout\);

-- Location: LCCOMB_X19_Y22_N4
\ps2_ACCLL|ascii~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux39~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|process_0~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|process_0~1_combout\,
	datad => \ps2_ACCLL|Mux39~8_combout\,
	combout => \ps2_ACCLL|ascii~31_combout\);

-- Location: LCCOMB_X20_Y19_N24
\ps2_ACCLL|ascii~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~32_combout\ = (\ps2_ACCLL|ascii~31_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|Mux44~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii~31_combout\,
	datad => \ps2_ACCLL|Mux44~25_combout\,
	combout => \ps2_ACCLL|ascii~32_combout\);

-- Location: LCCOMB_X24_Y19_N28
\ps2_ACCLL|ascii~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|ascii~30_combout\);

-- Location: LCCOMB_X20_Y21_N4
\ps2_ACCLL|Mux20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~20_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux20~20_combout\);

-- Location: LCCOMB_X20_Y21_N10
\ps2_ACCLL|Mux20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux13~3_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|Mux16~0_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux20~19_combout\);

-- Location: LCCOMB_X20_Y21_N14
\ps2_ACCLL|Mux20~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~21_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~20_combout\) # (\ps2_ACCLL|Mux20~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|Mux20~20_combout\,
	datad => \ps2_ACCLL|Mux20~19_combout\,
	combout => \ps2_ACCLL|Mux20~21_combout\);

-- Location: LCCOMB_X21_Y21_N18
\ps2_ACCLL|caps_lock~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|caps_lock~0_combout\);

-- Location: LCCOMB_X21_Y21_N14
\ps2_ACCLL|Mux20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~24_combout\ = (\ps2_ACCLL|caps_lock~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|e0_code~q\ & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|caps_lock~0_combout\,
	combout => \ps2_ACCLL|Mux20~24_combout\);

-- Location: LCCOMB_X21_Y21_N30
\ps2_ACCLL|Mux20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux20~22_combout\);

-- Location: LCCOMB_X21_Y21_N16
\ps2_ACCLL|Mux20~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~23_combout\ = (\ps2_ACCLL|Mux20~22_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux16~0_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux14~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~22_combout\,
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux20~23_combout\);

-- Location: LCCOMB_X20_Y21_N16
\ps2_ACCLL|Mux20~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~25_combout\ = (\ps2_ACCLL|Mux20~23_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Equal0~1_combout\ & \ps2_ACCLL|Mux20~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Equal0~1_combout\,
	datac => \ps2_ACCLL|Mux20~24_combout\,
	datad => \ps2_ACCLL|Mux20~23_combout\,
	combout => \ps2_ACCLL|Mux20~25_combout\);

-- Location: LCCOMB_X20_Y21_N22
\ps2_ACCLL|Mux20~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~26_combout\ = (\ps2_ACCLL|Mux20~21_combout\) # ((\ps2_ACCLL|Mux20~25_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux20~21_combout\,
	datac => \ps2_ACCLL|Mux15~9_combout\,
	datad => \ps2_ACCLL|Mux20~25_combout\,
	combout => \ps2_ACCLL|Mux20~26_combout\);

-- Location: LCCOMB_X20_Y21_N12
\ps2_ACCLL|Mux29~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~9_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~20_combout\) # (\ps2_ACCLL|Mux20~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|Mux20~20_combout\,
	datad => \ps2_ACCLL|Mux20~19_combout\,
	combout => \ps2_ACCLL|Mux29~9_combout\);

-- Location: LCCOMB_X20_Y21_N20
\ps2_ACCLL|Mux29~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux29~25_combout\);

-- Location: LCCOMB_X20_Y21_N28
\ps2_ACCLL|Mux29~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~22_combout\ = (\ps2_ACCLL|Mux20~25_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux20~25_combout\,
	combout => \ps2_ACCLL|Mux29~22_combout\);

-- Location: LCCOMB_X20_Y21_N2
\ps2_ACCLL|Mux29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~10_combout\ = (\ps2_ACCLL|Mux29~25_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux29~25_combout\ & ((\ps2_ACCLL|Mux29~9_combout\) # ((\ps2_ACCLL|Mux29~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~9_combout\,
	datab => \ps2_ACCLL|Mux29~25_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux29~22_combout\,
	combout => \ps2_ACCLL|Mux29~10_combout\);

-- Location: LCCOMB_X19_Y19_N14
\ps2_ACCLL|Mux29~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux29~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux29~10_combout\,
	combout => \ps2_ACCLL|Mux29~11_combout\);

-- Location: LCCOMB_X20_Y21_N6
\ps2_ACCLL|Mux29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux29~12_combout\);

-- Location: LCCOMB_X20_Y21_N8
\ps2_ACCLL|Mux29~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~13_combout\ = (\ps2_ACCLL|Mux29~12_combout\) # ((!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~20_combout\) # (\ps2_ACCLL|Mux20~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~12_combout\,
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|Mux20~20_combout\,
	datad => \ps2_ACCLL|Mux20~19_combout\,
	combout => \ps2_ACCLL|Mux29~13_combout\);

-- Location: LCCOMB_X20_Y21_N26
\ps2_ACCLL|Mux29~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~14_combout\ = (\ps2_ACCLL|Mux29~13_combout\) # ((\ps2_ACCLL|Mux20~25_combout\ & (\ps2_ACCLL|Mux15~9_combout\ $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~9_combout\,
	datab => \ps2_ACCLL|Mux20~25_combout\,
	datac => \ps2_ACCLL|Mux29~13_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux29~14_combout\);

-- Location: LCCOMB_X20_Y21_N18
\ps2_ACCLL|Mux29~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~23_combout\ = (\ps2_ACCLL|Mux20~25_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux20~25_combout\,
	combout => \ps2_ACCLL|Mux29~23_combout\);

-- Location: LCCOMB_X20_Y21_N0
\ps2_ACCLL|Mux29~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux20~21_combout\) # (\ps2_ACCLL|Mux29~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (!\ps2_ACCLL|Mux20~21_combout\ & !\ps2_ACCLL|Mux29~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux20~21_combout\,
	datad => \ps2_ACCLL|Mux29~23_combout\,
	combout => \ps2_ACCLL|Mux29~19_combout\);

-- Location: LCCOMB_X20_Y21_N30
\ps2_ACCLL|Mux29~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~19_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|Mux29~19_combout\) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|Mux29~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux29~19_combout\,
	combout => \ps2_ACCLL|Mux29~20_combout\);

-- Location: LCCOMB_X19_Y19_N4
\ps2_ACCLL|Mux29~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux20~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux20~4_combout\ & ((\ps2_ACCLL|Mux20~26_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux20~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|Mux20~26_combout\,
	combout => \ps2_ACCLL|Mux29~17_combout\);

-- Location: LCCOMB_X19_Y19_N20
\ps2_ACCLL|Mux29~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux20~26_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux20~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux20~26_combout\,
	combout => \ps2_ACCLL|Mux29~15_combout\);

-- Location: LCCOMB_X19_Y19_N2
\ps2_ACCLL|Mux29~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|Mux29~15_combout\,
	combout => \ps2_ACCLL|Mux29~16_combout\);

-- Location: LCCOMB_X19_Y19_N18
\ps2_ACCLL|Mux29~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux29~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux29~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux29~17_combout\,
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux29~18_combout\);

-- Location: LCCOMB_X19_Y19_N0
\ps2_ACCLL|Mux29~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux29~18_combout\ & ((\ps2_ACCLL|Mux29~20_combout\))) # (!\ps2_ACCLL|Mux29~18_combout\ & (\ps2_ACCLL|Mux29~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux29~14_combout\,
	datac => \ps2_ACCLL|Mux29~20_combout\,
	datad => \ps2_ACCLL|Mux29~18_combout\,
	combout => \ps2_ACCLL|Mux29~21_combout\);

-- Location: LCCOMB_X19_Y19_N28
\ps2_ACCLL|Mux44~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux29~11_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux29~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux29~11_combout\,
	datad => \ps2_ACCLL|Mux29~21_combout\,
	combout => \ps2_ACCLL|Mux44~9_combout\);

-- Location: LCCOMB_X19_Y19_N10
\ps2_ACCLL|Mux29~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~24_combout\ = (\ps2_ACCLL|Mux44~9_combout\) # ((\ps2_ACCLL|Mux20~26_combout\ & !\ps2_ACCLL|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~26_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux44~9_combout\,
	combout => \ps2_ACCLL|Mux29~24_combout\);

-- Location: LCCOMB_X20_Y19_N6
\ps2_ACCLL|ascii~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~33_combout\ = (\ps2_ACCLL|Mux44~25_combout\ & ((\ps2_ACCLL|ascii~30_combout\) # ((\ps2_ACCLL|ascii~32_combout\ & \ps2_ACCLL|Mux29~24_combout\)))) # (!\ps2_ACCLL|Mux44~25_combout\ & (\ps2_ACCLL|ascii~32_combout\ & 
-- ((\ps2_ACCLL|Mux29~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~25_combout\,
	datab => \ps2_ACCLL|ascii~32_combout\,
	datac => \ps2_ACCLL|ascii~30_combout\,
	datad => \ps2_ACCLL|Mux29~24_combout\,
	combout => \ps2_ACCLL|ascii~33_combout\);

-- Location: LCCOMB_X21_Y19_N24
\ps2_ACCLL|Mux20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux19~4_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux19~4_combout\ & 
-- (\ps2_ACCLL|Mux38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux19~4_combout\,
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~5_combout\);

-- Location: LCCOMB_X21_Y19_N30
\ps2_ACCLL|Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~6_combout\ = (\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|Mux19~4_combout\ & !\ps2_ACCLL|Mux20~5_combout\)))) # (!\ps2_ACCLL|ascii\(0) & (((!\ps2_ACCLL|Mux20~5_combout\)) # (!\ps2_ACCLL|Mux24~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~5_combout\,
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|Mux19~4_combout\,
	datad => \ps2_ACCLL|Mux20~5_combout\,
	combout => \ps2_ACCLL|Mux20~6_combout\);

-- Location: LCCOMB_X22_Y19_N20
\ps2_ACCLL|Mux20~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~27_combout\ = (\ps2_ACCLL|Mux13~10_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux13~10_combout\ & (!\ps2_ACCLL|ascii\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux13~10_combout\,
	combout => \ps2_ACCLL|Mux20~27_combout\);

-- Location: LCCOMB_X19_Y21_N22
\ps2_ACCLL|Mux20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux20~7_combout\);

-- Location: LCCOMB_X19_Y21_N28
\ps2_ACCLL|Mux20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~8_combout\ = (\ps2_ACCLL|Mux20~7_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Equal1~0_combout\)))) # (!\ps2_ACCLL|Mux20~7_combout\ & (!\ps2_ACCLL|ascii\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux20~7_combout\,
	datad => \ps2_ACCLL|Equal1~0_combout\,
	combout => \ps2_ACCLL|Mux20~8_combout\);

-- Location: LCCOMB_X21_Y19_N28
\ps2_ACCLL|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux20~8_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~27_combout\ & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux20~8_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux12~0_combout\);

-- Location: LCCOMB_X22_Y19_N18
\ps2_ACCLL|Mux20~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~28_combout\ = (\ps2_ACCLL|ascii\(0) & (\ps2_ACCLL|Mux19~4_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux19~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux19~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~28_combout\);

-- Location: LCCOMB_X21_Y19_N22
\ps2_ACCLL|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~1_combout\ = (\ps2_ACCLL|Mux12~0_combout\ & (((\ps2_ACCLL|Mux20~28_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux12~0_combout\ & (\ps2_ACCLL|Mux20~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~6_combout\,
	datab => \ps2_ACCLL|Mux12~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux20~28_combout\,
	combout => \ps2_ACCLL|Mux12~1_combout\);

-- Location: LCCOMB_X22_Y22_N0
\ps2_ACCLL|Mux20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~9_combout\);

-- Location: LCCOMB_X22_Y22_N6
\ps2_ACCLL|Mux20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux20~9_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux13~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~9_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux13~4_combout\,
	combout => \ps2_ACCLL|Mux20~10_combout\);

-- Location: LCCOMB_X22_Y19_N4
\ps2_ACCLL|Mux20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~11_combout\ = (\ps2_ACCLL|Mux20~10_combout\ & (((!\ps2_ACCLL|Mux20~4_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux20~10_combout\ & (!\ps2_ACCLL|ascii\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|Mux20~10_combout\,
	combout => \ps2_ACCLL|Mux20~11_combout\);

-- Location: LCCOMB_X21_Y19_N26
\ps2_ACCLL|Mux20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~17_combout\ = (!\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|caps_lock~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|caps_lock~0_combout\,
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|Mux20~17_combout\);

-- Location: LCCOMB_X21_Y19_N4
\ps2_ACCLL|Mux20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~18_combout\ = (\ps2_ACCLL|Mux20~17_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux20~17_combout\,
	datad => \ps2_ACCLL|Mux38~6_combout\,
	combout => \ps2_ACCLL|Mux20~18_combout\);

-- Location: LCCOMB_X22_Y19_N22
\ps2_ACCLL|Mux20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~13_combout\ = (\ps2_ACCLL|Mux13~3_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~3_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~13_combout\);

-- Location: LCCOMB_X21_Y19_N0
\ps2_ACCLL|Mux20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~15_combout\ = (!\ps2_ACCLL|ascii\(0) & (!\ps2_ACCLL|Mux20~13_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Mux16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~5_combout\,
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux20~13_combout\,
	combout => \ps2_ACCLL|Mux20~15_combout\);

-- Location: LCCOMB_X21_Y19_N6
\ps2_ACCLL|Mux20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~16_combout\ = (\ps2_ACCLL|Mux20~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|caps_lock~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|caps_lock~0_combout\,
	datad => \ps2_ACCLL|Mux20~15_combout\,
	combout => \ps2_ACCLL|Mux20~16_combout\);

-- Location: LCCOMB_X21_Y19_N8
\ps2_ACCLL|Mux20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~12_combout\ = ((!\ps2_ACCLL|Mux15~7_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux15~7_combout\,
	combout => \ps2_ACCLL|Mux20~12_combout\);

-- Location: LCCOMB_X21_Y19_N14
\ps2_ACCLL|Mux20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~14_combout\ = (\ps2_ACCLL|Mux20~12_combout\ & ((\ps2_ACCLL|Mux20~13_combout\ & (!\ps2_ACCLL|Mux43~4_combout\)) # (!\ps2_ACCLL|Mux20~13_combout\ & ((!\ps2_ACCLL|ascii\(0)))))) # (!\ps2_ACCLL|Mux20~12_combout\ & 
-- (!\ps2_ACCLL|Mux43~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~4_combout\,
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|Mux20~12_combout\,
	datad => \ps2_ACCLL|Mux20~13_combout\,
	combout => \ps2_ACCLL|Mux20~14_combout\);

-- Location: LCCOMB_X21_Y19_N20
\ps2_ACCLL|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux20~14_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~16_combout\ & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~16_combout\,
	datab => \ps2_ACCLL|Mux20~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux12~2_combout\);

-- Location: LCCOMB_X21_Y19_N2
\ps2_ACCLL|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux12~2_combout\ & ((\ps2_ACCLL|Mux20~18_combout\))) # (!\ps2_ACCLL|Mux12~2_combout\ & (\ps2_ACCLL|Mux20~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~18_combout\,
	datad => \ps2_ACCLL|Mux12~2_combout\,
	combout => \ps2_ACCLL|Mux12~3_combout\);

-- Location: LCCOMB_X21_Y19_N12
\ps2_ACCLL|ascii~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~28_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux12~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux12~1_combout\,
	datad => \ps2_ACCLL|Mux12~3_combout\,
	combout => \ps2_ACCLL|ascii~28_combout\);

-- Location: LCCOMB_X19_Y19_N24
\ps2_ACCLL|Mux29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~8_combout\ = (!\ps2_ACCLL|Mux26~0_combout\ & \ps2_ACCLL|Mux20~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux20~26_combout\,
	combout => \ps2_ACCLL|Mux29~8_combout\);

-- Location: LCCOMB_X21_Y19_N10
\ps2_ACCLL|Mux44~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~22_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Equal1~0_combout\ & \ps2_ACCLL|Mux44~4_combout\))) # (!\ps2_ACCLL|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Equal1~0_combout\,
	datad => \ps2_ACCLL|Mux44~4_combout\,
	combout => \ps2_ACCLL|Mux44~22_combout\);

-- Location: LCCOMB_X22_Y19_N6
\ps2_ACCLL|Mux44~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~21_combout\);

-- Location: LCCOMB_X20_Y19_N22
\ps2_ACCLL|Mux44~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~23_combout\ = (\ps2_ACCLL|Mux44~22_combout\ & ((\ps2_ACCLL|Mux29~8_combout\) # ((\ps2_ACCLL|Mux44~9_combout\)))) # (!\ps2_ACCLL|Mux44~22_combout\ & (((\ps2_ACCLL|Mux44~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~8_combout\,
	datab => \ps2_ACCLL|Mux44~22_combout\,
	datac => \ps2_ACCLL|Mux44~21_combout\,
	datad => \ps2_ACCLL|Mux44~9_combout\,
	combout => \ps2_ACCLL|Mux44~23_combout\);

-- Location: LCCOMB_X20_Y19_N26
\ps2_ACCLL|Mux44~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~10_combout\ = (\ps2_ACCLL|Mux40~36_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux40~36_combout\ & ((\ps2_ACCLL|Mux29~8_combout\) # ((\ps2_ACCLL|Mux44~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~8_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux40~36_combout\,
	datad => \ps2_ACCLL|Mux44~9_combout\,
	combout => \ps2_ACCLL|Mux44~10_combout\);

-- Location: LCCOMB_X23_Y19_N20
\ps2_ACCLL|Mux44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux15~4_combout\,
	combout => \ps2_ACCLL|Mux44~6_combout\);

-- Location: LCCOMB_X19_Y22_N6
\ps2_ACCLL|Mux44~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~7_combout\ = (\ps2_ACCLL|Mux15~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux15~4_combout\ & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux44~7_combout\);

-- Location: LCCOMB_X19_Y19_N30
\ps2_ACCLL|Mux44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~5_combout\ = (\ps2_ACCLL|Mux29~11_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux29~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux29~11_combout\,
	datad => \ps2_ACCLL|Mux29~21_combout\,
	combout => \ps2_ACCLL|Mux44~5_combout\);

-- Location: LCCOMB_X19_Y19_N12
\ps2_ACCLL|Mux44~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux20~26_combout\ & ((!\ps2_ACCLL|Mux26~0_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux44~5_combout\) # ((\ps2_ACCLL|Mux20~26_combout\ & 
-- !\ps2_ACCLL|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux20~26_combout\,
	datac => \ps2_ACCLL|Mux44~5_combout\,
	datad => \ps2_ACCLL|Mux26~0_combout\,
	combout => \ps2_ACCLL|Mux44~26_combout\);

-- Location: LCCOMB_X20_Y19_N16
\ps2_ACCLL|Mux44~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~8_combout\ = (\ps2_ACCLL|Mux44~6_combout\ & ((\ps2_ACCLL|Mux42~2_combout\) # ((\ps2_ACCLL|Mux44~26_combout\) # (!\ps2_ACCLL|Mux44~7_combout\)))) # (!\ps2_ACCLL|Mux44~6_combout\ & (((!\ps2_ACCLL|Mux44~7_combout\ & 
-- \ps2_ACCLL|Mux44~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|Mux44~6_combout\,
	datac => \ps2_ACCLL|Mux44~7_combout\,
	datad => \ps2_ACCLL|Mux44~26_combout\,
	combout => \ps2_ACCLL|Mux44~8_combout\);

-- Location: LCCOMB_X20_Y19_N4
\ps2_ACCLL|Mux44~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux44~8_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux44~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~10_combout\,
	datad => \ps2_ACCLL|Mux44~8_combout\,
	combout => \ps2_ACCLL|Mux44~11_combout\);

-- Location: LCCOMB_X22_Y20_N10
\ps2_ACCLL|Mux44~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux44~13_combout\);

-- Location: LCCOMB_X22_Y20_N30
\ps2_ACCLL|Mux44~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~27_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux44~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux44~13_combout\,
	combout => \ps2_ACCLL|Mux44~27_combout\);

-- Location: LCCOMB_X22_Y19_N8
\ps2_ACCLL|Mux44~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~12_combout\);

-- Location: LCCOMB_X19_Y19_N26
\ps2_ACCLL|Mux44~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~14_combout\ = (\ps2_ACCLL|Mux44~27_combout\ & (((\ps2_ACCLL|Mux44~12_combout\)))) # (!\ps2_ACCLL|Mux44~27_combout\ & ((\ps2_ACCLL|Mux29~8_combout\) # ((\ps2_ACCLL|Mux44~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~27_combout\,
	datab => \ps2_ACCLL|Mux29~8_combout\,
	datac => \ps2_ACCLL|Mux44~12_combout\,
	datad => \ps2_ACCLL|Mux44~9_combout\,
	combout => \ps2_ACCLL|Mux44~14_combout\);

-- Location: LCCOMB_X19_Y19_N16
\ps2_ACCLL|Mux44~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~17_combout\ = (\ps2_ACCLL|Mux15~4_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|Mux15~4_combout\ & ((\ps2_ACCLL|Mux29~8_combout\) # ((\ps2_ACCLL|Mux44~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~4_combout\,
	datab => \ps2_ACCLL|Mux29~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux44~9_combout\,
	combout => \ps2_ACCLL|Mux44~17_combout\);

-- Location: LCCOMB_X19_Y19_N8
\ps2_ACCLL|Mux44~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux42~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux15~4_combout\,
	combout => \ps2_ACCLL|Mux44~15_combout\);

-- Location: LCCOMB_X19_Y19_N22
\ps2_ACCLL|Mux44~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~16_combout\ = (\ps2_ACCLL|Mux44~15_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux44~15_combout\ & (((\ps2_ACCLL|Mux29~8_combout\) # (\ps2_ACCLL|Mux44~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux29~8_combout\,
	datac => \ps2_ACCLL|Mux44~15_combout\,
	datad => \ps2_ACCLL|Mux44~9_combout\,
	combout => \ps2_ACCLL|Mux44~16_combout\);

-- Location: LCCOMB_X19_Y19_N6
\ps2_ACCLL|Mux44~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux44~16_combout\ & (\ps2_ACCLL|Mux44~17_combout\)) # (!\ps2_ACCLL|Mux44~16_combout\ & ((\ps2_ACCLL|Mux29~24_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (((\ps2_ACCLL|Mux44~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux44~17_combout\,
	datac => \ps2_ACCLL|Mux44~16_combout\,
	datad => \ps2_ACCLL|Mux29~24_combout\,
	combout => \ps2_ACCLL|Mux44~18_combout\);

-- Location: LCCOMB_X20_Y19_N2
\ps2_ACCLL|Mux44~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux44~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~36_combout\) # ((\ps2_ACCLL|Mux29~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~18_combout\,
	datad => \ps2_ACCLL|Mux29~24_combout\,
	combout => \ps2_ACCLL|Mux44~19_combout\);

-- Location: LCCOMB_X20_Y19_N0
\ps2_ACCLL|Mux44~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux44~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|process_0~1_combout\ & 
-- ((\ps2_ACCLL|Mux44~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux44~14_combout\,
	datad => \ps2_ACCLL|Mux44~19_combout\,
	combout => \ps2_ACCLL|Mux44~20_combout\);

-- Location: LCCOMB_X20_Y19_N12
\ps2_ACCLL|Mux44~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~24_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux44~20_combout\ & (\ps2_ACCLL|Mux44~23_combout\)) # (!\ps2_ACCLL|Mux44~20_combout\ & ((\ps2_ACCLL|Mux44~11_combout\))))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux44~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~23_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux44~11_combout\,
	datad => \ps2_ACCLL|Mux44~20_combout\,
	combout => \ps2_ACCLL|Mux44~24_combout\);

-- Location: LCCOMB_X20_Y19_N10
\ps2_ACCLL|ascii~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~29_combout\ = (\ps2_ACCLL|ascii~28_combout\) # ((!\ps2_ACCLL|process_0~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux44~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii~28_combout\,
	datad => \ps2_ACCLL|Mux44~24_combout\,
	combout => \ps2_ACCLL|ascii~29_combout\);

-- Location: LCCOMB_X20_Y19_N28
\ps2_ACCLL|ascii~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~34_combout\ = (!\ps2_ACCLL|ascii~29_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (\ps2_ACCLL|process_0~0_combout\)) # (!\ps2_ACCLL|ascii~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~33_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|process_0~0_combout\,
	datad => \ps2_ACCLL|ascii~29_combout\,
	combout => \ps2_ACCLL|ascii~34_combout\);

-- Location: FF_X20_Y19_N29
\ps2_ACCLL|ascii[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~34_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(0));

-- Location: LCCOMB_X22_Y21_N28
\ps2_ACCLL|ascii_code[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[0]~4_combout\ = !\ps2_ACCLL|ascii\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|ascii_code[0]~4_combout\);

-- Location: LCCOMB_X29_Y21_N14
\ps2_ACCLL|ascii_code[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[0]~feeder_combout\ = \ps2_ACCLL|ascii_code[0]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii_code[0]~4_combout\,
	combout => \ps2_ACCLL|ascii_code[0]~feeder_combout\);

-- Location: FF_X29_Y21_N15
\ps2_ACCLL|ascii_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[0]~feeder_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(0));

-- Location: LCCOMB_X19_Y18_N28
\ps2_ACCLL|Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux15~16_combout\);

-- Location: LCCOMB_X19_Y18_N26
\ps2_ACCLL|Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~17_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|Mux15~7_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux15~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~7_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~16_combout\,
	combout => \ps2_ACCLL|Mux15~17_combout\);

-- Location: LCCOMB_X24_Y18_N6
\ps2_ACCLL|Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~13_combout\);

-- Location: LCCOMB_X24_Y18_N0
\ps2_ACCLL|Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~14_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|Mux15~13_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~13_combout\,
	combout => \ps2_ACCLL|Mux15~14_combout\);

-- Location: LCCOMB_X24_Y18_N14
\ps2_ACCLL|Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~15_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|Mux24~4_combout\) # (!\ps2_ACCLL|Mux38~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|Mux24~4_combout\,
	combout => \ps2_ACCLL|Mux15~15_combout\);

-- Location: LCCOMB_X24_Y18_N24
\ps2_ACCLL|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~14_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux15~15_combout\ & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux15~14_combout\,
	datac => \ps2_ACCLL|Mux15~15_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux7~14_combout\);

-- Location: LCCOMB_X24_Y18_N30
\ps2_ACCLL|Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~11_combout\);

-- Location: LCCOMB_X24_Y18_N16
\ps2_ACCLL|Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~10_combout\);

-- Location: LCCOMB_X24_Y18_N4
\ps2_ACCLL|Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~12_combout\ = (\ps2_ACCLL|Mux15~11_combout\ & (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|Mux15~10_combout\)))) # (!\ps2_ACCLL|Mux15~11_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((!\ps2_ACCLL|Mux15~10_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~11_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux15~10_combout\,
	combout => \ps2_ACCLL|Mux15~12_combout\);

-- Location: LCCOMB_X20_Y18_N2
\ps2_ACCLL|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux7~14_combout\ & (\ps2_ACCLL|Mux15~17_combout\)) # (!\ps2_ACCLL|Mux7~14_combout\ & ((\ps2_ACCLL|Mux15~12_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux15~17_combout\,
	datac => \ps2_ACCLL|Mux7~14_combout\,
	datad => \ps2_ACCLL|Mux15~12_combout\,
	combout => \ps2_ACCLL|Mux7~15_combout\);

-- Location: LCCOMB_X19_Y18_N22
\ps2_ACCLL|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux7~9_combout\);

-- Location: LCCOMB_X19_Y18_N24
\ps2_ACCLL|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux7~8_combout\);

-- Location: LCCOMB_X22_Y20_N26
\ps2_ACCLL|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y20_N20
\ps2_ACCLL|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux7~6_combout\);

-- Location: LCCOMB_X22_Y20_N14
\ps2_ACCLL|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux7~6_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux7~5_combout\,
	datad => \ps2_ACCLL|Mux7~6_combout\,
	combout => \ps2_ACCLL|Mux7~12_combout\);

-- Location: LCCOMB_X19_Y18_N0
\ps2_ACCLL|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux7~12_combout\ & (\ps2_ACCLL|Mux7~9_combout\)) # (!\ps2_ACCLL|Mux7~12_combout\ & ((\ps2_ACCLL|Mux7~8_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux7~9_combout\,
	datab => \ps2_ACCLL|Mux7~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux7~12_combout\,
	combout => \ps2_ACCLL|Mux7~13_combout\);

-- Location: LCCOMB_X19_Y18_N4
\ps2_ACCLL|Mux7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~16_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux7~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux7~13_combout\,
	combout => \ps2_ACCLL|Mux7~16_combout\);

-- Location: LCCOMB_X19_Y18_N16
\ps2_ACCLL|ascii~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~35_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux7~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux7~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux7~15_combout\,
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|Mux7~16_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~35_combout\);

-- Location: LCCOMB_X23_Y18_N2
\ps2_ACCLL|Mux39~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~24_combout\ = (\ps2_ACCLL|Mux42~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~24_combout\);

-- Location: LCCOMB_X19_Y21_N30
\ps2_ACCLL|Mux39~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~25_combout\ = (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|Mux42~2_combout\)) # (!\ps2_ACCLL|Mux20~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux20~4_combout\,
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux39~25_combout\);

-- Location: LCCOMB_X24_Y17_N30
\ps2_ACCLL|Mux39~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~26_combout\ = (\ps2_ACCLL|Mux20~4_combout\ & (\ps2_ACCLL|Mux17~4_combout\ & (\ps2_ACCLL|process_0~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~4_combout\,
	datab => \ps2_ACCLL|Mux17~4_combout\,
	datac => \ps2_ACCLL|process_0~1_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux39~26_combout\);

-- Location: LCCOMB_X24_Y17_N8
\ps2_ACCLL|Mux39~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~27_combout\ = (\ps2_ACCLL|Mux39~26_combout\) # ((\ps2_ACCLL|Mux13~2_combout\ & (\ps2_ACCLL|Mux24~5_combout\ & \ps2_ACCLL|caps_lock~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~2_combout\,
	datab => \ps2_ACCLL|Mux24~5_combout\,
	datac => \ps2_ACCLL|Mux39~26_combout\,
	datad => \ps2_ACCLL|caps_lock~1_combout\,
	combout => \ps2_ACCLL|Mux39~27_combout\);

-- Location: LCCOMB_X22_Y21_N30
\ps2_ACCLL|control_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|control_l~0_combout\);

-- Location: LCCOMB_X21_Y21_N26
\ps2_ACCLL|Mux15~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~24_combout\ = (!\ps2_ACCLL|ascii\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|Mux15~24_combout\);

-- Location: LCCOMB_X24_Y21_N22
\ps2_ACCLL|Mux24~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ascii\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(5))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~24_combout\,
	combout => \ps2_ACCLL|Mux24~6_combout\);

-- Location: LCCOMB_X22_Y21_N22
\ps2_ACCLL|Mux24~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux24~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux24~6_combout\,
	combout => \ps2_ACCLL|Mux24~7_combout\);

-- Location: LCCOMB_X24_Y19_N22
\ps2_ACCLL|caps_lock~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~3_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((!\ps2_ACCLL|break~q\ & (\ps2_ACCLL|caps_lock~2_combout\ & \ps2_ACCLL|caps_lock~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|break~q\,
	datab => \ps2_ACCLL|caps_lock~2_combout\,
	datac => \ps2_ACCLL|caps_lock~q\,
	datad => \ps2_ACCLL|caps_lock~1_combout\,
	combout => \ps2_ACCLL|caps_lock~3_combout\);

-- Location: FF_X24_Y19_N23
\ps2_ACCLL|caps_lock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|caps_lock~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|caps_lock~q\);

-- Location: LCCOMB_X24_Y19_N0
\ps2_ACCLL|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~2_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|shift_l~q\,
	datac => \ps2_ACCLL|caps_lock~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|process_0~2_combout\);

-- Location: LCCOMB_X23_Y20_N14
\ps2_ACCLL|Mux24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux24~17_combout\);

-- Location: LCCOMB_X23_Y20_N0
\ps2_ACCLL|Mux24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~18_combout\ = (\ps2_ACCLL|Mux24~5_combout\ & ((\ps2_ACCLL|Mux17~5_combout\) # ((\ps2_ACCLL|Mux24~17_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))) # (!\ps2_ACCLL|Mux24~5_combout\ & (\ps2_ACCLL|Mux24~17_combout\ & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~5_combout\,
	datab => \ps2_ACCLL|Mux24~17_combout\,
	datac => \ps2_ACCLL|Mux17~5_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux24~18_combout\);

-- Location: LCCOMB_X22_Y21_N6
\ps2_ACCLL|Mux15~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~21_combout\ = (!\ps2_ACCLL|ascii\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (!\ps2_ACCLL|Mux42~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux15~21_combout\);

-- Location: LCCOMB_X21_Y21_N4
\ps2_ACCLL|Mux15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux15~6_combout\)) # (!\ps2_ACCLL|ascii\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ascii\(5) & 
-- ((!\ps2_ACCLL|Mux15~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~6_combout\,
	combout => \ps2_ACCLL|Mux15~18_combout\);

-- Location: LCCOMB_X23_Y21_N24
\ps2_ACCLL|Mux15~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~19_combout\ = ((\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|Mux15~5_combout\ & \ps2_ACCLL|Mux38~7_combout\))) # (!\ps2_ACCLL|ascii\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux15~5_combout\,
	datad => \ps2_ACCLL|Mux38~7_combout\,
	combout => \ps2_ACCLL|Mux15~19_combout\);

-- Location: LCCOMB_X23_Y21_N18
\ps2_ACCLL|Mux15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux15~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux15~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~18_combout\,
	datad => \ps2_ACCLL|Mux15~19_combout\,
	combout => \ps2_ACCLL|Mux15~20_combout\);

-- Location: LCCOMB_X23_Y21_N0
\ps2_ACCLL|Mux15~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~20_combout\ & ((\ps2_ACCLL|Mux15~21_combout\))) # (!\ps2_ACCLL|Mux15~20_combout\ & (\ps2_ACCLL|Mux15~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux15~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~21_combout\,
	datad => \ps2_ACCLL|Mux15~20_combout\,
	combout => \ps2_ACCLL|Mux15~22_combout\);

-- Location: LCCOMB_X23_Y21_N4
\ps2_ACCLL|Mux24~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~19_combout\ = (!\ps2_ACCLL|Mux24~18_combout\ & ((\ps2_ACCLL|Mux15~8_combout\ & ((\ps2_ACCLL|Mux15~22_combout\))) # (!\ps2_ACCLL|Mux15~8_combout\ & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~8_combout\,
	datab => \ps2_ACCLL|Mux24~18_combout\,
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~22_combout\,
	combout => \ps2_ACCLL|Mux24~19_combout\);

-- Location: LCCOMB_X23_Y21_N10
\ps2_ACCLL|Mux24~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~20_combout\ = (\ps2_ACCLL|Mux38~6_combout\) # ((\ps2_ACCLL|Mux15~8_combout\ & ((\ps2_ACCLL|Mux15~22_combout\))) # (!\ps2_ACCLL|Mux15~8_combout\ & (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~8_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|Mux15~22_combout\,
	combout => \ps2_ACCLL|Mux24~20_combout\);

-- Location: LCCOMB_X23_Y21_N30
\ps2_ACCLL|Mux15~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~23_combout\ = (\ps2_ACCLL|ascii\(5) & (\ps2_ACCLL|Mux15~22_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|Mux15~22_combout\) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux15~22_combout\,
	combout => \ps2_ACCLL|Mux15~23_combout\);

-- Location: LCCOMB_X23_Y21_N8
\ps2_ACCLL|Mux24~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux15~23_combout\) # ((\ps2_ACCLL|Mux15~4_combout\ & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|Mux15~23_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~21_combout\);

-- Location: LCCOMB_X23_Y21_N20
\ps2_ACCLL|Mux24~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~30_combout\ = (\ps2_ACCLL|Mux15~23_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux15~23_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux24~30_combout\);

-- Location: LCCOMB_X23_Y21_N26
\ps2_ACCLL|Mux24~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~21_combout\ & ((\ps2_ACCLL|Mux24~30_combout\))) # (!\ps2_ACCLL|Mux24~21_combout\ & (\ps2_ACCLL|Mux24~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux24~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux24~21_combout\,
	datad => \ps2_ACCLL|Mux24~30_combout\,
	combout => \ps2_ACCLL|Mux24~22_combout\);

-- Location: LCCOMB_X23_Y21_N16
\ps2_ACCLL|Mux24~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~23_combout\ = (\ps2_ACCLL|Mux24~18_combout\) # ((\ps2_ACCLL|Mux15~8_combout\ & ((\ps2_ACCLL|Mux15~22_combout\))) # (!\ps2_ACCLL|Mux15~8_combout\ & (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~8_combout\,
	datab => \ps2_ACCLL|Mux24~18_combout\,
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~22_combout\,
	combout => \ps2_ACCLL|Mux24~23_combout\);

-- Location: LCCOMB_X23_Y21_N22
\ps2_ACCLL|Mux24~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~24_combout\ = (\ps2_ACCLL|process_0~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~22_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux24~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux24~22_combout\,
	datad => \ps2_ACCLL|Mux24~23_combout\,
	combout => \ps2_ACCLL|Mux24~24_combout\);

-- Location: LCCOMB_X23_Y21_N12
\ps2_ACCLL|Mux24~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~25_combout\ = (!\ps2_ACCLL|Mux38~6_combout\ & ((\ps2_ACCLL|Mux15~8_combout\ & ((\ps2_ACCLL|Mux15~22_combout\))) # (!\ps2_ACCLL|Mux15~8_combout\ & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~8_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|Mux15~22_combout\,
	combout => \ps2_ACCLL|Mux24~25_combout\);

-- Location: LCCOMB_X23_Y21_N14
\ps2_ACCLL|Mux24~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~31_combout\ = (\ps2_ACCLL|Mux15~23_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux15~23_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux24~31_combout\);

-- Location: LCCOMB_X23_Y21_N2
\ps2_ACCLL|Mux24~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~23_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|Mux15~23_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~26_combout\);

-- Location: LCCOMB_X23_Y21_N28
\ps2_ACCLL|Mux24~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~26_combout\ & ((\ps2_ACCLL|Mux24~31_combout\))) # (!\ps2_ACCLL|Mux24~26_combout\ & (\ps2_ACCLL|Mux24~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux24~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~25_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux24~31_combout\,
	datad => \ps2_ACCLL|Mux24~26_combout\,
	combout => \ps2_ACCLL|Mux24~27_combout\);

-- Location: LCCOMB_X23_Y21_N6
\ps2_ACCLL|Mux24~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~28_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux24~24_combout\ & ((\ps2_ACCLL|Mux24~27_combout\))) # (!\ps2_ACCLL|Mux24~24_combout\ & (\ps2_ACCLL|Mux24~19_combout\)))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux24~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux24~19_combout\,
	datac => \ps2_ACCLL|Mux24~24_combout\,
	datad => \ps2_ACCLL|Mux24~27_combout\,
	combout => \ps2_ACCLL|Mux24~28_combout\);

-- Location: LCCOMB_X23_Y20_N4
\ps2_ACCLL|Mux24~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~8_combout\ = (\ps2_ACCLL|Mux15~23_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux17~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux15~23_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~8_combout\);

-- Location: LCCOMB_X23_Y20_N26
\ps2_ACCLL|Mux24~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~9_combout\ = (\ps2_ACCLL|Mux17~5_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux24~9_combout\);

-- Location: LCCOMB_X23_Y20_N8
\ps2_ACCLL|Mux24~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux24~10_combout\);

-- Location: LCCOMB_X23_Y20_N10
\ps2_ACCLL|Mux24~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~11_combout\ = (\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux24~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux24~10_combout\,
	datad => \ps2_ACCLL|Mux26~0_combout\,
	combout => \ps2_ACCLL|Mux24~11_combout\);

-- Location: LCCOMB_X23_Y20_N20
\ps2_ACCLL|Mux24~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|process_0~2_combout\) # (\ps2_ACCLL|Mux24~11_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|process_0~2_combout\,
	datad => \ps2_ACCLL|Mux24~11_combout\,
	combout => \ps2_ACCLL|Mux24~12_combout\);

-- Location: LCCOMB_X23_Y20_N30
\ps2_ACCLL|Mux24~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux15~23_combout\) # (\ps2_ACCLL|Mux24~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux24~12_combout\ & ((\ps2_ACCLL|Mux24~9_combout\) # 
-- (\ps2_ACCLL|Mux15~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~23_combout\,
	datad => \ps2_ACCLL|Mux24~12_combout\,
	combout => \ps2_ACCLL|Mux24~13_combout\);

-- Location: LCCOMB_X23_Y20_N24
\ps2_ACCLL|Mux24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~14_combout\ = (\ps2_ACCLL|Mux15~23_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux24~10_combout\)) # (!\ps2_ACCLL|Mux26~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux24~10_combout\,
	datac => \ps2_ACCLL|Mux15~23_combout\,
	datad => \ps2_ACCLL|Mux26~0_combout\,
	combout => \ps2_ACCLL|Mux24~14_combout\);

-- Location: LCCOMB_X23_Y20_N6
\ps2_ACCLL|Mux24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~15_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux24~13_combout\ & ((\ps2_ACCLL|Mux24~14_combout\))) # (!\ps2_ACCLL|Mux24~13_combout\ & (\ps2_ACCLL|Mux24~8_combout\)))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux24~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux24~8_combout\,
	datac => \ps2_ACCLL|Mux24~13_combout\,
	datad => \ps2_ACCLL|Mux24~14_combout\,
	combout => \ps2_ACCLL|Mux24~15_combout\);

-- Location: LCCOMB_X23_Y20_N16
\ps2_ACCLL|Mux24~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux24~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux24~16_combout\);

-- Location: LCCOMB_X24_Y21_N16
\ps2_ACCLL|Mux24~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~29_combout\ = (\ps2_ACCLL|Mux24~7_combout\) # ((\ps2_ACCLL|Mux24~16_combout\) # ((\ps2_ACCLL|control_l~0_combout\ & \ps2_ACCLL|Mux24~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~0_combout\,
	datab => \ps2_ACCLL|Mux24~7_combout\,
	datac => \ps2_ACCLL|Mux24~28_combout\,
	datad => \ps2_ACCLL|Mux24~16_combout\,
	combout => \ps2_ACCLL|Mux24~29_combout\);

-- Location: LCCOMB_X24_Y21_N30
\ps2_ACCLL|Mux39~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~28_combout\ = (\ps2_ACCLL|shift_l~4_combout\ & ((\ps2_ACCLL|Mux39~27_combout\) # ((\ps2_ACCLL|Mux39~25_combout\ & \ps2_ACCLL|Mux24~29_combout\)))) # (!\ps2_ACCLL|shift_l~4_combout\ & (\ps2_ACCLL|Mux39~25_combout\ & 
-- ((\ps2_ACCLL|Mux24~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~4_combout\,
	datab => \ps2_ACCLL|Mux39~25_combout\,
	datac => \ps2_ACCLL|Mux39~27_combout\,
	datad => \ps2_ACCLL|Mux24~29_combout\,
	combout => \ps2_ACCLL|Mux39~28_combout\);

-- Location: LCCOMB_X19_Y21_N26
\ps2_ACCLL|Mux39~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~20_combout\);

-- Location: LCCOMB_X19_Y21_N20
\ps2_ACCLL|Mux39~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~21_combout\ = (\ps2_ACCLL|Mux39~20_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux39~20_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux39~21_combout\);

-- Location: LCCOMB_X22_Y20_N12
\ps2_ACCLL|Mux39~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~18_combout\);

-- Location: LCCOMB_X23_Y20_N2
\ps2_ACCLL|Mux39~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|Mux39~18_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|Mux39~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux39~18_combout\,
	combout => \ps2_ACCLL|Mux39~19_combout\);

-- Location: LCCOMB_X24_Y21_N10
\ps2_ACCLL|Mux39~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux24~29_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux39~19_combout\) # ((\ps2_ACCLL|Mux39~21_combout\ & \ps2_ACCLL|Mux24~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~21_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux39~19_combout\,
	datad => \ps2_ACCLL|Mux24~29_combout\,
	combout => \ps2_ACCLL|Mux39~22_combout\);

-- Location: LCCOMB_X19_Y21_N14
\ps2_ACCLL|Mux39~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux8~8_combout\ & ((\ps2_ACCLL|Equal1~0_combout\) # (\ps2_ACCLL|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal1~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|Mux8~8_combout\,
	combout => \ps2_ACCLL|Mux39~10_combout\);

-- Location: LCCOMB_X23_Y18_N16
\ps2_ACCLL|Mux39~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~9_combout\ = (\ps2_ACCLL|Mux17~4_combout\ & ((\ps2_ACCLL|Equal0~1_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux43~4_combout\,
	datad => \ps2_ACCLL|Mux17~4_combout\,
	combout => \ps2_ACCLL|Mux39~9_combout\);

-- Location: LCCOMB_X24_Y21_N26
\ps2_ACCLL|Mux39~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~11_combout\ = (\ps2_ACCLL|Mux24~29_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux39~10_combout\) # (\ps2_ACCLL|Mux39~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~10_combout\,
	datab => \ps2_ACCLL|Mux39~9_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux24~29_combout\,
	combout => \ps2_ACCLL|Mux39~11_combout\);

-- Location: LCCOMB_X24_Y21_N14
\ps2_ACCLL|Mux39~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~30_combout\ = (\ps2_ACCLL|Mux24~29_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux44~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~13_combout\,
	datad => \ps2_ACCLL|Mux24~29_combout\,
	combout => \ps2_ACCLL|Mux39~30_combout\);

-- Location: LCCOMB_X19_Y21_N4
\ps2_ACCLL|Mux39~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~12_combout\);

-- Location: LCCOMB_X24_Y21_N0
\ps2_ACCLL|Mux39~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~13_combout\ = (\ps2_ACCLL|Mux39~12_combout\) # (\ps2_ACCLL|Mux24~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux39~12_combout\,
	datad => \ps2_ACCLL|Mux24~29_combout\,
	combout => \ps2_ACCLL|Mux39~13_combout\);

-- Location: LCCOMB_X24_Y21_N4
\ps2_ACCLL|Mux39~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~31_combout\ = (\ps2_ACCLL|Mux15~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~29_combout\))))) # 
-- (!\ps2_ACCLL|Mux15~4_combout\ & (((\ps2_ACCLL|Mux24~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux24~29_combout\,
	combout => \ps2_ACCLL|Mux39~31_combout\);

-- Location: LCCOMB_X24_Y21_N18
\ps2_ACCLL|Mux39~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux42~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux39~14_combout\);

-- Location: LCCOMB_X24_Y21_N2
\ps2_ACCLL|Mux39~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux24~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux24~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux24~28_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux39~32_combout\);

-- Location: LCCOMB_X24_Y21_N24
\ps2_ACCLL|Mux39~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~15_combout\ = (\ps2_ACCLL|Mux39~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux39~14_combout\ & (((\ps2_ACCLL|Mux24~16_combout\) # (\ps2_ACCLL|Mux39~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux39~14_combout\,
	datac => \ps2_ACCLL|Mux24~16_combout\,
	datad => \ps2_ACCLL|Mux39~32_combout\,
	combout => \ps2_ACCLL|Mux39~15_combout\);

-- Location: LCCOMB_X24_Y21_N6
\ps2_ACCLL|Mux39~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux39~15_combout\ & ((\ps2_ACCLL|Mux39~31_combout\))) # (!\ps2_ACCLL|Mux39~15_combout\ & (\ps2_ACCLL|Mux39~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux39~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux39~13_combout\,
	datac => \ps2_ACCLL|Mux39~31_combout\,
	datad => \ps2_ACCLL|Mux39~15_combout\,
	combout => \ps2_ACCLL|Mux39~16_combout\);

-- Location: LCCOMB_X24_Y21_N28
\ps2_ACCLL|Mux39~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux39~30_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|process_0~1_combout\ & 
-- ((\ps2_ACCLL|Mux39~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux39~30_combout\,
	datad => \ps2_ACCLL|Mux39~16_combout\,
	combout => \ps2_ACCLL|Mux39~17_combout\);

-- Location: LCCOMB_X24_Y21_N12
\ps2_ACCLL|Mux39~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~23_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux39~17_combout\ & (\ps2_ACCLL|Mux39~22_combout\)) # (!\ps2_ACCLL|Mux39~17_combout\ & ((\ps2_ACCLL|Mux39~11_combout\))))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux39~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~22_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux39~11_combout\,
	datad => \ps2_ACCLL|Mux39~17_combout\,
	combout => \ps2_ACCLL|Mux39~23_combout\);

-- Location: LCCOMB_X24_Y21_N20
\ps2_ACCLL|Mux39~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux39~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux39~24_combout\) # ((\ps2_ACCLL|Mux39~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux39~28_combout\,
	datad => \ps2_ACCLL|Mux39~23_combout\,
	combout => \ps2_ACCLL|Mux39~29_combout\);

-- Location: LCCOMB_X24_Y21_N8
\ps2_ACCLL|ascii~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~45_combout\ = (!\ps2_ACCLL|ascii~35_combout\ & ((\ps2_ACCLL|control_l~q\) # ((\ps2_ACCLL|control_r~q\) # (!\ps2_ACCLL|Mux39~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datab => \ps2_ACCLL|control_r~q\,
	datac => \ps2_ACCLL|ascii~35_combout\,
	datad => \ps2_ACCLL|Mux39~29_combout\,
	combout => \ps2_ACCLL|ascii~45_combout\);

-- Location: FF_X24_Y21_N9
\ps2_ACCLL|ascii[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~45_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(5));

-- Location: LCCOMB_X29_Y21_N12
\ps2_ACCLL|ascii_code[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[5]~5_combout\ = !\ps2_ACCLL|ascii\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|ascii_code[5]~5_combout\);

-- Location: FF_X29_Y21_N13
\ps2_ACCLL|ascii_code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[5]~5_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(5));

-- Location: LCCOMB_X29_Y21_N18
\Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (\ps2_ACCLL|ascii_code\(4) & (\ps2_ACCLL|ascii_code\(3) & (\ps2_ACCLL|ascii_code\(0) & !\ps2_ACCLL|ascii_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(4),
	datab => \ps2_ACCLL|ascii_code\(3),
	datac => \ps2_ACCLL|ascii_code\(0),
	datad => \ps2_ACCLL|ascii_code\(5),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X29_Y21_N16
\Equal3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (!\ps2_ACCLL|ascii_code\(2) & (\ps2_ACCLL|ascii_code\(6) & (\ps2_ACCLL|ascii_code\(1) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(6),
	datac => \ps2_ACCLL|ascii_code\(1),
	datad => \Equal2~0_combout\,
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X29_Y21_N6
\Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (\ps2_ACCLL|ascii_code\(2) & (\ps2_ACCLL|ascii_code\(6) & (!\ps2_ACCLL|ascii_code\(1) & \Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(6),
	datac => \ps2_ACCLL|ascii_code\(1),
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X31_Y21_N12
\cr~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr~5_combout\ = cr(0) $ (cr(1) $ (\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(0),
	datab => cr(1),
	datad => \Equal2~1_combout\,
	combout => \cr~5_combout\);

-- Location: LCCOMB_X29_Y21_N28
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ps2_ACCLL|ascii_code\(2) & (!\ps2_ACCLL|ascii_code\(3) & (\ps2_ACCLL|ascii_code\(4) & \ps2_ACCLL|ascii_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(3),
	datac => \ps2_ACCLL|ascii_code\(4),
	datad => \ps2_ACCLL|ascii_code\(5),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X29_Y21_N30
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (!\ps2_ACCLL|ascii_code\(6) & (!\ps2_ACCLL|ascii_code\(1) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(6),
	datac => \ps2_ACCLL|ascii_code\(1),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X31_Y21_N10
\cr[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[2]~7_combout\ = (cr(0) & (cr(1) & \Equal2~1_combout\)) # (!cr(0) & (!cr(1) & !\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(0),
	datab => cr(1),
	datad => \Equal2~1_combout\,
	combout => \cr[2]~7_combout\);

-- Location: LCCOMB_X31_Y21_N28
\cr[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[2]~8_combout\ = cr(2) $ (((\cr[2]~7_combout\ & (!\Equal0~1_combout\ & !\cr[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr[2]~7_combout\,
	datab => \Equal0~1_combout\,
	datac => cr(2),
	datad => \cr[1]~4_combout\,
	combout => \cr[2]~8_combout\);

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

-- Location: FF_X31_Y21_N29
\cr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cr[2]~8_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cr(2));

-- Location: LCCOMB_X31_Y21_N24
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (cr(0) & (cr(1) & cr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cr(0),
	datac => cr(1),
	datad => cr(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y21_N16
\nowcolor[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nowcolor[0]~feeder_combout\ = \cg[1]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cg[1]~3_combout\,
	combout => \nowcolor[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y21_N20
\nowcolor[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nowcolor[0]~0_combout\ = (!\ps2_ACCLL|ascii_code\(1) & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii_code\(1),
	datad => \KEY[0]~input_o\,
	combout => \nowcolor[0]~0_combout\);

-- Location: LCCOMB_X29_Y21_N10
\nowcolor[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nowcolor[0]~1_combout\ = (!\ps2_ACCLL|ascii_code\(6) & (\Equal0~0_combout\ & (!\ps2_ACCLL|ascii_code\(0) & \nowcolor[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(6),
	datab => \Equal0~0_combout\,
	datac => \ps2_ACCLL|ascii_code\(0),
	datad => \nowcolor[0]~0_combout\,
	combout => \nowcolor[0]~1_combout\);

-- Location: FF_X32_Y21_N17
\nowcolor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \nowcolor[0]~feeder_combout\,
	ena => \nowcolor[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowcolor(0));

-- Location: LCCOMB_X32_Y21_N26
\Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!nowcolor(1) & nowcolor(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nowcolor(1),
	datad => nowcolor(0),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X32_Y21_N30
\nowcolor[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \nowcolor[1]~feeder_combout\ = \Equal5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal5~0_combout\,
	combout => \nowcolor[1]~feeder_combout\);

-- Location: FF_X32_Y21_N31
\nowcolor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \nowcolor[1]~feeder_combout\,
	ena => \nowcolor[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => nowcolor(1));

-- Location: LCCOMB_X32_Y21_N20
\cg[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[1]~3_combout\ = (!nowcolor(1) & !nowcolor(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nowcolor(1),
	datad => nowcolor(0),
	combout => \cg[1]~3_combout\);

-- Location: LCCOMB_X31_Y21_N20
\cr[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[3]~9_combout\ = (\Equal2~1_combout\ & (\LessThan0~0_combout\)) # (!\Equal2~1_combout\ & ((\LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~0_combout\,
	datac => \LessThan3~0_combout\,
	datad => \Equal2~1_combout\,
	combout => \cr[3]~9_combout\);

-- Location: LCCOMB_X31_Y21_N6
\cr[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[3]~10_combout\ = cr(3) $ (((!\Equal0~1_combout\ & (\cr[3]~9_combout\ & !\cr[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \cr[3]~9_combout\,
	datac => cr(3),
	datad => \cr[1]~4_combout\,
	combout => \cr[3]~10_combout\);

-- Location: FF_X31_Y21_N7
\cr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cr[3]~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cr(3));

-- Location: LCCOMB_X31_Y21_N16
\cr[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[1]~3_combout\ = (\Equal2~1_combout\ & (cr(3))) # (!\Equal2~1_combout\ & (((!cr(3) & \LessThan3~0_combout\)) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(3),
	datab => \LessThan3~0_combout\,
	datac => \Equal2~1_combout\,
	datad => \Equal3~3_combout\,
	combout => \cr[1]~3_combout\);

-- Location: LCCOMB_X31_Y21_N2
\cr[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[1]~4_combout\ = ((\cr[1]~3_combout\ & ((\LessThan0~0_combout\) # (!\Equal2~1_combout\)))) # (!\cg[1]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \LessThan0~0_combout\,
	datac => \cg[1]~3_combout\,
	datad => \cr[1]~3_combout\,
	combout => \cr[1]~4_combout\);

-- Location: LCCOMB_X31_Y21_N26
\cr[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[1]~6_combout\ = (\Equal0~1_combout\ & (((cr(1))))) # (!\Equal0~1_combout\ & ((\cr[1]~4_combout\ & ((cr(1)))) # (!\cr[1]~4_combout\ & (!\cr~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cr~5_combout\,
	datab => \Equal0~1_combout\,
	datac => cr(1),
	datad => \cr[1]~4_combout\,
	combout => \cr[1]~6_combout\);

-- Location: FF_X31_Y21_N27
\cr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cr[1]~6_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cr(1));

-- Location: LCCOMB_X31_Y21_N8
\LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!cr(0) & (!cr(1) & !cr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cr(0),
	datac => cr(1),
	datad => cr(2),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X31_Y21_N22
\cr~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr~1_combout\ = cr(0) $ ((((\LessThan3~0_combout\ & !cr(3))) # (!\cg[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(0),
	datab => \LessThan3~0_combout\,
	datac => \cg[1]~3_combout\,
	datad => cr(3),
	combout => \cr~1_combout\);

-- Location: LCCOMB_X31_Y21_N4
\cr[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr[0]~0_combout\ = (\Equal3~3_combout\ & ((!\cr~1_combout\))) # (!\Equal3~3_combout\ & (cr(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datac => cr(0),
	datad => \cr~1_combout\,
	combout => \cr[0]~0_combout\);

-- Location: LCCOMB_X31_Y21_N30
\cr~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cr~2_combout\ = cr(0) $ (((\cg[1]~3_combout\ & ((!\LessThan0~0_combout\) # (!cr(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(0),
	datab => cr(3),
	datac => \cg[1]~3_combout\,
	datad => \LessThan0~0_combout\,
	combout => \cr~2_combout\);

-- Location: FF_X31_Y21_N5
\cr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cr[0]~0_combout\,
	asdata => \cr~2_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \Equal2~1_combout\,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cr(0));

-- Location: LCCOMB_X19_Y28_N4
\clock_div1|CLK_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_div1|CLK_out~0_combout\ = !\clock_div1|CLK_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div1|CLK_out~q\,
	combout => \clock_div1|CLK_out~0_combout\);

-- Location: LCCOMB_X19_Y28_N0
\clock_div1|CLK_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_div1|CLK_out~feeder_combout\ = \clock_div1|CLK_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock_div1|CLK_out~0_combout\,
	combout => \clock_div1|CLK_out~feeder_combout\);

-- Location: FF_X19_Y28_N1
\clock_div1|CLK_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clock_div1|CLK_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clock_div1|CLK_out~q\);

-- Location: CLKCTRL_G13
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

-- Location: LCCOMB_X38_Y22_N4
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

-- Location: FF_X38_Y22_N5
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

-- Location: LCCOMB_X38_Y22_N6
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

-- Location: FF_X38_Y22_N7
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

-- Location: LCCOMB_X38_Y22_N8
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

-- Location: FF_X38_Y22_N9
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

-- Location: LCCOMB_X38_Y22_N10
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

-- Location: FF_X38_Y22_N11
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

-- Location: LCCOMB_X38_Y22_N12
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

-- Location: FF_X38_Y22_N13
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

-- Location: LCCOMB_X38_Y22_N14
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

-- Location: LCCOMB_X38_Y22_N30
\VGA_sync1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~1_combout\ = (\VGA_sync1|Add0~10_combout\ & !\VGA_sync1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_sync1|Add0~10_combout\,
	datad => \VGA_sync1|Equal0~2_combout\,
	combout => \VGA_sync1|h_count~1_combout\);

-- Location: FF_X38_Y22_N31
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

-- Location: LCCOMB_X38_Y22_N16
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

-- Location: FF_X38_Y22_N17
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

-- Location: LCCOMB_X38_Y22_N18
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

-- Location: FF_X38_Y22_N19
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

-- Location: LCCOMB_X38_Y22_N2
\VGA_sync1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~0_combout\ = (!\VGA_sync1|h_count\(6) & (!\VGA_sync1|h_count\(7) & (!\VGA_sync1|h_count\(5) & \VGA_sync1|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(6),
	datab => \VGA_sync1|h_count\(7),
	datac => \VGA_sync1|h_count\(5),
	datad => \VGA_sync1|h_count\(9),
	combout => \VGA_sync1|Equal0~0_combout\);

-- Location: LCCOMB_X38_Y22_N24
\VGA_sync1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~1_combout\ = (\VGA_sync1|h_count\(3) & (\VGA_sync1|h_count\(2) & (\VGA_sync1|h_count\(4) & \VGA_sync1|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(3),
	datab => \VGA_sync1|h_count\(2),
	datac => \VGA_sync1|h_count\(4),
	datad => \VGA_sync1|h_count\(8),
	combout => \VGA_sync1|Equal0~1_combout\);

-- Location: LCCOMB_X38_Y22_N26
\VGA_sync1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~2_combout\ = (\VGA_sync1|h_count\(0) & (\VGA_sync1|Equal0~0_combout\ & (\VGA_sync1|h_count\(1) & \VGA_sync1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(0),
	datab => \VGA_sync1|Equal0~0_combout\,
	datac => \VGA_sync1|h_count\(1),
	datad => \VGA_sync1|Equal0~1_combout\,
	combout => \VGA_sync1|Equal0~2_combout\);

-- Location: LCCOMB_X38_Y22_N20
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

-- Location: LCCOMB_X38_Y22_N28
\VGA_sync1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~0_combout\ = (!\VGA_sync1|Equal0~2_combout\ & \VGA_sync1|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_sync1|Equal0~2_combout\,
	datad => \VGA_sync1|Add0~16_combout\,
	combout => \VGA_sync1|h_count~0_combout\);

-- Location: FF_X38_Y22_N29
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

-- Location: LCCOMB_X38_Y22_N22
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

-- Location: LCCOMB_X38_Y22_N0
\VGA_sync1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~2_combout\ = (\VGA_sync1|Add0~18_combout\ & !\VGA_sync1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_sync1|Add0~18_combout\,
	datad => \VGA_sync1|Equal0~2_combout\,
	combout => \VGA_sync1|h_count~2_combout\);

-- Location: FF_X38_Y22_N1
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

-- Location: LCCOMB_X39_Y22_N10
\VGA_sync1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~10_combout\ = (\VGA_sync1|v_count\(5) & (!\VGA_sync1|Add1~9\)) # (!\VGA_sync1|v_count\(5) & ((\VGA_sync1|Add1~9\) # (GND)))
-- \VGA_sync1|Add1~11\ = CARRY((!\VGA_sync1|Add1~9\) # (!\VGA_sync1|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(5),
	datad => VCC,
	cin => \VGA_sync1|Add1~9\,
	combout => \VGA_sync1|Add1~10_combout\,
	cout => \VGA_sync1|Add1~11\);

-- Location: LCCOMB_X39_Y22_N12
\VGA_sync1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~12_combout\ = (\VGA_sync1|v_count\(6) & (\VGA_sync1|Add1~11\ $ (GND))) # (!\VGA_sync1|v_count\(6) & (!\VGA_sync1|Add1~11\ & VCC))
-- \VGA_sync1|Add1~13\ = CARRY((\VGA_sync1|v_count\(6) & !\VGA_sync1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(6),
	datad => VCC,
	cin => \VGA_sync1|Add1~11\,
	combout => \VGA_sync1|Add1~12_combout\,
	cout => \VGA_sync1|Add1~13\);

-- Location: FF_X39_Y22_N13
\VGA_sync1|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~12_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(6));

-- Location: LCCOMB_X39_Y22_N14
\VGA_sync1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~14_combout\ = (\VGA_sync1|v_count\(7) & (!\VGA_sync1|Add1~13\)) # (!\VGA_sync1|v_count\(7) & ((\VGA_sync1|Add1~13\) # (GND)))
-- \VGA_sync1|Add1~15\ = CARRY((!\VGA_sync1|Add1~13\) # (!\VGA_sync1|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(7),
	datad => VCC,
	cin => \VGA_sync1|Add1~13\,
	combout => \VGA_sync1|Add1~14_combout\,
	cout => \VGA_sync1|Add1~15\);

-- Location: FF_X39_Y22_N15
\VGA_sync1|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~14_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(7));

-- Location: LCCOMB_X39_Y22_N16
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

-- Location: FF_X39_Y22_N17
\VGA_sync1|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~16_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(8));

-- Location: LCCOMB_X39_Y22_N0
\VGA_sync1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~0_combout\ = \VGA_sync1|v_count\(0) $ (VCC)
-- \VGA_sync1|Add1~1\ = CARRY(\VGA_sync1|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(0),
	datad => VCC,
	combout => \VGA_sync1|Add1~0_combout\,
	cout => \VGA_sync1|Add1~1\);

-- Location: LCCOMB_X39_Y22_N30
\VGA_sync1|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~3_combout\ = (\VGA_sync1|Add1~0_combout\ & !\VGA_sync1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|Add1~0_combout\,
	datac => \VGA_sync1|Equal1~2_combout\,
	combout => \VGA_sync1|v_count~3_combout\);

-- Location: FF_X39_Y22_N31
\VGA_sync1|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~3_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(0));

-- Location: LCCOMB_X39_Y22_N2
\VGA_sync1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~2_combout\ = (\VGA_sync1|v_count\(1) & (!\VGA_sync1|Add1~1\)) # (!\VGA_sync1|v_count\(1) & ((\VGA_sync1|Add1~1\) # (GND)))
-- \VGA_sync1|Add1~3\ = CARRY((!\VGA_sync1|Add1~1\) # (!\VGA_sync1|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(1),
	datad => VCC,
	cin => \VGA_sync1|Add1~1\,
	combout => \VGA_sync1|Add1~2_combout\,
	cout => \VGA_sync1|Add1~3\);

-- Location: FF_X39_Y22_N3
\VGA_sync1|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~2_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(1));

-- Location: LCCOMB_X40_Y22_N10
\VGA_sync1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~0_combout\ = (!\VGA_sync1|v_count\(7) & (!\VGA_sync1|v_count\(0) & (!\VGA_sync1|v_count\(1) & !\VGA_sync1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \VGA_sync1|v_count\(0),
	datac => \VGA_sync1|v_count\(1),
	datad => \VGA_sync1|v_count\(6),
	combout => \VGA_sync1|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y22_N4
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

-- Location: LCCOMB_X39_Y22_N28
\VGA_sync1|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~2_combout\ = (!\VGA_sync1|Equal1~2_combout\ & \VGA_sync1|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_sync1|Equal1~2_combout\,
	datad => \VGA_sync1|Add1~4_combout\,
	combout => \VGA_sync1|v_count~2_combout\);

-- Location: FF_X39_Y22_N29
\VGA_sync1|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~2_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(2));

-- Location: LCCOMB_X39_Y22_N18
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

-- Location: LCCOMB_X39_Y22_N24
\VGA_sync1|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~0_combout\ = (!\VGA_sync1|Equal1~2_combout\ & \VGA_sync1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_sync1|Equal1~2_combout\,
	datad => \VGA_sync1|Add1~18_combout\,
	combout => \VGA_sync1|v_count~0_combout\);

-- Location: FF_X39_Y22_N25
\VGA_sync1|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~0_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(9));

-- Location: LCCOMB_X39_Y22_N20
\VGA_sync1|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~1_combout\ = (\VGA_sync1|v_count\(3) & (\VGA_sync1|v_count\(2) & (!\VGA_sync1|v_count\(4) & \VGA_sync1|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(3),
	datab => \VGA_sync1|v_count\(2),
	datac => \VGA_sync1|v_count\(4),
	datad => \VGA_sync1|v_count\(9),
	combout => \VGA_sync1|Equal1~1_combout\);

-- Location: LCCOMB_X39_Y22_N26
\VGA_sync1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~2_combout\ = (!\VGA_sync1|v_count\(5) & (!\VGA_sync1|v_count\(8) & (\VGA_sync1|Equal1~0_combout\ & \VGA_sync1|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(5),
	datab => \VGA_sync1|v_count\(8),
	datac => \VGA_sync1|Equal1~0_combout\,
	datad => \VGA_sync1|Equal1~1_combout\,
	combout => \VGA_sync1|Equal1~2_combout\);

-- Location: LCCOMB_X39_Y22_N6
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

-- Location: LCCOMB_X39_Y22_N22
\VGA_sync1|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~1_combout\ = (!\VGA_sync1|Equal1~2_combout\ & \VGA_sync1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_sync1|Equal1~2_combout\,
	datad => \VGA_sync1|Add1~6_combout\,
	combout => \VGA_sync1|v_count~1_combout\);

-- Location: FF_X39_Y22_N23
\VGA_sync1|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|v_count~1_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(3));

-- Location: LCCOMB_X39_Y22_N8
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

-- Location: FF_X39_Y22_N9
\VGA_sync1|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~8_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(4));

-- Location: FF_X39_Y22_N11
\VGA_sync1|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_div1|CLK_out~clkctrl_outclk\,
	d => \VGA_sync1|Add1~10_combout\,
	ena => \VGA_sync1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_sync1|v_count\(5));

-- Location: LCCOMB_X40_Y22_N0
\VGA_sync1|process_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~0_combout\ = (\VGA_sync1|v_count\(9) & (((\VGA_sync1|v_count\(8))))) # (!\VGA_sync1|v_count\(9) & (((!\VGA_sync1|v_count\(6))) # (!\VGA_sync1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \VGA_sync1|v_count\(9),
	datac => \VGA_sync1|v_count\(8),
	datad => \VGA_sync1|v_count\(6),
	combout => \VGA_sync1|process_4~0_combout\);

-- Location: LCCOMB_X40_Y22_N22
\VGA_sync1|process_4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~1_combout\ = (\VGA_sync1|v_count\(2) & (\VGA_sync1|v_count\(3) & ((\VGA_sync1|v_count\(0)) # (\VGA_sync1|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(2),
	datab => \VGA_sync1|v_count\(0),
	datac => \VGA_sync1|v_count\(1),
	datad => \VGA_sync1|v_count\(3),
	combout => \VGA_sync1|process_4~1_combout\);

-- Location: LCCOMB_X40_Y22_N12
\VGA_sync1|process_4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~2_combout\ = (\VGA_sync1|v_count\(7)) # ((\VGA_sync1|v_count\(4)) # ((\VGA_sync1|process_4~1_combout\) # (\VGA_sync1|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \VGA_sync1|v_count\(4),
	datac => \VGA_sync1|process_4~1_combout\,
	datad => \VGA_sync1|v_count\(6),
	combout => \VGA_sync1|process_4~2_combout\);

-- Location: LCCOMB_X40_Y22_N30
\VGA_sync1|process_4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~3_combout\ = (\VGA_sync1|process_4~0_combout\) # ((\VGA_sync1|v_count\(5) & (!\VGA_sync1|v_count\(8))) # (!\VGA_sync1|v_count\(5) & ((\VGA_sync1|process_4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(5),
	datab => \VGA_sync1|process_4~0_combout\,
	datac => \VGA_sync1|v_count\(8),
	datad => \VGA_sync1|process_4~2_combout\,
	combout => \VGA_sync1|process_4~3_combout\);

-- Location: LCCOMB_X37_Y21_N12
\VGA_sync1|video_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|video_on~0_combout\ = (\VGA_sync1|h_count\(7) & (((\VGA_sync1|h_count\(8))))) # (!\VGA_sync1|h_count\(7) & ((\VGA_sync1|h_count\(5)) # ((\VGA_sync1|h_count\(6)) # (!\VGA_sync1|h_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(5),
	datab => \VGA_sync1|h_count\(6),
	datac => \VGA_sync1|h_count\(7),
	datad => \VGA_sync1|h_count\(8),
	combout => \VGA_sync1|video_on~0_combout\);

-- Location: LCCOMB_X37_Y21_N2
\dot_display1|Rout[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Rout[0]~0_combout\ = (cr(0) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(0),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Rout[0]~0_combout\);

-- Location: LCCOMB_X37_Y21_N8
\dot_display1|Rout[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Rout[1]~1_combout\ = (cr(1) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(1),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Rout[1]~1_combout\);

-- Location: LCCOMB_X37_Y21_N10
\dot_display1|Rout[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Rout[2]~2_combout\ = (\VGA_sync1|process_4~3_combout\ & (cr(2) & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|video_on~0_combout\,
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => cr(2),
	combout => \dot_display1|Rout[2]~2_combout\);

-- Location: LCCOMB_X37_Y21_N4
\dot_display1|Rout[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Rout[3]~3_combout\ = (cr(3) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|video_on~0_combout\,
	datab => cr(3),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|h_count\(9),
	combout => \dot_display1|Rout[3]~3_combout\);

-- Location: LCCOMB_X29_Y21_N0
\Equal3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\ps2_ACCLL|ascii_code\(1) & !\ps2_ACCLL|ascii_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii_code\(1),
	datad => \ps2_ACCLL|ascii_code\(2),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X30_Y21_N28
\cg~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg~9_combout\ = cg(1) $ (cg(0) $ (\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(1),
	datac => cg(0),
	datad => \Equal2~1_combout\,
	combout => \cg~9_combout\);

-- Location: LCCOMB_X30_Y21_N14
\cg[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[2]~11_combout\ = (cg(1) & (cg(0) & !\Equal2~1_combout\)) # (!cg(1) & (!cg(0) & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(1),
	datac => cg(0),
	datad => \Equal2~1_combout\,
	combout => \cg[2]~11_combout\);

-- Location: LCCOMB_X30_Y21_N6
\cg[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[2]~12_combout\ = cg(2) $ (((!\Equal0~1_combout\ & (\cg[2]~11_combout\ & !\cg[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \cg[2]~11_combout\,
	datac => cg(2),
	datad => \cg[1]~8_combout\,
	combout => \cg[2]~12_combout\);

-- Location: FF_X30_Y21_N7
\cg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cg[2]~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cg(2));

-- Location: LCCOMB_X30_Y21_N12
\cg~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg~13_combout\ = (cg(3)) # ((!cg(0) & (!cg(1) & !cg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(0),
	datab => cg(1),
	datac => cg(2),
	datad => cg(3),
	combout => \cg~13_combout\);

-- Location: LCCOMB_X30_Y21_N8
\cg[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[3]~0_combout\ = (\Equal5~0_combout\ & (\cg~13_combout\)) # (!\Equal5~0_combout\ & ((cg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cg~13_combout\,
	datac => cg(3),
	datad => \Equal5~0_combout\,
	combout => \cg[3]~0_combout\);

-- Location: LCCOMB_X30_Y21_N30
\Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = cg(3) $ ((((!cg(2)) # (!cg(1))) # (!cg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(0),
	datab => cg(3),
	datac => cg(1),
	datad => cg(2),
	combout => \Add5~0_combout\);

-- Location: LCCOMB_X30_Y21_N4
\cg~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg~14_combout\ = (\cg[1]~5_combout\ & ((\Equal5~0_combout\ & (!\Add5~0_combout\)) # (!\Equal5~0_combout\ & ((cg(3)))))) # (!\cg[1]~5_combout\ & (((cg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => cg(3),
	datac => \cg[1]~5_combout\,
	datad => \Equal5~0_combout\,
	combout => \cg~14_combout\);

-- Location: FF_X30_Y21_N9
\cg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cg[3]~0_combout\,
	asdata => \cg~14_combout\,
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_Equal2~1_combout\,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cg(3));

-- Location: LCCOMB_X30_Y21_N0
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!cg(0) & (cg(3) & !cg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(0),
	datac => cg(3),
	datad => cg(2),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X30_Y21_N18
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (nowcolor(1)) # (((!cg(1) & \process_0~0_combout\)) # (!nowcolor(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowcolor(1),
	datab => cg(1),
	datac => nowcolor(0),
	datad => \process_0~0_combout\,
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X30_Y21_N2
\cg[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[1]~8_combout\ = (\Equal2~1_combout\ & (((\process_0~1_combout\)))) # (!\Equal2~1_combout\ & (((!\cg[1]~5_combout\)) # (!\Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \cg[1]~5_combout\,
	datad => \process_0~1_combout\,
	combout => \cg[1]~8_combout\);

-- Location: LCCOMB_X30_Y21_N16
\cg[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[1]~10_combout\ = (\Equal0~1_combout\ & (((cg(1))))) # (!\Equal0~1_combout\ & ((\cg[1]~8_combout\ & ((cg(1)))) # (!\cg[1]~8_combout\ & (\cg~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \cg~9_combout\,
	datac => cg(1),
	datad => \cg[1]~8_combout\,
	combout => \cg[1]~10_combout\);

-- Location: FF_X30_Y21_N17
\cg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cg[1]~10_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cg(1));

-- Location: LCCOMB_X30_Y21_N24
\cg[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[1]~4_combout\ = (cg(0) & (cg(1) & (!cg(3) & cg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(0),
	datab => cg(1),
	datac => cg(3),
	datad => cg(2),
	combout => \cg[1]~4_combout\);

-- Location: LCCOMB_X30_Y21_N26
\cg[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg[1]~5_combout\ = (\ps2_ACCLL|ascii_code\(6) & (\Equal2~0_combout\ & (\Equal3~2_combout\ & !\cg[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(6),
	datab => \Equal2~0_combout\,
	datac => \Equal3~2_combout\,
	datad => \cg[1]~4_combout\,
	combout => \cg[1]~5_combout\);

-- Location: LCCOMB_X30_Y21_N10
\cg~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg~15_combout\ = (nowcolor(0)) # ((nowcolor(1)) # ((cr(3) & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cr(3),
	datab => nowcolor(0),
	datac => nowcolor(1),
	datad => \LessThan0~0_combout\,
	combout => \cg~15_combout\);

-- Location: LCCOMB_X30_Y21_N20
\cg~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg~6_combout\ = (\Equal2~1_combout\ & (((!\process_0~1_combout\ & \cg~15_combout\)))) # (!\Equal2~1_combout\ & (\Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \process_0~1_combout\,
	datac => \Equal2~1_combout\,
	datad => \cg~15_combout\,
	combout => \cg~6_combout\);

-- Location: LCCOMB_X30_Y21_N22
\cg~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cg~7_combout\ = cg(0) $ (((\cg~6_combout\ & ((\cg[1]~5_combout\) # (\Equal2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cg[1]~5_combout\,
	datab => \Equal2~1_combout\,
	datac => cg(0),
	datad => \cg~6_combout\,
	combout => \cg~7_combout\);

-- Location: FF_X30_Y21_N23
\cg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cg~7_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cg(0));

-- Location: LCCOMB_X37_Y21_N30
\dot_display1|Gout[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Gout[0]~0_combout\ = (!cg(0) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|video_on~0_combout\,
	datab => cg(0),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|h_count\(9),
	combout => \dot_display1|Gout[0]~0_combout\);

-- Location: LCCOMB_X37_Y21_N24
\dot_display1|Gout[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Gout[1]~1_combout\ = (!cg(1) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(1),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Gout[1]~1_combout\);

-- Location: LCCOMB_X37_Y21_N26
\dot_display1|Gout[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Gout[2]~2_combout\ = (!cg(2) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|video_on~0_combout\,
	datab => cg(2),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|h_count\(9),
	combout => \dot_display1|Gout[2]~2_combout\);

-- Location: LCCOMB_X37_Y21_N0
\dot_display1|Gout[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Gout[3]~3_combout\ = (cg(3) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cg(3),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Gout[3]~3_combout\);

-- Location: LCCOMB_X33_Y21_N18
\cb~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb~11_combout\ = cb(1) $ (cb(0) $ (\Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(1),
	datac => cb(0),
	datad => \Equal2~1_combout\,
	combout => \cb~11_combout\);

-- Location: LCCOMB_X33_Y21_N14
\cb[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[3]~9_combout\ = (nowcolor(1) & (!nowcolor(0) & ((cb(3)) # (!\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(3),
	datab => nowcolor(1),
	datac => nowcolor(0),
	datad => \Add6~0_combout\,
	combout => \cb[3]~9_combout\);

-- Location: LCCOMB_X33_Y21_N12
\cb[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[2]~13_combout\ = (cb(1) & (cb(0) & !\Equal2~1_combout\)) # (!cb(1) & (!cb(0) & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(1),
	datac => cb(0),
	datad => \Equal2~1_combout\,
	combout => \cb[2]~13_combout\);

-- Location: LCCOMB_X33_Y21_N8
\cb[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[2]~14_combout\ = cb(2) $ (((\cb[2]~13_combout\ & (!\Equal0~1_combout\ & !\cb[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb[2]~13_combout\,
	datab => \Equal0~1_combout\,
	datac => cb(2),
	datad => \cb[1]~10_combout\,
	combout => \cb[2]~14_combout\);

-- Location: FF_X33_Y21_N9
\cb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cb[2]~14_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cb(2));

-- Location: LCCOMB_X33_Y21_N20
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (!cb(1) & (!cb(2) & !cb(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(1),
	datac => cb(2),
	datad => cb(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X33_Y21_N16
\cb[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[1]~17_combout\ = ((nowcolor(0)) # ((cb(3) & \LessThan2~0_combout\))) # (!nowcolor(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(3),
	datab => nowcolor(1),
	datac => nowcolor(0),
	datad => \LessThan2~0_combout\,
	combout => \cb[1]~17_combout\);

-- Location: LCCOMB_X33_Y21_N24
\cb[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[1]~10_combout\ = (\Equal2~1_combout\ & (((\cb[1]~17_combout\)))) # (!\Equal2~1_combout\ & (((!\cb[3]~9_combout\)) # (!\Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~3_combout\,
	datab => \Equal2~1_combout\,
	datac => \cb[3]~9_combout\,
	datad => \cb[1]~17_combout\,
	combout => \cb[1]~10_combout\);

-- Location: LCCOMB_X33_Y21_N6
\cb[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[1]~12_combout\ = (\Equal0~1_combout\ & (((cb(1))))) # (!\Equal0~1_combout\ & ((\cb[1]~10_combout\ & ((cb(1)))) # (!\cb[1]~10_combout\ & (\cb~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \cb~11_combout\,
	datac => cb(1),
	datad => \cb[1]~10_combout\,
	combout => \cb[1]~12_combout\);

-- Location: FF_X33_Y21_N7
\cb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cb[1]~12_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cb(1));

-- Location: LCCOMB_X33_Y21_N0
\Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (cb(1) & (cb(2) & cb(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(1),
	datac => cb(2),
	datad => cb(0),
	combout => \Add6~0_combout\);

-- Location: LCCOMB_X33_Y21_N22
\cb[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[3]~18_combout\ = (!nowcolor(0) & (nowcolor(1) & (\Add6~0_combout\ & \Equal3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowcolor(0),
	datab => nowcolor(1),
	datac => \Add6~0_combout\,
	datad => \Equal3~3_combout\,
	combout => \cb[3]~18_combout\);

-- Location: LCCOMB_X33_Y21_N10
\cb[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[3]~15_combout\ = (\Equal0~1_combout\ & (((!\Equal2~1_combout\)))) # (!\Equal0~1_combout\ & (\LessThan2~0_combout\ & (!\cb[1]~17_combout\ & \Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \cb[1]~17_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal2~1_combout\,
	combout => \cb[3]~15_combout\);

-- Location: LCCOMB_X33_Y21_N2
\cb[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb[3]~16_combout\ = (\Equal2~1_combout\ & ((cb(3) $ (\cb[3]~15_combout\)))) # (!\Equal2~1_combout\ & (cb(3) & ((\cb[3]~15_combout\) # (!\cb[3]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb[3]~18_combout\,
	datab => \Equal2~1_combout\,
	datac => cb(3),
	datad => \cb[3]~15_combout\,
	combout => \cb[3]~16_combout\);

-- Location: FF_X33_Y21_N3
\cb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cb[3]~16_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cb(3));

-- Location: LCCOMB_X33_Y21_N30
\cb~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb~4_combout\ = (\Equal2~1_combout\) # ((\Equal3~3_combout\ & ((cb(3)) # (!\Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(3),
	datab => \Add6~0_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal2~1_combout\,
	combout => \cb~4_combout\);

-- Location: LCCOMB_X32_Y21_N24
\cb~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb~5_combout\ = (!nowcolor(0) & (nowcolor(1) $ (!cb(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowcolor(0),
	datab => nowcolor(1),
	datad => cb(0),
	combout => \cb~5_combout\);

-- Location: LCCOMB_X33_Y21_N4
\cb~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb~6_combout\ = (cb(3) & (!cb(2) & !cb(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(3),
	datac => cb(2),
	datad => cb(1),
	combout => \cb~6_combout\);

-- Location: LCCOMB_X33_Y21_N26
\cb~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb~7_combout\ = (nowcolor(0)) # ((\Equal2~1_combout\ & (\cb~6_combout\)) # (!\Equal2~1_combout\ & ((!\Equal3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nowcolor(0),
	datab => \cb~6_combout\,
	datac => \Equal3~3_combout\,
	datad => \Equal2~1_combout\,
	combout => \cb~7_combout\);

-- Location: LCCOMB_X33_Y21_N28
\cb~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cb~8_combout\ = (\cb~4_combout\ & (!\cb~5_combout\ & ((cb(0)) # (!\cb~7_combout\)))) # (!\cb~4_combout\ & (((cb(0)) # (!\cb~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cb~4_combout\,
	datab => \cb~5_combout\,
	datac => cb(0),
	datad => \cb~7_combout\,
	combout => \cb~8_combout\);

-- Location: FF_X33_Y21_N29
\cb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \cb~8_combout\,
	clrn => \KEY[0]~input_o\,
	ena => \ALT_INV_Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cb(0));

-- Location: LCCOMB_X37_Y21_N6
\dot_display1|Bout[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Bout[0]~0_combout\ = (!cb(0) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(0),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Bout[0]~0_combout\);

-- Location: LCCOMB_X37_Y21_N28
\dot_display1|Bout[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Bout[1]~1_combout\ = (!cb(1) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(1),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Bout[1]~1_combout\);

-- Location: LCCOMB_X37_Y21_N18
\dot_display1|Bout[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Bout[2]~2_combout\ = (!cb(2) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(2),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Bout[2]~2_combout\);

-- Location: LCCOMB_X37_Y21_N20
\dot_display1|Bout[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Bout[3]~3_combout\ = (cb(3) & (\VGA_sync1|process_4~3_combout\ & ((\VGA_sync1|video_on~0_combout\) # (!\VGA_sync1|h_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cb(3),
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|process_4~3_combout\,
	datad => \VGA_sync1|video_on~0_combout\,
	combout => \dot_display1|Bout[3]~3_combout\);

-- Location: LCCOMB_X37_Y21_N22
\VGA_sync1|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~0_combout\ = ((\VGA_sync1|h_count\(8)) # (!\VGA_sync1|h_count\(7))) # (!\VGA_sync1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(9),
	datac => \VGA_sync1|h_count\(7),
	datad => \VGA_sync1|h_count\(8),
	combout => \VGA_sync1|process_2~0_combout\);

-- Location: LCCOMB_X38_Y21_N4
\VGA_sync1|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~1_combout\ = (\VGA_sync1|h_count\(4) & ((\VGA_sync1|h_count\(3)) # (\VGA_sync1|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(3),
	datac => \VGA_sync1|h_count\(2),
	datad => \VGA_sync1|h_count\(4),
	combout => \VGA_sync1|process_2~1_combout\);

-- Location: LCCOMB_X37_Y21_N16
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

-- Location: LCCOMB_X40_Y22_N16
\VGA_sync1|process_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~0_combout\ = ((\VGA_sync1|v_count\(0) $ (!\VGA_sync1|v_count\(1))) # (!\VGA_sync1|v_count\(6))) # (!\VGA_sync1|v_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \VGA_sync1|v_count\(0),
	datac => \VGA_sync1|v_count\(1),
	datad => \VGA_sync1|v_count\(6),
	combout => \VGA_sync1|process_3~0_combout\);

-- Location: LCCOMB_X40_Y22_N2
\VGA_sync1|process_3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~1_combout\ = (((\VGA_sync1|v_count\(4)) # (\VGA_sync1|v_count\(9))) # (!\VGA_sync1|v_count\(3))) # (!\VGA_sync1|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(2),
	datab => \VGA_sync1|v_count\(3),
	datac => \VGA_sync1|v_count\(4),
	datad => \VGA_sync1|v_count\(9),
	combout => \VGA_sync1|process_3~1_combout\);

-- Location: LCCOMB_X40_Y22_N28
\VGA_sync1|process_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~2_combout\ = ((\VGA_sync1|process_3~0_combout\) # ((\VGA_sync1|process_3~1_combout\) # (!\VGA_sync1|v_count\(8)))) # (!\VGA_sync1|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(5),
	datab => \VGA_sync1|process_3~0_combout\,
	datac => \VGA_sync1|v_count\(8),
	datad => \VGA_sync1|process_3~1_combout\,
	combout => \VGA_sync1|process_3~2_combout\);

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;
END structure;


