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

-- DATE "05/16/2024 16:42:49"

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

ENTITY 	Lab11_1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	PS2_KBDAT : IN std_logic;
	PS2_KBCLK : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 1);
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6)
	);
END Lab11_1;

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
-- HEX3[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBCLK	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab11_1 IS
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
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\ : std_logic;
SIGNAL \PS2_KBDAT~input_o\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]~feeder_combout\ : std_logic;
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
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[7]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[6]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[4]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[5]~24\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[6]~26\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[2]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|state~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.output~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|break~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.ready~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.new_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|Equal1~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.translate~q\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|e0_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[5]~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[0]~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[0]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[1]~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~45_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[2]~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~43_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~46_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~47_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~44_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[6]~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[6]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~42_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[3]~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[5]~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~41_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[4]~2_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \LEDG[0]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \LEDG[1]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \LEDG[2]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \LEDG[3]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \LEDG[4]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \LEDG[5]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \LEDG[6]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \LEDG[7]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \LEDG[8]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \LEDG[9]~reg0_q\ : std_logic;
SIGNAL \number1[1]~feeder_combout\ : std_logic;
SIGNAL \number1[0]~feeder_combout\ : std_logic;
SIGNAL \number0[4]~feeder_combout\ : std_logic;
SIGNAL \number1[2]~feeder_combout\ : std_logic;
SIGNAL \dig1|Mux6~0_combout\ : std_logic;
SIGNAL \dig1|Mux5~0_combout\ : std_logic;
SIGNAL \dig1|Mux4~0_combout\ : std_logic;
SIGNAL \dig1|Mux3~0_combout\ : std_logic;
SIGNAL \dig1|Mux2~0_combout\ : std_logic;
SIGNAL \dig1|Mux1~0_combout\ : std_logic;
SIGNAL \dig1|Mux0~0_combout\ : std_logic;
SIGNAL \number0[2]~feeder_combout\ : std_logic;
SIGNAL \number0[0]~feeder_combout\ : std_logic;
SIGNAL \dig0|Mux6~0_combout\ : std_logic;
SIGNAL \dig0|Mux6~1_combout\ : std_logic;
SIGNAL \dig0|Mux5~0_combout\ : std_logic;
SIGNAL \dig0|Mux5~1_combout\ : std_logic;
SIGNAL \dig0|Mux4~0_combout\ : std_logic;
SIGNAL \dig0|Mux4~1_combout\ : std_logic;
SIGNAL \dig0|Mux3~0_combout\ : std_logic;
SIGNAL \dig0|Mux3~1_combout\ : std_logic;
SIGNAL \dig0|Mux2~0_combout\ : std_logic;
SIGNAL \dig0|Mux2~1_combout\ : std_logic;
SIGNAL \dig0|Mux1~0_combout\ : std_logic;
SIGNAL \dig0|Mux1~1_combout\ : std_logic;
SIGNAL \dig0|Mux0~0_combout\ : std_logic;
SIGNAL \dig0|Mux0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|sync_ffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL number0 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL number1 : std_logic_vector(4 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \dig1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_PS2_KBDAT <= PS2_KBDAT;
ww_PS2_KBCLK <= PS2_KBCLK;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\);

\ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ascii_new~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\dig1|ALT_INV_Mux6~0_combout\ <= NOT \dig1|Mux6~0_combout\;
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\;
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\;

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDG[0]~reg0_q\,
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
	i => \LEDG[1]~reg0_q\,
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
	i => \LEDG[2]~reg0_q\,
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
	i => \LEDG[3]~reg0_q\,
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
	i => \LEDG[4]~reg0_q\,
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
	i => \LEDG[5]~reg0_q\,
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
	i => \LEDG[6]~reg0_q\,
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
	i => \LEDG[7]~reg0_q\,
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
	i => \LEDG[8]~reg0_q\,
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

-- Location: IOOBUF_X39_Y29_N30
\HEX3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig1|ALT_INV_Mux6~0_combout\,
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
	i => \dig1|Mux5~0_combout\,
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
	i => \dig1|Mux4~0_combout\,
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
	i => \dig1|Mux3~0_combout\,
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
	i => \dig1|Mux2~0_combout\,
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
	i => \dig1|Mux1~0_combout\,
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
	i => \dig1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\HEX2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dig0|Mux6~1_combout\,
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
	i => \dig0|Mux5~1_combout\,
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
	i => \dig0|Mux4~1_combout\,
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
	i => \dig0|Mux3~1_combout\,
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
	i => \dig0|Mux2~1_combout\,
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
	i => \dig0|Mux1~1_combout\,
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
	i => \dig0|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

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

-- Location: FF_X19_Y24_N23
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

-- Location: LCCOMB_X19_Y24_N30
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder_combout\);

-- Location: FF_X19_Y24_N31
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

-- Location: LCCOMB_X19_Y24_N16
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

-- Location: FF_X19_Y24_N17
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

-- Location: LCCOMB_X19_Y24_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\);

-- Location: LCCOMB_X19_Y24_N22
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\);

-- Location: LCCOMB_X20_Y24_N12
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

-- Location: LCCOMB_X20_Y24_N10
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ 
-- & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\);

-- Location: FF_X20_Y24_N11
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0));

-- Location: LCCOMB_X20_Y24_N14
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~1\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\);

-- Location: LCCOMB_X19_Y24_N6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[1]~8_combout\);

-- Location: FF_X19_Y24_N7
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

-- Location: LCCOMB_X20_Y24_N16
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

-- Location: LCCOMB_X20_Y24_N6
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

-- Location: FF_X20_Y24_N7
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

-- Location: LCCOMB_X20_Y24_N18
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\);

-- Location: LCCOMB_X20_Y24_N0
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

-- Location: FF_X20_Y24_N1
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

-- Location: LCCOMB_X20_Y24_N20
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

-- Location: LCCOMB_X19_Y24_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ 
-- & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\);

-- Location: FF_X19_Y24_N21
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

-- Location: LCCOMB_X20_Y24_N22
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

-- Location: LCCOMB_X20_Y24_N2
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ 
-- & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\);

-- Location: FF_X20_Y24_N3
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

-- Location: LCCOMB_X20_Y24_N24
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

-- Location: LCCOMB_X20_Y24_N8
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

-- Location: FF_X20_Y24_N9
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

-- Location: LCCOMB_X20_Y24_N26
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

-- Location: LCCOMB_X20_Y24_N30
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ 
-- & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\);

-- Location: FF_X20_Y24_N31
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

-- Location: LCCOMB_X20_Y24_N28
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

-- Location: LCCOMB_X20_Y24_N4
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

-- Location: FF_X20_Y24_N5
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

-- Location: LCCOMB_X19_Y24_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\);

-- Location: LCCOMB_X19_Y27_N24
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

-- Location: FF_X19_Y27_N25
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

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X23_Y21_N0
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

-- Location: FF_X23_Y21_N1
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

-- Location: FF_X23_Y22_N21
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0));

-- Location: LCCOMB_X22_Y22_N18
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

-- Location: FF_X22_Y22_N19
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

-- Location: LCCOMB_X22_Y22_N14
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\);

-- Location: LCCOMB_X22_Y22_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\);

-- Location: LCCOMB_X23_Y22_N6
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

-- Location: LCCOMB_X23_Y22_N26
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

-- Location: FF_X23_Y22_N27
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

-- Location: LCCOMB_X23_Y22_N8
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

-- Location: LCCOMB_X22_Y22_N6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\);

-- Location: FF_X22_Y22_N7
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

-- Location: LCCOMB_X23_Y22_N10
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

-- Location: LCCOMB_X23_Y22_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[2]~7_combout\);

-- Location: FF_X23_Y22_N29
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

-- Location: LCCOMB_X23_Y22_N12
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

-- Location: LCCOMB_X23_Y22_N2
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

-- Location: FF_X23_Y22_N3
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

-- Location: LCCOMB_X23_Y22_N14
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~7\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~9\);

-- Location: LCCOMB_X23_Y22_N4
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\);

-- Location: FF_X23_Y22_N5
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

-- Location: LCCOMB_X23_Y22_N16
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

-- Location: LCCOMB_X23_Y22_N24
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

-- Location: FF_X23_Y22_N25
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

-- Location: LCCOMB_X23_Y22_N18
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(6),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~11\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~12_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\);

-- Location: LCCOMB_X23_Y22_N30
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

-- Location: FF_X23_Y22_N31
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

-- Location: LCCOMB_X23_Y22_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~15\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(7),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~13\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~14_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~15\);

-- Location: LCCOMB_X23_Y22_N0
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

-- Location: FF_X23_Y22_N1
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

-- Location: LCCOMB_X23_Y22_N22
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

-- Location: LCCOMB_X22_Y22_N12
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

-- Location: FF_X22_Y22_N13
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

-- Location: LCCOMB_X22_Y22_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\) # ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) & 
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\);

-- Location: FF_X22_Y22_N29
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

-- Location: LCCOMB_X21_Y20_N4
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

-- Location: FF_X21_Y20_N5
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

-- Location: FF_X21_Y20_N27
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

-- Location: FF_X21_Y20_N13
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

-- Location: LCCOMB_X21_Y20_N18
\ps2_ACCLL|ps2_keyboard_0|ps2_word[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[7]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[7]~feeder_combout\);

-- Location: FF_X21_Y20_N19
\ps2_ACCLL|ps2_keyboard_0|ps2_word[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7));

-- Location: LCCOMB_X21_Y20_N22
\ps2_ACCLL|ps2_keyboard_0|ps2_word[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[6]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[6]~feeder_combout\);

-- Location: FF_X21_Y20_N23
\ps2_ACCLL|ps2_keyboard_0|ps2_word[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6));

-- Location: LCCOMB_X21_Y20_N20
\ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder_combout\);

-- Location: FF_X21_Y20_N21
\ps2_ACCLL|ps2_keyboard_0|ps2_word[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5));

-- Location: LCCOMB_X21_Y20_N10
\ps2_ACCLL|ps2_keyboard_0|ps2_word[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[4]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[4]~feeder_combout\);

-- Location: FF_X21_Y20_N11
\ps2_ACCLL|ps2_keyboard_0|ps2_word[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4));

-- Location: LCCOMB_X21_Y20_N6
\ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder_combout\);

-- Location: FF_X21_Y20_N7
\ps2_ACCLL|ps2_keyboard_0|ps2_word[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3));

-- Location: LCCOMB_X17_Y24_N6
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

-- Location: LCCOMB_X17_Y24_N4
\ps2_ACCLL|ps2_keyboard_0|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(3) & (\ps2_ACCLL|ps2_keyboard_0|count_idle\(0) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(1) & !\ps2_ACCLL|ps2_keyboard_0|count_idle\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2),
	combout => \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y24_N2
\ps2_ACCLL|ps2_keyboard_0|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(5) & (\ps2_ACCLL|ps2_keyboard_0|count_idle\(6) & (\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & \ps2_ACCLL|ps2_keyboard_0|count_idle\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|count_idle\(7),
	combout => \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y24_N30
\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\ = (((!\ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\);

-- Location: FF_X17_Y24_N7
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(0));

-- Location: LCCOMB_X17_Y24_N8
\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(1) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\)) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(1) & ((\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~13\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~15_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\);

-- Location: FF_X17_Y24_N9
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1));

-- Location: LCCOMB_X17_Y24_N10
\ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(2) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(2) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(2) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[1]~16\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~17_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[2]~18\);

-- Location: FF_X17_Y24_N11
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2));

-- Location: LCCOMB_X17_Y24_N12
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

-- Location: FF_X17_Y24_N13
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(3));

-- Location: LCCOMB_X17_Y24_N14
\ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(4) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[3]~20\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~21_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~22\);

-- Location: FF_X17_Y24_N15
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4));

-- Location: LCCOMB_X17_Y24_N16
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

-- Location: FF_X17_Y24_N17
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(5));

-- Location: LCCOMB_X17_Y24_N18
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

-- Location: FF_X17_Y24_N19
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(6));

-- Location: LCCOMB_X17_Y24_N20
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

-- Location: FF_X17_Y24_N21
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(7));

-- Location: LCCOMB_X17_Y24_N22
\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(8) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(8) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(8) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\);

-- Location: FF_X17_Y24_N23
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8));

-- Location: LCCOMB_X17_Y24_N24
\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(9) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\)) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(9) & ((\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\);

-- Location: FF_X17_Y24_N25
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9));

-- Location: LCCOMB_X17_Y24_N26
\ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & (\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ & 
-- VCC))
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & !\ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\);

-- Location: FF_X17_Y24_N27
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10));

-- Location: LCCOMB_X17_Y24_N28
\ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\ = \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\ $ (\ps2_ACCLL|ps2_keyboard_0|count_idle\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11),
	cin => \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\);

-- Location: FF_X17_Y24_N29
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11));

-- Location: LCCOMB_X17_Y24_N0
\ps2_ACCLL|ps2_keyboard_0|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(10) & (\ps2_ACCLL|ps2_keyboard_0|count_idle\(9) & (!\ps2_ACCLL|ps2_keyboard_0|count_idle\(8) & \ps2_ACCLL|ps2_keyboard_0|count_idle\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10),
	datab => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9),
	datac => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11),
	combout => \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y20_N24
\ps2_ACCLL|ps2_keyboard_0|error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\);

-- Location: LCCOMB_X21_Y20_N14
\ps2_ACCLL|ps2_keyboard_0|ps2_word[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[2]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[2]~feeder_combout\);

-- Location: FF_X21_Y20_N15
\ps2_ACCLL|ps2_keyboard_0|ps2_word[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2));

-- Location: FF_X21_Y20_N9
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

-- Location: FF_X21_Y20_N31
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

-- Location: LCCOMB_X21_Y20_N30
\ps2_ACCLL|ps2_keyboard_0|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_word\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_word\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(10),
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\);

-- Location: LCCOMB_X21_Y20_N0
\ps2_ACCLL|ps2_keyboard_0|error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\);

-- Location: LCCOMB_X21_Y20_N28
\ps2_ACCLL|ps2_keyboard_0|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(9) $ (\ps2_ACCLL|ps2_keyboard_0|error~1_combout\ $ (\ps2_ACCLL|ps2_keyboard_0|error~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(9),
	datab => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\);

-- Location: LCCOMB_X21_Y20_N16
\ps2_ACCLL|ps2_keyboard_0|process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\);

-- Location: FF_X20_Y20_N23
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

-- Location: FF_X19_Y20_N15
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

-- Location: LCCOMB_X21_Y18_N10
\ps2_ACCLL|Mux41~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~5_combout\);

-- Location: FF_X20_Y20_N25
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

-- Location: FF_X19_Y20_N21
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

-- Location: LCCOMB_X21_Y18_N14
\ps2_ACCLL|Mux13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~6_combout\);

-- Location: FF_X20_Y20_N29
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

-- Location: FF_X20_Y20_N15
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

-- Location: LCCOMB_X21_Y18_N12
\ps2_ACCLL|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~1_combout\ = (\ps2_ACCLL|Mux41~5_combout\ & (\ps2_ACCLL|Mux13~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~5_combout\,
	datab => \ps2_ACCLL|Mux13~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Equal0~1_combout\);

-- Location: FF_X17_Y20_N21
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

-- Location: FF_X20_Y20_N13
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

-- Location: LCCOMB_X17_Y20_N22
\ps2_ACCLL|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Equal0~0_combout\);

-- Location: FF_X21_Y20_N17
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

-- Location: LCCOMB_X17_Y17_N22
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

-- Location: FF_X17_Y17_N23
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

-- Location: LCCOMB_X17_Y17_N16
\ps2_ACCLL|state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|state~6_combout\ = (\ps2_ACCLL|state.translate~q\ & !\ps2_ACCLL|break~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|state.translate~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|state~6_combout\);

-- Location: FF_X17_Y17_N17
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

-- Location: LCCOMB_X17_Y17_N30
\ps2_ACCLL|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~0_combout\ = (\ps2_ACCLL|break~q\ & (((\ps2_ACCLL|state.new_code~q\) # (\ps2_ACCLL|state.output~q\)) # (!\ps2_ACCLL|state.ready~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.ready~q\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|state.output~q\,
	combout => \ps2_ACCLL|Selector2~0_combout\);

-- Location: LCCOMB_X17_Y17_N0
\ps2_ACCLL|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~1_combout\ = (\ps2_ACCLL|Selector2~0_combout\) # ((\ps2_ACCLL|Equal0~1_combout\ & (\ps2_ACCLL|Equal0~0_combout\ & \ps2_ACCLL|state.new_code~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~1_combout\,
	datab => \ps2_ACCLL|Equal0~0_combout\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|Selector2~0_combout\,
	combout => \ps2_ACCLL|Selector2~1_combout\);

-- Location: FF_X17_Y17_N1
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

-- Location: LCCOMB_X17_Y17_N8
\ps2_ACCLL|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~2_combout\ = (\ps2_ACCLL|Selector1~0_combout\) # ((\ps2_ACCLL|Selector1~1_combout\) # ((\ps2_ACCLL|state.translate~q\ & !\ps2_ACCLL|break~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|Selector1~0_combout\,
	datac => \ps2_ACCLL|Selector1~1_combout\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|Selector1~2_combout\);

-- Location: FF_X17_Y17_N9
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

-- Location: LCCOMB_X17_Y17_N12
\ps2_ACCLL|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ & (\ps2_ACCLL|prev_ps2_code_new~q\ & !\ps2_ACCLL|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\,
	datac => \ps2_ACCLL|prev_ps2_code_new~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector1~0_combout\);

-- Location: FF_X17_Y17_N31
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

-- Location: LCCOMB_X17_Y18_N6
\ps2_ACCLL|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal1~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y17_N4
\ps2_ACCLL|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~1_combout\ = (\ps2_ACCLL|state.new_code~q\ & ((\ps2_ACCLL|Equal0~0_combout\ $ (!\ps2_ACCLL|Equal1~0_combout\)) # (!\ps2_ACCLL|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~1_combout\,
	datab => \ps2_ACCLL|Equal0~0_combout\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|Equal1~0_combout\,
	combout => \ps2_ACCLL|Selector1~1_combout\);

-- Location: FF_X17_Y17_N21
\ps2_ACCLL|state.translate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|Selector1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.translate~q\);

-- Location: LCCOMB_X21_Y20_N2
\ps2_ACCLL|Mux38~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux38~6_combout\);

-- Location: LCCOMB_X17_Y18_N8
\ps2_ACCLL|control_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|control_l~0_combout\);

-- Location: LCCOMB_X17_Y17_N10
\ps2_ACCLL|control_l~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~1_combout\ = (\ps2_ACCLL|Equal0~0_combout\ & (\ps2_ACCLL|state.translate~q\ & (\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|control_l~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~0_combout\,
	datab => \ps2_ACCLL|state.translate~q\,
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|control_l~0_combout\,
	combout => \ps2_ACCLL|control_l~1_combout\);

-- Location: LCCOMB_X17_Y16_N6
\ps2_ACCLL|Selector3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~4_combout\ = (\ps2_ACCLL|state.new_code~q\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Equal0~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.new_code~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Equal0~1_combout\,
	combout => \ps2_ACCLL|Selector3~4_combout\);

-- Location: LCCOMB_X17_Y17_N14
\ps2_ACCLL|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~2_combout\ = (\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|state.output~q\) # ((\ps2_ACCLL|state.new_code~q\) # (!\ps2_ACCLL|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|state.output~q\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector3~2_combout\);

-- Location: LCCOMB_X19_Y16_N24
\ps2_ACCLL|Selector3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~3_combout\ = (\ps2_ACCLL|Selector3~2_combout\) # ((\ps2_ACCLL|Selector3~4_combout\ & (\ps2_ACCLL|Equal0~1_combout\ & \ps2_ACCLL|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector3~4_combout\,
	datab => \ps2_ACCLL|Selector3~2_combout\,
	datac => \ps2_ACCLL|Equal0~1_combout\,
	datad => \ps2_ACCLL|Equal1~0_combout\,
	combout => \ps2_ACCLL|Selector3~3_combout\);

-- Location: FF_X19_Y16_N25
\ps2_ACCLL|e0_code\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|e0_code~q\);

-- Location: LCCOMB_X17_Y17_N6
\ps2_ACCLL|control_l~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~2_combout\ = (\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|control_l~q\)) # (!\ps2_ACCLL|e0_code~q\ & ((!\ps2_ACCLL|break~q\))))) # (!\ps2_ACCLL|control_l~1_combout\ & (((\ps2_ACCLL|control_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~1_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|control_l~2_combout\);

-- Location: FF_X17_Y17_N7
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

-- Location: LCCOMB_X17_Y17_N28
\ps2_ACCLL|control_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_r~0_combout\ = (\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|e0_code~q\ & ((!\ps2_ACCLL|break~q\))) # (!\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|control_r~q\)))) # (!\ps2_ACCLL|control_l~1_combout\ & (((\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~1_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|control_r~0_combout\);

-- Location: FF_X17_Y17_N29
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

-- Location: LCCOMB_X15_Y16_N26
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

-- Location: LCCOMB_X15_Y16_N16
\ps2_ACCLL|Selector4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~8_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|process_0~0_combout\)))) # (!\ps2_ACCLL|state.translate~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|state.translate~q\,
	combout => \ps2_ACCLL|Selector4~8_combout\);

-- Location: LCCOMB_X16_Y17_N24
\ps2_ACCLL|Selector4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Selector4~9_combout\);

-- Location: LCCOMB_X16_Y17_N26
\ps2_ACCLL|Selector4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Selector4~10_combout\);

-- Location: LCCOMB_X16_Y17_N28
\ps2_ACCLL|Selector4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~11_combout\ = (\ps2_ACCLL|Selector4~9_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Selector4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Selector4~9_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Selector4~10_combout\,
	combout => \ps2_ACCLL|Selector4~11_combout\);

-- Location: LCCOMB_X15_Y16_N10
\ps2_ACCLL|Selector4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~12_combout\ = (\ps2_ACCLL|Selector4~8_combout\) # ((\ps2_ACCLL|process_0~0_combout\ & (\ps2_ACCLL|Selector4~11_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|Selector4~8_combout\,
	datac => \ps2_ACCLL|Selector4~11_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Selector4~12_combout\);

-- Location: LCCOMB_X15_Y16_N8
\ps2_ACCLL|Selector4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~16_combout\ = (!\ps2_ACCLL|state.translate~q\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Equal0~1_combout\,
	combout => \ps2_ACCLL|Selector4~16_combout\);

-- Location: LCCOMB_X15_Y16_N28
\ps2_ACCLL|Selector4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~13_combout\ = (\ps2_ACCLL|Selector4~12_combout\ & (((\ps2_ACCLL|Selector4~16_combout\ & \ps2_ACCLL|Selector3~4_combout\)) # (!\ps2_ACCLL|ascii\(7)))) # (!\ps2_ACCLL|Selector4~12_combout\ & (((\ps2_ACCLL|Selector4~16_combout\ & 
-- \ps2_ACCLL|Selector3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector4~12_combout\,
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|Selector4~16_combout\,
	datad => \ps2_ACCLL|Selector3~4_combout\,
	combout => \ps2_ACCLL|Selector4~13_combout\);

-- Location: LCCOMB_X21_Y18_N4
\ps2_ACCLL|Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux5~15_combout\);

-- Location: LCCOMB_X21_Y18_N26
\ps2_ACCLL|Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~16_combout\ = (\ps2_ACCLL|Mux5~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux5~15_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux5~16_combout\);

-- Location: LCCOMB_X21_Y18_N22
\ps2_ACCLL|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~6_combout\ = (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux5~6_combout\);

-- Location: LCCOMB_X21_Y18_N18
\ps2_ACCLL|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux5~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux5~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux5~4_combout\);

-- Location: LCCOMB_X21_Y18_N8
\ps2_ACCLL|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux5~16_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux5~16_combout\,
	datad => \ps2_ACCLL|Mux5~4_combout\,
	combout => \ps2_ACCLL|Mux5~3_combout\);

-- Location: LCCOMB_X15_Y16_N6
\ps2_ACCLL|Mux5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~14_combout\ = (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|Mux5~3_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux5~3_combout\,
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux5~14_combout\);

-- Location: LCCOMB_X15_Y16_N30
\ps2_ACCLL|Selector4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~17_combout\ = (\ps2_ACCLL|Mux5~14_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|control_l~q\) # (\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux5~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|control_r~q\,
	combout => \ps2_ACCLL|Selector4~17_combout\);

-- Location: LCCOMB_X16_Y20_N0
\ps2_ACCLL|Mux24~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux24~8_combout\);

-- Location: LCCOMB_X15_Y20_N30
\ps2_ACCLL|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
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
	combout => \ps2_ACCLL|Mux22~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\ps2_ACCLL|Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux24~8_combout\) # (!\ps2_ACCLL|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux24~8_combout\,
	datad => \ps2_ACCLL|Mux22~0_combout\,
	combout => \ps2_ACCLL|Mux22~1_combout\);

-- Location: LCCOMB_X15_Y20_N20
\ps2_ACCLL|Mux22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~4_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux22~4_combout\);

-- Location: LCCOMB_X16_Y20_N20
\ps2_ACCLL|Mux22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux22~5_combout\);

-- Location: LCCOMB_X16_Y20_N26
\ps2_ACCLL|Mux22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux22~5_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux22~4_combout\)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux22~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux22~5_combout\,
	combout => \ps2_ACCLL|Mux22~6_combout\);

-- Location: LCCOMB_X16_Y20_N6
\ps2_ACCLL|Mux22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux22~3_combout\);

-- Location: LCCOMB_X16_Y20_N28
\ps2_ACCLL|Mux22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~7_combout\ = (\ps2_ACCLL|ascii\(7)) # ((\ps2_ACCLL|Mux22~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|Mux22~6_combout\,
	datad => \ps2_ACCLL|Mux22~3_combout\,
	combout => \ps2_ACCLL|Mux22~7_combout\);

-- Location: LCCOMB_X22_Y20_N16
\ps2_ACCLL|Mux13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux13~9_combout\);

-- Location: LCCOMB_X22_Y20_N22
\ps2_ACCLL|Mux13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|Mux13~9_combout\) # (!\ps2_ACCLL|e0_code~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|Mux13~9_combout\,
	combout => \ps2_ACCLL|Mux13~10_combout\);

-- Location: LCCOMB_X19_Y20_N6
\ps2_ACCLL|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux17~8_combout\);

-- Location: LCCOMB_X19_Y20_N16
\ps2_ACCLL|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux16~1_combout\);

-- Location: LCCOMB_X22_Y20_N30
\ps2_ACCLL|Mux13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|Mux16~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|Mux17~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux17~8_combout\,
	datac => \ps2_ACCLL|Mux16~1_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux13~8_combout\);

-- Location: LCCOMB_X22_Y20_N0
\ps2_ACCLL|Mux13~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux13~11_combout\);

-- Location: LCCOMB_X22_Y20_N12
\ps2_ACCLL|Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~2_combout\ = (\ps2_ACCLL|Mux13~10_combout\) # ((\ps2_ACCLL|Mux13~8_combout\) # (\ps2_ACCLL|Mux13~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~10_combout\,
	datac => \ps2_ACCLL|Mux13~8_combout\,
	datad => \ps2_ACCLL|Mux13~11_combout\,
	combout => \ps2_ACCLL|Mux22~2_combout\);

-- Location: LCCOMB_X19_Y20_N18
\ps2_ACCLL|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux14~0_combout\);

-- Location: LCCOMB_X17_Y21_N4
\ps2_ACCLL|Mux13~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux13~13_combout\);

-- Location: LCCOMB_X19_Y18_N8
\ps2_ACCLL|Mux19~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux19~2_combout\);

-- Location: LCCOMB_X20_Y21_N16
\ps2_ACCLL|Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux19~2_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~3_combout\);

-- Location: LCCOMB_X17_Y21_N14
\ps2_ACCLL|Mux13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~14_combout\ = (\ps2_ACCLL|Mux13~13_combout\) # ((!\ps2_ACCLL|Mux19~3_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux14~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux13~13_combout\,
	datad => \ps2_ACCLL|Mux19~3_combout\,
	combout => \ps2_ACCLL|Mux13~14_combout\);

-- Location: LCCOMB_X16_Y20_N14
\ps2_ACCLL|Mux22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~8_combout\ = (!\ps2_ACCLL|Mux22~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux22~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux22~7_combout\,
	datac => \ps2_ACCLL|Mux22~2_combout\,
	datad => \ps2_ACCLL|Mux13~14_combout\,
	combout => \ps2_ACCLL|Mux22~8_combout\);

-- Location: LCCOMB_X22_Y20_N14
\ps2_ACCLL|Mux13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~10_combout\) # ((\ps2_ACCLL|Mux13~8_combout\) # (\ps2_ACCLL|Mux13~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~10_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux13~8_combout\,
	datad => \ps2_ACCLL|Mux13~11_combout\,
	combout => \ps2_ACCLL|Mux13~12_combout\);

-- Location: LCCOMB_X16_Y20_N18
\ps2_ACCLL|Mux13~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~15_combout\ = (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|Mux13~12_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~12_combout\,
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux13~14_combout\,
	combout => \ps2_ACCLL|Mux13~15_combout\);

-- Location: LCCOMB_X16_Y20_N16
\ps2_ACCLL|Mux22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~9_combout\ = (\ps2_ACCLL|Mux22~1_combout\ & ((\ps2_ACCLL|Mux13~15_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux22~8_combout\)))) # (!\ps2_ACCLL|Mux22~1_combout\ & (\ps2_ACCLL|Mux38~6_combout\ & (\ps2_ACCLL|Mux22~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux22~1_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux22~8_combout\,
	datad => \ps2_ACCLL|Mux13~15_combout\,
	combout => \ps2_ACCLL|Mux22~9_combout\);

-- Location: LCCOMB_X15_Y20_N10
\ps2_ACCLL|Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux37~0_combout\);

-- Location: LCCOMB_X15_Y20_N6
\ps2_ACCLL|Selector4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~18_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux37~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Selector4~18_combout\);

-- Location: LCCOMB_X15_Y20_N18
\ps2_ACCLL|Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux37~2_combout\);

-- Location: LCCOMB_X15_Y20_N12
\ps2_ACCLL|Mux37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux37~2_combout\,
	combout => \ps2_ACCLL|Mux37~3_combout\);

-- Location: LCCOMB_X15_Y20_N22
\ps2_ACCLL|Mux37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux37~4_combout\);

-- Location: LCCOMB_X15_Y20_N24
\ps2_ACCLL|Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux37~1_combout\);

-- Location: LCCOMB_X15_Y20_N26
\ps2_ACCLL|Mux37~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux37~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|Mux37~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux37~4_combout\,
	datad => \ps2_ACCLL|Mux37~1_combout\,
	combout => \ps2_ACCLL|Mux37~5_combout\);

-- Location: LCCOMB_X16_Y20_N2
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

-- Location: LCCOMB_X16_Y20_N30
\ps2_ACCLL|Selector4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~14_combout\ = (\ps2_ACCLL|Mux22~9_combout\ & ((\ps2_ACCLL|Selector4~18_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux37~6_combout\)))) # (!\ps2_ACCLL|Mux22~9_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux37~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux22~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Selector4~18_combout\,
	datad => \ps2_ACCLL|Mux37~6_combout\,
	combout => \ps2_ACCLL|Selector4~14_combout\);

-- Location: LCCOMB_X15_Y16_N12
\ps2_ACCLL|Selector4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|control_r~q\ & (!\ps2_ACCLL|control_l~q\ & \ps2_ACCLL|Selector4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|control_r~q\,
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|Selector4~14_combout\,
	combout => \ps2_ACCLL|Selector4~19_combout\);

-- Location: LCCOMB_X15_Y16_N24
\ps2_ACCLL|Selector4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~15_combout\ = (!\ps2_ACCLL|Selector4~13_combout\ & (((!\ps2_ACCLL|Selector4~17_combout\ & !\ps2_ACCLL|Selector4~19_combout\)) # (!\ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|Selector4~13_combout\,
	datac => \ps2_ACCLL|Selector4~17_combout\,
	datad => \ps2_ACCLL|Selector4~19_combout\,
	combout => \ps2_ACCLL|Selector4~15_combout\);

-- Location: FF_X15_Y16_N25
\ps2_ACCLL|ascii[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector4~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(7));

-- Location: LCCOMB_X17_Y17_N20
\ps2_ACCLL|ascii_code[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[5]~0_combout\ = (\ps2_ACCLL|ascii\(7) & \ps2_ACCLL|state.output~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(7),
	datad => \ps2_ACCLL|state.output~q\,
	combout => \ps2_ACCLL|ascii_code[5]~0_combout\);

-- Location: LCCOMB_X17_Y17_N18
\ps2_ACCLL|ascii_new~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_new~2_combout\ = (\ps2_ACCLL|ascii_code[5]~0_combout\ & ((\ps2_ACCLL|state.ready~q\) # ((\ps2_ACCLL|ascii_new~q\ & !\ps2_ACCLL|Selector1~0_combout\)))) # (!\ps2_ACCLL|ascii_code[5]~0_combout\ & (\ps2_ACCLL|ascii_new~q\ & 
-- (!\ps2_ACCLL|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code[5]~0_combout\,
	datab => \ps2_ACCLL|ascii_new~q\,
	datac => \ps2_ACCLL|Selector1~0_combout\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|ascii_new~2_combout\);

-- Location: LCCOMB_X17_Y17_N26
\ps2_ACCLL|ascii_new~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_new~feeder_combout\ = \ps2_ACCLL|ascii_new~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii_new~2_combout\,
	combout => \ps2_ACCLL|ascii_new~feeder_combout\);

-- Location: FF_X17_Y17_N27
\ps2_ACCLL|ascii_new\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_new~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_new~q\);

-- Location: CLKCTRL_G12
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

-- Location: LCCOMB_X20_Y18_N4
\ps2_ACCLL|Mux13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~16_combout\);

-- Location: LCCOMB_X20_Y18_N0
\ps2_ACCLL|Mux20~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~25_combout\ = (\ps2_ACCLL|Mux13~16_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux13~16_combout\ & (!\ps2_ACCLL|ascii\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux13~16_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~25_combout\);

-- Location: LCCOMB_X20_Y18_N10
\ps2_ACCLL|Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~6_combout\);

-- Location: LCCOMB_X20_Y18_N24
\ps2_ACCLL|Mux20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~7_combout\ = (\ps2_ACCLL|Mux20~6_combout\ & (\ps2_ACCLL|Equal1~0_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux20~6_combout\ & (((!\ps2_ACCLL|ascii\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~6_combout\,
	datab => \ps2_ACCLL|Equal1~0_combout\,
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~7_combout\);

-- Location: LCCOMB_X20_Y18_N26
\ps2_ACCLL|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~7_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~25_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux20~7_combout\,
	combout => \ps2_ACCLL|Mux12~0_combout\);

-- Location: LCCOMB_X20_Y18_N2
\ps2_ACCLL|Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~4_combout\ = (\ps2_ACCLL|Mux19~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux19~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|Mux38~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~4_combout\);

-- Location: LCCOMB_X22_Y20_N8
\ps2_ACCLL|Mux24~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~19_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux24~19_combout\);

-- Location: LCCOMB_X20_Y18_N8
\ps2_ACCLL|Mux20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~5_combout\ = (\ps2_ACCLL|Mux20~4_combout\ & (((!\ps2_ACCLL|ascii\(0) & !\ps2_ACCLL|Mux24~19_combout\)))) # (!\ps2_ACCLL|Mux20~4_combout\ & ((\ps2_ACCLL|Mux19~2_combout\) # ((!\ps2_ACCLL|ascii\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|Mux20~4_combout\,
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|Mux24~19_combout\,
	combout => \ps2_ACCLL|Mux20~5_combout\);

-- Location: LCCOMB_X20_Y18_N14
\ps2_ACCLL|Mux20~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~26_combout\ = (\ps2_ACCLL|ascii\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux19~2_combout\))) # (!\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (!\ps2_ACCLL|Mux19~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux19~2_combout\,
	combout => \ps2_ACCLL|Mux20~26_combout\);

-- Location: LCCOMB_X20_Y18_N12
\ps2_ACCLL|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~1_combout\ = (\ps2_ACCLL|Mux12~0_combout\ & (((\ps2_ACCLL|Mux20~26_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux12~0_combout\ & (\ps2_ACCLL|Mux20~5_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux12~0_combout\,
	datab => \ps2_ACCLL|Mux20~5_combout\,
	datac => \ps2_ACCLL|Mux20~26_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux12~1_combout\);

-- Location: LCCOMB_X22_Y18_N16
\ps2_ACCLL|caps_lock~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|caps_lock~5_combout\);

-- Location: LCCOMB_X22_Y18_N10
\ps2_ACCLL|Mux20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~15_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|caps_lock~5_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|caps_lock~5_combout\,
	combout => \ps2_ACCLL|Mux20~15_combout\);

-- Location: LCCOMB_X22_Y18_N24
\ps2_ACCLL|Mux20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~16_combout\ = (\ps2_ACCLL|Mux20~15_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~15_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~16_combout\);

-- Location: LCCOMB_X15_Y20_N28
\ps2_ACCLL|caps_lock~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|caps_lock~2_combout\);

-- Location: LCCOMB_X22_Y18_N2
\ps2_ACCLL|Mux20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~8_combout\);

-- Location: LCCOMB_X22_Y18_N0
\ps2_ACCLL|Mux20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux20~8_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux13~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux13~9_combout\,
	datad => \ps2_ACCLL|Mux20~8_combout\,
	combout => \ps2_ACCLL|Mux20~9_combout\);

-- Location: LCCOMB_X22_Y18_N14
\ps2_ACCLL|Mux20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~10_combout\ = (\ps2_ACCLL|Mux20~9_combout\ & (((!\ps2_ACCLL|caps_lock~2_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux20~9_combout\ & (!\ps2_ACCLL|ascii\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|caps_lock~2_combout\,
	datad => \ps2_ACCLL|Mux20~9_combout\,
	combout => \ps2_ACCLL|Mux20~10_combout\);

-- Location: LCCOMB_X22_Y18_N12
\ps2_ACCLL|shift_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|shift_l~0_combout\);

-- Location: LCCOMB_X22_Y18_N8
\ps2_ACCLL|Mux20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~13_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|shift_l~0_combout\) # (!\ps2_ACCLL|caps_lock~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|caps_lock~2_combout\,
	datad => \ps2_ACCLL|shift_l~0_combout\,
	combout => \ps2_ACCLL|Mux20~13_combout\);

-- Location: LCCOMB_X22_Y18_N26
\ps2_ACCLL|Mux20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~14_combout\ = (\ps2_ACCLL|Mux20~13_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|caps_lock~5_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|caps_lock~5_combout\,
	datac => \ps2_ACCLL|Mux20~13_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~14_combout\);

-- Location: LCCOMB_X22_Y18_N4
\ps2_ACCLL|Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux15~6_combout\);

-- Location: LCCOMB_X16_Y21_N26
\ps2_ACCLL|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux16~2_combout\);

-- Location: LCCOMB_X22_Y18_N20
\ps2_ACCLL|Mux20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux15~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~6_combout\,
	datad => \ps2_ACCLL|Mux16~2_combout\,
	combout => \ps2_ACCLL|Mux20~11_combout\);

-- Location: LCCOMB_X22_Y18_N18
\ps2_ACCLL|Mux20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~12_combout\ = (\ps2_ACCLL|Mux20~11_combout\ & (!\ps2_ACCLL|ascii\(0))) # (!\ps2_ACCLL|Mux20~11_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux20~11_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~12_combout\);

-- Location: LCCOMB_X22_Y18_N28
\ps2_ACCLL|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~12_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux20~12_combout\,
	combout => \ps2_ACCLL|Mux12~2_combout\);

-- Location: LCCOMB_X22_Y18_N30
\ps2_ACCLL|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux12~2_combout\ & (\ps2_ACCLL|Mux20~16_combout\)) # (!\ps2_ACCLL|Mux12~2_combout\ & ((\ps2_ACCLL|Mux20~10_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux20~16_combout\,
	datac => \ps2_ACCLL|Mux20~10_combout\,
	datad => \ps2_ACCLL|Mux12~2_combout\,
	combout => \ps2_ACCLL|Mux12~3_combout\);

-- Location: LCCOMB_X15_Y16_N14
\ps2_ACCLL|ascii~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~27_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux12~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux12~3_combout\)))))

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
	combout => \ps2_ACCLL|ascii~27_combout\);

-- Location: LCCOMB_X20_Y20_N12
\ps2_ACCLL|Mux42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux42~4_combout\);

-- Location: LCCOMB_X19_Y18_N4
\ps2_ACCLL|shift_l~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~3_combout\ = (\ps2_ACCLL|Equal0~0_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|state.translate~q\,
	combout => \ps2_ACCLL|shift_l~3_combout\);

-- Location: LCCOMB_X19_Y18_N6
\ps2_ACCLL|shift_l~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|shift_l~2_combout\);

-- Location: LCCOMB_X19_Y18_N14
\ps2_ACCLL|shift_l~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~4_combout\ = (\ps2_ACCLL|shift_l~3_combout\ & ((\ps2_ACCLL|shift_l~2_combout\ & (!\ps2_ACCLL|break~q\)) # (!\ps2_ACCLL|shift_l~2_combout\ & ((\ps2_ACCLL|shift_l~q\))))) # (!\ps2_ACCLL|shift_l~3_combout\ & (((\ps2_ACCLL|shift_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|break~q\,
	datab => \ps2_ACCLL|shift_l~3_combout\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_l~2_combout\,
	combout => \ps2_ACCLL|shift_l~4_combout\);

-- Location: FF_X19_Y18_N15
\ps2_ACCLL|shift_l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|shift_l~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|shift_l~q\);

-- Location: LCCOMB_X20_Y20_N16
\ps2_ACCLL|caps_lock~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|caps_lock~4_combout\);

-- Location: LCCOMB_X19_Y18_N18
\ps2_ACCLL|caps_lock~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|state.translate~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|caps_lock~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|state.translate~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|caps_lock~4_combout\,
	combout => \ps2_ACCLL|caps_lock~7_combout\);

-- Location: LCCOMB_X19_Y18_N12
\ps2_ACCLL|Mux17~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~30_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~30_combout\);

-- Location: LCCOMB_X19_Y18_N24
\ps2_ACCLL|shift_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_r~0_combout\ = (\ps2_ACCLL|caps_lock~7_combout\ & ((\ps2_ACCLL|Mux17~30_combout\ & (!\ps2_ACCLL|break~q\)) # (!\ps2_ACCLL|Mux17~30_combout\ & ((\ps2_ACCLL|shift_r~q\))))) # (!\ps2_ACCLL|caps_lock~7_combout\ & (((\ps2_ACCLL|shift_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|break~q\,
	datab => \ps2_ACCLL|caps_lock~7_combout\,
	datac => \ps2_ACCLL|shift_r~q\,
	datad => \ps2_ACCLL|Mux17~30_combout\,
	combout => \ps2_ACCLL|shift_r~0_combout\);

-- Location: FF_X19_Y18_N25
\ps2_ACCLL|shift_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|shift_r~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|shift_r~q\);

-- Location: LCCOMB_X20_Y18_N30
\ps2_ACCLL|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~2_combout\ = (\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|process_0~2_combout\);

-- Location: LCCOMB_X17_Y21_N30
\ps2_ACCLL|Mux40~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~33_combout\ = (\ps2_ACCLL|Mux42~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux42~4_combout\,
	combout => \ps2_ACCLL|Mux40~33_combout\);

-- Location: LCCOMB_X21_Y19_N0
\ps2_ACCLL|ascii~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~30_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux40~33_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|process_0~2_combout\,
	datad => \ps2_ACCLL|Mux40~33_combout\,
	combout => \ps2_ACCLL|ascii~30_combout\);

-- Location: LCCOMB_X21_Y19_N2
\ps2_ACCLL|ascii~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~31_combout\ = (\ps2_ACCLL|ascii~30_combout\) # ((\ps2_ACCLL|caps_lock~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux42~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|ascii~30_combout\,
	combout => \ps2_ACCLL|ascii~31_combout\);

-- Location: LCCOMB_X22_Y19_N16
\ps2_ACCLL|ascii~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~28_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux42~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux42~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|ascii~28_combout\);

-- Location: LCCOMB_X15_Y16_N4
\ps2_ACCLL|ascii~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~29_combout\ = (\ps2_ACCLL|ascii~28_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (!\ps2_ACCLL|Mux40~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~33_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii~28_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|ascii~29_combout\);

-- Location: LCCOMB_X17_Y20_N14
\ps2_ACCLL|Mux20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux20~20_combout\);

-- Location: LCCOMB_X17_Y20_N4
\ps2_ACCLL|Mux20~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~21_combout\ = (\ps2_ACCLL|Mux20~20_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux16~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~20_combout\,
	datad => \ps2_ACCLL|Mux14~0_combout\,
	combout => \ps2_ACCLL|Mux20~21_combout\);

-- Location: LCCOMB_X20_Y20_N30
\ps2_ACCLL|Mux20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux20~22_combout\);

-- Location: LCCOMB_X20_Y20_N4
\ps2_ACCLL|Mux20~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~23_combout\ = (\ps2_ACCLL|Mux20~22_combout\ & ((\ps2_ACCLL|Mux17~8_combout\) # ((\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|caps_lock~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~22_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux17~8_combout\,
	datad => \ps2_ACCLL|caps_lock~4_combout\,
	combout => \ps2_ACCLL|Mux20~23_combout\);

-- Location: LCCOMB_X17_Y20_N28
\ps2_ACCLL|Mux20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux20~17_combout\);

-- Location: LCCOMB_X19_Y20_N24
\ps2_ACCLL|Mux13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux13~7_combout\);

-- Location: LCCOMB_X17_Y20_N10
\ps2_ACCLL|Mux20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux13~7_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~1_combout\,
	datad => \ps2_ACCLL|Mux13~7_combout\,
	combout => \ps2_ACCLL|Mux20~18_combout\);

-- Location: LCCOMB_X17_Y20_N16
\ps2_ACCLL|Mux20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~19_combout\ = (!\ps2_ACCLL|ascii\(0) & ((!\ps2_ACCLL|Mux20~18_combout\) # (!\ps2_ACCLL|Mux20~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~17_combout\,
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|Mux20~18_combout\,
	combout => \ps2_ACCLL|Mux20~19_combout\);

-- Location: LCCOMB_X17_Y20_N2
\ps2_ACCLL|Mux20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~24_combout\ = (\ps2_ACCLL|Mux20~21_combout\) # ((\ps2_ACCLL|Mux20~19_combout\) # ((\ps2_ACCLL|Equal0~0_combout\ & \ps2_ACCLL|Mux20~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~0_combout\,
	datab => \ps2_ACCLL|Mux20~21_combout\,
	datac => \ps2_ACCLL|Mux20~23_combout\,
	datad => \ps2_ACCLL|Mux20~19_combout\,
	combout => \ps2_ACCLL|Mux20~24_combout\);

-- Location: LCCOMB_X21_Y17_N30
\ps2_ACCLL|Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux26~2_combout\);

-- Location: LCCOMB_X17_Y16_N8
\ps2_ACCLL|Mux25~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~31_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux25~31_combout\);

-- Location: LCCOMB_X17_Y16_N4
\ps2_ACCLL|Mux29~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~24_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|Mux25~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux20~24_combout\,
	datad => \ps2_ACCLL|Mux25~31_combout\,
	combout => \ps2_ACCLL|Mux29~3_combout\);

-- Location: LCCOMB_X17_Y16_N22
\ps2_ACCLL|Mux29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~2_combout\ = (\ps2_ACCLL|Mux20~24_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~24_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux29~2_combout\);

-- Location: LCCOMB_X17_Y16_N14
\ps2_ACCLL|Mux29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux16~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux29~4_combout\);

-- Location: LCCOMB_X17_Y16_N0
\ps2_ACCLL|Mux29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~5_combout\ = (\ps2_ACCLL|Mux20~19_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux29~4_combout\,
	datad => \ps2_ACCLL|Mux20~19_combout\,
	combout => \ps2_ACCLL|Mux29~5_combout\);

-- Location: LCCOMB_X17_Y16_N10
\ps2_ACCLL|Mux29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~6_combout\ = (!\ps2_ACCLL|Mux25~31_combout\ & ((\ps2_ACCLL|Mux29~5_combout\) # ((\ps2_ACCLL|Mux20~23_combout\ & \ps2_ACCLL|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~23_combout\,
	datab => \ps2_ACCLL|Equal0~0_combout\,
	datac => \ps2_ACCLL|Mux25~31_combout\,
	datad => \ps2_ACCLL|Mux29~5_combout\,
	combout => \ps2_ACCLL|Mux29~6_combout\);

-- Location: LCCOMB_X17_Y16_N28
\ps2_ACCLL|Mux29~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux29~3_combout\ & ((\ps2_ACCLL|Mux29~6_combout\))) # (!\ps2_ACCLL|Mux29~3_combout\ & (\ps2_ACCLL|Mux29~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux29~3_combout\,
	datac => \ps2_ACCLL|Mux29~2_combout\,
	datad => \ps2_ACCLL|Mux29~6_combout\,
	combout => \ps2_ACCLL|Mux29~7_combout\);

-- Location: LCCOMB_X17_Y16_N30
\ps2_ACCLL|Mux29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux29~7_combout\,
	combout => \ps2_ACCLL|Mux29~8_combout\);

-- Location: LCCOMB_X17_Y20_N20
\ps2_ACCLL|Mux29~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux29~9_combout\);

-- Location: LCCOMB_X17_Y20_N0
\ps2_ACCLL|Mux29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~10_combout\ = (\ps2_ACCLL|Mux20~24_combout\) # (\ps2_ACCLL|Mux29~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~24_combout\,
	datad => \ps2_ACCLL|Mux29~9_combout\,
	combout => \ps2_ACCLL|Mux29~10_combout\);

-- Location: LCCOMB_X17_Y20_N12
\ps2_ACCLL|Mux29~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux20~24_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|Mux20~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux20~24_combout\,
	combout => \ps2_ACCLL|Mux29~14_combout\);

-- Location: LCCOMB_X17_Y20_N26
\ps2_ACCLL|Mux29~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- !\ps2_ACCLL|Mux29~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux29~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux29~14_combout\,
	combout => \ps2_ACCLL|Mux29~15_combout\);

-- Location: LCCOMB_X17_Y20_N6
\ps2_ACCLL|Mux29~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux20~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux20~24_combout\,
	combout => \ps2_ACCLL|Mux29~11_combout\);

-- Location: LCCOMB_X17_Y20_N30
\ps2_ACCLL|Mux29~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|caps_lock~2_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|caps_lock~2_combout\,
	datad => \ps2_ACCLL|Mux29~11_combout\,
	combout => \ps2_ACCLL|Mux29~20_combout\);

-- Location: LCCOMB_X17_Y20_N8
\ps2_ACCLL|Mux29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|caps_lock~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|caps_lock~2_combout\ & ((\ps2_ACCLL|Mux20~24_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux20~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|caps_lock~2_combout\,
	datad => \ps2_ACCLL|Mux20~24_combout\,
	combout => \ps2_ACCLL|Mux29~12_combout\);

-- Location: LCCOMB_X17_Y20_N18
\ps2_ACCLL|Mux29~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux29~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux29~20_combout\,
	datad => \ps2_ACCLL|Mux29~12_combout\,
	combout => \ps2_ACCLL|Mux29~13_combout\);

-- Location: LCCOMB_X17_Y20_N24
\ps2_ACCLL|Mux29~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux29~13_combout\ & ((\ps2_ACCLL|Mux29~15_combout\))) # (!\ps2_ACCLL|Mux29~13_combout\ & (\ps2_ACCLL|Mux29~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux29~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux29~10_combout\,
	datac => \ps2_ACCLL|Mux29~15_combout\,
	datad => \ps2_ACCLL|Mux29~13_combout\,
	combout => \ps2_ACCLL|Mux29~16_combout\);

-- Location: LCCOMB_X17_Y16_N24
\ps2_ACCLL|Mux29~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux29~8_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux29~8_combout\,
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux29~17_combout\);

-- Location: LCCOMB_X16_Y16_N12
\ps2_ACCLL|Mux29~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~18_combout\ = (\ps2_ACCLL|Mux29~17_combout\) # ((\ps2_ACCLL|Mux20~24_combout\ & !\ps2_ACCLL|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~24_combout\,
	datac => \ps2_ACCLL|Mux26~2_combout\,
	datad => \ps2_ACCLL|Mux29~17_combout\,
	combout => \ps2_ACCLL|Mux29~18_combout\);

-- Location: LCCOMB_X15_Y16_N22
\ps2_ACCLL|ascii~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~32_combout\ = (\ps2_ACCLL|ascii~31_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ascii~29_combout\ & \ps2_ACCLL|Mux29~18_combout\)))) # (!\ps2_ACCLL|ascii~31_combout\ & (\ps2_ACCLL|ascii~29_combout\ & 
-- (\ps2_ACCLL|Mux29~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~31_combout\,
	datab => \ps2_ACCLL|ascii~29_combout\,
	datac => \ps2_ACCLL|Mux29~18_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|ascii~32_combout\);

-- Location: LCCOMB_X17_Y16_N20
\ps2_ACCLL|Mux44~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~16_combout\);

-- Location: LCCOMB_X15_Y19_N30
\ps2_ACCLL|shift_l~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|shift_l~1_combout\);

-- Location: LCCOMB_X15_Y19_N4
\ps2_ACCLL|Mux44~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (((\ps2_ACCLL|shift_l~1_combout\ & \ps2_ACCLL|Equal1~0_combout\)) # (!\ps2_ACCLL|Mux26~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~1_combout\,
	datab => \ps2_ACCLL|Equal1~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux26~2_combout\,
	combout => \ps2_ACCLL|Mux44~17_combout\);

-- Location: LCCOMB_X16_Y16_N22
\ps2_ACCLL|Mux29~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~19_combout\ = (!\ps2_ACCLL|Mux26~2_combout\ & \ps2_ACCLL|Mux20~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux26~2_combout\,
	datad => \ps2_ACCLL|Mux20~24_combout\,
	combout => \ps2_ACCLL|Mux29~19_combout\);

-- Location: LCCOMB_X16_Y16_N28
\ps2_ACCLL|Mux44~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~18_combout\ = (\ps2_ACCLL|Mux44~17_combout\ & (((\ps2_ACCLL|Mux29~19_combout\) # (\ps2_ACCLL|Mux29~17_combout\)))) # (!\ps2_ACCLL|Mux44~17_combout\ & (\ps2_ACCLL|Mux44~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~16_combout\,
	datab => \ps2_ACCLL|Mux44~17_combout\,
	datac => \ps2_ACCLL|Mux29~19_combout\,
	datad => \ps2_ACCLL|Mux29~17_combout\,
	combout => \ps2_ACCLL|Mux44~18_combout\);

-- Location: LCCOMB_X16_Y16_N30
\ps2_ACCLL|Mux44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~33_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux40~33_combout\ & ((\ps2_ACCLL|Mux29~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~33_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux29~18_combout\,
	combout => \ps2_ACCLL|Mux44~3_combout\);

-- Location: LCCOMB_X20_Y16_N12
\ps2_ACCLL|Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux15~9_combout\);

-- Location: LCCOMB_X16_Y16_N8
\ps2_ACCLL|Mux44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~4_combout\ = (\ps2_ACCLL|Mux42~4_combout\) # ((\ps2_ACCLL|Mux29~17_combout\) # ((\ps2_ACCLL|Mux20~24_combout\ & !\ps2_ACCLL|Mux26~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~4_combout\,
	datab => \ps2_ACCLL|Mux20~24_combout\,
	datac => \ps2_ACCLL|Mux26~2_combout\,
	datad => \ps2_ACCLL|Mux29~17_combout\,
	combout => \ps2_ACCLL|Mux44~4_combout\);

-- Location: LCCOMB_X16_Y16_N20
\ps2_ACCLL|Mux44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~5_combout\ = (\ps2_ACCLL|Mux15~9_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux15~9_combout\ & (((\ps2_ACCLL|Mux29~19_combout\) # (\ps2_ACCLL|Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux15~9_combout\,
	datac => \ps2_ACCLL|Mux29~19_combout\,
	datad => \ps2_ACCLL|Mux29~17_combout\,
	combout => \ps2_ACCLL|Mux44~5_combout\);

-- Location: LCCOMB_X16_Y16_N2
\ps2_ACCLL|Mux44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|Mux44~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|Mux44~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux44~4_combout\,
	datad => \ps2_ACCLL|Mux44~5_combout\,
	combout => \ps2_ACCLL|Mux44~6_combout\);

-- Location: LCCOMB_X16_Y16_N24
\ps2_ACCLL|Mux44~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux29~18_combout\ & ((!\ps2_ACCLL|Mux44~6_combout\) # (!\ps2_ACCLL|Mux15~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux44~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux29~18_combout\,
	datad => \ps2_ACCLL|Mux44~6_combout\,
	combout => \ps2_ACCLL|Mux44~7_combout\);

-- Location: LCCOMB_X16_Y16_N14
\ps2_ACCLL|Mux44~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~8_combout\ = (\ps2_ACCLL|Mux44~3_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux44~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~3_combout\,
	datad => \ps2_ACCLL|Mux44~7_combout\,
	combout => \ps2_ACCLL|Mux44~8_combout\);

-- Location: LCCOMB_X17_Y16_N18
\ps2_ACCLL|Mux44~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~9_combout\);

-- Location: LCCOMB_X17_Y18_N16
\ps2_ACCLL|Mux44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~2_combout\);

-- Location: LCCOMB_X17_Y18_N14
\ps2_ACCLL|Mux44~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux44~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux44~2_combout\,
	combout => \ps2_ACCLL|Mux44~20_combout\);

-- Location: LCCOMB_X16_Y16_N0
\ps2_ACCLL|Mux44~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~10_combout\ = (\ps2_ACCLL|Mux44~20_combout\ & (\ps2_ACCLL|Mux44~9_combout\)) # (!\ps2_ACCLL|Mux44~20_combout\ & (((\ps2_ACCLL|Mux29~19_combout\) # (\ps2_ACCLL|Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~9_combout\,
	datab => \ps2_ACCLL|Mux44~20_combout\,
	datac => \ps2_ACCLL|Mux29~19_combout\,
	datad => \ps2_ACCLL|Mux29~17_combout\,
	combout => \ps2_ACCLL|Mux44~10_combout\);

-- Location: LCCOMB_X16_Y16_N4
\ps2_ACCLL|Mux44~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~12_combout\ = (\ps2_ACCLL|Mux15~9_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux15~9_combout\ & (((\ps2_ACCLL|Mux29~19_combout\) # (\ps2_ACCLL|Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux15~9_combout\,
	datac => \ps2_ACCLL|Mux29~19_combout\,
	datad => \ps2_ACCLL|Mux29~17_combout\,
	combout => \ps2_ACCLL|Mux44~12_combout\);

-- Location: LCCOMB_X16_Y16_N6
\ps2_ACCLL|Mux44~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux29~18_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux29~18_combout\,
	combout => \ps2_ACCLL|Mux44~11_combout\);

-- Location: LCCOMB_X16_Y16_N18
\ps2_ACCLL|Mux44~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux44~11_combout\ & ((\ps2_ACCLL|Mux44~12_combout\))) # (!\ps2_ACCLL|Mux44~11_combout\ & (\ps2_ACCLL|Mux44~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux44~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux44~4_combout\,
	datac => \ps2_ACCLL|Mux44~12_combout\,
	datad => \ps2_ACCLL|Mux44~11_combout\,
	combout => \ps2_ACCLL|Mux44~13_combout\);

-- Location: LCCOMB_X16_Y16_N16
\ps2_ACCLL|Mux44~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux44~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~33_combout\) # ((\ps2_ACCLL|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~33_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux29~18_combout\,
	datad => \ps2_ACCLL|Mux44~13_combout\,
	combout => \ps2_ACCLL|Mux44~14_combout\);

-- Location: LCCOMB_X16_Y16_N10
\ps2_ACCLL|Mux44~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux44~10_combout\) # ((\ps2_ACCLL|process_0~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|process_0~2_combout\ & 
-- \ps2_ACCLL|Mux44~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux44~10_combout\,
	datac => \ps2_ACCLL|process_0~2_combout\,
	datad => \ps2_ACCLL|Mux44~14_combout\,
	combout => \ps2_ACCLL|Mux44~15_combout\);

-- Location: LCCOMB_X16_Y16_N26
\ps2_ACCLL|Mux44~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~19_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux44~15_combout\ & (\ps2_ACCLL|Mux44~18_combout\)) # (!\ps2_ACCLL|Mux44~15_combout\ & ((\ps2_ACCLL|Mux44~8_combout\))))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux44~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux44~18_combout\,
	datac => \ps2_ACCLL|Mux44~8_combout\,
	datad => \ps2_ACCLL|Mux44~15_combout\,
	combout => \ps2_ACCLL|Mux44~19_combout\);

-- Location: LCCOMB_X15_Y16_N20
\ps2_ACCLL|ascii~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~33_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux44~19_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ascii~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii~32_combout\,
	datad => \ps2_ACCLL|Mux44~19_combout\,
	combout => \ps2_ACCLL|ascii~33_combout\);

-- Location: LCCOMB_X15_Y16_N2
\ps2_ACCLL|ascii~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~34_combout\ = (!\ps2_ACCLL|ascii~27_combout\ & !\ps2_ACCLL|ascii~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii~27_combout\,
	datad => \ps2_ACCLL|ascii~33_combout\,
	combout => \ps2_ACCLL|ascii~34_combout\);

-- Location: FF_X15_Y16_N3
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

-- Location: LCCOMB_X23_Y21_N22
\ps2_ACCLL|ascii_code[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[0]~5_combout\ = !\ps2_ACCLL|ascii\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|ascii_code[0]~5_combout\);

-- Location: LCCOMB_X27_Y28_N16
\ps2_ACCLL|ascii_code[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[0]~feeder_combout\ = \ps2_ACCLL|ascii_code[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii_code[0]~5_combout\,
	combout => \ps2_ACCLL|ascii_code[0]~feeder_combout\);

-- Location: FF_X27_Y28_N17
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

-- Location: LCCOMB_X16_Y21_N4
\ps2_ACCLL|Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux17~9_combout\);

-- Location: LCCOMB_X16_Y21_N2
\ps2_ACCLL|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux19~11_combout\);

-- Location: LCCOMB_X16_Y21_N12
\ps2_ACCLL|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~12_combout\ = (\ps2_ACCLL|Mux19~11_combout\) # ((!\ps2_ACCLL|ascii\(1) & ((!\ps2_ACCLL|Mux17~9_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux17~9_combout\,
	datad => \ps2_ACCLL|Mux19~11_combout\,
	combout => \ps2_ACCLL|Mux19~12_combout\);

-- Location: LCCOMB_X16_Y21_N20
\ps2_ACCLL|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
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
	combout => \ps2_ACCLL|Mux19~15_combout\);

-- Location: LCCOMB_X16_Y21_N10
\ps2_ACCLL|Mux19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|ascii\(1) & \ps2_ACCLL|Mux19~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~15_combout\) # (!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux19~15_combout\,
	combout => \ps2_ACCLL|Mux19~16_combout\);

-- Location: LCCOMB_X16_Y21_N0
\ps2_ACCLL|Mux19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ascii\(1)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux19~17_combout\);

-- Location: LCCOMB_X16_Y21_N14
\ps2_ACCLL|Mux19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux19~17_combout\ & ((\ps2_ACCLL|Mux19~16_combout\) # (!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux19~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~16_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux19~17_combout\,
	combout => \ps2_ACCLL|Mux19~18_combout\);

-- Location: LCCOMB_X16_Y21_N24
\ps2_ACCLL|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~14_combout\ = (\ps2_ACCLL|Mux16~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux16~2_combout\ & ((!\ps2_ACCLL|ascii\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~2_combout\,
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~14_combout\);

-- Location: LCCOMB_X16_Y21_N22
\ps2_ACCLL|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ascii\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ascii\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~13_combout\);

-- Location: LCCOMB_X16_Y21_N30
\ps2_ACCLL|Mux19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~24_combout\ = \ps2_ACCLL|ascii\(1) $ ((((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|Mux19~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~13_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux19~24_combout\);

-- Location: LCCOMB_X16_Y21_N18
\ps2_ACCLL|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux19~24_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux19~14_combout\ & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux19~14_combout\,
	datac => \ps2_ACCLL|Mux19~24_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux11~2_combout\);

-- Location: LCCOMB_X16_Y21_N16
\ps2_ACCLL|Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux11~2_combout\ & ((\ps2_ACCLL|Mux19~18_combout\))) # (!\ps2_ACCLL|Mux11~2_combout\ & (\ps2_ACCLL|Mux19~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux19~18_combout\,
	datad => \ps2_ACCLL|Mux11~2_combout\,
	combout => \ps2_ACCLL|Mux11~3_combout\);

-- Location: LCCOMB_X17_Y21_N26
\ps2_ACCLL|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~6_combout\ = (\ps2_ACCLL|Mux13~16_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux13~16_combout\ & (((!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux13~16_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~6_combout\);

-- Location: LCCOMB_X17_Y21_N18
\ps2_ACCLL|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~8_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~8_combout\);

-- Location: LCCOMB_X17_Y21_N12
\ps2_ACCLL|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux13~16_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux13~16_combout\ & ((!\ps2_ACCLL|ascii\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux13~16_combout\,
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~7_combout\);

-- Location: LCCOMB_X17_Y21_N20
\ps2_ACCLL|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~9_combout\ = (\ps2_ACCLL|Mux19~7_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~2_combout\) # (\ps2_ACCLL|Mux19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|Mux19~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux19~7_combout\,
	combout => \ps2_ACCLL|Mux19~9_combout\);

-- Location: LCCOMB_X17_Y21_N22
\ps2_ACCLL|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux19~6_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- \ps2_ACCLL|Mux19~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux19~9_combout\,
	combout => \ps2_ACCLL|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y21_N28
\ps2_ACCLL|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~10_combout\ = (\ps2_ACCLL|Mux19~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|Mux19~2_combout\ & (!\ps2_ACCLL|ascii\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~10_combout\);

-- Location: LCCOMB_X17_Y21_N8
\ps2_ACCLL|Mux38~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~17_combout\);

-- Location: LCCOMB_X17_Y21_N2
\ps2_ACCLL|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~4_combout\);

-- Location: LCCOMB_X17_Y21_N24
\ps2_ACCLL|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~5_combout\ = (\ps2_ACCLL|Mux38~17_combout\) # ((!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~4_combout\) # (!\ps2_ACCLL|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux38~17_combout\,
	datad => \ps2_ACCLL|Mux19~4_combout\,
	combout => \ps2_ACCLL|Mux19~5_combout\);

-- Location: LCCOMB_X17_Y21_N6
\ps2_ACCLL|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~1_combout\ = (\ps2_ACCLL|Mux11~0_combout\ & ((\ps2_ACCLL|Mux19~10_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux11~0_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux11~0_combout\,
	datab => \ps2_ACCLL|Mux19~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux19~5_combout\,
	combout => \ps2_ACCLL|Mux11~1_combout\);

-- Location: LCCOMB_X17_Y21_N16
\ps2_ACCLL|ascii~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~35_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux11~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux11~3_combout\,
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux11~1_combout\,
	combout => \ps2_ACCLL|ascii~35_combout\);

-- Location: LCCOMB_X21_Y21_N10
\ps2_ACCLL|Mux43~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux40~33_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux40~33_combout\,
	combout => \ps2_ACCLL|Mux43~7_combout\);

-- Location: LCCOMB_X21_Y21_N24
\ps2_ACCLL|Mux43~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~22_combout\ = (\ps2_ACCLL|Mux42~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~22_combout\);

-- Location: LCCOMB_X19_Y20_N14
\ps2_ACCLL|Mux19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~20_combout\ = (\ps2_ACCLL|Mux14~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux14~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~20_combout\);

-- Location: LCCOMB_X19_Y20_N12
\ps2_ACCLL|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux16~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\ps2_ACCLL|Mux19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~19_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux16~0_combout\) # (!\ps2_ACCLL|Mux13~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux13~7_combout\,
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux19~19_combout\);

-- Location: LCCOMB_X20_Y19_N10
\ps2_ACCLL|Mux17~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|caps_lock~4_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|caps_lock~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~23_combout\);

-- Location: LCCOMB_X19_Y20_N22
\ps2_ACCLL|Mux19~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~21_combout\ = (\ps2_ACCLL|Mux19~19_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux19~20_combout\) # (\ps2_ACCLL|Mux17~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux19~19_combout\,
	datad => \ps2_ACCLL|Mux17~23_combout\,
	combout => \ps2_ACCLL|Mux19~21_combout\);

-- Location: LCCOMB_X20_Y21_N12
\ps2_ACCLL|Mux19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # 
-- (!\ps2_ACCLL|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux14~0_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux19~22_combout\);

-- Location: LCCOMB_X20_Y21_N2
\ps2_ACCLL|Mux19~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~23_combout\ = (\ps2_ACCLL|Mux19~22_combout\) # ((!\ps2_ACCLL|Mux19~3_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~22_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux19~3_combout\,
	combout => \ps2_ACCLL|Mux19~23_combout\);

-- Location: LCCOMB_X20_Y21_N28
\ps2_ACCLL|Mux28~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux19~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux19~21_combout\,
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux28~15_combout\);

-- Location: LCCOMB_X19_Y21_N30
\ps2_ACCLL|Mux28~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~30_combout\);

-- Location: LCCOMB_X20_Y21_N30
\ps2_ACCLL|Mux28~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~25_combout\ = (\ps2_ACCLL|Mux28~30_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux28~30_combout\ & ((\ps2_ACCLL|Mux28~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux28~30_combout\,
	datad => \ps2_ACCLL|Mux28~15_combout\,
	combout => \ps2_ACCLL|Mux28~25_combout\);

-- Location: LCCOMB_X19_Y21_N22
\ps2_ACCLL|Mux28~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~28_combout\);

-- Location: LCCOMB_X19_Y21_N0
\ps2_ACCLL|Mux28~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~29_combout\);

-- Location: LCCOMB_X20_Y21_N26
\ps2_ACCLL|Mux28~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~18_combout\ = (!\ps2_ACCLL|ascii\(1) & \ps2_ACCLL|Mux19~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux28~18_combout\);

-- Location: LCCOMB_X19_Y21_N16
\ps2_ACCLL|Mux28~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~23_combout\ = (\ps2_ACCLL|Mux28~28_combout\ & (\ps2_ACCLL|Mux28~29_combout\)) # (!\ps2_ACCLL|Mux28~28_combout\ & ((\ps2_ACCLL|Mux28~29_combout\ & ((\ps2_ACCLL|Mux28~18_combout\))) # (!\ps2_ACCLL|Mux28~29_combout\ & 
-- (\ps2_ACCLL|Mux19~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~28_combout\,
	datab => \ps2_ACCLL|Mux28~29_combout\,
	datac => \ps2_ACCLL|Mux19~21_combout\,
	datad => \ps2_ACCLL|Mux28~18_combout\,
	combout => \ps2_ACCLL|Mux28~23_combout\);

-- Location: LCCOMB_X19_Y21_N10
\ps2_ACCLL|Mux28~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~20_combout\);

-- Location: LCCOMB_X19_Y21_N12
\ps2_ACCLL|Mux28~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~19_combout\);

-- Location: LCCOMB_X20_Y21_N8
\ps2_ACCLL|Mux28~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~21_combout\ = (\ps2_ACCLL|Mux28~20_combout\ & (((\ps2_ACCLL|Mux28~19_combout\)))) # (!\ps2_ACCLL|Mux28~20_combout\ & ((\ps2_ACCLL|Mux28~19_combout\ & ((\ps2_ACCLL|Mux28~18_combout\))) # (!\ps2_ACCLL|Mux28~19_combout\ & 
-- (\ps2_ACCLL|Mux19~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~20_combout\,
	datab => \ps2_ACCLL|Mux19~21_combout\,
	datac => \ps2_ACCLL|Mux28~18_combout\,
	datad => \ps2_ACCLL|Mux28~19_combout\,
	combout => \ps2_ACCLL|Mux28~21_combout\);

-- Location: LCCOMB_X20_Y21_N14
\ps2_ACCLL|Mux28~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux28~21_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((\ps2_ACCLL|Mux28~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux28~21_combout\,
	datad => \ps2_ACCLL|Mux28~15_combout\,
	combout => \ps2_ACCLL|Mux28~22_combout\);

-- Location: LCCOMB_X19_Y20_N20
\ps2_ACCLL|Mux25~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~13_combout\);

-- Location: LCCOMB_X20_Y21_N18
\ps2_ACCLL|Mux28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux19~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux14~0_combout\,
	datad => \ps2_ACCLL|Mux19~3_combout\,
	combout => \ps2_ACCLL|Mux28~12_combout\);

-- Location: LCCOMB_X20_Y21_N4
\ps2_ACCLL|Mux28~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~13_combout\ = (\ps2_ACCLL|ascii\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ascii\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux28~12_combout\,
	combout => \ps2_ACCLL|Mux28~13_combout\);

-- Location: LCCOMB_X20_Y21_N22
\ps2_ACCLL|Mux28~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|Mux28~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux28~13_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux28~14_combout\);

-- Location: LCCOMB_X20_Y21_N6
\ps2_ACCLL|Mux28~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux28~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux28~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # 
-- (!\ps2_ACCLL|Mux28~14_combout\ & ((\ps2_ACCLL|Mux28~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux28~14_combout\,
	datad => \ps2_ACCLL|Mux28~15_combout\,
	combout => \ps2_ACCLL|Mux28~16_combout\);

-- Location: LCCOMB_X20_Y21_N24
\ps2_ACCLL|Mux28~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux28~16_combout\ & ((\ps2_ACCLL|Mux28~14_combout\) # (!\ps2_ACCLL|Mux25~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~13_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux28~14_combout\,
	datad => \ps2_ACCLL|Mux28~16_combout\,
	combout => \ps2_ACCLL|Mux28~17_combout\);

-- Location: LCCOMB_X20_Y21_N0
\ps2_ACCLL|Mux28~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux28~22_combout\ & (\ps2_ACCLL|Mux28~23_combout\)) # (!\ps2_ACCLL|Mux28~22_combout\ & ((\ps2_ACCLL|Mux28~17_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux28~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux28~22_combout\,
	datad => \ps2_ACCLL|Mux28~17_combout\,
	combout => \ps2_ACCLL|Mux28~24_combout\);

-- Location: LCCOMB_X20_Y21_N20
\ps2_ACCLL|Mux28~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux24~8_combout\ & (\ps2_ACCLL|Mux28~25_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux28~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux24~8_combout\,
	datac => \ps2_ACCLL|Mux28~25_combout\,
	datad => \ps2_ACCLL|Mux28~24_combout\,
	combout => \ps2_ACCLL|Mux28~26_combout\);

-- Location: LCCOMB_X20_Y21_N10
\ps2_ACCLL|Mux28~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|Mux26~2_combout\ & (\ps2_ACCLL|Mux28~15_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux28~26_combout\) # ((!\ps2_ACCLL|Mux26~2_combout\ & 
-- \ps2_ACCLL|Mux28~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux26~2_combout\,
	datac => \ps2_ACCLL|Mux28~15_combout\,
	datad => \ps2_ACCLL|Mux28~26_combout\,
	combout => \ps2_ACCLL|Mux28~27_combout\);

-- Location: LCCOMB_X21_Y21_N12
\ps2_ACCLL|Mux43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux43~22_combout\ & (\ps2_ACCLL|Mux43~7_combout\)) # (!\ps2_ACCLL|Mux43~22_combout\ & ((\ps2_ACCLL|Mux28~27_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|Mux43~7_combout\) # ((\ps2_ACCLL|Mux28~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~7_combout\,
	datab => \ps2_ACCLL|Mux43~22_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux28~27_combout\,
	combout => \ps2_ACCLL|Mux43~8_combout\);

-- Location: LCCOMB_X21_Y21_N26
\ps2_ACCLL|ascii~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~36_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux43~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux43~8_combout\,
	combout => \ps2_ACCLL|ascii~36_combout\);

-- Location: LCCOMB_X22_Y21_N14
\ps2_ACCLL|Mux43~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~9_combout\);

-- Location: LCCOMB_X17_Y21_N10
\ps2_ACCLL|Mux43~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~10_combout\);

-- Location: LCCOMB_X21_Y21_N8
\ps2_ACCLL|Mux43~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux28~27_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux43~9_combout\ & (\ps2_ACCLL|Mux43~10_combout\ & \ps2_ACCLL|Mux28~27_combout\)) # 
-- (!\ps2_ACCLL|Mux43~9_combout\ & ((\ps2_ACCLL|Mux43~10_combout\) # (\ps2_ACCLL|Mux28~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux43~9_combout\,
	datac => \ps2_ACCLL|Mux43~10_combout\,
	datad => \ps2_ACCLL|Mux28~27_combout\,
	combout => \ps2_ACCLL|Mux43~11_combout\);

-- Location: LCCOMB_X21_Y21_N30
\ps2_ACCLL|Mux43~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~23_combout\ = (\ps2_ACCLL|Mux28~27_combout\) # ((\ps2_ACCLL|Mux42~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|Mux28~27_combout\,
	combout => \ps2_ACCLL|Mux43~23_combout\);

-- Location: LCCOMB_X22_Y21_N4
\ps2_ACCLL|Mux43~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~12_combout\);

-- Location: LCCOMB_X21_Y21_N14
\ps2_ACCLL|Mux43~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux15~9_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux42~4_combout\)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux15~9_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux42~4_combout\,
	datac => \ps2_ACCLL|Mux15~9_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~13_combout\);

-- Location: LCCOMB_X21_Y21_N20
\ps2_ACCLL|Mux43~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~14_combout\ = (\ps2_ACCLL|Mux43~13_combout\ & (\ps2_ACCLL|Mux43~12_combout\)) # (!\ps2_ACCLL|Mux43~13_combout\ & ((\ps2_ACCLL|Mux28~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~12_combout\,
	datac => \ps2_ACCLL|Mux43~13_combout\,
	datad => \ps2_ACCLL|Mux28~27_combout\,
	combout => \ps2_ACCLL|Mux43~14_combout\);

-- Location: LCCOMB_X21_Y21_N18
\ps2_ACCLL|Mux43~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux43~14_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux43~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux43~23_combout\,
	datad => \ps2_ACCLL|Mux43~14_combout\,
	combout => \ps2_ACCLL|Mux43~15_combout\);

-- Location: LCCOMB_X21_Y21_N16
\ps2_ACCLL|Mux43~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~15_combout\ & (\ps2_ACCLL|Mux28~27_combout\)) # (!\ps2_ACCLL|Mux43~15_combout\ & ((\ps2_ACCLL|Mux43~11_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~11_combout\,
	datad => \ps2_ACCLL|Mux43~15_combout\,
	combout => \ps2_ACCLL|Mux43~16_combout\);

-- Location: LCCOMB_X22_Y21_N18
\ps2_ACCLL|Mux43~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~24_combout\ = (\ps2_ACCLL|Mux38~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~24_combout\);

-- Location: LCCOMB_X17_Y21_N0
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

-- Location: LCCOMB_X21_Y21_N22
\ps2_ACCLL|Mux43~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~18_combout\ = (\ps2_ACCLL|Mux43~24_combout\) # ((\ps2_ACCLL|Mux28~27_combout\ & ((\ps2_ACCLL|Mux43~17_combout\) # (!\ps2_ACCLL|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~2_combout\,
	datab => \ps2_ACCLL|Mux43~24_combout\,
	datac => \ps2_ACCLL|Mux43~17_combout\,
	datad => \ps2_ACCLL|Mux28~27_combout\,
	combout => \ps2_ACCLL|Mux43~18_combout\);

-- Location: LCCOMB_X21_Y21_N28
\ps2_ACCLL|Mux43~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~19_combout\ = (\ps2_ACCLL|Mux43~13_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux43~13_combout\ & (((\ps2_ACCLL|Mux28~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux43~13_combout\,
	datad => \ps2_ACCLL|Mux28~27_combout\,
	combout => \ps2_ACCLL|Mux43~19_combout\);

-- Location: LCCOMB_X21_Y21_N6
\ps2_ACCLL|Mux43~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux43~19_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux43~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux43~23_combout\,
	datad => \ps2_ACCLL|Mux43~19_combout\,
	combout => \ps2_ACCLL|Mux43~20_combout\);

-- Location: LCCOMB_X21_Y21_N0
\ps2_ACCLL|Mux43~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~20_combout\ & (\ps2_ACCLL|Mux28~27_combout\)) # (!\ps2_ACCLL|Mux43~20_combout\ & ((\ps2_ACCLL|Mux43~18_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~18_combout\,
	datad => \ps2_ACCLL|Mux43~20_combout\,
	combout => \ps2_ACCLL|Mux43~21_combout\);

-- Location: LCCOMB_X21_Y21_N2
\ps2_ACCLL|ascii~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~37_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~2_combout\ & (\ps2_ACCLL|Mux43~16_combout\)) # (!\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux43~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux43~16_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux43~21_combout\,
	combout => \ps2_ACCLL|ascii~37_combout\);

-- Location: LCCOMB_X21_Y21_N4
\ps2_ACCLL|ascii~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~38_combout\ = (!\ps2_ACCLL|ascii~35_combout\ & ((\ps2_ACCLL|process_0~0_combout\) # ((!\ps2_ACCLL|ascii~36_combout\ & !\ps2_ACCLL|ascii~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ascii~35_combout\,
	datac => \ps2_ACCLL|ascii~36_combout\,
	datad => \ps2_ACCLL|ascii~37_combout\,
	combout => \ps2_ACCLL|ascii~38_combout\);

-- Location: FF_X21_Y21_N5
\ps2_ACCLL|ascii[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~38_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(1));

-- Location: LCCOMB_X27_Y28_N26
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

-- Location: FF_X28_Y28_N1
\ps2_ACCLL|ascii_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[1]~6_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(1));

-- Location: LCCOMB_X22_Y20_N6
\ps2_ACCLL|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux17~6_combout\);

-- Location: LCCOMB_X20_Y16_N4
\ps2_ACCLL|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ascii\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux17~6_combout\ & 
-- ((!\ps2_ACCLL|ascii\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux17~6_combout\,
	combout => \ps2_ACCLL|Mux18~18_combout\);

-- Location: LCCOMB_X17_Y16_N16
\ps2_ACCLL|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~15_combout\);

-- Location: LCCOMB_X20_Y16_N16
\ps2_ACCLL|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux18~16_combout\);

-- Location: LCCOMB_X20_Y16_N2
\ps2_ACCLL|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~16_combout\ & ((!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|Mux18~16_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) 
-- & (!\ps2_ACCLL|ascii\(2) & ((!\ps2_ACCLL|Mux18~16_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~16_combout\,
	combout => \ps2_ACCLL|Mux18~17_combout\);

-- Location: LCCOMB_X20_Y16_N22
\ps2_ACCLL|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~17_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux18~18_combout\,
	datad => \ps2_ACCLL|Mux18~17_combout\,
	combout => \ps2_ACCLL|Mux18~19_combout\);

-- Location: LCCOMB_X21_Y16_N4
\ps2_ACCLL|Mux18~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~21_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~21_combout\);

-- Location: LCCOMB_X21_Y16_N6
\ps2_ACCLL|Mux18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux18~21_combout\)) # (!\ps2_ACCLL|ascii\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|Mux18~21_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~22_combout\);

-- Location: LCCOMB_X21_Y16_N0
\ps2_ACCLL|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((!\ps2_ACCLL|ascii\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((!\ps2_ACCLL|ascii\(2)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux18~12_combout\);

-- Location: LCCOMB_X21_Y16_N30
\ps2_ACCLL|Mux18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ascii\(2) 
-- & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux18~20_combout\);

-- Location: LCCOMB_X21_Y16_N16
\ps2_ACCLL|Mux18~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~23_combout\ = (\ps2_ACCLL|Mux18~22_combout\ & ((\ps2_ACCLL|Mux18~12_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux18~22_combout\ & (((\ps2_ACCLL|Mux18~20_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~22_combout\,
	datab => \ps2_ACCLL|Mux18~12_combout\,
	datac => \ps2_ACCLL|Mux18~20_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~23_combout\);

-- Location: LCCOMB_X20_Y16_N24
\ps2_ACCLL|Mux18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~23_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~23_combout\,
	combout => \ps2_ACCLL|Mux18~24_combout\);

-- Location: LCCOMB_X20_Y16_N6
\ps2_ACCLL|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux18~19_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux18~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux18~19_combout\,
	datad => \ps2_ACCLL|Mux18~24_combout\,
	combout => \ps2_ACCLL|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y16_N10
\ps2_ACCLL|Mux18~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~25_combout\);

-- Location: LCCOMB_X21_Y16_N20
\ps2_ACCLL|Mux18~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~26_combout\);

-- Location: LCCOMB_X21_Y16_N18
\ps2_ACCLL|Mux18~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~27_combout\ = (\ps2_ACCLL|Mux18~26_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|Mux18~26_combout\ & ((\ps2_ACCLL|Mux18~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux18~20_combout\,
	datad => \ps2_ACCLL|Mux18~26_combout\,
	combout => \ps2_ACCLL|Mux18~27_combout\);

-- Location: LCCOMB_X21_Y16_N24
\ps2_ACCLL|Mux18~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~28_combout\ = (\ps2_ACCLL|Mux18~25_combout\ & (((!\ps2_ACCLL|Mux18~27_combout\ & \ps2_ACCLL|Mux18~26_combout\)) # (!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|Mux18~25_combout\ & (\ps2_ACCLL|Mux18~27_combout\ & 
-- ((!\ps2_ACCLL|Mux18~26_combout\) # (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~25_combout\,
	datab => \ps2_ACCLL|Mux18~27_combout\,
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~26_combout\,
	combout => \ps2_ACCLL|Mux18~28_combout\);

-- Location: LCCOMB_X20_Y16_N8
\ps2_ACCLL|Mux18~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~28_combout\,
	combout => \ps2_ACCLL|Mux18~29_combout\);

-- Location: LCCOMB_X21_Y16_N14
\ps2_ACCLL|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux15~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # 
-- (!\ps2_ACCLL|Mux15~9_combout\ & (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux18~11_combout\);

-- Location: LCCOMB_X21_Y16_N8
\ps2_ACCLL|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~10_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~10_combout\);

-- Location: LCCOMB_X21_Y16_N22
\ps2_ACCLL|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~11_combout\ & ((\ps2_ACCLL|Mux18~12_combout\))) # (!\ps2_ACCLL|Mux18~11_combout\ & (\ps2_ACCLL|Mux18~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|Mux18~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux18~11_combout\,
	datac => \ps2_ACCLL|Mux18~10_combout\,
	datad => \ps2_ACCLL|Mux18~12_combout\,
	combout => \ps2_ACCLL|Mux18~13_combout\);

-- Location: LCCOMB_X20_Y16_N26
\ps2_ACCLL|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux42~4_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux42~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~8_combout\);

-- Location: LCCOMB_X21_Y16_N12
\ps2_ACCLL|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux18~7_combout\);

-- Location: LCCOMB_X21_Y16_N2
\ps2_ACCLL|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~9_combout\ = (\ps2_ACCLL|Mux18~8_combout\ & (((!\ps2_ACCLL|ascii\(2) & \ps2_ACCLL|Mux18~7_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux18~8_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- \ps2_ACCLL|Mux18~7_combout\)) # (!\ps2_ACCLL|ascii\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|Mux18~8_combout\,
	datad => \ps2_ACCLL|Mux18~7_combout\,
	combout => \ps2_ACCLL|Mux18~9_combout\);

-- Location: LCCOMB_X21_Y16_N28
\ps2_ACCLL|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~9_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux18~13_combout\,
	datad => \ps2_ACCLL|Mux18~9_combout\,
	combout => \ps2_ACCLL|Mux18~14_combout\);

-- Location: LCCOMB_X20_Y16_N14
\ps2_ACCLL|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~1_combout\ = (\ps2_ACCLL|Mux10~0_combout\ & (((\ps2_ACCLL|Mux18~29_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|Mux10~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux18~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux10~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux18~29_combout\,
	datad => \ps2_ACCLL|Mux18~14_combout\,
	combout => \ps2_ACCLL|Mux10~1_combout\);

-- Location: LCCOMB_X17_Y16_N2
\ps2_ACCLL|Mux42~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~18_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux42~18_combout\);

-- Location: LCCOMB_X17_Y16_N12
\ps2_ACCLL|Mux42~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~22_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux42~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux42~18_combout\,
	combout => \ps2_ACCLL|Mux42~22_combout\);

-- Location: LCCOMB_X19_Y18_N2
\ps2_ACCLL|Mux42~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~19_combout\ = ((!\ps2_ACCLL|shift_l~q\ & !\ps2_ACCLL|shift_r~q\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|shift_l~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|Mux42~19_combout\);

-- Location: LCCOMB_X20_Y16_N20
\ps2_ACCLL|Mux42~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~19_combout\ & (\ps2_ACCLL|Mux42~4_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux24~19_combout\,
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux42~20_combout\);

-- Location: LCCOMB_X19_Y17_N4
\ps2_ACCLL|Mux25~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~24_combout\);

-- Location: LCCOMB_X19_Y17_N2
\ps2_ACCLL|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~1_combout\ = (\ps2_ACCLL|e0_code~q\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux18~1_combout\);

-- Location: LCCOMB_X19_Y17_N8
\ps2_ACCLL|Mux27~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux18~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux25~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux25~24_combout\,
	datad => \ps2_ACCLL|Mux18~1_combout\,
	combout => \ps2_ACCLL|Mux27~9_combout\);

-- Location: LCCOMB_X20_Y20_N28
\ps2_ACCLL|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~0_combout\);

-- Location: LCCOMB_X19_Y17_N26
\ps2_ACCLL|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux18~2_combout\);

-- Location: LCCOMB_X19_Y17_N20
\ps2_ACCLL|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux18~3_combout\);

-- Location: LCCOMB_X19_Y17_N10
\ps2_ACCLL|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~4_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux18~3_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # 
-- (!\ps2_ACCLL|Mux18~3_combout\)))) # (!\ps2_ACCLL|Mux18~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux18~2_combout\,
	datad => \ps2_ACCLL|Mux18~3_combout\,
	combout => \ps2_ACCLL|Mux18~4_combout\);

-- Location: LCCOMB_X19_Y17_N18
\ps2_ACCLL|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~5_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|Mux18~4_combout\,
	combout => \ps2_ACCLL|Mux18~5_combout\);

-- Location: LCCOMB_X19_Y17_N24
\ps2_ACCLL|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~6_combout\ = (\ps2_ACCLL|Mux18~5_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux27~9_combout\ & \ps2_ACCLL|Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux27~9_combout\,
	datac => \ps2_ACCLL|Mux18~0_combout\,
	datad => \ps2_ACCLL|Mux18~5_combout\,
	combout => \ps2_ACCLL|Mux18~6_combout\);

-- Location: LCCOMB_X21_Y20_N26
\ps2_ACCLL|Mux27~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux27~8_combout\);

-- Location: LCCOMB_X19_Y17_N22
\ps2_ACCLL|Mux27~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux27~14_combout\);

-- Location: LCCOMB_X19_Y17_N14
\ps2_ACCLL|Mux27~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~12_combout\ = (\ps2_ACCLL|Mux18~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux27~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux27~9_combout\,
	combout => \ps2_ACCLL|Mux27~12_combout\);

-- Location: LCCOMB_X19_Y17_N0
\ps2_ACCLL|Mux27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~13_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|Mux18~4_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|Mux27~13_combout\);

-- Location: LCCOMB_X19_Y17_N12
\ps2_ACCLL|Mux27~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~15_combout\ = (\ps2_ACCLL|Mux27~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux27~14_combout\ & (((\ps2_ACCLL|Mux27~12_combout\) # (\ps2_ACCLL|Mux27~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux27~14_combout\,
	datac => \ps2_ACCLL|Mux27~12_combout\,
	datad => \ps2_ACCLL|Mux27~13_combout\,
	combout => \ps2_ACCLL|Mux27~15_combout\);

-- Location: LCCOMB_X20_Y17_N16
\ps2_ACCLL|Mux27~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~16_combout\ = (\ps2_ACCLL|Mux18~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux18~6_combout\,
	combout => \ps2_ACCLL|Mux27~16_combout\);

-- Location: LCCOMB_X19_Y17_N28
\ps2_ACCLL|Mux27~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~10_combout\ = (\ps2_ACCLL|Mux25~13_combout\) # ((!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux25~13_combout\,
	datad => \ps2_ACCLL|Mux18~4_combout\,
	combout => \ps2_ACCLL|Mux27~10_combout\);

-- Location: LCCOMB_X20_Y17_N26
\ps2_ACCLL|Mux27~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~11_combout\ = (\ps2_ACCLL|Mux27~10_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux18~0_combout\ & \ps2_ACCLL|Mux27~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux18~0_combout\,
	datac => \ps2_ACCLL|Mux27~9_combout\,
	datad => \ps2_ACCLL|Mux27~10_combout\,
	combout => \ps2_ACCLL|Mux27~11_combout\);

-- Location: LCCOMB_X20_Y17_N30
\ps2_ACCLL|Mux27~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~17_combout\ = (\ps2_ACCLL|Mux27~15_combout\ & ((\ps2_ACCLL|Mux27~16_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux27~15_combout\ & (((\ps2_ACCLL|Mux27~11_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~15_combout\,
	datab => \ps2_ACCLL|Mux27~16_combout\,
	datac => \ps2_ACCLL|Mux27~11_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux27~17_combout\);

-- Location: LCCOMB_X19_Y17_N30
\ps2_ACCLL|Mux27~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux27~19_combout\);

-- Location: LCCOMB_X19_Y17_N16
\ps2_ACCLL|Mux27~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux27~20_combout\);

-- Location: LCCOMB_X19_Y17_N6
\ps2_ACCLL|Mux27~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~21_combout\ = (\ps2_ACCLL|Mux27~19_combout\ & (\ps2_ACCLL|Mux27~20_combout\ & ((\ps2_ACCLL|Mux27~12_combout\) # (\ps2_ACCLL|Mux18~5_combout\)))) # (!\ps2_ACCLL|Mux27~19_combout\ & ((\ps2_ACCLL|Mux27~20_combout\) # 
-- ((\ps2_ACCLL|Mux27~12_combout\) # (\ps2_ACCLL|Mux18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~19_combout\,
	datab => \ps2_ACCLL|Mux27~20_combout\,
	datac => \ps2_ACCLL|Mux27~12_combout\,
	datad => \ps2_ACCLL|Mux18~5_combout\,
	combout => \ps2_ACCLL|Mux27~21_combout\);

-- Location: LCCOMB_X20_Y17_N14
\ps2_ACCLL|Mux27~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux27~21_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux27~21_combout\,
	datad => \ps2_ACCLL|Mux18~6_combout\,
	combout => \ps2_ACCLL|Mux27~22_combout\);

-- Location: LCCOMB_X20_Y17_N22
\ps2_ACCLL|Mux27~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux27~30_combout\);

-- Location: LCCOMB_X20_Y17_N28
\ps2_ACCLL|Mux27~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux18~6_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|Mux18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux18~6_combout\,
	combout => \ps2_ACCLL|Mux27~29_combout\);

-- Location: LCCOMB_X20_Y17_N8
\ps2_ACCLL|Mux27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~18_combout\ = (\ps2_ACCLL|Mux27~30_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~29_combout\)))) # (!\ps2_ACCLL|Mux27~30_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux27~11_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~30_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux27~11_combout\,
	datad => \ps2_ACCLL|Mux27~29_combout\,
	combout => \ps2_ACCLL|Mux27~18_combout\);

-- Location: LCCOMB_X20_Y17_N4
\ps2_ACCLL|Mux27~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux18~6_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux18~6_combout\,
	combout => \ps2_ACCLL|Mux27~31_combout\);

-- Location: LCCOMB_X20_Y17_N12
\ps2_ACCLL|Mux27~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~23_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ascii\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|Mux27~23_combout\);

-- Location: LCCOMB_X20_Y17_N2
\ps2_ACCLL|Mux27~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux18~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux18~6_combout\,
	combout => \ps2_ACCLL|Mux27~32_combout\);

-- Location: LCCOMB_X20_Y17_N10
\ps2_ACCLL|Mux27~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux27~32_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux27~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux27~32_combout\,
	combout => \ps2_ACCLL|Mux27~24_combout\);

-- Location: LCCOMB_X20_Y17_N24
\ps2_ACCLL|Mux27~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~24_combout\ & (\ps2_ACCLL|Mux27~11_combout\)) # (!\ps2_ACCLL|Mux27~24_combout\ & ((\ps2_ACCLL|Mux27~31_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux27~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux27~31_combout\,
	datad => \ps2_ACCLL|Mux27~24_combout\,
	combout => \ps2_ACCLL|Mux27~25_combout\);

-- Location: LCCOMB_X20_Y17_N18
\ps2_ACCLL|Mux27~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux27~22_combout\ & ((\ps2_ACCLL|Mux27~25_combout\))) # (!\ps2_ACCLL|Mux27~22_combout\ & (\ps2_ACCLL|Mux27~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux27~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux27~22_combout\,
	datac => \ps2_ACCLL|Mux27~18_combout\,
	datad => \ps2_ACCLL|Mux27~25_combout\,
	combout => \ps2_ACCLL|Mux27~26_combout\);

-- Location: LCCOMB_X20_Y17_N20
\ps2_ACCLL|Mux27~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux27~8_combout\ & (\ps2_ACCLL|Mux27~17_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux27~26_combout\) # ((\ps2_ACCLL|Mux27~8_combout\ & 
-- \ps2_ACCLL|Mux27~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux27~8_combout\,
	datac => \ps2_ACCLL|Mux27~17_combout\,
	datad => \ps2_ACCLL|Mux27~26_combout\,
	combout => \ps2_ACCLL|Mux27~27_combout\);

-- Location: LCCOMB_X20_Y17_N6
\ps2_ACCLL|Mux27~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~28_combout\ = (\ps2_ACCLL|Mux26~2_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux27~27_combout\)))) # (!\ps2_ACCLL|Mux26~2_combout\ & ((\ps2_ACCLL|Mux18~6_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & 
-- \ps2_ACCLL|Mux27~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~2_combout\,
	datab => \ps2_ACCLL|Mux18~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux27~27_combout\,
	combout => \ps2_ACCLL|Mux27~28_combout\);

-- Location: LCCOMB_X19_Y16_N30
\ps2_ACCLL|Mux42~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~21_combout\ = (\ps2_ACCLL|Mux42~22_combout\) # ((\ps2_ACCLL|Mux42~20_combout\ & (\ps2_ACCLL|Mux42~19_combout\)) # (!\ps2_ACCLL|Mux42~20_combout\ & ((\ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~22_combout\,
	datab => \ps2_ACCLL|Mux42~19_combout\,
	datac => \ps2_ACCLL|Mux42~20_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~21_combout\);

-- Location: LCCOMB_X19_Y16_N20
\ps2_ACCLL|Mux42~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~23_combout\);

-- Location: LCCOMB_X19_Y16_N6
\ps2_ACCLL|Mux42~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~24_combout\ = (\ps2_ACCLL|Mux42~23_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux42~24_combout\);

-- Location: LCCOMB_X19_Y16_N2
\ps2_ACCLL|Mux42~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux42~5_combout\);

-- Location: LCCOMB_X19_Y18_N10
\ps2_ACCLL|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux17~7_combout\);

-- Location: LCCOMB_X20_Y18_N18
\ps2_ACCLL|Mux42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~6_combout\ = (\ps2_ACCLL|Mux17~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux42~6_combout\);

-- Location: LCCOMB_X19_Y16_N16
\ps2_ACCLL|Mux42~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~7_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~7_combout\);

-- Location: LCCOMB_X19_Y16_N14
\ps2_ACCLL|Mux42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux42~6_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux42~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux42~7_combout\,
	combout => \ps2_ACCLL|Mux42~8_combout\);

-- Location: LCCOMB_X19_Y16_N8
\ps2_ACCLL|Mux42~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~9_combout\ = (\ps2_ACCLL|Mux42~24_combout\ & ((\ps2_ACCLL|Mux42~5_combout\) # ((!\ps2_ACCLL|Mux42~8_combout\ & \ps2_ACCLL|Mux27~28_combout\)))) # (!\ps2_ACCLL|Mux42~24_combout\ & (((!\ps2_ACCLL|Mux42~8_combout\ & 
-- \ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~24_combout\,
	datab => \ps2_ACCLL|Mux42~5_combout\,
	datac => \ps2_ACCLL|Mux42~8_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~9_combout\);

-- Location: LCCOMB_X19_Y16_N10
\ps2_ACCLL|Mux42~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~10_combout\);

-- Location: LCCOMB_X19_Y16_N0
\ps2_ACCLL|Mux13~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux13~17_combout\);

-- Location: LCCOMB_X20_Y16_N30
\ps2_ACCLL|Mux42~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux42~15_combout\);

-- Location: LCCOMB_X19_Y16_N26
\ps2_ACCLL|Mux42~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~16_combout\ = (\ps2_ACCLL|Mux42~10_combout\ & ((\ps2_ACCLL|Mux13~17_combout\ & ((\ps2_ACCLL|Mux27~28_combout\))) # (!\ps2_ACCLL|Mux13~17_combout\ & (\ps2_ACCLL|Mux42~15_combout\)))) # (!\ps2_ACCLL|Mux42~10_combout\ & 
-- (((\ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~10_combout\,
	datab => \ps2_ACCLL|Mux13~17_combout\,
	datac => \ps2_ACCLL|Mux42~15_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~16_combout\);

-- Location: LCCOMB_X19_Y16_N22
\ps2_ACCLL|Mux42~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~11_combout\ = (\ps2_ACCLL|Mux42~10_combout\ & ((\ps2_ACCLL|Mux13~17_combout\ & ((\ps2_ACCLL|Mux27~28_combout\))) # (!\ps2_ACCLL|Mux13~17_combout\ & (\ps2_ACCLL|Mux24~8_combout\)))) # (!\ps2_ACCLL|Mux42~10_combout\ & 
-- (((\ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~10_combout\,
	datab => \ps2_ACCLL|Mux13~17_combout\,
	datac => \ps2_ACCLL|Mux24~8_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~11_combout\);

-- Location: LCCOMB_X19_Y16_N4
\ps2_ACCLL|Mux42~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux42~12_combout\);

-- Location: LCCOMB_X19_Y16_N18
\ps2_ACCLL|Mux42~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~13_combout\ = (\ps2_ACCLL|Mux42~24_combout\ & ((\ps2_ACCLL|Mux42~12_combout\) # ((!\ps2_ACCLL|Mux42~8_combout\ & \ps2_ACCLL|Mux27~28_combout\)))) # (!\ps2_ACCLL|Mux42~24_combout\ & (!\ps2_ACCLL|Mux42~8_combout\ & 
-- ((\ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~24_combout\,
	datab => \ps2_ACCLL|Mux42~8_combout\,
	datac => \ps2_ACCLL|Mux42~12_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~13_combout\);

-- Location: LCCOMB_X19_Y16_N12
\ps2_ACCLL|Mux42~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~14_combout\ = (\ps2_ACCLL|process_0~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux42~11_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux42~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux42~11_combout\,
	datad => \ps2_ACCLL|Mux42~13_combout\,
	combout => \ps2_ACCLL|Mux42~14_combout\);

-- Location: LCCOMB_X19_Y16_N28
\ps2_ACCLL|Mux42~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~17_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux42~14_combout\ & ((\ps2_ACCLL|Mux42~16_combout\))) # (!\ps2_ACCLL|Mux42~14_combout\ & (\ps2_ACCLL|Mux42~9_combout\)))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux42~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux42~9_combout\,
	datac => \ps2_ACCLL|Mux42~16_combout\,
	datad => \ps2_ACCLL|Mux42~14_combout\,
	combout => \ps2_ACCLL|Mux42~17_combout\);

-- Location: LCCOMB_X15_Y16_N18
\ps2_ACCLL|ascii~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~39_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux42~17_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux42~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux42~21_combout\,
	datad => \ps2_ACCLL|Mux42~17_combout\,
	combout => \ps2_ACCLL|ascii~39_combout\);

-- Location: LCCOMB_X15_Y16_N0
\ps2_ACCLL|ascii~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~45_combout\ = (!\ps2_ACCLL|ascii~39_combout\ & (((!\ps2_ACCLL|control_l~q\ & !\ps2_ACCLL|control_r~q\)) # (!\ps2_ACCLL|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datab => \ps2_ACCLL|control_r~q\,
	datac => \ps2_ACCLL|Mux10~1_combout\,
	datad => \ps2_ACCLL|ascii~39_combout\,
	combout => \ps2_ACCLL|ascii~45_combout\);

-- Location: FF_X15_Y16_N1
\ps2_ACCLL|ascii[2]\ : dffeas
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
	q => \ps2_ACCLL|ascii\(2));

-- Location: LCCOMB_X21_Y16_N26
\ps2_ACCLL|ascii_code[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[2]~7_combout\ = !\ps2_ACCLL|ascii\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|ascii_code[2]~7_combout\);

-- Location: FF_X27_Y28_N27
\ps2_ACCLL|ascii_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[2]~7_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(2));

-- Location: LCCOMB_X15_Y18_N10
\ps2_ACCLL|ascii~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~17_combout\);

-- Location: LCCOMB_X15_Y18_N0
\ps2_ACCLL|ascii~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|ascii~18_combout\);

-- Location: LCCOMB_X17_Y18_N22
\ps2_ACCLL|Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux25~31_combout\ & \ps2_ACCLL|Mux17~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~7_combout\) # ((\ps2_ACCLL|Mux25~31_combout\ & 
-- \ps2_ACCLL|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux13~7_combout\,
	datac => \ps2_ACCLL|Mux25~31_combout\,
	datad => \ps2_ACCLL|Mux17~6_combout\,
	combout => \ps2_ACCLL|Mux14~1_combout\);

-- Location: LCCOMB_X16_Y18_N0
\ps2_ACCLL|ascii~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux14~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ascii~18_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux14~1_combout\,
	combout => \ps2_ACCLL|ascii~19_combout\);

-- Location: LCCOMB_X17_Y18_N24
\ps2_ACCLL|Mux39~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~27_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux39~27_combout\);

-- Location: LCCOMB_X17_Y18_N12
\ps2_ACCLL|ascii~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~20_combout\ = (\ps2_ACCLL|Mux39~27_combout\ & (((\ps2_ACCLL|ascii~19_combout\)))) # (!\ps2_ACCLL|Mux39~27_combout\ & (((!\ps2_ACCLL|Mux25~31_combout\)) # (!\ps2_ACCLL|Mux15~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~9_combout\,
	datab => \ps2_ACCLL|Mux25~31_combout\,
	datac => \ps2_ACCLL|ascii~19_combout\,
	datad => \ps2_ACCLL|Mux39~27_combout\,
	combout => \ps2_ACCLL|ascii~20_combout\);

-- Location: LCCOMB_X16_Y18_N30
\ps2_ACCLL|ascii~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~21_combout\ = (\ps2_ACCLL|ascii~17_combout\ & ((\ps2_ACCLL|Mux14~1_combout\) # ((!\ps2_ACCLL|ascii\(6) & \ps2_ACCLL|ascii~20_combout\)))) # (!\ps2_ACCLL|ascii~17_combout\ & (!\ps2_ACCLL|ascii\(6) & (\ps2_ACCLL|ascii~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~17_combout\,
	datab => \ps2_ACCLL|ascii\(6),
	datac => \ps2_ACCLL|ascii~20_combout\,
	datad => \ps2_ACCLL|Mux14~1_combout\,
	combout => \ps2_ACCLL|ascii~21_combout\);

-- Location: LCCOMB_X22_Y17_N22
\ps2_ACCLL|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~9_combout\);

-- Location: LCCOMB_X22_Y17_N2
\ps2_ACCLL|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~6_combout\);

-- Location: LCCOMB_X22_Y17_N0
\ps2_ACCLL|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~5_combout\);

-- Location: LCCOMB_X22_Y17_N20
\ps2_ACCLL|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux6~6_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|Mux6~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux6~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux6~5_combout\,
	combout => \ps2_ACCLL|Mux6~12_combout\);

-- Location: LCCOMB_X22_Y17_N28
\ps2_ACCLL|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~8_combout\);

-- Location: LCCOMB_X22_Y17_N26
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
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux6~13_combout\,
	combout => \ps2_ACCLL|Mux6~14_combout\);

-- Location: LCCOMB_X16_Y18_N16
\ps2_ACCLL|ascii~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~22_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux6~14_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ascii~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|ascii~21_combout\,
	datad => \ps2_ACCLL|Mux6~14_combout\,
	combout => \ps2_ACCLL|ascii~22_combout\);

-- Location: LCCOMB_X17_Y18_N30
\ps2_ACCLL|Mux38~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux38~21_combout\);

-- Location: LCCOMB_X19_Y20_N2
\ps2_ACCLL|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~4_combout\ = (!\ps2_ACCLL|ascii\(6) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux16~0_combout\)) # (!\ps2_ACCLL|Mux13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|Mux13~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux14~4_combout\);

-- Location: LCCOMB_X20_Y20_N22
\ps2_ACCLL|Mux38~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~7_combout\);

-- Location: LCCOMB_X19_Y20_N8
\ps2_ACCLL|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~3_combout\ = (\ps2_ACCLL|Mux38~7_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|caps_lock~4_combout\ & \ps2_ACCLL|e0_code~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|caps_lock~4_combout\,
	datad => \ps2_ACCLL|e0_code~q\,
	combout => \ps2_ACCLL|Mux14~3_combout\);

-- Location: LCCOMB_X19_Y20_N30
\ps2_ACCLL|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux16~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((!\ps2_ACCLL|Mux16~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux14~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux14~2_combout\);

-- Location: LCCOMB_X19_Y20_N0
\ps2_ACCLL|Mux23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~6_combout\ = (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|Mux14~2_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux14~2_combout\,
	combout => \ps2_ACCLL|Mux23~6_combout\);

-- Location: LCCOMB_X19_Y20_N10
\ps2_ACCLL|Mux23~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux23~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux14~4_combout\) # ((\ps2_ACCLL|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux14~4_combout\,
	datac => \ps2_ACCLL|Mux14~3_combout\,
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux23~7_combout\);

-- Location: LCCOMB_X16_Y20_N8
\ps2_ACCLL|Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux22~5_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- \ps2_ACCLL|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux22~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux22~3_combout\,
	combout => \ps2_ACCLL|Mux23~2_combout\);

-- Location: LCCOMB_X16_Y20_N22
\ps2_ACCLL|Mux23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~3_combout\ = (\ps2_ACCLL|Mux23~7_combout\) # ((\ps2_ACCLL|Mux23~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux22~4_combout\,
	datac => \ps2_ACCLL|Mux23~2_combout\,
	datad => \ps2_ACCLL|Mux23~7_combout\,
	combout => \ps2_ACCLL|Mux23~3_combout\);

-- Location: LCCOMB_X16_Y20_N12
\ps2_ACCLL|Mux23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux22~0_combout\ & ((!\ps2_ACCLL|Mux24~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux23~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux22~0_combout\,
	datac => \ps2_ACCLL|Mux23~3_combout\,
	datad => \ps2_ACCLL|Mux24~8_combout\,
	combout => \ps2_ACCLL|Mux23~4_combout\);

-- Location: LCCOMB_X16_Y20_N10
\ps2_ACCLL|Mux23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux23~7_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux23~4_combout\) # ((\ps2_ACCLL|Mux23~7_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux23~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux23~4_combout\,
	combout => \ps2_ACCLL|Mux23~5_combout\);

-- Location: LCCOMB_X16_Y18_N14
\ps2_ACCLL|Mux38~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux38~21_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux38~21_combout\ & ((\ps2_ACCLL|Mux23~5_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux23~5_combout\ & ((\ps2_ACCLL|Mux38~21_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux38~21_combout\,
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|Mux38~22_combout\);

-- Location: LCCOMB_X17_Y18_N18
\ps2_ACCLL|Mux38~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~8_combout\);

-- Location: LCCOMB_X17_Y18_N20
\ps2_ACCLL|Mux38~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|Mux38~8_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux38~7_combout\ & 
-- \ps2_ACCLL|Mux38~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux38~8_combout\,
	combout => \ps2_ACCLL|Mux38~9_combout\);

-- Location: LCCOMB_X16_Y18_N6
\ps2_ACCLL|Mux38~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~10_combout\ = (\ps2_ACCLL|Mux38~9_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux38~9_combout\ & (((\ps2_ACCLL|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux38~9_combout\,
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|Mux38~10_combout\);

-- Location: LCCOMB_X16_Y18_N24
\ps2_ACCLL|Mux38~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux38~10_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux38~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux38~22_combout\,
	datad => \ps2_ACCLL|Mux38~10_combout\,
	combout => \ps2_ACCLL|Mux38~11_combout\);

-- Location: LCCOMB_X16_Y18_N26
\ps2_ACCLL|Mux38~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~16_combout\ = (\ps2_ACCLL|Mux23~5_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((!\ps2_ACCLL|Mux42~4_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|Mux38~16_combout\);

-- Location: LCCOMB_X17_Y18_N10
\ps2_ACCLL|Mux38~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~12_combout\);

-- Location: LCCOMB_X17_Y18_N4
\ps2_ACCLL|Mux38~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux38~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux38~12_combout\,
	combout => \ps2_ACCLL|Mux38~20_combout\);

-- Location: LCCOMB_X16_Y17_N0
\ps2_ACCLL|Mux38~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux38~13_combout\);

-- Location: LCCOMB_X16_Y18_N22
\ps2_ACCLL|Mux38~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~14_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux38~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux38~13_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~14_combout\);

-- Location: LCCOMB_X16_Y18_N12
\ps2_ACCLL|Mux38~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~15_combout\ = (\ps2_ACCLL|Mux38~20_combout\) # ((\ps2_ACCLL|Mux38~14_combout\ & \ps2_ACCLL|Mux23~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux38~20_combout\,
	datac => \ps2_ACCLL|Mux38~14_combout\,
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|Mux38~15_combout\);

-- Location: LCCOMB_X16_Y18_N8
\ps2_ACCLL|ascii~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux38~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux38~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux38~16_combout\,
	datad => \ps2_ACCLL|Mux38~15_combout\,
	combout => \ps2_ACCLL|ascii~23_combout\);

-- Location: LCCOMB_X16_Y20_N24
\ps2_ACCLL|ascii~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~43_combout\ = (\ps2_ACCLL|Mux23~5_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|ascii~43_combout\);

-- Location: LCCOMB_X15_Y18_N8
\ps2_ACCLL|ascii~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~46_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux23~5_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- \ps2_ACCLL|Mux23~5_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|ascii~46_combout\);

-- Location: LCCOMB_X15_Y18_N26
\ps2_ACCLL|ascii~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~47_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux23~5_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii~46_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (\ps2_ACCLL|Mux23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ascii~46_combout\,
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|ascii~47_combout\);

-- Location: LCCOMB_X15_Y18_N24
\ps2_ACCLL|Mux41~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~4_combout\);

-- Location: LCCOMB_X15_Y18_N22
\ps2_ACCLL|Mux38~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~18_combout\ = (\ps2_ACCLL|Mux41~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux41~4_combout\,
	combout => \ps2_ACCLL|Mux38~18_combout\);

-- Location: LCCOMB_X15_Y18_N12
\ps2_ACCLL|Mux38~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~19_combout\ = (\ps2_ACCLL|Mux38~18_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux38~18_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux23~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|Mux38~19_combout\);

-- Location: LCCOMB_X15_Y18_N14
\ps2_ACCLL|ascii~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~24_combout\ = (\ps2_ACCLL|process_0~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((\ps2_ACCLL|Mux38~19_combout\))))) # (!\ps2_ACCLL|process_0~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ascii~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii~47_combout\,
	datad => \ps2_ACCLL|Mux38~19_combout\,
	combout => \ps2_ACCLL|ascii~24_combout\);

-- Location: LCCOMB_X16_Y18_N18
\ps2_ACCLL|ascii~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ascii~43_combout\) # ((\ps2_ACCLL|Mux38~17_combout\ & \ps2_ACCLL|ascii~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ascii~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~43_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux38~17_combout\,
	datad => \ps2_ACCLL|ascii~24_combout\,
	combout => \ps2_ACCLL|ascii~25_combout\);

-- Location: LCCOMB_X16_Y18_N28
\ps2_ACCLL|ascii~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ascii~23_combout\ & ((\ps2_ACCLL|ascii~25_combout\))) # (!\ps2_ACCLL|ascii~23_combout\ & (\ps2_ACCLL|Mux38~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ascii~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux38~11_combout\,
	datac => \ps2_ACCLL|ascii~23_combout\,
	datad => \ps2_ACCLL|ascii~25_combout\,
	combout => \ps2_ACCLL|ascii~26_combout\);

-- Location: LCCOMB_X16_Y18_N20
\ps2_ACCLL|ascii~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~44_combout\ = (!\ps2_ACCLL|ascii~22_combout\ & ((\ps2_ACCLL|control_r~q\) # ((\ps2_ACCLL|control_l~q\) # (!\ps2_ACCLL|ascii~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|ascii~22_combout\,
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|ascii~26_combout\,
	combout => \ps2_ACCLL|ascii~44_combout\);

-- Location: FF_X16_Y18_N21
\ps2_ACCLL|ascii[6]\ : dffeas
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
	q => \ps2_ACCLL|ascii\(6));

-- Location: LCCOMB_X27_Y25_N4
\ps2_ACCLL|ascii_code[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[6]~4_combout\ = !\ps2_ACCLL|ascii\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(6),
	combout => \ps2_ACCLL|ascii_code[6]~4_combout\);

-- Location: LCCOMB_X28_Y28_N26
\ps2_ACCLL|ascii_code[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[6]~feeder_combout\ = \ps2_ACCLL|ascii_code[6]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii_code[6]~4_combout\,
	combout => \ps2_ACCLL|ascii_code[6]~feeder_combout\);

-- Location: FF_X28_Y28_N27
\ps2_ACCLL|ascii_code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[6]~feeder_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(6));

-- Location: LCCOMB_X16_Y17_N10
\ps2_ACCLL|Mux17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~19_combout\ = (\ps2_ACCLL|Mux25~13_combout\ & ((\ps2_ACCLL|Mux15~9_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux15~9_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux25~13_combout\ & 
-- (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|Mux25~13_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux17~19_combout\);

-- Location: LCCOMB_X16_Y17_N22
\ps2_ACCLL|Mux17~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~32_combout\ = (\ps2_ACCLL|Mux17~6_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux17~6_combout\ & (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~6_combout\,
	combout => \ps2_ACCLL|Mux17~32_combout\);

-- Location: LCCOMB_X16_Y17_N14
\ps2_ACCLL|Mux17~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~21_combout\ = (\ps2_ACCLL|Mux17~32_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux42~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux17~32_combout\,
	datad => \ps2_ACCLL|Mux42~4_combout\,
	combout => \ps2_ACCLL|Mux17~21_combout\);

-- Location: LCCOMB_X16_Y17_N12
\ps2_ACCLL|Mux17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~9_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux15~9_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux17~20_combout\);

-- Location: LCCOMB_X16_Y17_N8
\ps2_ACCLL|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~20_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux17~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|Mux17~20_combout\,
	combout => \ps2_ACCLL|Mux9~2_combout\);

-- Location: LCCOMB_X22_Y20_N4
\ps2_ACCLL|Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~17_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux15~17_combout\);

-- Location: LCCOMB_X16_Y17_N2
\ps2_ACCLL|Mux17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~22_combout\ = (\ps2_ACCLL|Mux42~4_combout\ & ((\ps2_ACCLL|Mux15~17_combout\) # ((\ps2_ACCLL|Mux19~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|Mux42~4_combout\ & (\ps2_ACCLL|Mux19~2_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~4_combout\,
	datab => \ps2_ACCLL|Mux19~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~17_combout\,
	combout => \ps2_ACCLL|Mux17~22_combout\);

-- Location: LCCOMB_X16_Y17_N20
\ps2_ACCLL|Mux17~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~33_combout\ = (\ps2_ACCLL|Mux17~22_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|Mux17~22_combout\ & (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~22_combout\,
	combout => \ps2_ACCLL|Mux17~33_combout\);

-- Location: LCCOMB_X16_Y17_N4
\ps2_ACCLL|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~3_combout\ = (\ps2_ACCLL|Mux9~2_combout\ & (((\ps2_ACCLL|Mux17~33_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux9~2_combout\ & (\ps2_ACCLL|Mux17~19_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~19_combout\,
	datab => \ps2_ACCLL|Mux9~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux17~33_combout\,
	combout => \ps2_ACCLL|Mux9~3_combout\);

-- Location: LCCOMB_X15_Y19_N2
\ps2_ACCLL|Mux17~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~31_combout\ = (\ps2_ACCLL|Mux17~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|ascii\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux17~6_combout\ & (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~6_combout\,
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux17~31_combout\);

-- Location: LCCOMB_X15_Y19_N0
\ps2_ACCLL|Mux17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~14_combout\ = (\ps2_ACCLL|shift_l~0_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|shift_l~0_combout\,
	combout => \ps2_ACCLL|Mux17~14_combout\);

-- Location: LCCOMB_X15_Y19_N12
\ps2_ACCLL|Mux17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~15_combout\ = (\ps2_ACCLL|Mux17~14_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|shift_l~1_combout\))) # (!\ps2_ACCLL|Mux17~14_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~1_combout\,
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~14_combout\,
	combout => \ps2_ACCLL|Mux17~15_combout\);

-- Location: LCCOMB_X15_Y19_N26
\ps2_ACCLL|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (\ps2_ACCLL|Mux17~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux17~31_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux17~31_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux17~15_combout\,
	combout => \ps2_ACCLL|Mux9~0_combout\);

-- Location: LCCOMB_X15_Y19_N14
\ps2_ACCLL|Mux17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~11_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ascii\(3))

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
	combout => \ps2_ACCLL|Mux17~11_combout\);

-- Location: LCCOMB_X15_Y19_N24
\ps2_ACCLL|Mux17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
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
	combout => \ps2_ACCLL|Mux17~10_combout\);

-- Location: LCCOMB_X15_Y19_N16
\ps2_ACCLL|Mux17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|Mux17~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux17~11_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux17~11_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~10_combout\,
	combout => \ps2_ACCLL|Mux17~12_combout\);

-- Location: LCCOMB_X15_Y19_N22
\ps2_ACCLL|Mux17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~13_combout\ = (\ps2_ACCLL|Mux19~2_combout\ & (((\ps2_ACCLL|Mux17~12_combout\)))) # (!\ps2_ACCLL|Mux19~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|Mux17~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~12_combout\,
	combout => \ps2_ACCLL|Mux17~13_combout\);

-- Location: LCCOMB_X19_Y18_N22
\ps2_ACCLL|Mux17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux17~16_combout\);

-- Location: LCCOMB_X19_Y18_N28
\ps2_ACCLL|Mux17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux19~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux17~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~17_combout\);

-- Location: LCCOMB_X19_Y18_N30
\ps2_ACCLL|Mux17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~18_combout\ = (\ps2_ACCLL|Mux17~17_combout\ & (((!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux17~17_combout\ & (\ps2_ACCLL|Mux17~7_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|Mux17~17_combout\,
	combout => \ps2_ACCLL|Mux17~18_combout\);

-- Location: LCCOMB_X15_Y19_N8
\ps2_ACCLL|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~1_combout\ = (\ps2_ACCLL|Mux9~0_combout\ & (((\ps2_ACCLL|Mux17~18_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|Mux9~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux17~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux9~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~13_combout\,
	datad => \ps2_ACCLL|Mux17~18_combout\,
	combout => \ps2_ACCLL|Mux9~1_combout\);

-- Location: LCCOMB_X16_Y19_N22
\ps2_ACCLL|ascii~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~16_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux9~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux9~3_combout\,
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux9~1_combout\,
	combout => \ps2_ACCLL|ascii~16_combout\);

-- Location: LCCOMB_X20_Y19_N14
\ps2_ACCLL|Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux41~6_combout\);

-- Location: LCCOMB_X16_Y18_N4
\ps2_ACCLL|Mux17~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~27_combout\);

-- Location: LCCOMB_X16_Y18_N10
\ps2_ACCLL|Mux17~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux13~7_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux13~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux19~2_combout\,
	combout => \ps2_ACCLL|Mux17~26_combout\);

-- Location: LCCOMB_X16_Y18_N2
\ps2_ACCLL|Mux17~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~28_combout\ = (\ps2_ACCLL|Mux17~27_combout\ & ((\ps2_ACCLL|Mux17~26_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux17~26_combout\ & ((!\ps2_ACCLL|ascii\(3)))))) # (!\ps2_ACCLL|Mux17~27_combout\ & 
-- (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux17~27_combout\,
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|Mux17~26_combout\,
	combout => \ps2_ACCLL|Mux17~28_combout\);

-- Location: LCCOMB_X20_Y19_N16
\ps2_ACCLL|Mux17~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux17~23_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~8_combout\,
	datad => \ps2_ACCLL|Mux17~23_combout\,
	combout => \ps2_ACCLL|Mux17~24_combout\);

-- Location: LCCOMB_X17_Y17_N2
\ps2_ACCLL|Mux17~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~25_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~24_combout\) # (!\ps2_ACCLL|ascii\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~24_combout\,
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux17~25_combout\);

-- Location: LCCOMB_X17_Y17_N24
\ps2_ACCLL|Mux26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~3_combout\ = (!\ps2_ACCLL|Mux26~2_combout\ & ((\ps2_ACCLL|Mux17~25_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux26~2_combout\,
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~3_combout\);

-- Location: LCCOMB_X15_Y20_N16
\ps2_ACCLL|Mux25~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux25~12_combout\);

-- Location: LCCOMB_X17_Y19_N4
\ps2_ACCLL|Mux26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux26~4_combout\);

-- Location: LCCOMB_X17_Y19_N18
\ps2_ACCLL|Mux26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~5_combout\ = (\ps2_ACCLL|Mux26~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|Mux17~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux26~4_combout\,
	datac => \ps2_ACCLL|Mux17~24_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux26~5_combout\);

-- Location: LCCOMB_X17_Y19_N0
\ps2_ACCLL|Mux26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux17~28_combout\) # (\ps2_ACCLL|Mux26~5_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux26~5_combout\,
	combout => \ps2_ACCLL|Mux26~6_combout\);

-- Location: LCCOMB_X17_Y19_N26
\ps2_ACCLL|Mux26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux17~28_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux17~24_combout\ & ((\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux26~7_combout\);

-- Location: LCCOMB_X17_Y19_N8
\ps2_ACCLL|Mux26~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux26~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|Mux26~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|Mux26~6_combout\)) # (!\ps2_ACCLL|Mux26~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~7_combout\,
	datad => \ps2_ACCLL|Mux26~6_combout\,
	combout => \ps2_ACCLL|Mux26~25_combout\);

-- Location: LCCOMB_X17_Y19_N10
\ps2_ACCLL|Mux26~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~26_combout\ = (\ps2_ACCLL|Mux25~12_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux26~25_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~12_combout\,
	datab => \ps2_ACCLL|Mux26~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux26~25_combout\,
	combout => \ps2_ACCLL|Mux26~26_combout\);

-- Location: LCCOMB_X17_Y19_N20
\ps2_ACCLL|Mux17~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux17~28_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~24_combout\) # ((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux17~29_combout\);

-- Location: LCCOMB_X17_Y19_N12
\ps2_ACCLL|Mux26~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux25~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ascii\(3) & (!\ps2_ACCLL|Mux17~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux17~24_combout\,
	datad => \ps2_ACCLL|Mux25~24_combout\,
	combout => \ps2_ACCLL|Mux26~12_combout\);

-- Location: LCCOMB_X17_Y19_N30
\ps2_ACCLL|Mux26~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux17~28_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux17~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux17~28_combout\,
	combout => \ps2_ACCLL|Mux26~13_combout\);

-- Location: LCCOMB_X17_Y19_N28
\ps2_ACCLL|Mux26~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|Mux17~28_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux26~14_combout\);

-- Location: LCCOMB_X17_Y19_N2
\ps2_ACCLL|Mux26~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~15_combout\ = (\ps2_ACCLL|Mux26~12_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|Mux26~14_combout\)))) # (!\ps2_ACCLL|Mux26~12_combout\ & ((\ps2_ACCLL|Mux26~13_combout\ & ((!\ps2_ACCLL|Mux26~14_combout\))) # 
-- (!\ps2_ACCLL|Mux26~13_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux26~13_combout\,
	datad => \ps2_ACCLL|Mux26~14_combout\,
	combout => \ps2_ACCLL|Mux26~15_combout\);

-- Location: LCCOMB_X17_Y19_N22
\ps2_ACCLL|Mux26~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux26~15_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux17~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux17~29_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux26~15_combout\,
	combout => \ps2_ACCLL|Mux26~16_combout\);

-- Location: LCCOMB_X17_Y19_N24
\ps2_ACCLL|Mux26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux26~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux26~4_combout\ & 
-- !\ps2_ACCLL|Mux17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux26~4_combout\,
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux26~8_combout\);

-- Location: LCCOMB_X17_Y19_N6
\ps2_ACCLL|Mux26~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|Mux26~8_combout\ & ((\ps2_ACCLL|Mux17~28_combout\) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux26~8_combout\,
	combout => \ps2_ACCLL|Mux26~9_combout\);

-- Location: LCCOMB_X17_Y19_N16
\ps2_ACCLL|Mux26~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~10_combout\ = (\ps2_ACCLL|Mux26~7_combout\ & ((!\ps2_ACCLL|Mux26~9_combout\))) # (!\ps2_ACCLL|Mux26~7_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux26~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~7_combout\,
	datad => \ps2_ACCLL|Mux26~9_combout\,
	combout => \ps2_ACCLL|Mux26~10_combout\);

-- Location: LCCOMB_X17_Y19_N14
\ps2_ACCLL|Mux26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~11_combout\ = (\ps2_ACCLL|Mux26~9_combout\ & (((\ps2_ACCLL|Mux26~10_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux26~9_combout\ & (!\ps2_ACCLL|Mux25~13_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- !\ps2_ACCLL|Mux26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~9_combout\,
	datab => \ps2_ACCLL|Mux25~13_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux26~10_combout\,
	combout => \ps2_ACCLL|Mux26~11_combout\);

-- Location: LCCOMB_X15_Y19_N18
\ps2_ACCLL|Mux26~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~17_combout\ = (\ps2_ACCLL|ascii\(3) & !\ps2_ACCLL|Mux17~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux26~17_combout\);

-- Location: LCCOMB_X15_Y19_N28
\ps2_ACCLL|Mux26~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux17~28_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux26~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux26~17_combout\,
	combout => \ps2_ACCLL|Mux26~18_combout\);

-- Location: LCCOMB_X15_Y19_N6
\ps2_ACCLL|Mux26~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux26~18_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux26~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux26~18_combout\,
	combout => \ps2_ACCLL|Mux26~19_combout\);

-- Location: LCCOMB_X16_Y21_N28
\ps2_ACCLL|Mux26~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~20_combout\ = (\ps2_ACCLL|ascii\(3) & !\ps2_ACCLL|Mux17~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux26~20_combout\);

-- Location: LCCOMB_X16_Y21_N6
\ps2_ACCLL|Mux26~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux17~28_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux26~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux26~20_combout\,
	combout => \ps2_ACCLL|Mux26~21_combout\);

-- Location: LCCOMB_X16_Y19_N16
\ps2_ACCLL|Mux26~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|Mux26~21_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|Mux26~19_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux26~19_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux26~22_combout\);

-- Location: LCCOMB_X16_Y19_N10
\ps2_ACCLL|Mux26~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux26~16_combout\ & ((\ps2_ACCLL|Mux26~22_combout\))) # (!\ps2_ACCLL|Mux26~16_combout\ & (\ps2_ACCLL|Mux26~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux26~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux26~16_combout\,
	datac => \ps2_ACCLL|Mux26~11_combout\,
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux26~23_combout\);

-- Location: LCCOMB_X16_Y19_N20
\ps2_ACCLL|Mux26~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~24_combout\ = (\ps2_ACCLL|Mux26~3_combout\) # ((\ps2_ACCLL|Mux26~26_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux26~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~3_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux26~26_combout\,
	datad => \ps2_ACCLL|Mux26~23_combout\,
	combout => \ps2_ACCLL|Mux26~24_combout\);

-- Location: LCCOMB_X16_Y19_N30
\ps2_ACCLL|Mux41~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~25_combout\ = (\ps2_ACCLL|Mux26~24_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|Mux41~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux41~6_combout\,
	datad => \ps2_ACCLL|Mux26~24_combout\,
	combout => \ps2_ACCLL|Mux41~25_combout\);

-- Location: LCCOMB_X16_Y21_N8
\ps2_ACCLL|Mux41~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~22_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~22_combout\);

-- Location: LCCOMB_X19_Y18_N0
\ps2_ACCLL|Mux41~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|Mux41~21_combout\);

-- Location: LCCOMB_X16_Y17_N6
\ps2_ACCLL|Mux41~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~7_combout\);

-- Location: LCCOMB_X16_Y19_N26
\ps2_ACCLL|Mux41~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~23_combout\ = (\ps2_ACCLL|Mux41~22_combout\ & ((\ps2_ACCLL|Mux41~7_combout\ & (\ps2_ACCLL|Mux41~21_combout\)) # (!\ps2_ACCLL|Mux41~7_combout\ & ((\ps2_ACCLL|Mux26~24_combout\))))) # (!\ps2_ACCLL|Mux41~22_combout\ & 
-- (((\ps2_ACCLL|Mux26~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~22_combout\,
	datab => \ps2_ACCLL|Mux41~21_combout\,
	datac => \ps2_ACCLL|Mux41~7_combout\,
	datad => \ps2_ACCLL|Mux26~24_combout\,
	combout => \ps2_ACCLL|Mux41~23_combout\);

-- Location: LCCOMB_X21_Y19_N24
\ps2_ACCLL|Mux41~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux41~14_combout\);

-- Location: LCCOMB_X21_Y19_N10
\ps2_ACCLL|Mux41~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|process_0~2_combout\) # (!\ps2_ACCLL|Mux41~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|process_0~2_combout\,
	datad => \ps2_ACCLL|Mux41~14_combout\,
	combout => \ps2_ACCLL|Mux41~15_combout\);

-- Location: LCCOMB_X16_Y19_N6
\ps2_ACCLL|Mux41~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|process_0~2_combout\) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|process_0~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux41~17_combout\);

-- Location: LCCOMB_X15_Y20_N8
\ps2_ACCLL|Mux41~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~26_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~26_combout\);

-- Location: LCCOMB_X16_Y19_N8
\ps2_ACCLL|Mux41~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~18_combout\ = (\ps2_ACCLL|Mux26~24_combout\) # ((\ps2_ACCLL|Mux41~17_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux41~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~17_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux41~26_combout\,
	datad => \ps2_ACCLL|Mux26~24_combout\,
	combout => \ps2_ACCLL|Mux41~18_combout\);

-- Location: LCCOMB_X16_Y19_N4
\ps2_ACCLL|Mux41~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~12_combout\);

-- Location: LCCOMB_X16_Y19_N24
\ps2_ACCLL|Mux41~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux41~12_combout\ & (\ps2_ACCLL|process_0~2_combout\)) # (!\ps2_ACCLL|Mux41~12_combout\ & ((\ps2_ACCLL|Mux26~24_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) 
-- & (((\ps2_ACCLL|Mux26~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|process_0~2_combout\,
	datac => \ps2_ACCLL|Mux41~12_combout\,
	datad => \ps2_ACCLL|Mux26~24_combout\,
	combout => \ps2_ACCLL|Mux41~16_combout\);

-- Location: LCCOMB_X16_Y19_N14
\ps2_ACCLL|Mux41~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux41~15_combout\ & (\ps2_ACCLL|Mux41~18_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux41~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux41~15_combout\,
	datac => \ps2_ACCLL|Mux41~18_combout\,
	datad => \ps2_ACCLL|Mux41~16_combout\,
	combout => \ps2_ACCLL|Mux41~19_combout\);

-- Location: LCCOMB_X15_Y19_N10
\ps2_ACCLL|Mux41~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (!\ps2_ACCLL|shift_l~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|shift_l~0_combout\,
	combout => \ps2_ACCLL|Mux41~10_combout\);

-- Location: LCCOMB_X15_Y19_N20
\ps2_ACCLL|Mux41~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~9_combout\);

-- Location: LCCOMB_X17_Y18_N0
\ps2_ACCLL|Mux41~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux25~31_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux25~31_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~8_combout\);

-- Location: LCCOMB_X16_Y19_N2
\ps2_ACCLL|Mux41~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~11_combout\ = (\ps2_ACCLL|Mux41~9_combout\) # ((\ps2_ACCLL|Mux41~8_combout\) # ((\ps2_ACCLL|Mux41~10_combout\ & \ps2_ACCLL|Mux26~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~10_combout\,
	datab => \ps2_ACCLL|Mux41~9_combout\,
	datac => \ps2_ACCLL|Mux41~8_combout\,
	datad => \ps2_ACCLL|Mux26~24_combout\,
	combout => \ps2_ACCLL|Mux41~11_combout\);

-- Location: LCCOMB_X16_Y19_N18
\ps2_ACCLL|Mux41~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux41~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux26~24_combout\ & (!\ps2_ACCLL|Mux41~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux26~24_combout\,
	datac => \ps2_ACCLL|Mux41~12_combout\,
	datad => \ps2_ACCLL|Mux41~11_combout\,
	combout => \ps2_ACCLL|Mux41~13_combout\);

-- Location: LCCOMB_X16_Y19_N12
\ps2_ACCLL|Mux41~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux41~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux41~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux41~19_combout\,
	datad => \ps2_ACCLL|Mux41~13_combout\,
	combout => \ps2_ACCLL|Mux41~20_combout\);

-- Location: LCCOMB_X16_Y19_N0
\ps2_ACCLL|Mux41~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux41~20_combout\ & ((\ps2_ACCLL|Mux41~23_combout\))) # (!\ps2_ACCLL|Mux41~20_combout\ & (\ps2_ACCLL|Mux41~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux41~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~25_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux41~23_combout\,
	datad => \ps2_ACCLL|Mux41~20_combout\,
	combout => \ps2_ACCLL|Mux41~24_combout\);

-- Location: LCCOMB_X16_Y19_N28
\ps2_ACCLL|ascii~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~42_combout\ = (!\ps2_ACCLL|ascii~16_combout\ & ((\ps2_ACCLL|control_r~q\) # ((\ps2_ACCLL|control_l~q\) # (!\ps2_ACCLL|Mux41~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|ascii~16_combout\,
	datad => \ps2_ACCLL|Mux41~24_combout\,
	combout => \ps2_ACCLL|ascii~42_combout\);

-- Location: FF_X16_Y19_N29
\ps2_ACCLL|ascii[3]\ : dffeas
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
	q => \ps2_ACCLL|ascii\(3));

-- Location: LCCOMB_X24_Y21_N10
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

-- Location: FF_X28_Y28_N15
\ps2_ACCLL|ascii_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[3]~3_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(3));

-- Location: LCCOMB_X22_Y21_N26
\ps2_ACCLL|Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux15~7_combout\);

-- Location: LCCOMB_X22_Y21_N12
\ps2_ACCLL|Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~8_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|Mux15~6_combout\)) # (!\ps2_ACCLL|Mux15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~6_combout\,
	combout => \ps2_ACCLL|Mux15~8_combout\);

-- Location: LCCOMB_X22_Y21_N6
\ps2_ACCLL|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux15~1_combout\);

-- Location: LCCOMB_X22_Y21_N16
\ps2_ACCLL|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux15~0_combout\);

-- Location: LCCOMB_X22_Y21_N8
\ps2_ACCLL|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~2_combout\ = (\ps2_ACCLL|Mux15~1_combout\ & (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux15~0_combout\)))) # (!\ps2_ACCLL|Mux15~1_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & 
-- \ps2_ACCLL|Mux15~0_combout\)) # (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~1_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux15~0_combout\,
	combout => \ps2_ACCLL|Mux15~2_combout\);

-- Location: LCCOMB_X22_Y21_N30
\ps2_ACCLL|Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~5_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (!\ps2_ACCLL|Mux38~6_combout\)) # (!\ps2_ACCLL|Mux24~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~8_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux38~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux15~5_combout\);

-- Location: LCCOMB_X22_Y21_N2
\ps2_ACCLL|Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

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
	combout => \ps2_ACCLL|Mux15~3_combout\);

-- Location: LCCOMB_X22_Y21_N20
\ps2_ACCLL|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~4_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|Mux15~3_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~3_combout\,
	combout => \ps2_ACCLL|Mux15~4_combout\);

-- Location: LCCOMB_X22_Y21_N28
\ps2_ACCLL|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~4_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux15~5_combout\,
	datad => \ps2_ACCLL|Mux15~4_combout\,
	combout => \ps2_ACCLL|Mux7~14_combout\);

-- Location: LCCOMB_X22_Y21_N22
\ps2_ACCLL|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux7~14_combout\ & (\ps2_ACCLL|Mux15~8_combout\)) # (!\ps2_ACCLL|Mux7~14_combout\ & ((\ps2_ACCLL|Mux15~2_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux15~8_combout\,
	datac => \ps2_ACCLL|Mux15~2_combout\,
	datad => \ps2_ACCLL|Mux7~14_combout\,
	combout => \ps2_ACCLL|Mux7~15_combout\);

-- Location: LCCOMB_X22_Y17_N16
\ps2_ACCLL|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux7~8_combout\);

-- Location: LCCOMB_X22_Y17_N30
\ps2_ACCLL|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux7~6_combout\);

-- Location: LCCOMB_X22_Y17_N12
\ps2_ACCLL|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux7~5_combout\);

-- Location: LCCOMB_X22_Y17_N8
\ps2_ACCLL|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux7~6_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux7~6_combout\,
	datad => \ps2_ACCLL|Mux7~5_combout\,
	combout => \ps2_ACCLL|Mux7~12_combout\);

-- Location: LCCOMB_X22_Y17_N10
\ps2_ACCLL|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux7~9_combout\);

-- Location: LCCOMB_X22_Y17_N18
\ps2_ACCLL|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux7~12_combout\ & ((\ps2_ACCLL|Mux7~9_combout\))) # (!\ps2_ACCLL|Mux7~12_combout\ & (\ps2_ACCLL|Mux7~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux7~8_combout\,
	datac => \ps2_ACCLL|Mux7~12_combout\,
	datad => \ps2_ACCLL|Mux7~9_combout\,
	combout => \ps2_ACCLL|Mux7~13_combout\);

-- Location: LCCOMB_X22_Y21_N0
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

-- Location: LCCOMB_X22_Y21_N24
\ps2_ACCLL|ascii~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~14_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux7~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux7~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|Mux7~15_combout\,
	datad => \ps2_ACCLL|Mux7~16_combout\,
	combout => \ps2_ACCLL|ascii~14_combout\);

-- Location: LCCOMB_X23_Y20_N12
\ps2_ACCLL|Mux39~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux42~4_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux39~19_combout\);

-- Location: LCCOMB_X22_Y18_N22
\ps2_ACCLL|Mux39~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~20_combout\ = (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|caps_lock~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux42~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|caps_lock~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux39~20_combout\);

-- Location: LCCOMB_X21_Y18_N16
\ps2_ACCLL|caps_lock~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|caps_lock~3_combout\);

-- Location: LCCOMB_X20_Y18_N16
\ps2_ACCLL|Mux39~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~21_combout\ = (\ps2_ACCLL|caps_lock~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|process_0~2_combout\ & \ps2_ACCLL|Mux17~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|process_0~2_combout\,
	datad => \ps2_ACCLL|Mux17~7_combout\,
	combout => \ps2_ACCLL|Mux39~21_combout\);

-- Location: LCCOMB_X20_Y18_N22
\ps2_ACCLL|Mux39~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~22_combout\ = (\ps2_ACCLL|Mux39~21_combout\) # ((\ps2_ACCLL|caps_lock~3_combout\ & (\ps2_ACCLL|Mux13~6_combout\ & \ps2_ACCLL|Mux24~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~3_combout\,
	datab => \ps2_ACCLL|Mux39~21_combout\,
	datac => \ps2_ACCLL|Mux13~6_combout\,
	datad => \ps2_ACCLL|Mux24~19_combout\,
	combout => \ps2_ACCLL|Mux39~22_combout\);

-- Location: LCCOMB_X19_Y18_N20
\ps2_ACCLL|caps_lock~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~6_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((!\ps2_ACCLL|break~q\ & (\ps2_ACCLL|caps_lock~7_combout\ & \ps2_ACCLL|caps_lock~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|break~q\,
	datab => \ps2_ACCLL|caps_lock~7_combout\,
	datac => \ps2_ACCLL|caps_lock~q\,
	datad => \ps2_ACCLL|caps_lock~3_combout\,
	combout => \ps2_ACCLL|caps_lock~6_combout\);

-- Location: FF_X19_Y18_N21
\ps2_ACCLL|caps_lock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|caps_lock~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|caps_lock~q\);

-- Location: LCCOMB_X19_Y18_N26
\ps2_ACCLL|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~1_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|caps_lock~q\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|process_0~1_combout\);

-- Location: LCCOMB_X20_Y20_N26
\ps2_ACCLL|Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~11_combout\ = (!\ps2_ACCLL|ascii\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (!\ps2_ACCLL|Mux42~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|Mux15~11_combout\);

-- Location: LCCOMB_X19_Y20_N26
\ps2_ACCLL|Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~10_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((!\ps2_ACCLL|Mux16~0_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux15~10_combout\);

-- Location: LCCOMB_X20_Y20_N8
\ps2_ACCLL|Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~13_combout\ = ((\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|Mux38~7_combout\ & \ps2_ACCLL|Mux18~0_combout\))) # (!\ps2_ACCLL|ascii\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux38~7_combout\,
	datad => \ps2_ACCLL|Mux18~0_combout\,
	combout => \ps2_ACCLL|Mux15~13_combout\);

-- Location: LCCOMB_X20_Y20_N20
\ps2_ACCLL|ascii~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|ascii~15_combout\);

-- Location: LCCOMB_X20_Y20_N18
\ps2_ACCLL|Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ascii~15_combout\)) # (!\ps2_ACCLL|ascii\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ascii\(5) & 
-- ((!\ps2_ACCLL|ascii~15_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|ascii~15_combout\,
	combout => \ps2_ACCLL|Mux15~12_combout\);

-- Location: LCCOMB_X20_Y20_N10
\ps2_ACCLL|Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux15~12_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~13_combout\,
	datad => \ps2_ACCLL|Mux15~12_combout\,
	combout => \ps2_ACCLL|Mux15~14_combout\);

-- Location: LCCOMB_X20_Y20_N0
\ps2_ACCLL|Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~14_combout\ & (\ps2_ACCLL|Mux15~11_combout\)) # (!\ps2_ACCLL|Mux15~14_combout\ & ((\ps2_ACCLL|Mux15~10_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~10_combout\,
	datad => \ps2_ACCLL|Mux15~14_combout\,
	combout => \ps2_ACCLL|Mux15~15_combout\);

-- Location: LCCOMB_X20_Y20_N24
\ps2_ACCLL|Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~15_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux15~16_combout\);

-- Location: LCCOMB_X24_Y20_N0
\ps2_ACCLL|Mux24~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~11_combout\ = (\ps2_ACCLL|Mux15~16_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Mux17~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~6_combout\,
	datad => \ps2_ACCLL|Mux15~16_combout\,
	combout => \ps2_ACCLL|Mux24~11_combout\);

-- Location: LCCOMB_X21_Y17_N20
\ps2_ACCLL|Mux24~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux24~12_combout\);

-- Location: LCCOMB_X21_Y17_N12
\ps2_ACCLL|Mux24~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~13_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux24~12_combout\)) # (!\ps2_ACCLL|Mux26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux26~2_combout\,
	datad => \ps2_ACCLL|Mux24~12_combout\,
	combout => \ps2_ACCLL|Mux24~13_combout\);

-- Location: LCCOMB_X24_Y20_N8
\ps2_ACCLL|Mux24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~17_combout\ = (\ps2_ACCLL|Mux24~13_combout\ & ((\ps2_ACCLL|Mux15~17_combout\ & ((\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|Mux15~17_combout\ & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|Mux24~13_combout\,
	datac => \ps2_ACCLL|Mux15~17_combout\,
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~17_combout\);

-- Location: LCCOMB_X23_Y20_N14
\ps2_ACCLL|Mux24~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~34_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|process_0~1_combout\) # ((!\ps2_ACCLL|ascii\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((!\ps2_ACCLL|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|process_0~1_combout\,
	combout => \ps2_ACCLL|Mux24~34_combout\);

-- Location: LCCOMB_X19_Y18_N16
\ps2_ACCLL|Mux24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|caps_lock~q\ $ (((!\ps2_ACCLL|shift_r~q\ & !\ps2_ACCLL|shift_l~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~q\,
	datab => \ps2_ACCLL|shift_r~q\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux24~14_combout\);

-- Location: LCCOMB_X22_Y20_N2
\ps2_ACCLL|Mux24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux24~14_combout\ & \ps2_ACCLL|Mux17~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux24~14_combout\,
	datad => \ps2_ACCLL|Mux17~6_combout\,
	combout => \ps2_ACCLL|Mux24~15_combout\);

-- Location: LCCOMB_X24_Y20_N6
\ps2_ACCLL|Mux24~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~35_combout\ = ((\ps2_ACCLL|Mux15~15_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux24~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux24~13_combout\,
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~35_combout\);

-- Location: LCCOMB_X24_Y20_N10
\ps2_ACCLL|Mux24~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~16_combout\ = (\ps2_ACCLL|Mux24~34_combout\ & ((\ps2_ACCLL|Mux24~15_combout\) # ((\ps2_ACCLL|Mux15~16_combout\)))) # (!\ps2_ACCLL|Mux24~34_combout\ & (\ps2_ACCLL|Mux24~15_combout\ & ((\ps2_ACCLL|Mux24~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~34_combout\,
	datab => \ps2_ACCLL|Mux24~15_combout\,
	datac => \ps2_ACCLL|Mux15~16_combout\,
	datad => \ps2_ACCLL|Mux24~35_combout\,
	combout => \ps2_ACCLL|Mux24~16_combout\);

-- Location: LCCOMB_X24_Y20_N14
\ps2_ACCLL|Mux24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~18_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux24~16_combout\ & ((\ps2_ACCLL|Mux24~17_combout\))) # (!\ps2_ACCLL|Mux24~16_combout\ & (\ps2_ACCLL|Mux24~11_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux24~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux24~11_combout\,
	datac => \ps2_ACCLL|Mux24~17_combout\,
	datad => \ps2_ACCLL|Mux24~16_combout\,
	combout => \ps2_ACCLL|Mux24~18_combout\);

-- Location: LCCOMB_X21_Y20_N12
\ps2_ACCLL|Mux24~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~11_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux15~10_combout\,
	combout => \ps2_ACCLL|Mux24~9_combout\);

-- Location: LCCOMB_X22_Y20_N24
\ps2_ACCLL|Mux24~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux24~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux24~9_combout\,
	combout => \ps2_ACCLL|Mux24~10_combout\);

-- Location: LCCOMB_X22_Y20_N10
\ps2_ACCLL|Mux24~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~20_combout\);

-- Location: LCCOMB_X22_Y20_N20
\ps2_ACCLL|Mux24~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~21_combout\ = (\ps2_ACCLL|Mux24~20_combout\ & (((\ps2_ACCLL|Mux24~19_combout\ & \ps2_ACCLL|Mux17~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|Mux24~20_combout\ & (((\ps2_ACCLL|Mux24~19_combout\ & 
-- \ps2_ACCLL|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux24~19_combout\,
	datad => \ps2_ACCLL|Mux17~6_combout\,
	combout => \ps2_ACCLL|Mux24~21_combout\);

-- Location: LCCOMB_X24_Y20_N4
\ps2_ACCLL|Mux24~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~22_combout\ = (!\ps2_ACCLL|Mux24~21_combout\ & ((\ps2_ACCLL|Mux15~17_combout\ & ((\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|Mux15~17_combout\ & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|Mux24~21_combout\,
	datac => \ps2_ACCLL|Mux15~17_combout\,
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~22_combout\);

-- Location: LCCOMB_X24_Y20_N22
\ps2_ACCLL|Mux24~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~30_combout\ = (!\ps2_ACCLL|Mux38~6_combout\ & ((\ps2_ACCLL|Mux15~17_combout\ & ((\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|Mux15~17_combout\ & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux15~17_combout\,
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~30_combout\);

-- Location: LCCOMB_X20_Y20_N14
\ps2_ACCLL|Mux24~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~37_combout\ = (\ps2_ACCLL|Mux15~16_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~16_combout\,
	combout => \ps2_ACCLL|Mux24~37_combout\);

-- Location: LCCOMB_X24_Y20_N16
\ps2_ACCLL|Mux24~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~16_combout\ & ((!\ps2_ACCLL|Mux15~9_combout\) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~9_combout\,
	datad => \ps2_ACCLL|Mux15~16_combout\,
	combout => \ps2_ACCLL|Mux24~31_combout\);

-- Location: LCCOMB_X24_Y20_N26
\ps2_ACCLL|Mux24~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~31_combout\ & ((\ps2_ACCLL|Mux24~37_combout\))) # (!\ps2_ACCLL|Mux24~31_combout\ & (\ps2_ACCLL|Mux24~30_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux24~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~30_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux24~37_combout\,
	datad => \ps2_ACCLL|Mux24~31_combout\,
	combout => \ps2_ACCLL|Mux24~32_combout\);

-- Location: LCCOMB_X24_Y20_N2
\ps2_ACCLL|Mux24~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~28_combout\ = (\ps2_ACCLL|Mux24~21_combout\) # ((\ps2_ACCLL|Mux15~17_combout\ & ((\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|Mux15~17_combout\ & (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|Mux24~21_combout\,
	datac => \ps2_ACCLL|Mux15~17_combout\,
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~28_combout\);

-- Location: LCCOMB_X24_Y20_N30
\ps2_ACCLL|Mux24~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~23_combout\ = (\ps2_ACCLL|Mux38~6_combout\) # ((\ps2_ACCLL|Mux15~17_combout\ & ((\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|Mux15~17_combout\ & (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux15~17_combout\,
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~23_combout\);

-- Location: LCCOMB_X20_Y20_N6
\ps2_ACCLL|Mux24~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux15~15_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~26_combout\);

-- Location: LCCOMB_X20_Y20_N2
\ps2_ACCLL|Mux24~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~36_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|Mux24~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux24~26_combout\,
	combout => \ps2_ACCLL|Mux24~36_combout\);

-- Location: LCCOMB_X24_Y20_N24
\ps2_ACCLL|Mux24~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~24_combout\ = (\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|ascii\(5) & (!\ps2_ACCLL|Mux15~15_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux24~24_combout\);

-- Location: LCCOMB_X24_Y20_N18
\ps2_ACCLL|Mux24~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux15~9_combout\)) # 
-- (!\ps2_ACCLL|Mux24~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~9_combout\,
	datad => \ps2_ACCLL|Mux24~24_combout\,
	combout => \ps2_ACCLL|Mux24~25_combout\);

-- Location: LCCOMB_X24_Y20_N20
\ps2_ACCLL|Mux24~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~25_combout\ & ((\ps2_ACCLL|Mux24~36_combout\))) # (!\ps2_ACCLL|Mux24~25_combout\ & (\ps2_ACCLL|Mux24~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux24~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux24~36_combout\,
	datad => \ps2_ACCLL|Mux24~25_combout\,
	combout => \ps2_ACCLL|Mux24~27_combout\);

-- Location: LCCOMB_X24_Y20_N12
\ps2_ACCLL|Mux24~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~29_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux24~27_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux24~28_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux24~27_combout\,
	combout => \ps2_ACCLL|Mux24~29_combout\);

-- Location: LCCOMB_X24_Y20_N28
\ps2_ACCLL|Mux24~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~33_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux24~29_combout\ & ((\ps2_ACCLL|Mux24~32_combout\))) # (!\ps2_ACCLL|Mux24~29_combout\ & (\ps2_ACCLL|Mux24~22_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux24~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux24~22_combout\,
	datac => \ps2_ACCLL|Mux24~32_combout\,
	datad => \ps2_ACCLL|Mux24~29_combout\,
	combout => \ps2_ACCLL|Mux24~33_combout\);

-- Location: LCCOMB_X23_Y20_N20
\ps2_ACCLL|Mux24~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~38_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux24~10_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux24~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux24~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux24~38_combout\);

-- Location: LCCOMB_X23_Y20_N6
\ps2_ACCLL|Mux24~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~39_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux24~38_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux24~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux24~18_combout\,
	datad => \ps2_ACCLL|Mux24~38_combout\,
	combout => \ps2_ACCLL|Mux24~39_combout\);

-- Location: LCCOMB_X23_Y20_N26
\ps2_ACCLL|Mux39~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~23_combout\ = (\ps2_ACCLL|shift_l~0_combout\ & ((\ps2_ACCLL|Mux39~22_combout\) # ((\ps2_ACCLL|Mux39~20_combout\ & \ps2_ACCLL|Mux24~39_combout\)))) # (!\ps2_ACCLL|shift_l~0_combout\ & (\ps2_ACCLL|Mux39~20_combout\ & 
-- ((\ps2_ACCLL|Mux24~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~0_combout\,
	datab => \ps2_ACCLL|Mux39~20_combout\,
	datac => \ps2_ACCLL|Mux39~22_combout\,
	datad => \ps2_ACCLL|Mux24~39_combout\,
	combout => \ps2_ACCLL|Mux39~23_combout\);

-- Location: LCCOMB_X21_Y18_N0
\ps2_ACCLL|Mux39~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~15_combout\);

-- Location: LCCOMB_X22_Y18_N6
\ps2_ACCLL|Mux39~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux39~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux39~15_combout\,
	combout => \ps2_ACCLL|Mux39~16_combout\);

-- Location: LCCOMB_X17_Y18_N2
\ps2_ACCLL|Mux39~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~13_combout\);

-- Location: LCCOMB_X17_Y18_N28
\ps2_ACCLL|Mux39~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~14_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|Mux39~13_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|Mux39~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux39~13_combout\,
	combout => \ps2_ACCLL|Mux39~14_combout\);

-- Location: LCCOMB_X23_Y20_N28
\ps2_ACCLL|Mux39~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux24~39_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux39~14_combout\) # ((\ps2_ACCLL|Mux39~16_combout\ & \ps2_ACCLL|Mux24~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux39~14_combout\,
	datad => \ps2_ACCLL|Mux24~39_combout\,
	combout => \ps2_ACCLL|Mux39~17_combout\);

-- Location: LCCOMB_X22_Y20_N18
\ps2_ACCLL|Mux43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~6_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~6_combout\);

-- Location: LCCOMB_X22_Y20_N28
\ps2_ACCLL|Mux39~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux43~6_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux43~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~5_combout\);

-- Location: LCCOMB_X20_Y18_N20
\ps2_ACCLL|Mux39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~4_combout\ = (\ps2_ACCLL|Mux17~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~7_combout\,
	combout => \ps2_ACCLL|Mux39~4_combout\);

-- Location: LCCOMB_X23_Y20_N30
\ps2_ACCLL|Mux39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~6_combout\ = (\ps2_ACCLL|Mux24~39_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux39~5_combout\) # (\ps2_ACCLL|Mux39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux39~4_combout\,
	datad => \ps2_ACCLL|Mux24~39_combout\,
	combout => \ps2_ACCLL|Mux39~6_combout\);

-- Location: LCCOMB_X23_Y20_N4
\ps2_ACCLL|Mux39~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~25_combout\ = (\ps2_ACCLL|Mux24~39_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~2_combout\,
	datad => \ps2_ACCLL|Mux24~39_combout\,
	combout => \ps2_ACCLL|Mux39~25_combout\);

-- Location: LCCOMB_X23_Y20_N10
\ps2_ACCLL|Mux39~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~26_combout\ = (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux15~9_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux39~26_combout\);

-- Location: LCCOMB_X20_Y16_N18
\ps2_ACCLL|Mux39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~8_combout\);

-- Location: LCCOMB_X20_Y16_N0
\ps2_ACCLL|Mux39~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~9_combout\ & ((\ps2_ACCLL|Mux38~7_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux39~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~9_combout\,
	datab => \ps2_ACCLL|Mux39~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux38~7_combout\,
	combout => \ps2_ACCLL|Mux39~9_combout\);

-- Location: LCCOMB_X23_Y20_N22
\ps2_ACCLL|Mux39~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~10_combout\ = (\ps2_ACCLL|Mux39~9_combout\) # (\ps2_ACCLL|Mux24~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux39~9_combout\,
	datad => \ps2_ACCLL|Mux24~39_combout\,
	combout => \ps2_ACCLL|Mux39~10_combout\);

-- Location: LCCOMB_X23_Y20_N24
\ps2_ACCLL|Mux39~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux24~39_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Mux42~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux24~39_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux42~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|Mux24~39_combout\,
	combout => \ps2_ACCLL|Mux39~7_combout\);

-- Location: LCCOMB_X23_Y20_N0
\ps2_ACCLL|Mux39~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux39~26_combout\ & (\ps2_ACCLL|Mux39~10_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux39~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~26_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux39~10_combout\,
	datad => \ps2_ACCLL|Mux39~7_combout\,
	combout => \ps2_ACCLL|Mux39~11_combout\);

-- Location: LCCOMB_X23_Y20_N18
\ps2_ACCLL|Mux39~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~12_combout\ = (\ps2_ACCLL|process_0~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux39~25_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux39~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux39~25_combout\,
	datad => \ps2_ACCLL|Mux39~11_combout\,
	combout => \ps2_ACCLL|Mux39~12_combout\);

-- Location: LCCOMB_X23_Y20_N2
\ps2_ACCLL|Mux39~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~18_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux39~12_combout\ & (\ps2_ACCLL|Mux39~17_combout\)) # (!\ps2_ACCLL|Mux39~12_combout\ & ((\ps2_ACCLL|Mux39~6_combout\))))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux39~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux39~17_combout\,
	datac => \ps2_ACCLL|Mux39~6_combout\,
	datad => \ps2_ACCLL|Mux39~12_combout\,
	combout => \ps2_ACCLL|Mux39~18_combout\);

-- Location: LCCOMB_X23_Y20_N16
\ps2_ACCLL|Mux39~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux39~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux39~19_combout\) # ((\ps2_ACCLL|Mux39~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~19_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux39~23_combout\,
	datad => \ps2_ACCLL|Mux39~18_combout\,
	combout => \ps2_ACCLL|Mux39~24_combout\);

-- Location: LCCOMB_X23_Y20_N8
\ps2_ACCLL|ascii~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~40_combout\ = (!\ps2_ACCLL|ascii~14_combout\ & ((\ps2_ACCLL|control_l~q\) # ((\ps2_ACCLL|control_r~q\) # (!\ps2_ACCLL|Mux39~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datab => \ps2_ACCLL|control_r~q\,
	datac => \ps2_ACCLL|ascii~14_combout\,
	datad => \ps2_ACCLL|Mux39~24_combout\,
	combout => \ps2_ACCLL|ascii~40_combout\);

-- Location: FF_X23_Y20_N9
\ps2_ACCLL|ascii[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~40_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(5));

-- Location: LCCOMB_X24_Y21_N20
\ps2_ACCLL|ascii_code[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[5]~1_combout\ = !\ps2_ACCLL|ascii\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|ascii_code[5]~1_combout\);

-- Location: FF_X28_Y28_N19
\ps2_ACCLL|ascii_code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[5]~1_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(5));

-- Location: LCCOMB_X21_Y17_N22
\ps2_ACCLL|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux8~2_combout\);

-- Location: LCCOMB_X21_Y17_N16
\ps2_ACCLL|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|Mux8~2_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux13~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux8~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux8~3_combout\);

-- Location: LCCOMB_X20_Y17_N0
\ps2_ACCLL|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~4_combout\ = (\ps2_ACCLL|Mux17~9_combout\) # ((\ps2_ACCLL|Mux8~3_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux17~9_combout\,
	datad => \ps2_ACCLL|Mux8~3_combout\,
	combout => \ps2_ACCLL|Mux8~4_combout\);

-- Location: LCCOMB_X21_Y17_N14
\ps2_ACCLL|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux8~4_combout\) # ((!\ps2_ACCLL|ascii\(4) & !\ps2_ACCLL|Mux8~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ascii\(4) & 
-- ((!\ps2_ACCLL|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux8~4_combout\,
	datad => \ps2_ACCLL|Mux8~3_combout\,
	combout => \ps2_ACCLL|Mux8~5_combout\);

-- Location: LCCOMB_X21_Y17_N6
\ps2_ACCLL|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~3_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux16~3_combout\);

-- Location: LCCOMB_X21_Y17_N24
\ps2_ACCLL|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~4_combout\ = (\ps2_ACCLL|Mux16~2_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux16~2_combout\ & (!\ps2_ACCLL|ascii\(4) & ((!\ps2_ACCLL|Mux38~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~2_combout\,
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux38~6_combout\,
	combout => \ps2_ACCLL|Mux16~4_combout\);

-- Location: LCCOMB_X21_Y17_N18
\ps2_ACCLL|Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux16~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~3_combout\,
	datad => \ps2_ACCLL|Mux16~4_combout\,
	combout => \ps2_ACCLL|Mux8~15_combout\);

-- Location: LCCOMB_X21_Y17_N0
\ps2_ACCLL|Mux8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~18_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux15~6_combout\ & !\ps2_ACCLL|Mux8~15_combout\))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux15~6_combout\,
	datad => \ps2_ACCLL|Mux8~15_combout\,
	combout => \ps2_ACCLL|Mux8~18_combout\);

-- Location: LCCOMB_X21_Y17_N26
\ps2_ACCLL|Mux8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux8~18_combout\) # ((\ps2_ACCLL|Mux16~1_combout\ & \ps2_ACCLL|Mux8~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux8~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux8~18_combout\,
	datac => \ps2_ACCLL|Mux16~1_combout\,
	datad => \ps2_ACCLL|Mux8~15_combout\,
	combout => \ps2_ACCLL|Mux8~19_combout\);

-- Location: LCCOMB_X22_Y17_N24
\ps2_ACCLL|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux8~6_combout\);

-- Location: LCCOMB_X22_Y17_N6
\ps2_ACCLL|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux8~7_combout\);

-- Location: LCCOMB_X22_Y17_N4
\ps2_ACCLL|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~8_combout\ = (\ps2_ACCLL|Mux8~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|Mux8~6_combout\)))) # (!\ps2_ACCLL|Mux8~7_combout\ & (\ps2_ACCLL|shift_l~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ 
-- (\ps2_ACCLL|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux8~6_combout\,
	datac => \ps2_ACCLL|shift_l~0_combout\,
	datad => \ps2_ACCLL|Mux8~7_combout\,
	combout => \ps2_ACCLL|Mux8~8_combout\);

-- Location: LCCOMB_X21_Y17_N2
\ps2_ACCLL|Mux8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux8~17_combout\);

-- Location: LCCOMB_X22_Y17_N14
\ps2_ACCLL|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~9_combout\ = (\ps2_ACCLL|Mux8~7_combout\ & (((!\ps2_ACCLL|shift_l~0_combout\) # (!\ps2_ACCLL|Mux8~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux8~6_combout\,
	datac => \ps2_ACCLL|shift_l~0_combout\,
	datad => \ps2_ACCLL|Mux8~7_combout\,
	combout => \ps2_ACCLL|Mux8~9_combout\);

-- Location: LCCOMB_X21_Y17_N4
\ps2_ACCLL|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~10_combout\ = (\ps2_ACCLL|Mux8~9_combout\ & ((\ps2_ACCLL|Mux8~17_combout\ & (!\ps2_ACCLL|Mux8~8_combout\)) # (!\ps2_ACCLL|Mux8~17_combout\ & ((!\ps2_ACCLL|ascii\(4)))))) # (!\ps2_ACCLL|Mux8~9_combout\ & ((\ps2_ACCLL|Mux8~8_combout\) # 
-- ((!\ps2_ACCLL|ascii\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~8_combout\,
	datab => \ps2_ACCLL|Mux8~17_combout\,
	datac => \ps2_ACCLL|Mux8~9_combout\,
	datad => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|Mux8~10_combout\);

-- Location: LCCOMB_X20_Y18_N6
\ps2_ACCLL|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux8~11_combout\);

-- Location: LCCOMB_X20_Y18_N28
\ps2_ACCLL|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(4) & ((!\ps2_ACCLL|Mux8~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux13~16_combout\ & (\ps2_ACCLL|ascii\(4) $ 
-- (\ps2_ACCLL|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|Mux13~16_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux8~11_combout\,
	combout => \ps2_ACCLL|Mux8~12_combout\);

-- Location: LCCOMB_X21_Y17_N10
\ps2_ACCLL|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux8~12_combout\ $ ((!\ps2_ACCLL|ascii\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ascii\(4) & !\ps2_ACCLL|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~12_combout\,
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux16~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux8~13_combout\);

-- Location: LCCOMB_X21_Y17_N28
\ps2_ACCLL|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux8~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux8~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux8~10_combout\,
	datad => \ps2_ACCLL|Mux8~13_combout\,
	combout => \ps2_ACCLL|Mux8~14_combout\);

-- Location: LCCOMB_X21_Y17_N8
\ps2_ACCLL|Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux8~14_combout\ & ((\ps2_ACCLL|Mux8~19_combout\))) # (!\ps2_ACCLL|Mux8~14_combout\ & (\ps2_ACCLL|Mux8~5_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux8~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux8~5_combout\,
	datac => \ps2_ACCLL|Mux8~19_combout\,
	datad => \ps2_ACCLL|Mux8~14_combout\,
	combout => \ps2_ACCLL|Mux8~16_combout\);

-- Location: LCCOMB_X19_Y19_N30
\ps2_ACCLL|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~8_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux16~8_combout\);

-- Location: LCCOMB_X19_Y19_N14
\ps2_ACCLL|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~6_combout\ = ((\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|caps_lock~4_combout\ & \ps2_ACCLL|Mux38~7_combout\))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|caps_lock~4_combout\,
	datad => \ps2_ACCLL|Mux38~7_combout\,
	combout => \ps2_ACCLL|Mux16~6_combout\);

-- Location: LCCOMB_X19_Y20_N4
\ps2_ACCLL|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~5_combout\ = (\ps2_ACCLL|Mux13~7_combout\ & ((\ps2_ACCLL|Mux16~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux16~0_combout\ & (!\ps2_ACCLL|ascii\(4))))) # (!\ps2_ACCLL|Mux13~7_combout\ & 
-- (!\ps2_ACCLL|ascii\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|Mux13~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux16~5_combout\);

-- Location: LCCOMB_X19_Y19_N20
\ps2_ACCLL|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~7_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux14~0_combout\,
	combout => \ps2_ACCLL|Mux16~7_combout\);

-- Location: LCCOMB_X19_Y19_N12
\ps2_ACCLL|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux16~7_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~5_combout\,
	datad => \ps2_ACCLL|Mux16~7_combout\,
	combout => \ps2_ACCLL|Mux16~9_combout\);

-- Location: LCCOMB_X19_Y19_N22
\ps2_ACCLL|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~9_combout\ & (\ps2_ACCLL|Mux16~8_combout\)) # (!\ps2_ACCLL|Mux16~9_combout\ & ((\ps2_ACCLL|Mux16~6_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~8_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~6_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux16~10_combout\);

-- Location: LCCOMB_X19_Y19_N24
\ps2_ACCLL|Mux25~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux25~14_combout\);

-- Location: LCCOMB_X19_Y19_N28
\ps2_ACCLL|Mux25~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux16~6_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~5_combout\ & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux25~15_combout\);

-- Location: LCCOMB_X19_Y19_N6
\ps2_ACCLL|Mux25~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~16_combout\ = (\ps2_ACCLL|Mux25~14_combout\ & (((\ps2_ACCLL|Mux25~15_combout\)))) # (!\ps2_ACCLL|Mux25~14_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux14~0_combout\ & !\ps2_ACCLL|Mux25~15_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux14~0_combout\,
	datab => \ps2_ACCLL|Mux25~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~15_combout\,
	combout => \ps2_ACCLL|Mux25~16_combout\);

-- Location: LCCOMB_X19_Y19_N16
\ps2_ACCLL|Mux25~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~17_combout\ = (!\ps2_ACCLL|Mux25~13_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(4) & !\ps2_ACCLL|Mux25~16_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux25~13_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux25~16_combout\,
	combout => \ps2_ACCLL|Mux25~17_combout\);

-- Location: LCCOMB_X19_Y19_N8
\ps2_ACCLL|Mux25~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~21_combout\ = (\ps2_ACCLL|Mux16~10_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux16~10_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~21_combout\);

-- Location: LCCOMB_X19_Y19_N4
\ps2_ACCLL|Mux25~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux16~8_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux16~7_combout\,
	combout => \ps2_ACCLL|Mux25~19_combout\);

-- Location: LCCOMB_X19_Y19_N10
\ps2_ACCLL|Mux25~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~18_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(4) & !\ps2_ACCLL|Mux25~16_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux25~16_combout\,
	combout => \ps2_ACCLL|Mux25~18_combout\);

-- Location: LCCOMB_X19_Y19_N2
\ps2_ACCLL|Mux25~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~19_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- \ps2_ACCLL|Mux25~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux25~19_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux25~18_combout\,
	combout => \ps2_ACCLL|Mux25~20_combout\);

-- Location: LCCOMB_X19_Y19_N18
\ps2_ACCLL|Mux25~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~20_combout\ & ((\ps2_ACCLL|Mux25~21_combout\))) # (!\ps2_ACCLL|Mux25~20_combout\ & (\ps2_ACCLL|Mux25~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux25~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux25~17_combout\,
	datac => \ps2_ACCLL|Mux25~21_combout\,
	datad => \ps2_ACCLL|Mux25~20_combout\,
	combout => \ps2_ACCLL|Mux25~22_combout\);

-- Location: LCCOMB_X19_Y19_N0
\ps2_ACCLL|Mux25~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~23_combout\ = (\ps2_ACCLL|Mux25~12_combout\ & ((\ps2_ACCLL|Mux25~22_combout\) # ((!\ps2_ACCLL|Mux26~2_combout\ & \ps2_ACCLL|Mux16~10_combout\)))) # (!\ps2_ACCLL|Mux25~12_combout\ & (!\ps2_ACCLL|Mux26~2_combout\ & 
-- (\ps2_ACCLL|Mux16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~12_combout\,
	datab => \ps2_ACCLL|Mux26~2_combout\,
	datac => \ps2_ACCLL|Mux16~10_combout\,
	datad => \ps2_ACCLL|Mux25~22_combout\,
	combout => \ps2_ACCLL|Mux25~23_combout\);

-- Location: LCCOMB_X20_Y19_N30
\ps2_ACCLL|Mux25~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~26_combout\ = (\ps2_ACCLL|Mux16~10_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux16~10_combout\,
	combout => \ps2_ACCLL|Mux25~26_combout\);

-- Location: LCCOMB_X20_Y19_N8
\ps2_ACCLL|Mux25~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~36_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~36_combout\);

-- Location: LCCOMB_X20_Y19_N24
\ps2_ACCLL|Mux25~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~25_combout\ = (\ps2_ACCLL|Mux25~36_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux25~36_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux16~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux25~36_combout\,
	datad => \ps2_ACCLL|Mux16~10_combout\,
	combout => \ps2_ACCLL|Mux25~25_combout\);

-- Location: LCCOMB_X20_Y19_N28
\ps2_ACCLL|Mux25~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~25_combout\ & ((\ps2_ACCLL|Mux25~26_combout\))) # (!\ps2_ACCLL|Mux25~25_combout\ & (\ps2_ACCLL|Mux25~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux25~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~17_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~26_combout\,
	datad => \ps2_ACCLL|Mux25~25_combout\,
	combout => \ps2_ACCLL|Mux25~27_combout\);

-- Location: LCCOMB_X20_Y19_N22
\ps2_ACCLL|Mux25~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~39_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~39_combout\);

-- Location: LCCOMB_X20_Y19_N4
\ps2_ACCLL|Mux25~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~38_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~38_combout\);

-- Location: LCCOMB_X20_Y19_N26
\ps2_ACCLL|Mux25~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~34_combout\ = (\ps2_ACCLL|Mux25~39_combout\ & (((\ps2_ACCLL|Mux25~38_combout\) # (\ps2_ACCLL|Mux25~18_combout\)))) # (!\ps2_ACCLL|Mux25~39_combout\ & (\ps2_ACCLL|Mux16~10_combout\ & (!\ps2_ACCLL|Mux25~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~39_combout\,
	datab => \ps2_ACCLL|Mux16~10_combout\,
	datac => \ps2_ACCLL|Mux25~38_combout\,
	datad => \ps2_ACCLL|Mux25~18_combout\,
	combout => \ps2_ACCLL|Mux25~34_combout\);

-- Location: LCCOMB_X20_Y19_N6
\ps2_ACCLL|Mux25~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|Mux16~9_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- \ps2_ACCLL|Mux16~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~29_combout\);

-- Location: LCCOMB_X20_Y19_N12
\ps2_ACCLL|Mux25~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~9_combout\ $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|Mux25~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~29_combout\,
	combout => \ps2_ACCLL|Mux25~30_combout\);

-- Location: LCCOMB_X19_Y19_N26
\ps2_ACCLL|Mux25~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~28_combout\ = (\ps2_ACCLL|Mux16~9_combout\ & ((\ps2_ACCLL|Mux16~8_combout\))) # (!\ps2_ACCLL|Mux16~9_combout\ & (\ps2_ACCLL|Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux16~6_combout\,
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~28_combout\);

-- Location: LCCOMB_X20_Y19_N18
\ps2_ACCLL|Mux25~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~37_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux25~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux25~30_combout\,
	combout => \ps2_ACCLL|Mux25~37_combout\);

-- Location: LCCOMB_X20_Y19_N2
\ps2_ACCLL|Mux25~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux25~28_combout\) # (\ps2_ACCLL|Mux25~37_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux25~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~30_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux25~28_combout\,
	datad => \ps2_ACCLL|Mux25~37_combout\,
	combout => \ps2_ACCLL|Mux25~32_combout\);

-- Location: LCCOMB_X20_Y19_N0
\ps2_ACCLL|Mux25~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux25~32_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux16~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux25~32_combout\,
	combout => \ps2_ACCLL|Mux25~33_combout\);

-- Location: LCCOMB_X20_Y19_N20
\ps2_ACCLL|Mux25~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux25~33_combout\ & ((\ps2_ACCLL|Mux25~34_combout\))) # (!\ps2_ACCLL|Mux25~33_combout\ & (\ps2_ACCLL|Mux25~27_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux25~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux25~27_combout\,
	datac => \ps2_ACCLL|Mux25~34_combout\,
	datad => \ps2_ACCLL|Mux25~33_combout\,
	combout => \ps2_ACCLL|Mux25~35_combout\);

-- Location: LCCOMB_X21_Y19_N20
\ps2_ACCLL|Mux25~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~40_combout\ = (\ps2_ACCLL|Mux25~23_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux25~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux25~23_combout\,
	datad => \ps2_ACCLL|Mux25~35_combout\,
	combout => \ps2_ACCLL|Mux25~40_combout\);

-- Location: LCCOMB_X21_Y19_N26
\ps2_ACCLL|Mux40~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~31_combout\ = (\ps2_ACCLL|Mux25~40_combout\) # ((\ps2_ACCLL|caps_lock~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux42~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|Mux25~40_combout\,
	combout => \ps2_ACCLL|Mux40~31_combout\);

-- Location: LCCOMB_X21_Y19_N14
\ps2_ACCLL|Mux40~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~29_combout\ = (\ps2_ACCLL|Mux25~40_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux40~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux40~33_combout\,
	datad => \ps2_ACCLL|Mux25~40_combout\,
	combout => \ps2_ACCLL|Mux40~29_combout\);

-- Location: LCCOMB_X21_Y19_N12
\ps2_ACCLL|Mux40~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux15~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|Mux42~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux15~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux40~26_combout\);

-- Location: LCCOMB_X21_Y19_N22
\ps2_ACCLL|Mux40~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~27_combout\ = (\ps2_ACCLL|Mux40~26_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux40~26_combout\ & (((\ps2_ACCLL|Mux25~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux40~26_combout\,
	datad => \ps2_ACCLL|Mux25~40_combout\,
	combout => \ps2_ACCLL|Mux40~27_combout\);

-- Location: LCCOMB_X21_Y19_N8
\ps2_ACCLL|Mux40~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~22_combout\ = (\ps2_ACCLL|Mux25~40_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux42~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|Mux25~40_combout\,
	combout => \ps2_ACCLL|Mux40~22_combout\);

-- Location: LCCOMB_X21_Y19_N30
\ps2_ACCLL|Mux40~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~23_combout\ = (\ps2_ACCLL|Mux42~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux40~23_combout\);

-- Location: LCCOMB_X21_Y19_N4
\ps2_ACCLL|Mux40~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux24~19_combout\ & (\ps2_ACCLL|Mux40~23_combout\)) # (!\ps2_ACCLL|Mux24~19_combout\ & ((\ps2_ACCLL|Mux15~9_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux40~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux24~19_combout\,
	datac => \ps2_ACCLL|Mux40~23_combout\,
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux40~24_combout\);

-- Location: LCCOMB_X21_Y19_N18
\ps2_ACCLL|Mux40~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~25_combout\ = (\ps2_ACCLL|process_0~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux40~24_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|Mux40~24_combout\ & 
-- ((\ps2_ACCLL|Mux25~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~2_combout\,
	datac => \ps2_ACCLL|Mux40~24_combout\,
	datad => \ps2_ACCLL|Mux25~40_combout\,
	combout => \ps2_ACCLL|Mux40~25_combout\);

-- Location: LCCOMB_X21_Y19_N28
\ps2_ACCLL|Mux40~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~28_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux40~25_combout\ & (\ps2_ACCLL|Mux40~27_combout\)) # (!\ps2_ACCLL|Mux40~25_combout\ & ((\ps2_ACCLL|Mux40~22_combout\))))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux40~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~27_combout\,
	datab => \ps2_ACCLL|process_0~2_combout\,
	datac => \ps2_ACCLL|Mux40~22_combout\,
	datad => \ps2_ACCLL|Mux40~25_combout\,
	combout => \ps2_ACCLL|Mux40~28_combout\);

-- Location: LCCOMB_X21_Y19_N16
\ps2_ACCLL|Mux40~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~28_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux40~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux40~29_combout\,
	datad => \ps2_ACCLL|Mux40~28_combout\,
	combout => \ps2_ACCLL|Mux40~30_combout\);

-- Location: LCCOMB_X22_Y19_N30
\ps2_ACCLL|Mux40~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~14_combout\ = (!\ps2_ACCLL|Mux40~33_combout\ & ((\ps2_ACCLL|Mux25~23_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux25~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~33_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux25~23_combout\,
	datad => \ps2_ACCLL|Mux25~35_combout\,
	combout => \ps2_ACCLL|Mux40~14_combout\);

-- Location: LCCOMB_X22_Y19_N14
\ps2_ACCLL|Mux40~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~34_combout\ = (\ps2_ACCLL|Mux40~14_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux42~4_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux42~4_combout\,
	datac => \ps2_ACCLL|Mux40~14_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux40~34_combout\);

-- Location: LCCOMB_X22_Y19_N8
\ps2_ACCLL|Mux40~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~35_combout\ = (\ps2_ACCLL|Mux25~23_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux25~23_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux40~35_combout\);

-- Location: LCCOMB_X22_Y19_N22
\ps2_ACCLL|Mux40~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~36_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux16~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux16~10_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux16~10_combout\,
	combout => \ps2_ACCLL|Mux40~36_combout\);

-- Location: LCCOMB_X22_Y19_N2
\ps2_ACCLL|Mux40~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~18_combout\ = (!\ps2_ACCLL|Mux15~9_combout\ & ((\ps2_ACCLL|Mux25~23_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & \ps2_ACCLL|Mux25~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~9_combout\,
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux25~23_combout\,
	datad => \ps2_ACCLL|Mux25~35_combout\,
	combout => \ps2_ACCLL|Mux40~18_combout\);

-- Location: LCCOMB_X22_Y19_N28
\ps2_ACCLL|Mux40~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux40~36_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux40~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux40~36_combout\,
	datad => \ps2_ACCLL|Mux40~18_combout\,
	combout => \ps2_ACCLL|Mux40~19_combout\);

-- Location: LCCOMB_X22_Y19_N26
\ps2_ACCLL|Mux40~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux40~35_combout\) # ((\ps2_ACCLL|Mux17~6_combout\ & !\ps2_ACCLL|Mux40~19_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux40~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux17~6_combout\,
	datac => \ps2_ACCLL|Mux40~35_combout\,
	datad => \ps2_ACCLL|Mux40~19_combout\,
	combout => \ps2_ACCLL|Mux40~20_combout\);

-- Location: LCCOMB_X22_Y19_N20
\ps2_ACCLL|Mux40~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux25~27_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux25~27_combout\,
	datad => \ps2_ACCLL|Mux16~10_combout\,
	combout => \ps2_ACCLL|Mux40~15_combout\);

-- Location: LCCOMB_X22_Y19_N6
\ps2_ACCLL|Mux40~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~16_combout\ = (\ps2_ACCLL|Mux25~23_combout\) # ((\ps2_ACCLL|Mux38~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|Mux40~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux38~6_combout\,
	datac => \ps2_ACCLL|Mux25~23_combout\,
	datad => \ps2_ACCLL|Mux40~15_combout\,
	combout => \ps2_ACCLL|Mux40~16_combout\);

-- Location: LCCOMB_X22_Y19_N4
\ps2_ACCLL|Mux40~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~37_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux40~16_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|Mux40~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux40~16_combout\,
	combout => \ps2_ACCLL|Mux40~37_combout\);

-- Location: LCCOMB_X22_Y19_N18
\ps2_ACCLL|Mux40~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~38_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux40~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux40~16_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux40~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux40~37_combout\,
	datad => \ps2_ACCLL|Mux40~16_combout\,
	combout => \ps2_ACCLL|Mux40~38_combout\);

-- Location: LCCOMB_X22_Y19_N12
\ps2_ACCLL|Mux40~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~17_combout\ = (\ps2_ACCLL|process_0~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux40~38_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux40~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux40~14_combout\,
	datad => \ps2_ACCLL|Mux40~38_combout\,
	combout => \ps2_ACCLL|Mux40~17_combout\);

-- Location: LCCOMB_X22_Y19_N24
\ps2_ACCLL|Mux40~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~21_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux40~17_combout\ & ((\ps2_ACCLL|Mux40~20_combout\))) # (!\ps2_ACCLL|Mux40~17_combout\ & (\ps2_ACCLL|Mux40~34_combout\)))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux40~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux40~34_combout\,
	datac => \ps2_ACCLL|Mux40~20_combout\,
	datad => \ps2_ACCLL|Mux40~17_combout\,
	combout => \ps2_ACCLL|Mux40~21_combout\);

-- Location: LCCOMB_X22_Y19_N10
\ps2_ACCLL|Mux40~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux40~30_combout\ & (\ps2_ACCLL|Mux40~31_combout\)) # (!\ps2_ACCLL|Mux40~30_combout\ & ((\ps2_ACCLL|Mux40~21_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux40~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~31_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux40~30_combout\,
	datad => \ps2_ACCLL|Mux40~21_combout\,
	combout => \ps2_ACCLL|Mux40~32_combout\);

-- Location: LCCOMB_X22_Y19_N0
\ps2_ACCLL|ascii~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~41_combout\ = (\ps2_ACCLL|control_r~q\ & (((!\ps2_ACCLL|Mux8~16_combout\)))) # (!\ps2_ACCLL|control_r~q\ & ((\ps2_ACCLL|control_l~q\ & (!\ps2_ACCLL|Mux8~16_combout\)) # (!\ps2_ACCLL|control_l~q\ & ((!\ps2_ACCLL|Mux40~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|Mux8~16_combout\,
	datad => \ps2_ACCLL|Mux40~32_combout\,
	combout => \ps2_ACCLL|ascii~41_combout\);

-- Location: FF_X22_Y19_N1
\ps2_ACCLL|ascii[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~41_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(4));

-- Location: LCCOMB_X21_Y20_N8
\ps2_ACCLL|ascii_code[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[4]~2_combout\ = !\ps2_ACCLL|ascii\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|ascii_code[4]~2_combout\);

-- Location: FF_X28_Y28_N25
\ps2_ACCLL|ascii_code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[4]~2_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(4));

-- Location: LCCOMB_X28_Y28_N18
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!\ps2_ACCLL|ascii_code\(6) & (!\ps2_ACCLL|ascii_code\(3) & (\ps2_ACCLL|ascii_code\(5) & \ps2_ACCLL|ascii_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(6),
	datab => \ps2_ACCLL|ascii_code\(3),
	datac => \ps2_ACCLL|ascii_code\(5),
	datad => \ps2_ACCLL|ascii_code\(4),
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X28_Y28_N16
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (!\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(2) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

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

-- Location: FF_X28_Y28_N17
\LEDG[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux9~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[0]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N8
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\ps2_ACCLL|ascii_code\(2) & (!\ps2_ACCLL|ascii_code\(1) & (\ps2_ACCLL|ascii_code\(0) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(0),
	datad => \Mux9~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: FF_X28_Y28_N9
\LEDG[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux8~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[1]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N20
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(2) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \Mux9~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: FF_X28_Y28_N21
\LEDG[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux7~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[2]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N22
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\ps2_ACCLL|ascii_code\(0) & (\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(2) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \Mux9~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X28_Y28_N23
\LEDG[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux6~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[3]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N4
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (!\ps2_ACCLL|ascii_code\(1) & (\ps2_ACCLL|ascii_code\(2) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \Mux9~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: FF_X28_Y28_N5
\LEDG[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[4]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N6
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\ps2_ACCLL|ascii_code\(2) & (!\ps2_ACCLL|ascii_code\(1) & (\ps2_ACCLL|ascii_code\(0) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(0),
	datad => \Mux9~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: FF_X28_Y28_N7
\LEDG[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[5]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N12
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\ps2_ACCLL|ascii_code\(2) & (\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(0) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(0),
	datad => \Mux9~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: FF_X28_Y28_N13
\LEDG[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux3~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[6]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N10
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\ps2_ACCLL|ascii_code\(0) & (\ps2_ACCLL|ascii_code\(1) & (\ps2_ACCLL|ascii_code\(2) & \Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \Mux9~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: FF_X28_Y28_N11
\LEDG[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[7]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N2
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ps2_ACCLL|ascii_code\(5) & (!\ps2_ACCLL|ascii_code\(6) & (\ps2_ACCLL|ascii_code\(3) & \ps2_ACCLL|ascii_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(5),
	datab => \ps2_ACCLL|ascii_code\(6),
	datac => \ps2_ACCLL|ascii_code\(3),
	datad => \ps2_ACCLL|ascii_code\(4),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X28_Y28_N28
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (!\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(2) & \Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X28_Y28_N29
\LEDG[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux1~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[8]~reg0_q\);

-- Location: LCCOMB_X28_Y28_N30
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\ps2_ACCLL|ascii_code\(2) & (!\ps2_ACCLL|ascii_code\(1) & (\ps2_ACCLL|ascii_code\(0) & \Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(0),
	datad => \Mux1~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: FF_X28_Y28_N31
\LEDG[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDG[9]~reg0_q\);

-- Location: LCCOMB_X29_Y28_N10
\number1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number1[1]~feeder_combout\ = \ps2_ACCLL|ascii_code\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii_code\(5),
	combout => \number1[1]~feeder_combout\);

-- Location: FF_X29_Y28_N11
\number1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \number1[1]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number1(1));

-- Location: LCCOMB_X29_Y28_N12
\number1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number1[0]~feeder_combout\ = \ps2_ACCLL|ascii_code\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii_code\(4),
	combout => \number1[0]~feeder_combout\);

-- Location: FF_X29_Y28_N13
\number1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \number1[0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number1(0));

-- Location: LCCOMB_X27_Y28_N4
\number0[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number0[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \number0[4]~feeder_combout\);

-- Location: FF_X27_Y28_N5
\number0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \number0[4]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number0(4));

-- Location: LCCOMB_X29_Y28_N20
\number1[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number1[2]~feeder_combout\ = \ps2_ACCLL|ascii_code\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii_code\(6),
	combout => \number1[2]~feeder_combout\);

-- Location: FF_X29_Y28_N21
\number1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \number1[2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number1(2));

-- Location: LCCOMB_X37_Y28_N28
\dig1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig1|Mux6~0_combout\ = (number0(4) & ((number1(1) & ((!number1(2)) # (!number1(0)))) # (!number1(1) & ((number1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number1(1),
	datab => number1(0),
	datac => number0(4),
	datad => number1(2),
	combout => \dig1|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y28_N2
\dig1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig1|Mux5~0_combout\ = ((number1(1) & ((number1(0)) # (!number1(2)))) # (!number1(1) & (number1(0) & !number1(2)))) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number1(1),
	datab => number1(0),
	datac => number0(4),
	datad => number1(2),
	combout => \dig1|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y28_N0
\dig1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig1|Mux4~0_combout\ = (number1(0)) # (((!number1(1) & number1(2))) # (!number0(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number1(1),
	datab => number1(0),
	datac => number0(4),
	datad => number1(2),
	combout => \dig1|Mux4~0_combout\);

-- Location: LCCOMB_X29_Y28_N26
\dig1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig1|Mux3~0_combout\ = ((number1(1) & (number1(2) & number1(0))) # (!number1(1) & (number1(2) $ (number1(0))))) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number1(1),
	datab => number1(2),
	datac => number1(0),
	datad => number0(4),
	combout => \dig1|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y28_N22
\dig1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig1|Mux2~0_combout\ = ((number1(1) & (!number1(0) & !number1(2)))) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number1(1),
	datab => number1(0),
	datac => number0(4),
	datad => number1(2),
	combout => \dig1|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y28_N12
\dig1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig1|Mux1~0_combout\ = ((number1(2) & (number1(1) $ (number1(0))))) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number1(1),
	datab => number1(0),
	datac => number0(4),
	datad => number1(2),
	combout => \dig1|Mux1~0_combout\);

-- Location: LCCOMB_X29_Y28_N16
\dig1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig1|Mux0~0_combout\ = ((!number1(1) & (number1(2) $ (number1(0))))) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number1(1),
	datab => number1(2),
	datac => number1(0),
	datad => number0(4),
	combout => \dig1|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y28_N6
\number0[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number0[2]~feeder_combout\ = \ps2_ACCLL|ascii_code\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii_code\(2),
	combout => \number0[2]~feeder_combout\);

-- Location: FF_X27_Y28_N7
\number0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \number0[2]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number0(2));

-- Location: LCCOMB_X27_Y28_N18
\number0[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \number0[0]~feeder_combout\ = \ps2_ACCLL|ascii_code\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii_code\(0),
	combout => \number0[0]~feeder_combout\);

-- Location: FF_X27_Y28_N19
\number0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \number0[0]~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number0(0));

-- Location: FF_X27_Y28_N9
\number0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code\(1),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number0(1));

-- Location: FF_X28_Y28_N3
\number0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code\(3),
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => number0(3));

-- Location: LCCOMB_X27_Y28_N20
\dig0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux6~0_combout\ = (number0(0) & ((number0(3)) # (number0(2) $ (number0(1))))) # (!number0(0) & ((number0(1)) # (number0(2) $ (number0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number0(2),
	datab => number0(0),
	datac => number0(1),
	datad => number0(3),
	combout => \dig0|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y28_N14
\dig0|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux6~1_combout\ = (!\dig0|Mux6~0_combout\) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number0(4),
	datad => \dig0|Mux6~0_combout\,
	combout => \dig0|Mux6~1_combout\);

-- Location: LCCOMB_X27_Y28_N30
\dig0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux5~0_combout\ = (number0(2) & (number0(0) & (number0(1) $ (number0(3))))) # (!number0(2) & (!number0(3) & ((number0(0)) # (number0(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number0(2),
	datab => number0(0),
	datac => number0(1),
	datad => number0(3),
	combout => \dig0|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y28_N28
\dig0|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux5~1_combout\ = (\dig0|Mux5~0_combout\) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number0(4),
	datac => \dig0|Mux5~0_combout\,
	combout => \dig0|Mux5~1_combout\);

-- Location: LCCOMB_X27_Y28_N14
\dig0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux4~0_combout\ = (number0(1) & (((number0(0) & !number0(3))))) # (!number0(1) & ((number0(2) & ((!number0(3)))) # (!number0(2) & (number0(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number0(2),
	datab => number0(0),
	datac => number0(1),
	datad => number0(3),
	combout => \dig0|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y28_N24
\dig0|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux4~1_combout\ = (\dig0|Mux4~0_combout\) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number0(4),
	datad => \dig0|Mux4~0_combout\,
	combout => \dig0|Mux4~1_combout\);

-- Location: LCCOMB_X27_Y28_N24
\dig0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux3~0_combout\ = (number0(0) & (number0(2) $ ((!number0(1))))) # (!number0(0) & ((number0(2) & (!number0(1) & !number0(3))) # (!number0(2) & (number0(1) & number0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number0(2),
	datab => number0(0),
	datac => number0(1),
	datad => number0(3),
	combout => \dig0|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y28_N10
\dig0|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux3~1_combout\ = (\dig0|Mux3~0_combout\) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => number0(4),
	datad => \dig0|Mux3~0_combout\,
	combout => \dig0|Mux3~1_combout\);

-- Location: LCCOMB_X27_Y28_N12
\dig0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux2~0_combout\ = (number0(2) & (number0(3) & ((number0(1)) # (!number0(0))))) # (!number0(2) & (!number0(0) & (number0(1) & !number0(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number0(2),
	datab => number0(0),
	datac => number0(1),
	datad => number0(3),
	combout => \dig0|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y28_N2
\dig0|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux2~1_combout\ = (\dig0|Mux2~0_combout\) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => number0(4),
	datad => \dig0|Mux2~0_combout\,
	combout => \dig0|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y28_N0
\dig0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux1~0_combout\ = (number0(1) & ((number0(0) & ((number0(3)))) # (!number0(0) & (number0(2))))) # (!number0(1) & (number0(2) & (number0(0) $ (number0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number0(2),
	datab => number0(0),
	datac => number0(1),
	datad => number0(3),
	combout => \dig0|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y28_N8
\dig0|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux1~1_combout\ = (\dig0|Mux1~0_combout\) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number0(4),
	datad => \dig0|Mux1~0_combout\,
	combout => \dig0|Mux1~1_combout\);

-- Location: LCCOMB_X27_Y28_N22
\dig0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux0~0_combout\ = (number0(2) & (!number0(1) & (number0(0) $ (!number0(3))))) # (!number0(2) & (number0(0) & (number0(1) $ (!number0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => number0(2),
	datab => number0(0),
	datac => number0(1),
	datad => number0(3),
	combout => \dig0|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y28_N0
\dig0|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dig0|Mux0~1_combout\ = (\dig0|Mux0~0_combout\) # (!number0(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => number0(4),
	datad => \dig0|Mux0~0_combout\,
	combout => \dig0|Mux0~1_combout\);

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

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;
END structure;


