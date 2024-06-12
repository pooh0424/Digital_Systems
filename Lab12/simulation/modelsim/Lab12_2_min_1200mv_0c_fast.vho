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

-- DATE "05/22/2024 21:55:13"

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

ENTITY 	Lab12_2 IS
    PORT (
	CLOCK_50 : IN std_logic;
	PS2_KBDAT : IN std_logic;
	PS2_KBCLK : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	Rout : OUT std_logic_vector(3 DOWNTO 0);
	Gout : OUT std_logic_vector(3 DOWNTO 0);
	Bout : OUT std_logic_vector(3 DOWNTO 0);
	HOR_SYN : OUT std_logic;
	VER_SYN : OUT std_logic
	);
END Lab12_2;

-- Design Ports Information
-- Rout[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[1]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[2]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rout[3]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[2]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gout[3]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[0]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[1]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout[3]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HOR_SYN	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VER_SYN	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBCLK	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab12_2 IS
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
SIGNAL ww_Rout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Gout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bout : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HOR_SYN : std_logic;
SIGNAL ww_VER_SYN : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock_div1|CLK_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clock_div1|CLK_out~0_combout\ : std_logic;
SIGNAL \clock_div1|CLK_out~feeder_combout\ : std_logic;
SIGNAL \clock_div1|CLK_out~q\ : std_logic;
SIGNAL \clock_div1|CLK_out~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_sync1|Add1~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~11\ : std_logic;
SIGNAL \VGA_sync1|Add1~12_combout\ : std_logic;
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
SIGNAL \VGA_sync1|Add0~15\ : std_logic;
SIGNAL \VGA_sync1|Add0~16_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Add0~17\ : std_logic;
SIGNAL \VGA_sync1|Add0~18_combout\ : std_logic;
SIGNAL \VGA_sync1|h_count~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal0~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~13\ : std_logic;
SIGNAL \VGA_sync1|Add1~14_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~15\ : std_logic;
SIGNAL \VGA_sync1|Add1~16_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~17\ : std_logic;
SIGNAL \VGA_sync1|Add1~18_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~1_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~0_combout\ : std_logic;
SIGNAL \VGA_sync1|Equal1~2_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~3_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~1\ : std_logic;
SIGNAL \VGA_sync1|Add1~2_combout\ : std_logic;
SIGNAL \VGA_sync1|Add1~3\ : std_logic;
SIGNAL \VGA_sync1|Add1~4_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count~2_combout\ : std_logic;
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
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\ : std_logic;
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
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\ : std_logic;
SIGNAL \PS2_KBDAT~input_o\ : std_logic;
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
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|break~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.ready~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.new_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.translate~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.translate~q\ : std_logic;
SIGNAL \ps2_ACCLL|state~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.output~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|e0_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~51_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~52_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~89_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~90_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~44_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~45_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~42_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~43_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~46_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~47_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~88_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[5]~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_outclk\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|Mux47~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux47~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux47~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux47~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~71_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~69_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~68_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~70_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~72_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[0]~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~77_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~78_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~73_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~74_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~75_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~76_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~79_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux47~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~80_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~81_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~82_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~83_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~86_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~84_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~85_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~87_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[6]~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux45~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux48~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~48_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~49_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~63_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~64_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~65_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~66_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~67_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[1]~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~59_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~60_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~61_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~58_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~62_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[5]~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~53_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~54_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[3]~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~55_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~56_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~57_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[2]~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~42_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~45_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~43_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~46_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~44_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~41_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~41_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~50_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[4]~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \posr[7]~1_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \posr[2]~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \posr[4]~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \posr[5]~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \posr[6]~2_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \dot_display1|Add1~1\ : std_logic;
SIGNAL \dot_display1|Add1~3\ : std_logic;
SIGNAL \dot_display1|Add1~5\ : std_logic;
SIGNAL \dot_display1|Add1~7\ : std_logic;
SIGNAL \dot_display1|Add1~9\ : std_logic;
SIGNAL \dot_display1|Add1~11\ : std_logic;
SIGNAL \dot_display1|Add1~12_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \posc[6]~2_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \posc[8]~1_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \process_0~12_combout\ : std_logic;
SIGNAL \posc[3]~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \dot_display1|Add2~1\ : std_logic;
SIGNAL \dot_display1|Add2~3\ : std_logic;
SIGNAL \dot_display1|Add2~5\ : std_logic;
SIGNAL \dot_display1|Add2~7\ : std_logic;
SIGNAL \dot_display1|Add2~9\ : std_logic;
SIGNAL \dot_display1|Add2~11\ : std_logic;
SIGNAL \dot_display1|Add2~13\ : std_logic;
SIGNAL \dot_display1|Add2~14_combout\ : std_logic;
SIGNAL \dot_display1|Add2~12_combout\ : std_logic;
SIGNAL \dot_display1|Add2~10_combout\ : std_logic;
SIGNAL \dot_display1|Add2~8_combout\ : std_logic;
SIGNAL \dot_display1|Add2~6_combout\ : std_logic;
SIGNAL \dot_display1|Add2~4_combout\ : std_logic;
SIGNAL \dot_display1|Add2~2_combout\ : std_logic;
SIGNAL \dot_display1|Add2~0_combout\ : std_logic;
SIGNAL \dot_display1|LessThan2~1_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~3_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~5_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~7_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~9_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~11_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~13_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~15_cout\ : std_logic;
SIGNAL \dot_display1|LessThan2~16_combout\ : std_logic;
SIGNAL \dot_display1|Add1~10_combout\ : std_logic;
SIGNAL \dot_display1|Add1~8_combout\ : std_logic;
SIGNAL \dot_display1|Add1~6_combout\ : std_logic;
SIGNAL \dot_display1|Add1~4_combout\ : std_logic;
SIGNAL \dot_display1|Add1~2_combout\ : std_logic;
SIGNAL \dot_display1|Add1~0_combout\ : std_logic;
SIGNAL \dot_display1|LessThan1~1_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~3_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~5_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~7_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~9_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~11_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~13_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~15_cout\ : std_logic;
SIGNAL \dot_display1|LessThan1~16_combout\ : std_logic;
SIGNAL \dot_display1|Rout[0]~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~4_combout\ : std_logic;
SIGNAL \VGA_sync1|process_4~5_combout\ : std_logic;
SIGNAL \dot_display1|Add3~1\ : std_logic;
SIGNAL \dot_display1|Add3~3\ : std_logic;
SIGNAL \dot_display1|Add3~5\ : std_logic;
SIGNAL \dot_display1|Add3~7\ : std_logic;
SIGNAL \dot_display1|Add3~9\ : std_logic;
SIGNAL \dot_display1|Add3~10_combout\ : std_logic;
SIGNAL \dot_display1|Add3~8_combout\ : std_logic;
SIGNAL \dot_display1|Add3~6_combout\ : std_logic;
SIGNAL \dot_display1|Add3~4_combout\ : std_logic;
SIGNAL \dot_display1|Add3~2_combout\ : std_logic;
SIGNAL \dot_display1|Add3~0_combout\ : std_logic;
SIGNAL \dot_display1|LessThan3~1_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~3_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~5_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~7_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~9_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~11_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~13_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~15_cout\ : std_logic;
SIGNAL \dot_display1|LessThan3~16_combout\ : std_logic;
SIGNAL \dot_display1|Add0~1\ : std_logic;
SIGNAL \dot_display1|Add0~3\ : std_logic;
SIGNAL \dot_display1|Add0~5\ : std_logic;
SIGNAL \dot_display1|Add0~7\ : std_logic;
SIGNAL \dot_display1|Add0~9\ : std_logic;
SIGNAL \dot_display1|Add0~11\ : std_logic;
SIGNAL \dot_display1|Add0~13\ : std_logic;
SIGNAL \dot_display1|Add0~14_combout\ : std_logic;
SIGNAL \dot_display1|Add3~11\ : std_logic;
SIGNAL \dot_display1|Add3~12_combout\ : std_logic;
SIGNAL \dot_display1|Add0~12_combout\ : std_logic;
SIGNAL \dot_display1|Add0~10_combout\ : std_logic;
SIGNAL \dot_display1|Add0~8_combout\ : std_logic;
SIGNAL \dot_display1|Add0~6_combout\ : std_logic;
SIGNAL \dot_display1|Add0~4_combout\ : std_logic;
SIGNAL \dot_display1|Add0~2_combout\ : std_logic;
SIGNAL \dot_display1|Add0~0_combout\ : std_logic;
SIGNAL \dot_display1|LessThan0~1_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~3_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~5_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~7_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~9_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~11_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~13_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~15_cout\ : std_logic;
SIGNAL \dot_display1|LessThan0~16_combout\ : std_logic;
SIGNAL \dot_display1|Rout[0]~0_combout\ : std_logic;
SIGNAL \dot_display1|Rout[0]~2_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_2~2_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~1_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~0_combout\ : std_logic;
SIGNAL \VGA_sync1|process_3~2_combout\ : std_logic;
SIGNAL \VGA_sync1|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA_sync1|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL posc : std_logic_vector(9 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|sync_ffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL posr : std_logic_vector(9 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_PS2_KBDAT <= PS2_KBDAT;
ww_PS2_KBCLK <= PS2_KBCLK;
ww_KEY <= KEY;
Rout <= ww_Rout;
Gout <= ww_Gout;
Bout <= ww_Bout;
HOR_SYN <= ww_HOR_SYN;
VER_SYN <= ww_VER_SYN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\clock_div1|CLK_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_div1|CLK_out~q\);

\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\);

\ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ascii_new~q\);

\KEY[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[0]~input_o\);
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\;
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\;

-- Location: IOOBUF_X39_Y29_N30
\Rout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Rout[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\Rout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Rout[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N9
\Rout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Rout[2]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\Rout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
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
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Gout[0]~output_o\);

-- Location: IOOBUF_X41_Y23_N16
\Gout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Gout[1]~output_o\);

-- Location: IOOBUF_X39_Y29_N2
\Gout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Gout[2]~output_o\);

-- Location: IOOBUF_X35_Y29_N9
\Gout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Gout[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\Bout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Bout[0]~output_o\);

-- Location: IOOBUF_X39_Y29_N9
\Bout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Bout[1]~output_o\);

-- Location: IOOBUF_X41_Y26_N2
\Bout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Bout[2]~output_o\);

-- Location: IOOBUF_X41_Y23_N2
\Bout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dot_display1|Rout[0]~2_combout\,
	devoe => ww_devoe,
	o => \Bout[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
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

-- Location: IOOBUF_X26_Y29_N9
\VER_SYN~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_sync1|process_3~2_combout\,
	devoe => ww_devoe,
	o => \VER_SYN~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\CLOCK_50~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X21_Y28_N30
\clock_div1|CLK_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_div1|CLK_out~0_combout\ = !\clock_div1|CLK_out~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clock_div1|CLK_out~q\,
	combout => \clock_div1|CLK_out~0_combout\);

-- Location: LCCOMB_X21_Y28_N18
\clock_div1|CLK_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clock_div1|CLK_out~feeder_combout\ = \clock_div1|CLK_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clock_div1|CLK_out~0_combout\,
	combout => \clock_div1|CLK_out~feeder_combout\);

-- Location: FF_X21_Y28_N19
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

-- Location: LCCOMB_X28_Y22_N6
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

-- Location: LCCOMB_X28_Y22_N16
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

-- Location: LCCOMB_X28_Y22_N18
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

-- Location: LCCOMB_X27_Y22_N10
\VGA_sync1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~0_combout\ = \VGA_sync1|h_count\(0) $ (VCC)
-- \VGA_sync1|Add0~1\ = CARRY(\VGA_sync1|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(0),
	datad => VCC,
	combout => \VGA_sync1|Add0~0_combout\,
	cout => \VGA_sync1|Add0~1\);

-- Location: FF_X27_Y22_N11
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

-- Location: LCCOMB_X27_Y22_N12
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

-- Location: FF_X27_Y22_N13
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

-- Location: LCCOMB_X27_Y22_N14
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

-- Location: FF_X27_Y22_N15
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

-- Location: LCCOMB_X27_Y22_N16
\VGA_sync1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~6_combout\ = (\VGA_sync1|h_count\(3) & (!\VGA_sync1|Add0~5\)) # (!\VGA_sync1|h_count\(3) & ((\VGA_sync1|Add0~5\) # (GND)))
-- \VGA_sync1|Add0~7\ = CARRY((!\VGA_sync1|Add0~5\) # (!\VGA_sync1|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(3),
	datad => VCC,
	cin => \VGA_sync1|Add0~5\,
	combout => \VGA_sync1|Add0~6_combout\,
	cout => \VGA_sync1|Add0~7\);

-- Location: FF_X27_Y22_N17
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

-- Location: LCCOMB_X27_Y22_N18
\VGA_sync1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~8_combout\ = (\VGA_sync1|h_count\(4) & (\VGA_sync1|Add0~7\ $ (GND))) # (!\VGA_sync1|h_count\(4) & (!\VGA_sync1|Add0~7\ & VCC))
-- \VGA_sync1|Add0~9\ = CARRY((\VGA_sync1|h_count\(4) & !\VGA_sync1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(4),
	datad => VCC,
	cin => \VGA_sync1|Add0~7\,
	combout => \VGA_sync1|Add0~8_combout\,
	cout => \VGA_sync1|Add0~9\);

-- Location: FF_X27_Y22_N19
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

-- Location: LCCOMB_X27_Y22_N20
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

-- Location: LCCOMB_X27_Y22_N30
\VGA_sync1|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~1_combout\ = (!\VGA_sync1|Equal0~2_combout\ & \VGA_sync1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Equal0~2_combout\,
	datad => \VGA_sync1|Add0~10_combout\,
	combout => \VGA_sync1|h_count~1_combout\);

-- Location: FF_X27_Y22_N31
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

-- Location: LCCOMB_X27_Y22_N22
\VGA_sync1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add0~12_combout\ = (\VGA_sync1|h_count\(6) & (\VGA_sync1|Add0~11\ $ (GND))) # (!\VGA_sync1|h_count\(6) & (!\VGA_sync1|Add0~11\ & VCC))
-- \VGA_sync1|Add0~13\ = CARRY((\VGA_sync1|h_count\(6) & !\VGA_sync1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(6),
	datad => VCC,
	cin => \VGA_sync1|Add0~11\,
	combout => \VGA_sync1|Add0~12_combout\,
	cout => \VGA_sync1|Add0~13\);

-- Location: FF_X27_Y22_N23
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

-- Location: LCCOMB_X27_Y22_N24
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

-- Location: FF_X27_Y22_N25
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

-- Location: LCCOMB_X27_Y22_N26
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

-- Location: LCCOMB_X27_Y22_N4
\VGA_sync1|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~0_combout\ = (\VGA_sync1|Add0~16_combout\ & !\VGA_sync1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA_sync1|Add0~16_combout\,
	datad => \VGA_sync1|Equal0~2_combout\,
	combout => \VGA_sync1|h_count~0_combout\);

-- Location: FF_X27_Y22_N5
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

-- Location: LCCOMB_X27_Y22_N8
\VGA_sync1|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~1_combout\ = (\VGA_sync1|h_count\(8) & (\VGA_sync1|h_count\(4) & (\VGA_sync1|h_count\(2) & \VGA_sync1|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(8),
	datab => \VGA_sync1|h_count\(4),
	datac => \VGA_sync1|h_count\(2),
	datad => \VGA_sync1|h_count\(3),
	combout => \VGA_sync1|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y22_N28
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

-- Location: LCCOMB_X27_Y22_N0
\VGA_sync1|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|h_count~2_combout\ = (!\VGA_sync1|Equal0~2_combout\ & \VGA_sync1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Equal0~2_combout\,
	datad => \VGA_sync1|Add0~18_combout\,
	combout => \VGA_sync1|h_count~2_combout\);

-- Location: FF_X27_Y22_N1
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

-- Location: LCCOMB_X27_Y22_N2
\VGA_sync1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~0_combout\ = (!\VGA_sync1|h_count\(5) & (!\VGA_sync1|h_count\(7) & (!\VGA_sync1|h_count\(6) & \VGA_sync1|h_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(5),
	datab => \VGA_sync1|h_count\(7),
	datac => \VGA_sync1|h_count\(6),
	datad => \VGA_sync1|h_count\(9),
	combout => \VGA_sync1|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y22_N6
\VGA_sync1|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal0~2_combout\ = (\VGA_sync1|h_count\(1) & (\VGA_sync1|h_count\(0) & (\VGA_sync1|Equal0~1_combout\ & \VGA_sync1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(1),
	datab => \VGA_sync1|h_count\(0),
	datac => \VGA_sync1|Equal0~1_combout\,
	datad => \VGA_sync1|Equal0~0_combout\,
	combout => \VGA_sync1|Equal0~2_combout\);

-- Location: FF_X28_Y22_N19
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

-- Location: LCCOMB_X28_Y22_N20
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

-- Location: FF_X28_Y22_N21
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

-- Location: LCCOMB_X28_Y22_N22
\VGA_sync1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Add1~16_combout\ = (\VGA_sync1|v_count\(8) & (\VGA_sync1|Add1~15\ $ (GND))) # (!\VGA_sync1|v_count\(8) & (!\VGA_sync1|Add1~15\ & VCC))
-- \VGA_sync1|Add1~17\ = CARRY((\VGA_sync1|v_count\(8) & !\VGA_sync1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(8),
	datad => VCC,
	cin => \VGA_sync1|Add1~15\,
	combout => \VGA_sync1|Add1~16_combout\,
	cout => \VGA_sync1|Add1~17\);

-- Location: FF_X28_Y22_N23
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

-- Location: LCCOMB_X28_Y22_N24
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

-- Location: LCCOMB_X28_Y22_N0
\VGA_sync1|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~0_combout\ = (!\VGA_sync1|Equal1~2_combout\ & \VGA_sync1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|Equal1~2_combout\,
	datad => \VGA_sync1|Add1~18_combout\,
	combout => \VGA_sync1|v_count~0_combout\);

-- Location: FF_X28_Y22_N1
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

-- Location: LCCOMB_X28_Y22_N4
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

-- Location: LCCOMB_X29_Y22_N4
\VGA_sync1|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~0_combout\ = (!\VGA_sync1|v_count\(1) & (!\VGA_sync1|v_count\(6) & (!\VGA_sync1|v_count\(0) & !\VGA_sync1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(1),
	datab => \VGA_sync1|v_count\(6),
	datac => \VGA_sync1|v_count\(0),
	datad => \VGA_sync1|v_count\(7),
	combout => \VGA_sync1|Equal1~0_combout\);

-- Location: LCCOMB_X28_Y22_N2
\VGA_sync1|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|Equal1~2_combout\ = (!\VGA_sync1|v_count\(8) & (!\VGA_sync1|v_count\(5) & (\VGA_sync1|Equal1~1_combout\ & \VGA_sync1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(8),
	datab => \VGA_sync1|v_count\(5),
	datac => \VGA_sync1|Equal1~1_combout\,
	datad => \VGA_sync1|Equal1~0_combout\,
	combout => \VGA_sync1|Equal1~2_combout\);

-- Location: LCCOMB_X28_Y22_N26
\VGA_sync1|v_count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~3_combout\ = (\VGA_sync1|Add1~0_combout\ & !\VGA_sync1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Add1~0_combout\,
	datad => \VGA_sync1|Equal1~2_combout\,
	combout => \VGA_sync1|v_count~3_combout\);

-- Location: FF_X28_Y22_N27
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

-- Location: LCCOMB_X28_Y22_N8
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

-- Location: FF_X28_Y22_N9
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

-- Location: LCCOMB_X28_Y22_N10
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

-- Location: LCCOMB_X28_Y22_N28
\VGA_sync1|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~2_combout\ = (\VGA_sync1|Add1~4_combout\ & !\VGA_sync1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Add1~4_combout\,
	datad => \VGA_sync1|Equal1~2_combout\,
	combout => \VGA_sync1|v_count~2_combout\);

-- Location: FF_X28_Y22_N29
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

-- Location: LCCOMB_X28_Y22_N12
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

-- Location: LCCOMB_X28_Y22_N30
\VGA_sync1|v_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|v_count~1_combout\ = (\VGA_sync1|Add1~6_combout\ & !\VGA_sync1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|Add1~6_combout\,
	datad => \VGA_sync1|Equal1~2_combout\,
	combout => \VGA_sync1|v_count~1_combout\);

-- Location: FF_X28_Y22_N31
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

-- Location: LCCOMB_X28_Y22_N14
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

-- Location: FF_X28_Y22_N15
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

-- Location: FF_X28_Y22_N17
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

-- Location: LCCOMB_X28_Y21_N0
\VGA_sync1|process_4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~0_combout\ = (\VGA_sync1|v_count\(9) & (((\VGA_sync1|v_count\(8))))) # (!\VGA_sync1|v_count\(9) & (((!\VGA_sync1|v_count\(6))) # (!\VGA_sync1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \VGA_sync1|v_count\(9),
	datac => \VGA_sync1|v_count\(6),
	datad => \VGA_sync1|v_count\(8),
	combout => \VGA_sync1|process_4~0_combout\);

-- Location: LCCOMB_X28_Y21_N22
\VGA_sync1|process_4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~1_combout\ = (\VGA_sync1|v_count\(3) & (\VGA_sync1|v_count\(2) & ((\VGA_sync1|v_count\(0)) # (\VGA_sync1|v_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(0),
	datab => \VGA_sync1|v_count\(1),
	datac => \VGA_sync1|v_count\(3),
	datad => \VGA_sync1|v_count\(2),
	combout => \VGA_sync1|process_4~1_combout\);

-- Location: LCCOMB_X28_Y21_N26
\VGA_sync1|process_4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~2_combout\ = (\VGA_sync1|process_4~1_combout\) # ((\VGA_sync1|v_count\(6)) # ((\VGA_sync1|v_count\(4)) # (\VGA_sync1|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|process_4~1_combout\,
	datab => \VGA_sync1|v_count\(6),
	datac => \VGA_sync1|v_count\(4),
	datad => \VGA_sync1|v_count\(7),
	combout => \VGA_sync1|process_4~2_combout\);

-- Location: LCCOMB_X28_Y21_N24
\VGA_sync1|process_4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~3_combout\ = (\VGA_sync1|process_4~0_combout\) # ((\VGA_sync1|v_count\(5) & ((!\VGA_sync1|v_count\(8)))) # (!\VGA_sync1|v_count\(5) & (\VGA_sync1|process_4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(5),
	datab => \VGA_sync1|process_4~0_combout\,
	datac => \VGA_sync1|process_4~2_combout\,
	datad => \VGA_sync1|v_count\(8),
	combout => \VGA_sync1|process_4~3_combout\);

-- Location: LCCOMB_X24_Y15_N4
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

-- Location: IOIBUF_X26_Y29_N15
\PS2_KBCLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBCLK,
	o => \PS2_KBCLK~input_o\);

-- Location: FF_X26_Y8_N19
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

-- Location: LCCOMB_X26_Y8_N14
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

-- Location: FF_X26_Y8_N15
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

-- Location: LCCOMB_X26_Y8_N24
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

-- Location: FF_X26_Y8_N25
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

-- Location: LCCOMB_X26_Y8_N16
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

-- Location: LCCOMB_X26_Y8_N18
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\);

-- Location: LCCOMB_X27_Y8_N4
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

-- Location: LCCOMB_X27_Y8_N26
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\);

-- Location: FF_X27_Y8_N27
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

-- Location: LCCOMB_X27_Y8_N6
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

-- Location: LCCOMB_X26_Y8_N6
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

-- Location: FF_X26_Y8_N7
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

-- Location: LCCOMB_X27_Y8_N8
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~3\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~5\);

-- Location: LCCOMB_X27_Y8_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\);

-- Location: FF_X27_Y8_N29
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

-- Location: LCCOMB_X27_Y8_N10
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

-- Location: LCCOMB_X27_Y8_N22
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

-- Location: FF_X27_Y8_N23
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

-- Location: LCCOMB_X27_Y8_N12
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~7\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~9\);

-- Location: LCCOMB_X26_Y8_N12
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~8_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[4]~5_combout\);

-- Location: FF_X26_Y8_N13
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

-- Location: LCCOMB_X27_Y8_N14
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

-- Location: LCCOMB_X27_Y8_N0
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\);

-- Location: FF_X27_Y8_N1
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

-- Location: LCCOMB_X27_Y8_N16
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~11\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\);

-- Location: LCCOMB_X27_Y8_N30
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

-- Location: FF_X27_Y8_N31
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

-- Location: LCCOMB_X27_Y8_N18
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7) & (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\) # (GND)))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\ = CARRY((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~13\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\);

-- Location: LCCOMB_X27_Y8_N2
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

-- Location: FF_X27_Y8_N3
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

-- Location: LCCOMB_X27_Y8_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\ $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~15\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~16_combout\);

-- Location: LCCOMB_X27_Y8_N24
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

-- Location: FF_X27_Y8_N25
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

-- Location: LCCOMB_X26_Y8_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) & 
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\);

-- Location: LCCOMB_X24_Y8_N10
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

-- Location: FF_X24_Y8_N11
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

-- Location: LCCOMB_X24_Y15_N30
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

-- Location: LCCOMB_X24_Y15_N0
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

-- Location: LCCOMB_X24_Y15_N2
\ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\ = (((!\ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\)) # 
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
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\);

-- Location: FF_X24_Y15_N5
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(0));

-- Location: LCCOMB_X24_Y15_N6
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

-- Location: FF_X24_Y15_N7
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1));

-- Location: LCCOMB_X24_Y15_N8
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

-- Location: FF_X24_Y15_N9
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2));

-- Location: LCCOMB_X24_Y15_N10
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

-- Location: FF_X24_Y15_N11
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(3));

-- Location: LCCOMB_X24_Y15_N12
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

-- Location: FF_X24_Y15_N13
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4));

-- Location: LCCOMB_X24_Y15_N14
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

-- Location: FF_X24_Y15_N15
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(5));

-- Location: LCCOMB_X24_Y15_N16
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

-- Location: FF_X24_Y15_N17
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(6));

-- Location: LCCOMB_X24_Y15_N18
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

-- Location: FF_X24_Y15_N19
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(7));

-- Location: LCCOMB_X24_Y15_N20
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

-- Location: FF_X24_Y15_N21
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8));

-- Location: LCCOMB_X24_Y15_N22
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

-- Location: FF_X24_Y15_N23
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9));

-- Location: LCCOMB_X24_Y15_N24
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

-- Location: FF_X24_Y15_N25
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10));

-- Location: LCCOMB_X24_Y15_N26
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

-- Location: FF_X24_Y15_N27
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[4]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11));

-- Location: LCCOMB_X24_Y15_N28
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

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X41_Y18_N8
\PS2_KBDAT~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PS2_KBDAT,
	o => \PS2_KBDAT~input_o\);

-- Location: FF_X29_Y18_N17
\ps2_ACCLL|ps2_keyboard_0|sync_ffs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \PS2_KBDAT~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|sync_ffs\(1));

-- Location: LCCOMB_X28_Y18_N2
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

-- Location: FF_X28_Y18_N3
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

-- Location: LCCOMB_X28_Y18_N0
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops[1]~feeder_combout\);

-- Location: FF_X28_Y18_N1
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

-- Location: LCCOMB_X28_Y18_N14
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\);

-- Location: LCCOMB_X28_Y18_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\);

-- Location: LCCOMB_X29_Y18_N10
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

-- Location: LCCOMB_X29_Y18_N6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9_combout\);

-- Location: FF_X29_Y18_N7
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

-- Location: LCCOMB_X29_Y18_N12
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

-- Location: LCCOMB_X28_Y18_N6
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

-- Location: FF_X28_Y18_N7
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

-- Location: LCCOMB_X29_Y18_N14
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

-- Location: LCCOMB_X29_Y18_N8
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

-- Location: FF_X29_Y18_N9
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

-- Location: LCCOMB_X29_Y18_N16
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

-- Location: LCCOMB_X29_Y18_N28
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

-- Location: FF_X29_Y18_N29
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

-- Location: LCCOMB_X29_Y18_N18
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

-- Location: LCCOMB_X29_Y18_N2
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~8_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[4]~5_combout\);

-- Location: FF_X29_Y18_N3
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

-- Location: LCCOMB_X29_Y18_N20
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

-- Location: LCCOMB_X29_Y18_N4
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

-- Location: FF_X29_Y18_N5
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

-- Location: LCCOMB_X29_Y18_N22
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

-- Location: LCCOMB_X29_Y18_N30
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

-- Location: FF_X29_Y18_N31
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

-- Location: LCCOMB_X29_Y18_N24
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

-- Location: LCCOMB_X29_Y18_N0
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

-- Location: FF_X29_Y18_N1
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

-- Location: LCCOMB_X29_Y18_N26
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

-- Location: LCCOMB_X28_Y18_N12
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) $ 
-- ((!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~16_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out~0_combout\);

-- Location: FF_X28_Y18_N13
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

-- Location: LCCOMB_X24_Y19_N2
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\) # ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8) & 
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(8),
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\);

-- Location: FF_X24_Y19_N3
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

-- Location: FF_X24_Y19_N9
\ps2_ACCLL|ps2_keyboard_0|ps2_word[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(10));

-- Location: FF_X24_Y19_N27
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

-- Location: FF_X24_Y19_N13
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

-- Location: FF_X24_Y19_N29
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

-- Location: FF_X24_Y19_N11
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

-- Location: FF_X24_Y19_N7
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

-- Location: FF_X24_Y19_N5
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

-- Location: FF_X24_Y19_N15
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

-- Location: FF_X24_Y19_N31
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

-- Location: FF_X24_Y19_N23
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

-- Location: LCCOMB_X24_Y19_N22
\ps2_ACCLL|ps2_keyboard_0|error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\);

-- Location: FF_X24_Y19_N21
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

-- Location: LCCOMB_X24_Y19_N20
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

-- Location: LCCOMB_X24_Y19_N12
\ps2_ACCLL|ps2_keyboard_0|error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(8) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\);

-- Location: LCCOMB_X24_Y19_N26
\ps2_ACCLL|ps2_keyboard_0|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|error~0_combout\ $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(9) $ (\ps2_ACCLL|ps2_keyboard_0|error~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(9),
	datad => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\);

-- Location: LCCOMB_X24_Y19_N16
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

-- Location: FF_X24_Y19_N17
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

-- Location: LCCOMB_X28_Y19_N26
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

-- Location: FF_X28_Y19_N27
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

-- Location: FF_X23_Y19_N15
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

-- Location: LCCOMB_X28_Y19_N20
\ps2_ACCLL|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~0_combout\ = (\ps2_ACCLL|break~q\ & ((\ps2_ACCLL|state.output~q\) # ((\ps2_ACCLL|state.new_code~q\) # (!\ps2_ACCLL|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.output~q\,
	datab => \ps2_ACCLL|state.new_code~q\,
	datac => \ps2_ACCLL|break~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector2~0_combout\);

-- Location: FF_X23_Y19_N1
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

-- Location: FF_X23_Y19_N29
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

-- Location: FF_X23_Y19_N7
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

-- Location: FF_X23_Y19_N31
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

-- Location: FF_X23_Y19_N19
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

-- Location: LCCOMB_X26_Y18_N28
\ps2_ACCLL|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Equal0~0_combout\);

-- Location: FF_X23_Y19_N21
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

-- Location: FF_X23_Y19_N25
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

-- Location: LCCOMB_X26_Y18_N6
\ps2_ACCLL|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Equal0~0_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Equal0~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y19_N4
\ps2_ACCLL|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~1_combout\ = (\ps2_ACCLL|Selector2~0_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|state.new_code~q\ & \ps2_ACCLL|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Selector2~0_combout\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|Equal0~1_combout\,
	combout => \ps2_ACCLL|Selector2~1_combout\);

-- Location: FF_X28_Y19_N5
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

-- Location: LCCOMB_X28_Y19_N18
\ps2_ACCLL|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~1_combout\ = (\ps2_ACCLL|Selector1~0_combout\) # ((\ps2_ACCLL|Selector4~1_combout\) # ((\ps2_ACCLL|state.translate~q\ & !\ps2_ACCLL|break~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|Selector1~0_combout\,
	datac => \ps2_ACCLL|break~q\,
	datad => \ps2_ACCLL|Selector4~1_combout\,
	combout => \ps2_ACCLL|Selector1~1_combout\);

-- Location: FF_X28_Y19_N19
\ps2_ACCLL|state.ready\ : dffeas
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
	q => \ps2_ACCLL|state.ready~q\);

-- Location: LCCOMB_X28_Y19_N8
\ps2_ACCLL|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~0_combout\ = (\ps2_ACCLL|prev_ps2_code_new~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ & !\ps2_ACCLL|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|prev_ps2_code_new~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector1~0_combout\);

-- Location: FF_X28_Y19_N15
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

-- Location: LCCOMB_X28_Y19_N16
\ps2_ACCLL|Selector4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~1_combout\ = (\ps2_ACCLL|state.new_code~q\ & !\ps2_ACCLL|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|Equal0~1_combout\,
	combout => \ps2_ACCLL|Selector4~1_combout\);

-- Location: LCCOMB_X28_Y19_N12
\ps2_ACCLL|state.translate~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|state.translate~feeder_combout\ = \ps2_ACCLL|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|Selector4~1_combout\,
	combout => \ps2_ACCLL|state.translate~feeder_combout\);

-- Location: FF_X28_Y19_N13
\ps2_ACCLL|state.translate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|state.translate~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.translate~q\);

-- Location: LCCOMB_X28_Y19_N22
\ps2_ACCLL|state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|state~6_combout\ = (\ps2_ACCLL|state.translate~q\ & !\ps2_ACCLL|break~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datac => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|state~6_combout\);

-- Location: FF_X28_Y19_N23
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

-- Location: LCCOMB_X26_Y18_N26
\ps2_ACCLL|control_l~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|control_l~2_combout\);

-- Location: LCCOMB_X26_Y18_N0
\ps2_ACCLL|shift_l~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|shift_l~5_combout\);

-- Location: LCCOMB_X22_Y18_N16
\ps2_ACCLL|control_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|control_l~0_combout\);

-- Location: LCCOMB_X26_Y18_N12
\ps2_ACCLL|control_l~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~3_combout\ = (\ps2_ACCLL|control_l~2_combout\ & (\ps2_ACCLL|shift_l~5_combout\ & (\ps2_ACCLL|state.translate~q\ & \ps2_ACCLL|control_l~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~2_combout\,
	datab => \ps2_ACCLL|shift_l~5_combout\,
	datac => \ps2_ACCLL|state.translate~q\,
	datad => \ps2_ACCLL|control_l~0_combout\,
	combout => \ps2_ACCLL|control_l~3_combout\);

-- Location: LCCOMB_X28_Y19_N28
\ps2_ACCLL|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~0_combout\ = (\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|state.output~q\) # ((\ps2_ACCLL|state.new_code~q\) # (!\ps2_ACCLL|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.output~q\,
	datab => \ps2_ACCLL|state.new_code~q\,
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector3~0_combout\);

-- Location: LCCOMB_X28_Y19_N10
\ps2_ACCLL|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~1_combout\ = (\ps2_ACCLL|Selector3~0_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|state.new_code~q\ & \ps2_ACCLL|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Selector3~0_combout\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|Equal0~1_combout\,
	combout => \ps2_ACCLL|Selector3~1_combout\);

-- Location: FF_X24_Y19_N1
\ps2_ACCLL|e0_code\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|Selector3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|e0_code~q\);

-- Location: LCCOMB_X21_Y21_N26
\ps2_ACCLL|control_l~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~4_combout\ = (\ps2_ACCLL|control_l~3_combout\ & ((\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|control_l~q\)) # (!\ps2_ACCLL|e0_code~q\ & ((!\ps2_ACCLL|break~q\))))) # (!\ps2_ACCLL|control_l~3_combout\ & (((\ps2_ACCLL|control_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~3_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|control_l~4_combout\);

-- Location: FF_X21_Y21_N27
\ps2_ACCLL|control_l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|control_l~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|control_l~q\);

-- Location: LCCOMB_X21_Y21_N0
\ps2_ACCLL|control_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_r~0_combout\ = (\ps2_ACCLL|control_l~3_combout\ & ((\ps2_ACCLL|e0_code~q\ & ((!\ps2_ACCLL|break~q\))) # (!\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|control_r~q\)))) # (!\ps2_ACCLL|control_l~3_combout\ & (((\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~3_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|control_r~0_combout\);

-- Location: FF_X21_Y21_N1
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

-- Location: LCCOMB_X21_Y21_N22
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

-- Location: LCCOMB_X22_Y20_N8
\ps2_ACCLL|Mux5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux5~17_combout\);

-- Location: LCCOMB_X22_Y20_N2
\ps2_ACCLL|Mux5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux5~17_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux5~17_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux5~17_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux5~18_combout\);

-- Location: LCCOMB_X19_Y19_N18
\ps2_ACCLL|Mux38~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~12_combout\);

-- Location: LCCOMB_X21_Y21_N20
\ps2_ACCLL|ascii~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~51_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|Mux5~18_combout\) # (!\ps2_ACCLL|Mux38~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|Mux5~18_combout\,
	datad => \ps2_ACCLL|Mux38~12_combout\,
	combout => \ps2_ACCLL|ascii~51_combout\);

-- Location: LCCOMB_X22_Y16_N22
\ps2_ACCLL|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~6_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux5~6_combout\);

-- Location: LCCOMB_X22_Y16_N26
\ps2_ACCLL|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux5~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux5~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y16_N2
\ps2_ACCLL|Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux5~15_combout\);

-- Location: LCCOMB_X22_Y16_N12
\ps2_ACCLL|Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~16_combout\ = (\ps2_ACCLL|Mux5~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux5~15_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux5~16_combout\);

-- Location: LCCOMB_X22_Y16_N20
\ps2_ACCLL|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux5~16_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux5~4_combout\,
	datad => \ps2_ACCLL|Mux5~16_combout\,
	combout => \ps2_ACCLL|Mux5~3_combout\);

-- Location: LCCOMB_X21_Y21_N4
\ps2_ACCLL|Mux5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~14_combout\ = (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux5~3_combout\,
	combout => \ps2_ACCLL|Mux5~14_combout\);

-- Location: LCCOMB_X21_Y21_N2
\ps2_ACCLL|ascii~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~52_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ascii~51_combout\) # ((\ps2_ACCLL|Mux5~14_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ascii~51_combout\,
	datac => \ps2_ACCLL|Mux5~14_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~52_combout\);

-- Location: LCCOMB_X26_Y21_N22
\ps2_ACCLL|ascii~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~31_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~31_combout\);

-- Location: LCCOMB_X26_Y21_N24
\ps2_ACCLL|ascii~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~32_combout\);

-- Location: LCCOMB_X26_Y21_N26
\ps2_ACCLL|ascii~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ascii~32_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii~31_combout\,
	datad => \ps2_ACCLL|ascii~32_combout\,
	combout => \ps2_ACCLL|ascii~30_combout\);

-- Location: LCCOMB_X26_Y18_N24
\ps2_ACCLL|ascii~89\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~89_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|ascii~89_combout\);

-- Location: LCCOMB_X26_Y18_N18
\ps2_ACCLL|ascii~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~90_combout\ = (\ps2_ACCLL|ascii~89_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ascii~89_combout\,
	combout => \ps2_ACCLL|ascii~90_combout\);

-- Location: LCCOMB_X26_Y21_N16
\ps2_ACCLL|ascii~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ascii~30_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii~30_combout\,
	datad => \ps2_ACCLL|ascii~90_combout\,
	combout => \ps2_ACCLL|ascii~26_combout\);

-- Location: LCCOMB_X26_Y21_N2
\ps2_ACCLL|ascii~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~38_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|ascii~38_combout\);

-- Location: LCCOMB_X26_Y21_N4
\ps2_ACCLL|ascii~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~24_combout\);

-- Location: LCCOMB_X26_Y21_N6
\ps2_ACCLL|ascii~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~20_combout\);

-- Location: LCCOMB_X27_Y21_N28
\ps2_ACCLL|ascii~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~36_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~36_combout\);

-- Location: LCCOMB_X26_Y21_N12
\ps2_ACCLL|ascii~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~44_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ascii~36_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii~20_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ascii~36_combout\,
	combout => \ps2_ACCLL|ascii~44_combout\);

-- Location: LCCOMB_X26_Y21_N10
\ps2_ACCLL|ascii~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~45_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii~44_combout\ & ((\ps2_ACCLL|ascii~24_combout\))) # (!\ps2_ACCLL|ascii~44_combout\ & (\ps2_ACCLL|ascii~38_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|ascii~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~38_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii~24_combout\,
	datad => \ps2_ACCLL|ascii~44_combout\,
	combout => \ps2_ACCLL|ascii~45_combout\);

-- Location: LCCOMB_X26_Y18_N14
\ps2_ACCLL|ascii~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|ascii~16_combout\);

-- Location: LCCOMB_X26_Y18_N16
\ps2_ACCLL|ascii~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|ascii~17_combout\);

-- Location: LCCOMB_X26_Y18_N30
\ps2_ACCLL|ascii~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ascii~17_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii~16_combout\,
	datad => \ps2_ACCLL|ascii~17_combout\,
	combout => \ps2_ACCLL|ascii~15_combout\);

-- Location: LCCOMB_X26_Y18_N8
\ps2_ACCLL|ascii~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ascii~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii~15_combout\,
	datad => \ps2_ACCLL|ascii~90_combout\,
	combout => \ps2_ACCLL|ascii~11_combout\);

-- Location: LCCOMB_X26_Y21_N30
\ps2_ACCLL|ascii~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~23_combout\);

-- Location: LCCOMB_X26_Y21_N20
\ps2_ACCLL|ascii~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~21_combout\);

-- Location: LCCOMB_X26_Y21_N28
\ps2_ACCLL|ascii~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~42_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ascii~21_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii~20_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ascii~21_combout\,
	combout => \ps2_ACCLL|ascii~42_combout\);

-- Location: LCCOMB_X26_Y21_N18
\ps2_ACCLL|ascii~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~43_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii~42_combout\ & ((\ps2_ACCLL|ascii~24_combout\))) # (!\ps2_ACCLL|ascii~42_combout\ & (\ps2_ACCLL|ascii~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|ascii~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~23_combout\,
	datab => \ps2_ACCLL|ascii~24_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ascii~42_combout\,
	combout => \ps2_ACCLL|ascii~43_combout\);

-- Location: LCCOMB_X26_Y21_N0
\ps2_ACCLL|ascii~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~46_combout\ = (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ascii~43_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ascii~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii~11_combout\,
	datad => \ps2_ACCLL|ascii~43_combout\,
	combout => \ps2_ACCLL|ascii~46_combout\);

-- Location: LCCOMB_X26_Y21_N14
\ps2_ACCLL|ascii~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~47_combout\ = (\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|ascii~46_combout\ & ((\ps2_ACCLL|ascii~45_combout\))) # (!\ps2_ACCLL|ascii~46_combout\ & (\ps2_ACCLL|ascii~26_combout\)))) # (!\ps2_ACCLL|e0_code~q\ & (((\ps2_ACCLL|ascii~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ascii~26_combout\,
	datac => \ps2_ACCLL|ascii~45_combout\,
	datad => \ps2_ACCLL|ascii~46_combout\,
	combout => \ps2_ACCLL|ascii~47_combout\);

-- Location: LCCOMB_X21_Y21_N18
\ps2_ACCLL|ascii~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~88_combout\ = (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ascii~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ascii~47_combout\,
	datad => \ps2_ACCLL|ascii\(7),
	combout => \ps2_ACCLL|ascii~88_combout\);

-- Location: LCCOMB_X21_Y21_N24
\ps2_ACCLL|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~0_combout\ = (\ps2_ACCLL|state.translate~q\ & ((\ps2_ACCLL|ascii~52_combout\) # ((!\ps2_ACCLL|process_0~0_combout\ & \ps2_ACCLL|ascii~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|ascii~52_combout\,
	datac => \ps2_ACCLL|process_0~0_combout\,
	datad => \ps2_ACCLL|ascii~88_combout\,
	combout => \ps2_ACCLL|Selector4~0_combout\);

-- Location: LCCOMB_X21_Y21_N16
\ps2_ACCLL|Selector4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~2_combout\ = (!\ps2_ACCLL|Selector4~0_combout\ & ((\ps2_ACCLL|state.translate~q\) # ((!\ps2_ACCLL|Selector4~1_combout\ & \ps2_ACCLL|ascii\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|Selector4~1_combout\,
	datac => \ps2_ACCLL|ascii\(7),
	datad => \ps2_ACCLL|Selector4~0_combout\,
	combout => \ps2_ACCLL|Selector4~2_combout\);

-- Location: FF_X21_Y21_N17
\ps2_ACCLL|ascii[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(7));

-- Location: LCCOMB_X28_Y19_N24
\ps2_ACCLL|ascii_code[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[5]~0_combout\ = (\ps2_ACCLL|state.output~q\ & \ps2_ACCLL|ascii\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.output~q\,
	datad => \ps2_ACCLL|ascii\(7),
	combout => \ps2_ACCLL|ascii_code[5]~0_combout\);

-- Location: LCCOMB_X28_Y19_N30
\ps2_ACCLL|ascii_new~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_new~2_combout\ = (\ps2_ACCLL|ascii_code[5]~0_combout\ & ((\ps2_ACCLL|state.ready~q\) # ((!\ps2_ACCLL|Selector1~0_combout\ & \ps2_ACCLL|ascii_new~q\)))) # (!\ps2_ACCLL|ascii_code[5]~0_combout\ & (((!\ps2_ACCLL|Selector1~0_combout\ & 
-- \ps2_ACCLL|ascii_new~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code[5]~0_combout\,
	datab => \ps2_ACCLL|state.ready~q\,
	datac => \ps2_ACCLL|Selector1~0_combout\,
	datad => \ps2_ACCLL|ascii_new~q\,
	combout => \ps2_ACCLL|ascii_new~2_combout\);

-- Location: LCCOMB_X28_Y19_N6
\ps2_ACCLL|ascii_new~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_new~feeder_combout\ = \ps2_ACCLL|ascii_new~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii_new~2_combout\,
	combout => \ps2_ACCLL|ascii_new~feeder_combout\);

-- Location: FF_X28_Y19_N7
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

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X28_Y20_N0
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = posr(2) $ (VCC)
-- \Add1~1\ = CARRY(posr(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posr(2),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: IOIBUF_X0_Y14_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G2
\KEY[0]~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[0]~inputclkctrl_outclk\);

-- Location: LCCOMB_X21_Y21_N30
\ps2_ACCLL|Mux47~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux47~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux47~3_combout\);

-- Location: LCCOMB_X22_Y17_N0
\ps2_ACCLL|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux18~0_combout\);

-- Location: LCCOMB_X22_Y17_N20
\ps2_ACCLL|Mux47~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux47~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux47~0_combout\);

-- Location: LCCOMB_X22_Y17_N6
\ps2_ACCLL|Mux47~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux47~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux47~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux47~0_combout\,
	combout => \ps2_ACCLL|Mux47~1_combout\);

-- Location: LCCOMB_X22_Y17_N16
\ps2_ACCLL|Mux47~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux47~2_combout\ = (\ps2_ACCLL|Mux18~0_combout\ & ((\ps2_ACCLL|Mux47~1_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux18~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux47~1_combout\,
	combout => \ps2_ACCLL|Mux47~2_combout\);

-- Location: LCCOMB_X21_Y21_N28
\ps2_ACCLL|ascii~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~71_combout\ = (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|Mux47~3_combout\)) # (!\ps2_ACCLL|Mux47~2_combout\)) # (!\ps2_ACCLL|e0_code~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux47~3_combout\,
	datad => \ps2_ACCLL|Mux47~2_combout\,
	combout => \ps2_ACCLL|ascii~71_combout\);

-- Location: LCCOMB_X21_Y21_N8
\ps2_ACCLL|ascii~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~69_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|Mux47~3_combout\ & \ps2_ACCLL|Mux47~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux47~3_combout\,
	datad => \ps2_ACCLL|Mux47~2_combout\,
	combout => \ps2_ACCLL|ascii~69_combout\);

-- Location: LCCOMB_X20_Y20_N24
\ps2_ACCLL|Mux20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux20~10_combout\);

-- Location: LCCOMB_X20_Y20_N22
\ps2_ACCLL|Mux20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~11_combout\ = (\ps2_ACCLL|Mux20~10_combout\ & (((!\ps2_ACCLL|ascii\(0))))) # (!\ps2_ACCLL|Mux20~10_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux20~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|Mux20~11_combout\);

-- Location: LCCOMB_X19_Y20_N0
\ps2_ACCLL|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux19~4_combout\);

-- Location: LCCOMB_X20_Y20_N20
\ps2_ACCLL|Mux20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux20~12_combout\);

-- Location: LCCOMB_X20_Y20_N10
\ps2_ACCLL|Mux20~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~31_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~12_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux20~12_combout\,
	combout => \ps2_ACCLL|Mux20~31_combout\);

-- Location: LCCOMB_X20_Y20_N8
\ps2_ACCLL|Mux20~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~32_combout\ = (\ps2_ACCLL|Mux20~31_combout\) # ((\ps2_ACCLL|Mux19~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux19~4_combout\,
	datad => \ps2_ACCLL|Mux20~31_combout\,
	combout => \ps2_ACCLL|Mux20~32_combout\);

-- Location: LCCOMB_X19_Y21_N12
\ps2_ACCLL|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~1_combout\);

-- Location: LCCOMB_X20_Y20_N18
\ps2_ACCLL|Mux20~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~33_combout\ = (\ps2_ACCLL|Mux13~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux13~1_combout\ & (((!\ps2_ACCLL|ascii\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux13~1_combout\,
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|Mux20~33_combout\);

-- Location: LCCOMB_X20_Y20_N30
\ps2_ACCLL|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux20~32_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|Mux20~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux20~32_combout\,
	datad => \ps2_ACCLL|Mux20~33_combout\,
	combout => \ps2_ACCLL|Mux12~0_combout\);

-- Location: LCCOMB_X20_Y20_N28
\ps2_ACCLL|Mux20~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~34_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux19~4_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ascii\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ascii\(0) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux19~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|Mux20~34_combout\);

-- Location: LCCOMB_X20_Y20_N0
\ps2_ACCLL|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux12~0_combout\ & ((\ps2_ACCLL|Mux20~34_combout\))) # (!\ps2_ACCLL|Mux12~0_combout\ & (\ps2_ACCLL|Mux20~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux12~0_combout\,
	datad => \ps2_ACCLL|Mux20~34_combout\,
	combout => \ps2_ACCLL|Mux12~1_combout\);

-- Location: LCCOMB_X20_Y19_N6
\ps2_ACCLL|caps_lock~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|caps_lock~5_combout\);

-- Location: LCCOMB_X20_Y19_N8
\ps2_ACCLL|Mux20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~19_combout\ = (!\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|caps_lock~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~19_combout\);

-- Location: LCCOMB_X20_Y19_N10
\ps2_ACCLL|Mux20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~20_combout\ = (\ps2_ACCLL|Mux20~19_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux38~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux20~19_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux38~12_combout\,
	combout => \ps2_ACCLL|Mux20~20_combout\);

-- Location: LCCOMB_X24_Y19_N14
\ps2_ACCLL|caps_lock~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|caps_lock~4_combout\);

-- Location: LCCOMB_X23_Y22_N20
\ps2_ACCLL|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~0_combout\);

-- Location: LCCOMB_X24_Y21_N28
\ps2_ACCLL|Mux20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~13_combout\);

-- Location: LCCOMB_X24_Y21_N18
\ps2_ACCLL|Mux20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux20~13_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux13~0_combout\,
	datad => \ps2_ACCLL|Mux20~13_combout\,
	combout => \ps2_ACCLL|Mux20~14_combout\);

-- Location: LCCOMB_X20_Y19_N22
\ps2_ACCLL|Mux20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~15_combout\ = (\ps2_ACCLL|Mux20~14_combout\ & (((!\ps2_ACCLL|caps_lock~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|Mux20~14_combout\ & (((!\ps2_ACCLL|ascii\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|caps_lock~4_combout\,
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|Mux20~14_combout\,
	combout => \ps2_ACCLL|Mux20~15_combout\);

-- Location: LCCOMB_X20_Y19_N20
\ps2_ACCLL|shift_l~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|shift_l~4_combout\);

-- Location: LCCOMB_X20_Y19_N0
\ps2_ACCLL|Mux20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~17_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|caps_lock~4_combout\) # (!\ps2_ACCLL|shift_l~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|shift_l~4_combout\,
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|caps_lock~4_combout\,
	combout => \ps2_ACCLL|Mux20~17_combout\);

-- Location: LCCOMB_X20_Y19_N4
\ps2_ACCLL|Mux20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~18_combout\ = (\ps2_ACCLL|Mux20~17_combout\) # ((\ps2_ACCLL|caps_lock~5_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux20~17_combout\,
	combout => \ps2_ACCLL|Mux20~18_combout\);

-- Location: LCCOMB_X19_Y19_N28
\ps2_ACCLL|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux16~2_combout\);

-- Location: LCCOMB_X19_Y19_N14
\ps2_ACCLL|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux15~2_combout\);

-- Location: LCCOMB_X19_Y19_N10
\ps2_ACCLL|Mux20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux15~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux16~2_combout\,
	datac => \ps2_ACCLL|Mux15~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~16_combout\);

-- Location: LCCOMB_X20_Y19_N2
\ps2_ACCLL|Mux20~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~35_combout\ = (\ps2_ACCLL|Mux20~16_combout\ & (((!\ps2_ACCLL|ascii\(0))))) # (!\ps2_ACCLL|Mux20~16_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux20~16_combout\,
	combout => \ps2_ACCLL|Mux20~35_combout\);

-- Location: LCCOMB_X20_Y19_N18
\ps2_ACCLL|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~35_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux20~18_combout\,
	datad => \ps2_ACCLL|Mux20~35_combout\,
	combout => \ps2_ACCLL|Mux12~2_combout\);

-- Location: LCCOMB_X20_Y19_N16
\ps2_ACCLL|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux12~2_combout\ & (\ps2_ACCLL|Mux20~20_combout\)) # (!\ps2_ACCLL|Mux12~2_combout\ & ((\ps2_ACCLL|Mux20~15_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~15_combout\,
	datad => \ps2_ACCLL|Mux12~2_combout\,
	combout => \ps2_ACCLL|Mux12~3_combout\);

-- Location: LCCOMB_X21_Y21_N10
\ps2_ACCLL|ascii~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~68_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux12~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|Mux12~1_combout\,
	datad => \ps2_ACCLL|Mux12~3_combout\,
	combout => \ps2_ACCLL|ascii~68_combout\);

-- Location: LCCOMB_X21_Y21_N6
\ps2_ACCLL|ascii~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~70_combout\ = (\ps2_ACCLL|ascii~68_combout\) # ((!\ps2_ACCLL|process_0~0_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ascii~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii~69_combout\,
	datad => \ps2_ACCLL|ascii~68_combout\,
	combout => \ps2_ACCLL|ascii~70_combout\);

-- Location: LCCOMB_X22_Y18_N30
\ps2_ACCLL|Mux24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~14_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux24~14_combout\);

-- Location: LCCOMB_X23_Y17_N16
\ps2_ACCLL|Mux42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux42~6_combout\);

-- Location: LCCOMB_X22_Y18_N22
\ps2_ACCLL|Mux44~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~24_combout\ = (\ps2_ACCLL|Mux42~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|caps_lock~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|caps_lock~4_combout\,
	datad => \ps2_ACCLL|Mux42~6_combout\,
	combout => \ps2_ACCLL|Mux44~24_combout\);

-- Location: LCCOMB_X21_Y17_N30
\ps2_ACCLL|shift_l~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|shift_l~6_combout\);

-- Location: LCCOMB_X21_Y17_N6
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

-- Location: LCCOMB_X21_Y17_N2
\ps2_ACCLL|shift_l~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~8_combout\ = (\ps2_ACCLL|caps_lock~3_combout\ & (\ps2_ACCLL|state.translate~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~3_combout\,
	datab => \ps2_ACCLL|state.translate~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|shift_l~8_combout\);

-- Location: LCCOMB_X21_Y17_N14
\ps2_ACCLL|shift_l~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~7_combout\ = (\ps2_ACCLL|shift_l~6_combout\ & ((\ps2_ACCLL|shift_l~8_combout\ & ((!\ps2_ACCLL|break~q\))) # (!\ps2_ACCLL|shift_l~8_combout\ & (\ps2_ACCLL|shift_l~q\)))) # (!\ps2_ACCLL|shift_l~6_combout\ & (((\ps2_ACCLL|shift_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~6_combout\,
	datab => \ps2_ACCLL|shift_l~8_combout\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|shift_l~7_combout\);

-- Location: FF_X21_Y17_N15
\ps2_ACCLL|shift_l\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|shift_l~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|shift_l~q\);

-- Location: LCCOMB_X21_Y17_N12
\ps2_ACCLL|Mux17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~14_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~14_combout\);

-- Location: LCCOMB_X23_Y19_N2
\ps2_ACCLL|caps_lock~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|caps_lock~2_combout\);

-- Location: LCCOMB_X21_Y17_N24
\ps2_ACCLL|caps_lock~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~7_combout\ = (\ps2_ACCLL|caps_lock~2_combout\ & (\ps2_ACCLL|state.translate~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~2_combout\,
	datab => \ps2_ACCLL|state.translate~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|caps_lock~7_combout\);

-- Location: LCCOMB_X21_Y17_N28
\ps2_ACCLL|shift_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_r~0_combout\ = (\ps2_ACCLL|Mux17~14_combout\ & ((\ps2_ACCLL|caps_lock~7_combout\ & ((!\ps2_ACCLL|break~q\))) # (!\ps2_ACCLL|caps_lock~7_combout\ & (\ps2_ACCLL|shift_r~q\)))) # (!\ps2_ACCLL|Mux17~14_combout\ & (((\ps2_ACCLL|shift_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~14_combout\,
	datab => \ps2_ACCLL|caps_lock~7_combout\,
	datac => \ps2_ACCLL|shift_r~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|shift_r~0_combout\);

-- Location: FF_X21_Y17_N29
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

-- Location: LCCOMB_X21_Y17_N16
\ps2_ACCLL|Mux44~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((!\ps2_ACCLL|shift_l~q\ & !\ps2_ACCLL|shift_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|Mux44~26_combout\);

-- Location: LCCOMB_X22_Y21_N28
\ps2_ACCLL|Mux44~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux44~24_combout\ & \ps2_ACCLL|Mux44~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux44~24_combout\,
	datad => \ps2_ACCLL|Mux44~26_combout\,
	combout => \ps2_ACCLL|Mux44~27_combout\);

-- Location: LCCOMB_X22_Y16_N4
\ps2_ACCLL|Mux39~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~4_combout\);

-- Location: LCCOMB_X21_Y17_N8
\ps2_ACCLL|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~1_combout\ = (\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|process_0~1_combout\);

-- Location: LCCOMB_X22_Y20_N16
\ps2_ACCLL|Mux44~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux39~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|process_0~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux39~4_combout\,
	datad => \ps2_ACCLL|process_0~1_combout\,
	combout => \ps2_ACCLL|Mux44~23_combout\);

-- Location: LCCOMB_X24_Y20_N28
\ps2_ACCLL|Mux26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux26~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\ps2_ACCLL|Mux20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~22_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~22_combout\);

-- Location: LCCOMB_X23_Y19_N0
\ps2_ACCLL|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux16~5_combout\);

-- Location: LCCOMB_X23_Y19_N14
\ps2_ACCLL|Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux14~2_combout\);

-- Location: LCCOMB_X23_Y19_N26
\ps2_ACCLL|Mux20~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~23_combout\ = (\ps2_ACCLL|Mux20~22_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux16~5_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux14~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux20~22_combout\,
	datac => \ps2_ACCLL|Mux16~5_combout\,
	datad => \ps2_ACCLL|Mux14~2_combout\,
	combout => \ps2_ACCLL|Mux20~23_combout\);

-- Location: LCCOMB_X24_Y19_N8
\ps2_ACCLL|Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~3_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux15~3_combout\);

-- Location: LCCOMB_X23_Y19_N30
\ps2_ACCLL|Mux42~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux42~14_combout\);

-- Location: LCCOMB_X23_Y19_N18
\ps2_ACCLL|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux16~7_combout\);

-- Location: LCCOMB_X23_Y19_N4
\ps2_ACCLL|Mux20~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~21_combout\ = (\ps2_ACCLL|Mux42~14_combout\ & ((\ps2_ACCLL|Mux16~7_combout\) # ((\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|caps_lock~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~14_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux16~7_combout\,
	datad => \ps2_ACCLL|caps_lock~2_combout\,
	combout => \ps2_ACCLL|Mux20~21_combout\);

-- Location: LCCOMB_X23_Y21_N24
\ps2_ACCLL|Mux20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~24_combout\ = (\ps2_ACCLL|Mux20~23_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ ((!\ps2_ACCLL|Mux15~3_combout\)))) # (!\ps2_ACCLL|Mux20~23_combout\ & (\ps2_ACCLL|Mux20~21_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ 
-- (!\ps2_ACCLL|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux20~23_combout\,
	datac => \ps2_ACCLL|Mux15~3_combout\,
	datad => \ps2_ACCLL|Mux20~21_combout\,
	combout => \ps2_ACCLL|Mux20~24_combout\);

-- Location: LCCOMB_X23_Y19_N24
\ps2_ACCLL|Mux20~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~25_combout\ = (\ps2_ACCLL|Mux16~7_combout\ & (!\ps2_ACCLL|Mux16~5_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|Mux16~7_combout\ & (((!\ps2_ACCLL|Mux16~5_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~7_combout\,
	datab => \ps2_ACCLL|Mux16~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~25_combout\);

-- Location: LCCOMB_X24_Y21_N20
\ps2_ACCLL|Mux20~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~26_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux20~26_combout\);

-- Location: LCCOMB_X23_Y21_N2
\ps2_ACCLL|Mux20~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~30_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~25_combout\) # (\ps2_ACCLL|Mux20~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~25_combout\,
	datac => \ps2_ACCLL|Mux20~26_combout\,
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|Mux20~30_combout\);

-- Location: LCCOMB_X22_Y20_N24
\ps2_ACCLL|Mux25~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux25~26_combout\);

-- Location: LCCOMB_X23_Y22_N30
\ps2_ACCLL|Mux25~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~31_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux25~31_combout\);

-- Location: LCCOMB_X23_Y19_N20
\ps2_ACCLL|Mux20~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux20~27_combout\);

-- Location: LCCOMB_X23_Y19_N8
\ps2_ACCLL|Mux20~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~28_combout\ = (\ps2_ACCLL|Mux20~23_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (((!\ps2_ACCLL|Mux15~3_combout\))))) # (!\ps2_ACCLL|Mux20~23_combout\ & (\ps2_ACCLL|Mux20~21_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ 
-- (!\ps2_ACCLL|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux20~21_combout\,
	datad => \ps2_ACCLL|Mux15~3_combout\,
	combout => \ps2_ACCLL|Mux20~28_combout\);

-- Location: LCCOMB_X23_Y19_N10
\ps2_ACCLL|Mux20~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~29_combout\ = (\ps2_ACCLL|Mux20~28_combout\) # ((!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~25_combout\) # (!\ps2_ACCLL|Mux20~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux20~27_combout\,
	datac => \ps2_ACCLL|Mux20~28_combout\,
	datad => \ps2_ACCLL|Mux20~25_combout\,
	combout => \ps2_ACCLL|Mux20~29_combout\);

-- Location: LCCOMB_X23_Y21_N14
\ps2_ACCLL|Mux29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux25~31_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~29_combout\) # 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux25~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux25~31_combout\,
	datad => \ps2_ACCLL|Mux20~29_combout\,
	combout => \ps2_ACCLL|Mux29~4_combout\);

-- Location: LCCOMB_X24_Y21_N14
\ps2_ACCLL|Mux29~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~2_combout\ = (!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~26_combout\) # (\ps2_ACCLL|Mux20~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~26_combout\,
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|Mux20~25_combout\,
	combout => \ps2_ACCLL|Mux29~2_combout\);

-- Location: LCCOMB_X24_Y21_N16
\ps2_ACCLL|Mux29~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~3_combout\ = (\ps2_ACCLL|Mux29~2_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux29~2_combout\,
	combout => \ps2_ACCLL|Mux29~3_combout\);

-- Location: LCCOMB_X23_Y21_N8
\ps2_ACCLL|Mux29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux29~4_combout\ & ((\ps2_ACCLL|Mux20~24_combout\) # (\ps2_ACCLL|Mux29~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux29~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux29~4_combout\,
	datad => \ps2_ACCLL|Mux29~3_combout\,
	combout => \ps2_ACCLL|Mux29~5_combout\);

-- Location: LCCOMB_X23_Y22_N12
\ps2_ACCLL|Mux29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux29~6_combout\);

-- Location: LCCOMB_X23_Y21_N0
\ps2_ACCLL|Mux29~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~7_combout\ = (\ps2_ACCLL|Mux29~6_combout\) # ((\ps2_ACCLL|Mux20~24_combout\) # (\ps2_ACCLL|Mux20~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux29~6_combout\,
	datac => \ps2_ACCLL|Mux20~24_combout\,
	datad => \ps2_ACCLL|Mux20~30_combout\,
	combout => \ps2_ACCLL|Mux29~7_combout\);

-- Location: LCCOMB_X23_Y21_N30
\ps2_ACCLL|Mux29~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~2_combout\) # (\ps2_ACCLL|Mux20~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (!\ps2_ACCLL|Mux29~2_combout\ & !\ps2_ACCLL|Mux20~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux29~2_combout\,
	datad => \ps2_ACCLL|Mux20~24_combout\,
	combout => \ps2_ACCLL|Mux29~13_combout\);

-- Location: LCCOMB_X23_Y21_N4
\ps2_ACCLL|Mux29~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux29~13_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|Mux29~13_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux29~13_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux29~14_combout\);

-- Location: LCCOMB_X23_Y19_N6
\ps2_ACCLL|Mux29~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~11_combout\ = (\ps2_ACCLL|caps_lock~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux20~29_combout\))))) # 
-- (!\ps2_ACCLL|caps_lock~4_combout\ & (((\ps2_ACCLL|Mux20~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux20~29_combout\,
	combout => \ps2_ACCLL|Mux29~11_combout\);

-- Location: LCCOMB_X23_Y21_N10
\ps2_ACCLL|Mux29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~8_combout\ = (\ps2_ACCLL|Mux20~24_combout\) # ((!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~25_combout\) # (\ps2_ACCLL|Mux20~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux20~25_combout\,
	datac => \ps2_ACCLL|Mux20~26_combout\,
	datad => \ps2_ACCLL|Mux20~24_combout\,
	combout => \ps2_ACCLL|Mux29~8_combout\);

-- Location: LCCOMB_X23_Y21_N20
\ps2_ACCLL|Mux29~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux29~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux29~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux29~8_combout\,
	combout => \ps2_ACCLL|Mux29~9_combout\);

-- Location: LCCOMB_X23_Y21_N6
\ps2_ACCLL|Mux29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|caps_lock~4_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux29~9_combout\,
	combout => \ps2_ACCLL|Mux29~10_combout\);

-- Location: LCCOMB_X23_Y21_N16
\ps2_ACCLL|Mux29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux29~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux29~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux29~11_combout\,
	datad => \ps2_ACCLL|Mux29~10_combout\,
	combout => \ps2_ACCLL|Mux29~12_combout\);

-- Location: LCCOMB_X23_Y21_N18
\ps2_ACCLL|Mux29~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux29~12_combout\ & ((\ps2_ACCLL|Mux29~14_combout\))) # (!\ps2_ACCLL|Mux29~12_combout\ & (\ps2_ACCLL|Mux29~7_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux29~7_combout\,
	datac => \ps2_ACCLL|Mux29~14_combout\,
	datad => \ps2_ACCLL|Mux29~12_combout\,
	combout => \ps2_ACCLL|Mux29~15_combout\);

-- Location: LCCOMB_X23_Y21_N28
\ps2_ACCLL|Mux29~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~16_combout\ = (\ps2_ACCLL|Mux38~12_combout\ & ((\ps2_ACCLL|Mux29~15_combout\) # ((\ps2_ACCLL|Mux25~26_combout\ & \ps2_ACCLL|Mux29~5_combout\)))) # (!\ps2_ACCLL|Mux38~12_combout\ & (\ps2_ACCLL|Mux25~26_combout\ & 
-- (\ps2_ACCLL|Mux29~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~12_combout\,
	datab => \ps2_ACCLL|Mux25~26_combout\,
	datac => \ps2_ACCLL|Mux29~5_combout\,
	datad => \ps2_ACCLL|Mux29~15_combout\,
	combout => \ps2_ACCLL|Mux29~16_combout\);

-- Location: LCCOMB_X23_Y21_N22
\ps2_ACCLL|Mux29~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~18_combout\ = (\ps2_ACCLL|Mux29~16_combout\) # ((!\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|Mux20~24_combout\) # (\ps2_ACCLL|Mux20~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datab => \ps2_ACCLL|Mux20~24_combout\,
	datac => \ps2_ACCLL|Mux20~30_combout\,
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux29~18_combout\);

-- Location: LCCOMB_X22_Y21_N26
\ps2_ACCLL|Mux44~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~25_combout\ = (\ps2_ACCLL|Mux29~18_combout\ & ((\ps2_ACCLL|Mux44~23_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|Mux44~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux44~23_combout\,
	datac => \ps2_ACCLL|Mux44~24_combout\,
	datad => \ps2_ACCLL|Mux29~18_combout\,
	combout => \ps2_ACCLL|Mux44~25_combout\);

-- Location: LCCOMB_X27_Y19_N14
\ps2_ACCLL|control_l~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~1_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|control_l~1_combout\);

-- Location: LCCOMB_X26_Y21_N8
\ps2_ACCLL|Mux44~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux44~20_combout\);

-- Location: LCCOMB_X22_Y20_N18
\ps2_ACCLL|Mux44~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~19_combout\);

-- Location: LCCOMB_X22_Y21_N22
\ps2_ACCLL|Mux44~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~21_combout\ = (\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|Mux44~20_combout\ & ((\ps2_ACCLL|Mux29~18_combout\))) # (!\ps2_ACCLL|Mux44~20_combout\ & (\ps2_ACCLL|Mux44~19_combout\)))) # (!\ps2_ACCLL|control_l~1_combout\ & 
-- (((\ps2_ACCLL|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~1_combout\,
	datab => \ps2_ACCLL|Mux44~20_combout\,
	datac => \ps2_ACCLL|Mux44~19_combout\,
	datad => \ps2_ACCLL|Mux29~18_combout\,
	combout => \ps2_ACCLL|Mux44~21_combout\);

-- Location: LCCOMB_X23_Y21_N26
\ps2_ACCLL|Mux29~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~17_combout\ = (!\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|Mux20~30_combout\) # (\ps2_ACCLL|Mux20~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~30_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux20~24_combout\,
	combout => \ps2_ACCLL|Mux29~17_combout\);

-- Location: LCCOMB_X24_Y21_N26
\ps2_ACCLL|Mux40~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~36_combout\ = (\ps2_ACCLL|Mux42~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux42~6_combout\,
	combout => \ps2_ACCLL|Mux40~36_combout\);

-- Location: LCCOMB_X23_Y21_N12
\ps2_ACCLL|Mux44~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~9_combout\ = (\ps2_ACCLL|Mux40~36_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux40~36_combout\ & ((\ps2_ACCLL|Mux29~17_combout\) # ((\ps2_ACCLL|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~17_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux40~36_combout\,
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux44~9_combout\);

-- Location: LCCOMB_X24_Y21_N8
\ps2_ACCLL|Mux44~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux44~30_combout\);

-- Location: LCCOMB_X24_Y21_N24
\ps2_ACCLL|Mux24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux24~15_combout\);

-- Location: LCCOMB_X24_Y21_N4
\ps2_ACCLL|Mux44~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~7_combout\ = (\ps2_ACCLL|Mux24~15_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux44~30_combout\ & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux44~30_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux44~7_combout\);

-- Location: LCCOMB_X22_Y21_N18
\ps2_ACCLL|Mux44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|Mux26~0_combout\ & (\ps2_ACCLL|Mux20~29_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux29~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux26~0_combout\,
	datac => \ps2_ACCLL|Mux20~29_combout\,
	datad => \ps2_ACCLL|Mux29~17_combout\,
	combout => \ps2_ACCLL|Mux44~5_combout\);

-- Location: LCCOMB_X24_Y21_N2
\ps2_ACCLL|Mux44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux44~30_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|Mux44~30_combout\ & 
-- \ps2_ACCLL|Mux24~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux44~30_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux44~6_combout\);

-- Location: LCCOMB_X22_Y21_N16
\ps2_ACCLL|Mux44~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~8_combout\ = (\ps2_ACCLL|Mux44~7_combout\ & (\ps2_ACCLL|Mux44~6_combout\ & ((\ps2_ACCLL|Mux44~5_combout\) # (\ps2_ACCLL|Mux29~16_combout\)))) # (!\ps2_ACCLL|Mux44~7_combout\ & ((\ps2_ACCLL|Mux44~5_combout\) # 
-- ((\ps2_ACCLL|Mux44~6_combout\) # (\ps2_ACCLL|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~7_combout\,
	datab => \ps2_ACCLL|Mux44~5_combout\,
	datac => \ps2_ACCLL|Mux44~6_combout\,
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux44~8_combout\);

-- Location: LCCOMB_X22_Y21_N30
\ps2_ACCLL|Mux44~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux44~8_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux44~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~9_combout\,
	datad => \ps2_ACCLL|Mux44~8_combout\,
	combout => \ps2_ACCLL|Mux44~10_combout\);

-- Location: LCCOMB_X22_Y20_N12
\ps2_ACCLL|Mux44~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~11_combout\);

-- Location: LCCOMB_X21_Y17_N22
\ps2_ACCLL|Mux44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux44~4_combout\);

-- Location: LCCOMB_X22_Y18_N26
\ps2_ACCLL|Mux44~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~29_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux44~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~4_combout\,
	combout => \ps2_ACCLL|Mux44~29_combout\);

-- Location: LCCOMB_X22_Y21_N8
\ps2_ACCLL|Mux44~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~12_combout\ = (\ps2_ACCLL|Mux44~29_combout\ & (\ps2_ACCLL|Mux44~11_combout\)) # (!\ps2_ACCLL|Mux44~29_combout\ & (((\ps2_ACCLL|Mux29~17_combout\) # (\ps2_ACCLL|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~11_combout\,
	datab => \ps2_ACCLL|Mux29~17_combout\,
	datac => \ps2_ACCLL|Mux44~29_combout\,
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux44~12_combout\);

-- Location: LCCOMB_X22_Y21_N14
\ps2_ACCLL|Mux44~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~13_combout\ = (\ps2_ACCLL|Mux24~15_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux24~15_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux44~13_combout\);

-- Location: LCCOMB_X22_Y21_N0
\ps2_ACCLL|Mux44~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~14_combout\ = (\ps2_ACCLL|Mux26~0_combout\ & (\ps2_ACCLL|Mux42~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|Mux20~29_combout\) # ((\ps2_ACCLL|Mux42~6_combout\ & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux20~29_combout\,
	combout => \ps2_ACCLL|Mux44~14_combout\);

-- Location: LCCOMB_X22_Y21_N10
\ps2_ACCLL|Mux44~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux29~17_combout\) # ((\ps2_ACCLL|Mux44~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux44~13_combout\ & \ps2_ACCLL|Mux44~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux29~17_combout\,
	datac => \ps2_ACCLL|Mux44~13_combout\,
	datad => \ps2_ACCLL|Mux44~14_combout\,
	combout => \ps2_ACCLL|Mux44~15_combout\);

-- Location: LCCOMB_X22_Y21_N4
\ps2_ACCLL|Mux44~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~16_combout\ = (\ps2_ACCLL|Mux44~15_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux44~13_combout\))) # (!\ps2_ACCLL|Mux44~15_combout\ & (!\ps2_ACCLL|Mux44~13_combout\ & ((\ps2_ACCLL|Mux29~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~15_combout\,
	datab => \ps2_ACCLL|Mux44~13_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux44~16_combout\);

-- Location: LCCOMB_X22_Y21_N6
\ps2_ACCLL|Mux44~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux44~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~36_combout\) # ((\ps2_ACCLL|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~16_combout\,
	datad => \ps2_ACCLL|Mux29~18_combout\,
	combout => \ps2_ACCLL|Mux44~17_combout\);

-- Location: LCCOMB_X22_Y21_N24
\ps2_ACCLL|Mux44~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux44~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|process_0~1_combout\ & 
-- ((\ps2_ACCLL|Mux44~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux44~12_combout\,
	datad => \ps2_ACCLL|Mux44~17_combout\,
	combout => \ps2_ACCLL|Mux44~18_combout\);

-- Location: LCCOMB_X22_Y21_N20
\ps2_ACCLL|Mux44~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~22_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux44~18_combout\ & (\ps2_ACCLL|Mux44~21_combout\)) # (!\ps2_ACCLL|Mux44~18_combout\ & ((\ps2_ACCLL|Mux44~10_combout\))))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux44~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~21_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux44~10_combout\,
	datad => \ps2_ACCLL|Mux44~18_combout\,
	combout => \ps2_ACCLL|Mux44~22_combout\);

-- Location: LCCOMB_X22_Y21_N2
\ps2_ACCLL|Mux44~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux44~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux44~27_combout\) # ((\ps2_ACCLL|Mux44~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux44~27_combout\,
	datac => \ps2_ACCLL|Mux44~25_combout\,
	datad => \ps2_ACCLL|Mux44~22_combout\,
	combout => \ps2_ACCLL|Mux44~28_combout\);

-- Location: LCCOMB_X22_Y21_N12
\ps2_ACCLL|ascii~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~72_combout\ = (!\ps2_ACCLL|ascii~70_combout\ & ((\ps2_ACCLL|process_0~0_combout\) # ((!\ps2_ACCLL|Mux44~28_combout\) # (!\ps2_ACCLL|ascii~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ascii~71_combout\,
	datac => \ps2_ACCLL|ascii~70_combout\,
	datad => \ps2_ACCLL|Mux44~28_combout\,
	combout => \ps2_ACCLL|ascii~72_combout\);

-- Location: FF_X22_Y21_N13
\ps2_ACCLL|ascii[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~72_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(0));

-- Location: LCCOMB_X27_Y20_N26
\ps2_ACCLL|ascii_code[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[0]~6_combout\ = !\ps2_ACCLL|ascii\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|ascii_code[0]~6_combout\);

-- Location: FF_X27_Y20_N27
\ps2_ACCLL|ascii_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[0]~6_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(0));

-- Location: LCCOMB_X21_Y16_N14
\ps2_ACCLL|ascii~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~77_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|ascii~77_combout\);

-- Location: LCCOMB_X21_Y19_N20
\ps2_ACCLL|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~2_combout\);

-- Location: LCCOMB_X23_Y20_N0
\ps2_ACCLL|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux17~7_combout\);

-- Location: LCCOMB_X21_Y16_N16
\ps2_ACCLL|ascii~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~78_combout\ = (\ps2_ACCLL|ascii~77_combout\ & ((\ps2_ACCLL|Mux13~2_combout\) # ((\ps2_ACCLL|Mux17~7_combout\ & \ps2_ACCLL|Mux25~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~77_combout\,
	datab => \ps2_ACCLL|Mux13~2_combout\,
	datac => \ps2_ACCLL|Mux17~7_combout\,
	datad => \ps2_ACCLL|Mux25~31_combout\,
	combout => \ps2_ACCLL|ascii~78_combout\);

-- Location: LCCOMB_X21_Y16_N8
\ps2_ACCLL|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~5_combout\);

-- Location: LCCOMB_X21_Y16_N18
\ps2_ACCLL|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~6_combout\);

-- Location: LCCOMB_X21_Y16_N6
\ps2_ACCLL|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|Mux6~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|Mux6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux6~5_combout\,
	datad => \ps2_ACCLL|Mux6~6_combout\,
	combout => \ps2_ACCLL|Mux6~12_combout\);

-- Location: LCCOMB_X21_Y16_N30
\ps2_ACCLL|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~9_combout\);

-- Location: LCCOMB_X21_Y16_N0
\ps2_ACCLL|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux6~8_combout\);

-- Location: LCCOMB_X21_Y16_N28
\ps2_ACCLL|Mux6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~13_combout\ = (\ps2_ACCLL|Mux6~12_combout\ & (((\ps2_ACCLL|Mux6~9_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|Mux6~12_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux6~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux6~9_combout\,
	datad => \ps2_ACCLL|Mux6~8_combout\,
	combout => \ps2_ACCLL|Mux6~13_combout\);

-- Location: LCCOMB_X21_Y16_N4
\ps2_ACCLL|Mux6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~14_combout\ = (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux6~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ascii\(6),
	datad => \ps2_ACCLL|Mux6~13_combout\,
	combout => \ps2_ACCLL|Mux6~14_combout\);

-- Location: LCCOMB_X21_Y16_N24
\ps2_ACCLL|ascii~73\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~73_combout\ = (\ps2_ACCLL|Mux24~15_combout\ & (!\ps2_ACCLL|Mux25~31_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux24~15_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux24~15_combout\,
	datad => \ps2_ACCLL|Mux25~31_combout\,
	combout => \ps2_ACCLL|ascii~73_combout\);

-- Location: LCCOMB_X21_Y16_N12
\ps2_ACCLL|Mux14~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux17~7_combout\ & \ps2_ACCLL|Mux25~31_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~2_combout\) # ((\ps2_ACCLL|Mux17~7_combout\ & 
-- \ps2_ACCLL|Mux25~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux13~2_combout\,
	datac => \ps2_ACCLL|Mux17~7_combout\,
	datad => \ps2_ACCLL|Mux25~31_combout\,
	combout => \ps2_ACCLL|Mux14~3_combout\);

-- Location: LCCOMB_X21_Y16_N26
\ps2_ACCLL|ascii~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~74_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|Mux17~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~7_combout\,
	datad => \ps2_ACCLL|Mux13~2_combout\,
	combout => \ps2_ACCLL|ascii~74_combout\);

-- Location: LCCOMB_X21_Y16_N10
\ps2_ACCLL|ascii~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~75_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux14~3_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ascii~74_combout\ & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux14~3_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ascii~74_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|ascii~75_combout\);

-- Location: LCCOMB_X21_Y16_N20
\ps2_ACCLL|ascii~76\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~76_combout\ = (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|ascii~73_combout\) # (\ps2_ACCLL|ascii~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii~73_combout\,
	datac => \ps2_ACCLL|ascii\(6),
	datad => \ps2_ACCLL|ascii~75_combout\,
	combout => \ps2_ACCLL|ascii~76_combout\);

-- Location: LCCOMB_X21_Y16_N2
\ps2_ACCLL|ascii~79\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~79_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux6~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii~78_combout\) # ((\ps2_ACCLL|ascii~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii~78_combout\,
	datac => \ps2_ACCLL|Mux6~14_combout\,
	datad => \ps2_ACCLL|ascii~76_combout\,
	combout => \ps2_ACCLL|ascii~79_combout\);

-- Location: LCCOMB_X24_Y19_N6
\ps2_ACCLL|Mux47~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux47~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux47~4_combout\);

-- Location: LCCOMB_X24_Y19_N10
\ps2_ACCLL|Mux38~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux38~13_combout\);

-- Location: LCCOMB_X26_Y18_N2
\ps2_ACCLL|Mux38~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux38~15_combout\);

-- Location: LCCOMB_X26_Y19_N12
\ps2_ACCLL|Mux38~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|Mux38~15_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux38~13_combout\ & 
-- \ps2_ACCLL|Mux38~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux38~13_combout\,
	datad => \ps2_ACCLL|Mux38~15_combout\,
	combout => \ps2_ACCLL|Mux38~16_combout\);

-- Location: LCCOMB_X26_Y19_N24
\ps2_ACCLL|Mux14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|Mux16~5_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (!\ps2_ACCLL|Mux16~5_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|Mux14~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux14~2_combout\,
	combout => \ps2_ACCLL|Mux14~6_combout\);

-- Location: LCCOMB_X26_Y19_N14
\ps2_ACCLL|Mux14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~7_combout\ = (\ps2_ACCLL|Mux14~6_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux14~6_combout\,
	combout => \ps2_ACCLL|Mux14~7_combout\);

-- Location: LCCOMB_X24_Y19_N0
\ps2_ACCLL|Mux16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~12_combout\ = (\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|caps_lock~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|caps_lock~2_combout\,
	combout => \ps2_ACCLL|Mux16~12_combout\);

-- Location: LCCOMB_X22_Y19_N4
\ps2_ACCLL|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~4_combout\ = (!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux16~7_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(6),
	datad => \ps2_ACCLL|Mux16~7_combout\,
	combout => \ps2_ACCLL|Mux14~4_combout\);

-- Location: LCCOMB_X26_Y19_N18
\ps2_ACCLL|Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~5_combout\ = (\ps2_ACCLL|Mux14~4_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux38~13_combout\ & \ps2_ACCLL|Mux16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux38~13_combout\,
	datac => \ps2_ACCLL|Mux16~12_combout\,
	datad => \ps2_ACCLL|Mux14~4_combout\,
	combout => \ps2_ACCLL|Mux14~5_combout\);

-- Location: LCCOMB_X26_Y19_N0
\ps2_ACCLL|Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(6) & (\ps2_ACCLL|Mux14~7_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(6),
	datac => \ps2_ACCLL|Mux14~7_combout\,
	datad => \ps2_ACCLL|Mux14~5_combout\,
	combout => \ps2_ACCLL|Mux23~2_combout\);

-- Location: LCCOMB_X27_Y19_N0
\ps2_ACCLL|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux22~0_combout\);

-- Location: LCCOMB_X26_Y19_N8
\ps2_ACCLL|Mux24~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux24~16_combout\);

-- Location: LCCOMB_X26_Y19_N26
\ps2_ACCLL|Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~1_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux22~1_combout\);

-- Location: LCCOMB_X26_Y19_N4
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

-- Location: LCCOMB_X22_Y18_N2
\ps2_ACCLL|Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
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
	combout => \ps2_ACCLL|Mux22~2_combout\);

-- Location: LCCOMB_X26_Y19_N30
\ps2_ACCLL|Mux23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux22~3_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux22~3_combout\,
	datad => \ps2_ACCLL|Mux22~2_combout\,
	combout => \ps2_ACCLL|Mux23~3_combout\);

-- Location: LCCOMB_X26_Y19_N20
\ps2_ACCLL|Mux23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~4_combout\ = (\ps2_ACCLL|Mux23~2_combout\) # ((\ps2_ACCLL|Mux23~3_combout\ & ((\ps2_ACCLL|Mux22~1_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux22~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux23~3_combout\,
	datad => \ps2_ACCLL|Mux23~2_combout\,
	combout => \ps2_ACCLL|Mux23~4_combout\);

-- Location: LCCOMB_X26_Y19_N2
\ps2_ACCLL|Mux23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux22~0_combout\ & (!\ps2_ACCLL|Mux24~16_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux22~0_combout\,
	datac => \ps2_ACCLL|Mux24~16_combout\,
	datad => \ps2_ACCLL|Mux23~4_combout\,
	combout => \ps2_ACCLL|Mux23~5_combout\);

-- Location: LCCOMB_X26_Y19_N16
\ps2_ACCLL|Mux23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux23~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux23~5_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- \ps2_ACCLL|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux23~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|Mux23~6_combout\);

-- Location: LCCOMB_X26_Y19_N10
\ps2_ACCLL|Mux38~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~17_combout\ = (\ps2_ACCLL|Mux38~16_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux38~16_combout\ & (((\ps2_ACCLL|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~17_combout\);

-- Location: LCCOMB_X26_Y18_N10
\ps2_ACCLL|Mux38~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~29_combout\);

-- Location: LCCOMB_X26_Y19_N6
\ps2_ACCLL|Mux38~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux23~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|Mux38~29_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux23~6_combout\) 
-- # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux38~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux38~29_combout\,
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~30_combout\);

-- Location: LCCOMB_X26_Y19_N28
\ps2_ACCLL|Mux38~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux38~17_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux38~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~17_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux38~30_combout\,
	combout => \ps2_ACCLL|Mux38~18_combout\);

-- Location: LCCOMB_X22_Y19_N26
\ps2_ACCLL|Mux38~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~27_combout\ = (\ps2_ACCLL|Mux23~6_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux42~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~27_combout\);

-- Location: LCCOMB_X27_Y19_N4
\ps2_ACCLL|Mux38~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~20_combout\);

-- Location: LCCOMB_X27_Y19_N2
\ps2_ACCLL|Mux38~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~21_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux38~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux38~20_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~21_combout\);

-- Location: LCCOMB_X27_Y19_N22
\ps2_ACCLL|Mux38~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~19_combout\);

-- Location: LCCOMB_X27_Y19_N20
\ps2_ACCLL|Mux38~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~26_combout\ = (\ps2_ACCLL|Mux38~19_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~19_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~26_combout\);

-- Location: LCCOMB_X26_Y19_N22
\ps2_ACCLL|Mux38~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~22_combout\ = (\ps2_ACCLL|Mux38~26_combout\) # ((\ps2_ACCLL|Mux38~21_combout\ & \ps2_ACCLL|Mux23~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~21_combout\,
	datac => \ps2_ACCLL|Mux38~26_combout\,
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~22_combout\);

-- Location: LCCOMB_X22_Y19_N22
\ps2_ACCLL|ascii~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~80_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux38~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux38~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux38~27_combout\,
	datad => \ps2_ACCLL|Mux38~22_combout\,
	combout => \ps2_ACCLL|ascii~80_combout\);

-- Location: LCCOMB_X27_Y19_N28
\ps2_ACCLL|Mux38~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~14_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~14_combout\);

-- Location: LCCOMB_X27_Y19_N30
\ps2_ACCLL|Mux38~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~28_combout\ = (\ps2_ACCLL|Mux23~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux23~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~28_combout\);

-- Location: LCCOMB_X27_Y19_N6
\ps2_ACCLL|Mux38~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~23_combout\ = (\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|control_l~1_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux38~23_combout\);

-- Location: LCCOMB_X27_Y19_N12
\ps2_ACCLL|Mux38~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~24_combout\ = (\ps2_ACCLL|Mux38~23_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux38~23_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux23~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~24_combout\);

-- Location: LCCOMB_X27_Y19_N26
\ps2_ACCLL|Mux38~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux38~28_combout\) # ((\ps2_ACCLL|Mux38~14_combout\ & !\ps2_ACCLL|Mux38~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux38~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux38~14_combout\,
	datac => \ps2_ACCLL|Mux38~28_combout\,
	datad => \ps2_ACCLL|Mux38~24_combout\,
	combout => \ps2_ACCLL|Mux38~25_combout\);

-- Location: LCCOMB_X27_Y19_N24
\ps2_ACCLL|ascii~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~81_combout\ = (\ps2_ACCLL|Mux23~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux23~6_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux23~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~81_combout\);

-- Location: LCCOMB_X27_Y19_N18
\ps2_ACCLL|ascii~82\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~82_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux23~6_combout\ $ (((\ps2_ACCLL|control_l~1_combout\ & \ps2_ACCLL|ascii~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|control_l~1_combout\,
	datac => \ps2_ACCLL|Mux23~6_combout\,
	datad => \ps2_ACCLL|ascii~81_combout\,
	combout => \ps2_ACCLL|ascii~82_combout\);

-- Location: LCCOMB_X27_Y19_N16
\ps2_ACCLL|ascii~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~83_combout\ = (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|ascii~82_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux38~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux38~28_combout\,
	datad => \ps2_ACCLL|ascii~82_combout\,
	combout => \ps2_ACCLL|ascii~83_combout\);

-- Location: LCCOMB_X27_Y19_N8
\ps2_ACCLL|ascii~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~86_combout\ = (\ps2_ACCLL|ascii~83_combout\) # ((\ps2_ACCLL|Mux38~25_combout\ & ((\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~q\,
	datab => \ps2_ACCLL|shift_r~q\,
	datac => \ps2_ACCLL|Mux38~25_combout\,
	datad => \ps2_ACCLL|ascii~83_combout\,
	combout => \ps2_ACCLL|ascii~86_combout\);

-- Location: LCCOMB_X22_Y19_N16
\ps2_ACCLL|ascii~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~84_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ascii~80_combout\ & ((\ps2_ACCLL|ascii~86_combout\))) # (!\ps2_ACCLL|ascii~80_combout\ & (\ps2_ACCLL|Mux38~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ascii~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii~80_combout\,
	datad => \ps2_ACCLL|ascii~86_combout\,
	combout => \ps2_ACCLL|ascii~84_combout\);

-- Location: LCCOMB_X22_Y19_N18
\ps2_ACCLL|ascii~85\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~85_combout\ = (\ps2_ACCLL|Mux47~4_combout\ & (\ps2_ACCLL|ascii~71_combout\ & ((\ps2_ACCLL|ascii~84_combout\)))) # (!\ps2_ACCLL|Mux47~4_combout\ & ((\ps2_ACCLL|ascii~69_combout\) # ((\ps2_ACCLL|ascii~71_combout\ & 
-- \ps2_ACCLL|ascii~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux47~4_combout\,
	datab => \ps2_ACCLL|ascii~71_combout\,
	datac => \ps2_ACCLL|ascii~69_combout\,
	datad => \ps2_ACCLL|ascii~84_combout\,
	combout => \ps2_ACCLL|ascii~85_combout\);

-- Location: LCCOMB_X22_Y19_N8
\ps2_ACCLL|ascii~87\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~87_combout\ = (\ps2_ACCLL|control_r~q\ & (((!\ps2_ACCLL|ascii~79_combout\)))) # (!\ps2_ACCLL|control_r~q\ & ((\ps2_ACCLL|control_l~q\ & (!\ps2_ACCLL|ascii~79_combout\)) # (!\ps2_ACCLL|control_l~q\ & ((!\ps2_ACCLL|ascii~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|ascii~79_combout\,
	datad => \ps2_ACCLL|ascii~85_combout\,
	combout => \ps2_ACCLL|ascii~87_combout\);

-- Location: FF_X22_Y19_N9
\ps2_ACCLL|ascii[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~87_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(6));

-- Location: LCCOMB_X26_Y20_N26
\ps2_ACCLL|ascii_code[6]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[6]~7_combout\ = !\ps2_ACCLL|ascii\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(6),
	combout => \ps2_ACCLL|ascii_code[6]~7_combout\);

-- Location: FF_X27_Y20_N25
\ps2_ACCLL|ascii_code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[6]~7_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(6));

-- Location: LCCOMB_X22_Y17_N22
\ps2_ACCLL|Mux45~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux45~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux45~0_combout\);

-- Location: LCCOMB_X22_Y17_N30
\ps2_ACCLL|Mux48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux48~0_combout\ = (\ps2_ACCLL|Mux18~0_combout\ & ((\ps2_ACCLL|Mux47~1_combout\) # ((\ps2_ACCLL|Mux45~0_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux45~0_combout\,
	datab => \ps2_ACCLL|Mux18~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux47~1_combout\,
	combout => \ps2_ACCLL|Mux48~0_combout\);

-- Location: LCCOMB_X22_Y17_N12
\ps2_ACCLL|ascii~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~48_combout\ = (!\ps2_ACCLL|Mux47~1_combout\ & ((!\ps2_ACCLL|Mux45~0_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux45~0_combout\,
	datad => \ps2_ACCLL|Mux47~1_combout\,
	combout => \ps2_ACCLL|ascii~48_combout\);

-- Location: LCCOMB_X22_Y17_N26
\ps2_ACCLL|ascii~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~49_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & (\ps2_ACCLL|Mux18~0_combout\ & (\ps2_ACCLL|e0_code~q\ & !\ps2_ACCLL|ascii~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|Mux18~0_combout\,
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|ascii~48_combout\,
	combout => \ps2_ACCLL|ascii~49_combout\);

-- Location: LCCOMB_X20_Y21_N12
\ps2_ACCLL|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~11_combout\ = (\ps2_ACCLL|Mux19~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|Mux19~4_combout\ & (((!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux19~4_combout\,
	combout => \ps2_ACCLL|Mux19~11_combout\);

-- Location: LCCOMB_X20_Y21_N16
\ps2_ACCLL|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~5_combout\);

-- Location: LCCOMB_X20_Y21_N22
\ps2_ACCLL|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~6_combout\ = (\ps2_ACCLL|Mux38~14_combout\) # ((!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~5_combout\) # (!\ps2_ACCLL|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~4_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux38~14_combout\,
	datad => \ps2_ACCLL|Mux19~5_combout\,
	combout => \ps2_ACCLL|Mux19~6_combout\);

-- Location: LCCOMB_X19_Y21_N30
\ps2_ACCLL|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~7_combout\ = (\ps2_ACCLL|Mux13~1_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux13~1_combout\ & (((!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux13~1_combout\,
	combout => \ps2_ACCLL|Mux19~7_combout\);

-- Location: LCCOMB_X19_Y21_N8
\ps2_ACCLL|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~8_combout\ = (\ps2_ACCLL|Mux38~12_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|ascii\(1)))))) # (!\ps2_ACCLL|Mux38~12_combout\ & 
-- (((!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux38~12_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux19~8_combout\);

-- Location: LCCOMB_X19_Y21_N18
\ps2_ACCLL|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~9_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~9_combout\);

-- Location: LCCOMB_X19_Y21_N0
\ps2_ACCLL|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~4_combout\) # ((\ps2_ACCLL|Mux19~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux19~4_combout\,
	datac => \ps2_ACCLL|Mux19~8_combout\,
	datad => \ps2_ACCLL|Mux19~9_combout\,
	combout => \ps2_ACCLL|Mux19~10_combout\);

-- Location: LCCOMB_X19_Y21_N14
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

-- Location: LCCOMB_X20_Y21_N26
\ps2_ACCLL|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux11~0_combout\ & (\ps2_ACCLL|Mux19~11_combout\)) # (!\ps2_ACCLL|Mux11~0_combout\ & ((\ps2_ACCLL|Mux19~6_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux19~6_combout\,
	datad => \ps2_ACCLL|Mux11~0_combout\,
	combout => \ps2_ACCLL|Mux11~1_combout\);

-- Location: LCCOMB_X23_Y19_N12
\ps2_ACCLL|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux17~6_combout\);

-- Location: LCCOMB_X19_Y21_N16
\ps2_ACCLL|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~12_combout\);

-- Location: LCCOMB_X19_Y21_N2
\ps2_ACCLL|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~13_combout\ = (\ps2_ACCLL|Mux19~12_combout\) # ((!\ps2_ACCLL|ascii\(1) & ((!\ps2_ACCLL|Mux17~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux17~6_combout\,
	datad => \ps2_ACCLL|Mux19~12_combout\,
	combout => \ps2_ACCLL|Mux19~13_combout\);

-- Location: LCCOMB_X19_Y21_N10
\ps2_ACCLL|Mux19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~16_combout\);

-- Location: LCCOMB_X19_Y21_N22
\ps2_ACCLL|Mux19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux19~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|Mux19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux19~16_combout\,
	combout => \ps2_ACCLL|Mux19~18_combout\);

-- Location: LCCOMB_X19_Y21_N28
\ps2_ACCLL|Mux19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|Mux19~16_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux19~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux19~16_combout\,
	combout => \ps2_ACCLL|Mux19~17_combout\);

-- Location: LCCOMB_X19_Y21_N4
\ps2_ACCLL|Mux19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~19_combout\ = (\ps2_ACCLL|Mux19~18_combout\ & (((\ps2_ACCLL|Mux19~17_combout\)))) # (!\ps2_ACCLL|Mux19~18_combout\ & ((\ps2_ACCLL|Mux19~17_combout\ & ((\ps2_ACCLL|Mux19~9_combout\))) # (!\ps2_ACCLL|Mux19~17_combout\ & 
-- (!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~18_combout\,
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~9_combout\,
	datad => \ps2_ACCLL|Mux19~17_combout\,
	combout => \ps2_ACCLL|Mux19~19_combout\);

-- Location: LCCOMB_X19_Y21_N26
\ps2_ACCLL|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~15_combout\ = (\ps2_ACCLL|Mux16~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux16~2_combout\ & ((!\ps2_ACCLL|ascii\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~2_combout\,
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~15_combout\);

-- Location: LCCOMB_X19_Y21_N24
\ps2_ACCLL|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ascii\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ascii\(1))))) 
-- # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~14_combout\);

-- Location: LCCOMB_X19_Y21_N6
\ps2_ACCLL|Mux19~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~25_combout\ = \ps2_ACCLL|ascii\(1) $ ((((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|Mux19~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux19~14_combout\,
	combout => \ps2_ACCLL|Mux19~25_combout\);

-- Location: LCCOMB_X19_Y21_N20
\ps2_ACCLL|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux19~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux19~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux19~15_combout\,
	datad => \ps2_ACCLL|Mux19~25_combout\,
	combout => \ps2_ACCLL|Mux11~2_combout\);

-- Location: LCCOMB_X20_Y21_N20
\ps2_ACCLL|Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux11~2_combout\ & ((\ps2_ACCLL|Mux19~19_combout\))) # (!\ps2_ACCLL|Mux11~2_combout\ & (\ps2_ACCLL|Mux19~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~13_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux19~19_combout\,
	datad => \ps2_ACCLL|Mux11~2_combout\,
	combout => \ps2_ACCLL|Mux11~3_combout\);

-- Location: LCCOMB_X20_Y21_N10
\ps2_ACCLL|ascii~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~63_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux11~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux11~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux11~1_combout\,
	datad => \ps2_ACCLL|Mux11~3_combout\,
	combout => \ps2_ACCLL|ascii~63_combout\);

-- Location: LCCOMB_X20_Y21_N24
\ps2_ACCLL|ascii~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~64_combout\ = (\ps2_ACCLL|ascii~63_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ascii~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii~49_combout\,
	datad => \ps2_ACCLL|ascii~63_combout\,
	combout => \ps2_ACCLL|ascii~64_combout\);

-- Location: LCCOMB_X22_Y19_N20
\ps2_ACCLL|Mux19~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux14~2_combout\,
	combout => \ps2_ACCLL|Mux19~21_combout\);

-- Location: LCCOMB_X23_Y19_N16
\ps2_ACCLL|Mux17~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|caps_lock~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|caps_lock~2_combout\,
	combout => \ps2_ACCLL|Mux17~23_combout\);

-- Location: LCCOMB_X22_Y19_N2
\ps2_ACCLL|Mux19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~20_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux16~7_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux16~7_combout\,
	combout => \ps2_ACCLL|Mux19~20_combout\);

-- Location: LCCOMB_X22_Y19_N14
\ps2_ACCLL|Mux19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~22_combout\ = (\ps2_ACCLL|Mux19~20_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux19~21_combout\) # (\ps2_ACCLL|Mux17~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux19~21_combout\,
	datac => \ps2_ACCLL|Mux17~23_combout\,
	datad => \ps2_ACCLL|Mux19~20_combout\,
	combout => \ps2_ACCLL|Mux19~22_combout\);

-- Location: LCCOMB_X22_Y19_N0
\ps2_ACCLL|Mux19~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # 
-- (!\ps2_ACCLL|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux14~2_combout\,
	combout => \ps2_ACCLL|Mux19~26_combout\);

-- Location: LCCOMB_X22_Y19_N28
\ps2_ACCLL|Mux19~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~23_combout\ = (\ps2_ACCLL|Mux19~26_combout\) # ((\ps2_ACCLL|Mux15~3_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux17~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux17~6_combout\,
	datac => \ps2_ACCLL|Mux15~3_combout\,
	datad => \ps2_ACCLL|Mux19~26_combout\,
	combout => \ps2_ACCLL|Mux19~23_combout\);

-- Location: LCCOMB_X22_Y19_N10
\ps2_ACCLL|Mux19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~22_combout\,
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux19~24_combout\);

-- Location: LCCOMB_X22_Y16_N6
\ps2_ACCLL|Mux28~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~16_combout\ = (\ps2_ACCLL|Mux19~24_combout\ & !\ps2_ACCLL|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux19~24_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	combout => \ps2_ACCLL|Mux28~16_combout\);

-- Location: LCCOMB_X22_Y16_N8
\ps2_ACCLL|Mux28~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~34_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~34_combout\);

-- Location: LCCOMB_X22_Y16_N28
\ps2_ACCLL|Mux28~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~17_combout\ = (\ps2_ACCLL|Mux28~34_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux28~34_combout\ & ((\ps2_ACCLL|Mux19~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux19~24_combout\,
	datad => \ps2_ACCLL|Mux28~34_combout\,
	combout => \ps2_ACCLL|Mux28~17_combout\);

-- Location: LCCOMB_X22_Y16_N0
\ps2_ACCLL|Mux28~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux28~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux28~17_combout\,
	combout => \ps2_ACCLL|Mux28~30_combout\);

-- Location: LCCOMB_X22_Y16_N16
\ps2_ACCLL|Mux28~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~33_combout\);

-- Location: LCCOMB_X22_Y17_N28
\ps2_ACCLL|Mux28~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux28~32_combout\);

-- Location: LCCOMB_X22_Y19_N12
\ps2_ACCLL|Mux28~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~22_combout\ = (!\ps2_ACCLL|ascii\(1) & \ps2_ACCLL|Mux19~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux28~22_combout\);

-- Location: LCCOMB_X23_Y16_N14
\ps2_ACCLL|Mux28~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~27_combout\ = (\ps2_ACCLL|Mux28~33_combout\ & ((\ps2_ACCLL|Mux28~32_combout\) # ((\ps2_ACCLL|Mux28~22_combout\)))) # (!\ps2_ACCLL|Mux28~33_combout\ & (!\ps2_ACCLL|Mux28~32_combout\ & (\ps2_ACCLL|Mux19~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~33_combout\,
	datab => \ps2_ACCLL|Mux28~32_combout\,
	datac => \ps2_ACCLL|Mux19~22_combout\,
	datad => \ps2_ACCLL|Mux28~22_combout\,
	combout => \ps2_ACCLL|Mux28~27_combout\);

-- Location: LCCOMB_X24_Y19_N24
\ps2_ACCLL|Mux28~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux28~23_combout\);

-- Location: LCCOMB_X20_Y19_N12
\ps2_ACCLL|Mux28~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux28~24_combout\);

-- Location: LCCOMB_X22_Y19_N30
\ps2_ACCLL|Mux28~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~25_combout\ = (\ps2_ACCLL|Mux28~23_combout\ & ((\ps2_ACCLL|Mux28~24_combout\) # ((\ps2_ACCLL|Mux28~22_combout\)))) # (!\ps2_ACCLL|Mux28~23_combout\ & (!\ps2_ACCLL|Mux28~24_combout\ & (\ps2_ACCLL|Mux19~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~23_combout\,
	datab => \ps2_ACCLL|Mux28~24_combout\,
	datac => \ps2_ACCLL|Mux19~22_combout\,
	datad => \ps2_ACCLL|Mux28~22_combout\,
	combout => \ps2_ACCLL|Mux28~25_combout\);

-- Location: LCCOMB_X23_Y16_N4
\ps2_ACCLL|Mux28~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux28~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux19~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux19~24_combout\,
	datad => \ps2_ACCLL|Mux28~25_combout\,
	combout => \ps2_ACCLL|Mux28~26_combout\);

-- Location: LCCOMB_X20_Y19_N30
\ps2_ACCLL|Mux25~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~24_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~24_combout\);

-- Location: LCCOMB_X22_Y19_N24
\ps2_ACCLL|Mux28~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ascii\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux28~18_combout\);

-- Location: LCCOMB_X22_Y19_N6
\ps2_ACCLL|Mux28~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~19_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|Mux28~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux28~18_combout\,
	combout => \ps2_ACCLL|Mux28~19_combout\);

-- Location: LCCOMB_X23_Y16_N0
\ps2_ACCLL|Mux28~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~20_combout\ = (\ps2_ACCLL|Mux28~19_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux19~24_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # 
-- (!\ps2_ACCLL|Mux28~19_combout\ & (((\ps2_ACCLL|Mux19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux19~24_combout\,
	datac => \ps2_ACCLL|Mux28~19_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux28~20_combout\);

-- Location: LCCOMB_X23_Y16_N6
\ps2_ACCLL|Mux28~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux28~20_combout\ & ((\ps2_ACCLL|Mux28~19_combout\) # (!\ps2_ACCLL|Mux25~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux28~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux28~19_combout\,
	datad => \ps2_ACCLL|Mux28~20_combout\,
	combout => \ps2_ACCLL|Mux28~21_combout\);

-- Location: LCCOMB_X23_Y16_N28
\ps2_ACCLL|Mux28~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux28~26_combout\ & (\ps2_ACCLL|Mux28~27_combout\)) # (!\ps2_ACCLL|Mux28~26_combout\ & ((\ps2_ACCLL|Mux28~21_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux28~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux28~27_combout\,
	datac => \ps2_ACCLL|Mux28~26_combout\,
	datad => \ps2_ACCLL|Mux28~21_combout\,
	combout => \ps2_ACCLL|Mux28~28_combout\);

-- Location: LCCOMB_X23_Y16_N2
\ps2_ACCLL|Mux28~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~29_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux28~30_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux28~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux28~30_combout\,
	datad => \ps2_ACCLL|Mux28~28_combout\,
	combout => \ps2_ACCLL|Mux28~29_combout\);

-- Location: LCCOMB_X23_Y16_N20
\ps2_ACCLL|Mux43~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~9_combout\ = (\ps2_ACCLL|Mux28~16_combout\) # ((\ps2_ACCLL|Mux28~29_combout\) # ((\ps2_ACCLL|Mux24~14_combout\ & \ps2_ACCLL|Mux42~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~14_combout\,
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|Mux28~16_combout\,
	datad => \ps2_ACCLL|Mux28~29_combout\,
	combout => \ps2_ACCLL|Mux43~9_combout\);

-- Location: LCCOMB_X22_Y18_N0
\ps2_ACCLL|Mux40~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux42~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux42~6_combout\,
	combout => \ps2_ACCLL|Mux40~33_combout\);

-- Location: LCCOMB_X24_Y16_N28
\ps2_ACCLL|Mux43~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~22_combout\ = (!\ps2_ACCLL|Mux40~33_combout\ & ((\ps2_ACCLL|Mux28~29_combout\) # ((!\ps2_ACCLL|Mux26~0_combout\ & \ps2_ACCLL|Mux19~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datab => \ps2_ACCLL|Mux40~33_combout\,
	datac => \ps2_ACCLL|Mux19~24_combout\,
	datad => \ps2_ACCLL|Mux28~29_combout\,
	combout => \ps2_ACCLL|Mux43~22_combout\);

-- Location: LCCOMB_X24_Y16_N4
\ps2_ACCLL|Mux43~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~18_combout\ = (\ps2_ACCLL|Mux39~4_combout\ & (((\ps2_ACCLL|Mux28~16_combout\) # (\ps2_ACCLL|Mux28~29_combout\)))) # (!\ps2_ACCLL|Mux39~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux39~4_combout\,
	datac => \ps2_ACCLL|Mux28~16_combout\,
	datad => \ps2_ACCLL|Mux28~29_combout\,
	combout => \ps2_ACCLL|Mux43~18_combout\);

-- Location: LCCOMB_X23_Y16_N10
\ps2_ACCLL|Mux28~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~31_combout\ = (\ps2_ACCLL|Mux28~29_combout\) # ((!\ps2_ACCLL|Mux26~0_combout\ & \ps2_ACCLL|Mux19~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datac => \ps2_ACCLL|Mux19~24_combout\,
	datad => \ps2_ACCLL|Mux28~29_combout\,
	combout => \ps2_ACCLL|Mux28~31_combout\);

-- Location: LCCOMB_X24_Y16_N18
\ps2_ACCLL|Mux43~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux43~18_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux28~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux43~18_combout\,
	datad => \ps2_ACCLL|Mux28~31_combout\,
	combout => \ps2_ACCLL|Mux43~19_combout\);

-- Location: LCCOMB_X24_Y16_N8
\ps2_ACCLL|Mux43~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~19_combout\ & ((\ps2_ACCLL|Mux43~22_combout\))) # (!\ps2_ACCLL|Mux43~19_combout\ & (\ps2_ACCLL|Mux43~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux43~9_combout\,
	datac => \ps2_ACCLL|Mux43~22_combout\,
	datad => \ps2_ACCLL|Mux43~19_combout\,
	combout => \ps2_ACCLL|Mux43~20_combout\);

-- Location: LCCOMB_X24_Y16_N6
\ps2_ACCLL|Mux43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~6_combout\);

-- Location: LCCOMB_X24_Y16_N24
\ps2_ACCLL|Mux43~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux24~15_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux42~6_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux24~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux42~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~7_combout\);

-- Location: LCCOMB_X23_Y16_N26
\ps2_ACCLL|Mux43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~8_combout\ = (\ps2_ACCLL|Mux43~7_combout\ & (\ps2_ACCLL|Mux43~6_combout\)) # (!\ps2_ACCLL|Mux43~7_combout\ & (((\ps2_ACCLL|Mux28~16_combout\) # (\ps2_ACCLL|Mux28~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~6_combout\,
	datab => \ps2_ACCLL|Mux43~7_combout\,
	datac => \ps2_ACCLL|Mux28~16_combout\,
	datad => \ps2_ACCLL|Mux28~29_combout\,
	combout => \ps2_ACCLL|Mux43~8_combout\);

-- Location: LCCOMB_X23_Y16_N30
\ps2_ACCLL|Mux43~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux43~8_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux43~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux43~8_combout\,
	datad => \ps2_ACCLL|Mux43~9_combout\,
	combout => \ps2_ACCLL|Mux43~10_combout\);

-- Location: LCCOMB_X22_Y16_N18
\ps2_ACCLL|Mux43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux24~16_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- !\ps2_ACCLL|Mux24~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux24~16_combout\,
	combout => \ps2_ACCLL|Mux43~4_combout\);

-- Location: LCCOMB_X23_Y16_N24
\ps2_ACCLL|Mux43~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~5_combout\ = (\ps2_ACCLL|Mux43~4_combout\ & (((\ps2_ACCLL|Mux28~31_combout\)))) # (!\ps2_ACCLL|Mux43~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ ((\ps2_ACCLL|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux47~0_combout\,
	datad => \ps2_ACCLL|Mux28~31_combout\,
	combout => \ps2_ACCLL|Mux43~5_combout\);

-- Location: LCCOMB_X23_Y16_N16
\ps2_ACCLL|Mux43~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~10_combout\ & (\ps2_ACCLL|Mux28~31_combout\)) # (!\ps2_ACCLL|Mux43~10_combout\ & ((\ps2_ACCLL|Mux43~5_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~31_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~10_combout\,
	datad => \ps2_ACCLL|Mux43~5_combout\,
	combout => \ps2_ACCLL|Mux43~11_combout\);

-- Location: LCCOMB_X22_Y16_N14
\ps2_ACCLL|Mux43~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~21_combout\ = (\ps2_ACCLL|Mux38~12_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux38~12_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux43~21_combout\);

-- Location: LCCOMB_X22_Y16_N24
\ps2_ACCLL|Mux43~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~12_combout\ = (\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~12_combout\);

-- Location: LCCOMB_X23_Y16_N22
\ps2_ACCLL|Mux43~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~13_combout\ = (\ps2_ACCLL|Mux43~21_combout\) # ((!\ps2_ACCLL|Mux43~12_combout\ & ((\ps2_ACCLL|Mux28~16_combout\) # (\ps2_ACCLL|Mux28~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~21_combout\,
	datab => \ps2_ACCLL|Mux43~12_combout\,
	datac => \ps2_ACCLL|Mux28~16_combout\,
	datad => \ps2_ACCLL|Mux28~29_combout\,
	combout => \ps2_ACCLL|Mux43~13_combout\);

-- Location: LCCOMB_X22_Y16_N10
\ps2_ACCLL|Mux43~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~14_combout\);

-- Location: LCCOMB_X23_Y16_N8
\ps2_ACCLL|Mux43~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~15_combout\ = (\ps2_ACCLL|Mux43~7_combout\ & (\ps2_ACCLL|Mux43~14_combout\)) # (!\ps2_ACCLL|Mux43~7_combout\ & (((\ps2_ACCLL|Mux28~16_combout\) # (\ps2_ACCLL|Mux28~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~14_combout\,
	datab => \ps2_ACCLL|Mux43~7_combout\,
	datac => \ps2_ACCLL|Mux28~16_combout\,
	datad => \ps2_ACCLL|Mux28~29_combout\,
	combout => \ps2_ACCLL|Mux43~15_combout\);

-- Location: LCCOMB_X23_Y16_N18
\ps2_ACCLL|Mux43~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux43~15_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux43~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux43~15_combout\,
	datad => \ps2_ACCLL|Mux43~9_combout\,
	combout => \ps2_ACCLL|Mux43~16_combout\);

-- Location: LCCOMB_X23_Y16_N12
\ps2_ACCLL|Mux43~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~16_combout\ & (\ps2_ACCLL|Mux28~31_combout\)) # (!\ps2_ACCLL|Mux43~16_combout\ & ((\ps2_ACCLL|Mux43~13_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~31_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~13_combout\,
	datad => \ps2_ACCLL|Mux43~16_combout\,
	combout => \ps2_ACCLL|Mux43~17_combout\);

-- Location: LCCOMB_X24_Y16_N2
\ps2_ACCLL|ascii~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~65_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|Mux43~11_combout\)) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux43~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux43~11_combout\,
	datad => \ps2_ACCLL|Mux43~17_combout\,
	combout => \ps2_ACCLL|ascii~65_combout\);

-- Location: LCCOMB_X24_Y16_N10
\ps2_ACCLL|ascii~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~66_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ascii~65_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux43~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux43~20_combout\,
	datad => \ps2_ACCLL|ascii~65_combout\,
	combout => \ps2_ACCLL|ascii~66_combout\);

-- Location: LCCOMB_X24_Y16_N0
\ps2_ACCLL|ascii~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~67_combout\ = (!\ps2_ACCLL|ascii~64_combout\ & (((\ps2_ACCLL|Mux48~0_combout\ & \ps2_ACCLL|e0_code~q\)) # (!\ps2_ACCLL|ascii~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux48~0_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|ascii~64_combout\,
	datad => \ps2_ACCLL|ascii~66_combout\,
	combout => \ps2_ACCLL|ascii~67_combout\);

-- Location: FF_X24_Y16_N1
\ps2_ACCLL|ascii[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~67_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(1));

-- Location: LCCOMB_X24_Y16_N22
\ps2_ACCLL|ascii_code[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[1]~5_combout\ = !\ps2_ACCLL|ascii\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|ascii_code[1]~5_combout\);

-- Location: FF_X27_Y20_N17
\ps2_ACCLL|ascii_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[1]~5_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(1));

-- Location: LCCOMB_X22_Y17_N18
\ps2_ACCLL|ascii~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~59_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|ascii~59_combout\);

-- Location: LCCOMB_X22_Y17_N8
\ps2_ACCLL|ascii~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~60_combout\ = (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|Mux47~2_combout\ & (!\ps2_ACCLL|process_0~0_combout\ & \ps2_ACCLL|ascii~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|Mux47~2_combout\,
	datac => \ps2_ACCLL|process_0~0_combout\,
	datad => \ps2_ACCLL|ascii~59_combout\,
	combout => \ps2_ACCLL|ascii~60_combout\);

-- Location: LCCOMB_X21_Y21_N12
\ps2_ACCLL|ascii~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~61_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & (((!\ps2_ACCLL|Mux47~2_combout\) # (!\ps2_ACCLL|e0_code~q\)) # (!\ps2_ACCLL|Mux47~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux47~3_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|process_0~0_combout\,
	datad => \ps2_ACCLL|Mux47~2_combout\,
	combout => \ps2_ACCLL|ascii~61_combout\);

-- Location: LCCOMB_X23_Y20_N30
\ps2_ACCLL|Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux15~6_combout\);

-- Location: LCCOMB_X24_Y21_N6
\ps2_ACCLL|Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~7_combout\);

-- Location: LCCOMB_X23_Y20_N12
\ps2_ACCLL|Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~8_combout\ = (\ps2_ACCLL|Mux15~6_combout\ & (!\ps2_ACCLL|ascii\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|Mux15~7_combout\)))) # (!\ps2_ACCLL|Mux15~6_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- !\ps2_ACCLL|Mux15~7_combout\)) # (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~6_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux15~7_combout\,
	combout => \ps2_ACCLL|Mux15~8_combout\);

-- Location: LCCOMB_X23_Y20_N26
\ps2_ACCLL|Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~12_combout\);

-- Location: LCCOMB_X23_Y20_N28
\ps2_ACCLL|Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~13_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|Mux15~2_combout\)) # (!\ps2_ACCLL|Mux15~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux15~2_combout\,
	datad => \ps2_ACCLL|Mux15~12_combout\,
	combout => \ps2_ACCLL|Mux15~13_combout\);

-- Location: LCCOMB_X23_Y20_N18
\ps2_ACCLL|Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux15~9_combout\);

-- Location: LCCOMB_X23_Y20_N4
\ps2_ACCLL|Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~10_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|Mux15~9_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux15~9_combout\,
	combout => \ps2_ACCLL|Mux15~10_combout\);

-- Location: LCCOMB_X23_Y20_N10
\ps2_ACCLL|Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~11_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|Mux24~16_combout\) # (!\ps2_ACCLL|Mux38~12_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux38~12_combout\,
	datad => \ps2_ACCLL|Mux24~16_combout\,
	combout => \ps2_ACCLL|Mux15~11_combout\);

-- Location: LCCOMB_X23_Y20_N24
\ps2_ACCLL|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux15~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~10_combout\,
	datad => \ps2_ACCLL|Mux15~11_combout\,
	combout => \ps2_ACCLL|Mux7~14_combout\);

-- Location: LCCOMB_X23_Y20_N14
\ps2_ACCLL|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux7~14_combout\ & ((\ps2_ACCLL|Mux15~13_combout\))) # (!\ps2_ACCLL|Mux7~14_combout\ & (\ps2_ACCLL|Mux15~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux7~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~8_combout\,
	datab => \ps2_ACCLL|Mux15~13_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux7~14_combout\,
	combout => \ps2_ACCLL|Mux7~15_combout\);

-- Location: LCCOMB_X24_Y20_N18
\ps2_ACCLL|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux7~9_combout\);

-- Location: LCCOMB_X24_Y21_N30
\ps2_ACCLL|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux7~8_combout\);

-- Location: LCCOMB_X23_Y20_N22
\ps2_ACCLL|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux7~6_combout\);

-- Location: LCCOMB_X23_Y20_N20
\ps2_ACCLL|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux7~5_combout\);

-- Location: LCCOMB_X23_Y20_N8
\ps2_ACCLL|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux7~6_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- \ps2_ACCLL|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux7~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux7~5_combout\,
	combout => \ps2_ACCLL|Mux7~12_combout\);

-- Location: LCCOMB_X24_Y20_N30
\ps2_ACCLL|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux7~12_combout\ & (\ps2_ACCLL|Mux7~9_combout\)) # (!\ps2_ACCLL|Mux7~12_combout\ & ((\ps2_ACCLL|Mux7~8_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux7~9_combout\,
	datac => \ps2_ACCLL|Mux7~8_combout\,
	datad => \ps2_ACCLL|Mux7~12_combout\,
	combout => \ps2_ACCLL|Mux7~13_combout\);

-- Location: LCCOMB_X24_Y20_N8
\ps2_ACCLL|Mux7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~16_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|Mux7~13_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux7~13_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux7~16_combout\);

-- Location: LCCOMB_X24_Y20_N0
\ps2_ACCLL|ascii~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~58_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux7~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux7~16_combout\)))))

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
	combout => \ps2_ACCLL|ascii~58_combout\);

-- Location: LCCOMB_X24_Y17_N28
\ps2_ACCLL|Mux39~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux42~6_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux39~20_combout\);

-- Location: LCCOMB_X21_Y17_N26
\ps2_ACCLL|Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~3_combout\);

-- Location: LCCOMB_X20_Y18_N30
\ps2_ACCLL|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~8_combout\);

-- Location: LCCOMB_X21_Y17_N0
\ps2_ACCLL|Mux39~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~22_combout\ = (\ps2_ACCLL|Mux17~8_combout\ & (\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|caps_lock~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~8_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|caps_lock~4_combout\,
	combout => \ps2_ACCLL|Mux39~22_combout\);

-- Location: LCCOMB_X21_Y17_N18
\ps2_ACCLL|Mux39~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~23_combout\ = (\ps2_ACCLL|Mux39~22_combout\) # ((\ps2_ACCLL|caps_lock~3_combout\ & (\ps2_ACCLL|Mux24~14_combout\ & \ps2_ACCLL|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~3_combout\,
	datab => \ps2_ACCLL|Mux24~14_combout\,
	datac => \ps2_ACCLL|Mux13~3_combout\,
	datad => \ps2_ACCLL|Mux39~22_combout\,
	combout => \ps2_ACCLL|Mux39~23_combout\);

-- Location: LCCOMB_X24_Y17_N30
\ps2_ACCLL|Mux39~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~21_combout\ = (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux42~6_combout\)) # (!\ps2_ACCLL|caps_lock~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~4_combout\,
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux39~21_combout\);

-- Location: LCCOMB_X23_Y17_N26
\ps2_ACCLL|Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~15_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|Mux42~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux42~6_combout\,
	combout => \ps2_ACCLL|Mux15~15_combout\);

-- Location: LCCOMB_X22_Y17_N14
\ps2_ACCLL|Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~14_combout\ = (!\ps2_ACCLL|ascii\(5) & ((!\ps2_ACCLL|Mux18~0_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux18~0_combout\,
	combout => \ps2_ACCLL|Mux15~14_combout\);

-- Location: LCCOMB_X20_Y17_N28
\ps2_ACCLL|Mux24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux15~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~15_combout\,
	datad => \ps2_ACCLL|Mux15~14_combout\,
	combout => \ps2_ACCLL|Mux24~17_combout\);

-- Location: LCCOMB_X20_Y17_N12
\ps2_ACCLL|Mux24~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~34_combout\ = (\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux24~17_combout\))) # (!\ps2_ACCLL|ascii\(5) & (!\ps2_ACCLL|Mux24~17_combout\ & 
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
	datad => \ps2_ACCLL|Mux24~17_combout\,
	combout => \ps2_ACCLL|Mux24~34_combout\);

-- Location: LCCOMB_X20_Y17_N6
\ps2_ACCLL|Mux24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|Mux24~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux24~34_combout\,
	combout => \ps2_ACCLL|Mux24~18_combout\);

-- Location: LCCOMB_X21_Y17_N10
\ps2_ACCLL|caps_lock~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~6_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((\ps2_ACCLL|caps_lock~3_combout\ & (\ps2_ACCLL|caps_lock~7_combout\ & !\ps2_ACCLL|break~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~3_combout\,
	datab => \ps2_ACCLL|caps_lock~7_combout\,
	datac => \ps2_ACCLL|caps_lock~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|caps_lock~6_combout\);

-- Location: FF_X21_Y17_N11
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

-- Location: LCCOMB_X21_Y17_N4
\ps2_ACCLL|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~2_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~q\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|process_0~2_combout\);

-- Location: LCCOMB_X23_Y20_N16
\ps2_ACCLL|Mux24~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((!\ps2_ACCLL|Mux17~7_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~7_combout\,
	combout => \ps2_ACCLL|Mux24~21_combout\);

-- Location: LCCOMB_X24_Y20_N26
\ps2_ACCLL|Mux24~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux24~19_combout\);

-- Location: LCCOMB_X24_Y20_N20
\ps2_ACCLL|Mux24~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~20_combout\ = ((\ps2_ACCLL|Mux24~19_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux26~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~19_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux26~0_combout\,
	combout => \ps2_ACCLL|Mux24~20_combout\);

-- Location: LCCOMB_X24_Y20_N6
\ps2_ACCLL|Mux24~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux24~20_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux24~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux24~21_combout\,
	datad => \ps2_ACCLL|Mux24~20_combout\,
	combout => \ps2_ACCLL|Mux24~22_combout\);

-- Location: LCCOMB_X24_Y20_N24
\ps2_ACCLL|Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux15~17_combout\);

-- Location: LCCOMB_X24_Y20_N14
\ps2_ACCLL|Mux15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~18_combout\ = ((\ps2_ACCLL|e0_code~q\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux15~17_combout\))) # (!\ps2_ACCLL|ascii\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux15~17_combout\,
	combout => \ps2_ACCLL|Mux15~18_combout\);

-- Location: LCCOMB_X24_Y20_N10
\ps2_ACCLL|Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux15~5_combout\);

-- Location: LCCOMB_X24_Y20_N2
\ps2_ACCLL|Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~16_combout\ = (\ps2_ACCLL|ascii\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux15~5_combout\))) # (!\ps2_ACCLL|ascii\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # 
-- (!\ps2_ACCLL|Mux15~5_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~5_combout\,
	combout => \ps2_ACCLL|Mux15~16_combout\);

-- Location: LCCOMB_X24_Y20_N16
\ps2_ACCLL|Mux15~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux15~16_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~18_combout\,
	datad => \ps2_ACCLL|Mux15~16_combout\,
	combout => \ps2_ACCLL|Mux15~19_combout\);

-- Location: LCCOMB_X23_Y17_N24
\ps2_ACCLL|Mux15~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~19_combout\ & ((\ps2_ACCLL|Mux15~15_combout\))) # (!\ps2_ACCLL|Mux15~19_combout\ & (\ps2_ACCLL|Mux15~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux15~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~15_combout\,
	datad => \ps2_ACCLL|Mux15~19_combout\,
	combout => \ps2_ACCLL|Mux15~20_combout\);

-- Location: LCCOMB_X23_Y17_N0
\ps2_ACCLL|Mux15~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~20_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~20_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~20_combout\,
	combout => \ps2_ACCLL|Mux15~21_combout\);

-- Location: LCCOMB_X23_Y17_N22
\ps2_ACCLL|Mux24~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~23_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux24~22_combout\ & ((\ps2_ACCLL|Mux15~21_combout\))) # (!\ps2_ACCLL|Mux24~22_combout\ & (!\ps2_ACCLL|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux24~22_combout\,
	datad => \ps2_ACCLL|Mux15~21_combout\,
	combout => \ps2_ACCLL|Mux24~23_combout\);

-- Location: LCCOMB_X22_Y20_N6
\ps2_ACCLL|Mux24~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux24~29_combout\);

-- Location: LCCOMB_X23_Y20_N2
\ps2_ACCLL|Mux24~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~30_combout\ = (\ps2_ACCLL|Mux24~14_combout\ & ((\ps2_ACCLL|Mux17~7_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux24~29_combout\)))) # (!\ps2_ACCLL|Mux24~14_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & 
-- (\ps2_ACCLL|Mux24~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux24~29_combout\,
	datad => \ps2_ACCLL|Mux17~7_combout\,
	combout => \ps2_ACCLL|Mux24~30_combout\);

-- Location: LCCOMB_X23_Y17_N2
\ps2_ACCLL|Mux24~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~37_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|Mux15~20_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|Mux15~20_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~20_combout\,
	combout => \ps2_ACCLL|Mux24~37_combout\);

-- Location: LCCOMB_X23_Y17_N30
\ps2_ACCLL|Mux24~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|process_0~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux24~30_combout\ & (\ps2_ACCLL|process_0~2_combout\)) # (!\ps2_ACCLL|Mux24~30_combout\ & 
-- ((\ps2_ACCLL|Mux24~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux24~30_combout\,
	datad => \ps2_ACCLL|Mux24~37_combout\,
	combout => \ps2_ACCLL|Mux24~31_combout\);

-- Location: LCCOMB_X23_Y17_N6
\ps2_ACCLL|Mux24~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|Mux24~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux24~27_combout\);

-- Location: LCCOMB_X23_Y17_N18
\ps2_ACCLL|Mux24~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|Mux15~20_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|Mux15~20_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~20_combout\,
	combout => \ps2_ACCLL|Mux24~35_combout\);

-- Location: LCCOMB_X23_Y17_N20
\ps2_ACCLL|Mux24~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((!\ps2_ACCLL|Mux38~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux38~12_combout\ & 
-- !\ps2_ACCLL|Mux24~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux38~12_combout\,
	datad => \ps2_ACCLL|Mux24~35_combout\,
	combout => \ps2_ACCLL|Mux24~26_combout\);

-- Location: LCCOMB_X23_Y17_N8
\ps2_ACCLL|Mux24~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux24~26_combout\ & ((!\ps2_ACCLL|Mux24~35_combout\) # (!\ps2_ACCLL|Mux24~27_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|Mux24~27_combout\ & 
-- (!\ps2_ACCLL|Mux24~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux24~35_combout\,
	datad => \ps2_ACCLL|Mux24~26_combout\,
	combout => \ps2_ACCLL|Mux24~28_combout\);

-- Location: LCCOMB_X23_Y17_N4
\ps2_ACCLL|Mux24~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux24~15_combout\)) # 
-- (!\ps2_ACCLL|Mux24~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux24~15_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux24~35_combout\,
	combout => \ps2_ACCLL|Mux24~24_combout\);

-- Location: LCCOMB_X23_Y17_N28
\ps2_ACCLL|Mux24~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~36_combout\ = (\ps2_ACCLL|Mux24~35_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux24~35_combout\,
	combout => \ps2_ACCLL|Mux24~36_combout\);

-- Location: LCCOMB_X23_Y17_N10
\ps2_ACCLL|Mux24~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux38~12_combout\ & !\ps2_ACCLL|Mux24~24_combout\)) # (!\ps2_ACCLL|Mux24~36_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux24~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux24~24_combout\,
	datad => \ps2_ACCLL|Mux24~36_combout\,
	combout => \ps2_ACCLL|Mux24~25_combout\);

-- Location: LCCOMB_X23_Y17_N12
\ps2_ACCLL|Mux24~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~32_combout\ = (\ps2_ACCLL|Mux24~31_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~28_combout\))) # (!\ps2_ACCLL|Mux24~31_combout\ & (((\ps2_ACCLL|Mux24~25_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~31_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux24~28_combout\,
	datad => \ps2_ACCLL|Mux24~25_combout\,
	combout => \ps2_ACCLL|Mux24~32_combout\);

-- Location: LCCOMB_X23_Y17_N14
\ps2_ACCLL|Mux24~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~33_combout\ = (\ps2_ACCLL|Mux24~18_combout\) # ((\ps2_ACCLL|Mux24~23_combout\) # ((\ps2_ACCLL|control_l~0_combout\ & \ps2_ACCLL|Mux24~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~0_combout\,
	datab => \ps2_ACCLL|Mux24~18_combout\,
	datac => \ps2_ACCLL|Mux24~23_combout\,
	datad => \ps2_ACCLL|Mux24~32_combout\,
	combout => \ps2_ACCLL|Mux24~33_combout\);

-- Location: LCCOMB_X24_Y17_N24
\ps2_ACCLL|Mux39~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~24_combout\ = (\ps2_ACCLL|shift_l~4_combout\ & ((\ps2_ACCLL|Mux39~23_combout\) # ((\ps2_ACCLL|Mux39~21_combout\ & \ps2_ACCLL|Mux24~33_combout\)))) # (!\ps2_ACCLL|shift_l~4_combout\ & (((\ps2_ACCLL|Mux39~21_combout\ & 
-- \ps2_ACCLL|Mux24~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~4_combout\,
	datab => \ps2_ACCLL|Mux39~23_combout\,
	datac => \ps2_ACCLL|Mux39~21_combout\,
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux39~24_combout\);

-- Location: LCCOMB_X20_Y18_N20
\ps2_ACCLL|Mux39~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux39~16_combout\);

-- Location: LCCOMB_X24_Y17_N22
\ps2_ACCLL|Mux39~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~17_combout\ = (\ps2_ACCLL|Mux39~16_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux39~16_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux39~17_combout\);

-- Location: LCCOMB_X26_Y17_N18
\ps2_ACCLL|Mux39~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~14_combout\);

-- Location: LCCOMB_X26_Y17_N16
\ps2_ACCLL|Mux39~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux39~14_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|Mux39~14_combout\ $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux39~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~15_combout\);

-- Location: LCCOMB_X24_Y17_N12
\ps2_ACCLL|Mux39~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux24~33_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux39~15_combout\) # ((\ps2_ACCLL|Mux39~17_combout\ & \ps2_ACCLL|Mux24~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~17_combout\,
	datab => \ps2_ACCLL|Mux39~15_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux39~18_combout\);

-- Location: LCCOMB_X26_Y18_N22
\ps2_ACCLL|Mux42~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~24_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~24_combout\);

-- Location: LCCOMB_X26_Y18_N20
\ps2_ACCLL|Mux39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~6_combout\ = (\ps2_ACCLL|Mux42~24_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~6_combout\);

-- Location: LCCOMB_X24_Y17_N18
\ps2_ACCLL|Mux39~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~5_combout\ = (\ps2_ACCLL|Mux17~8_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux17~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~5_combout\);

-- Location: LCCOMB_X24_Y17_N4
\ps2_ACCLL|Mux39~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~7_combout\ = (\ps2_ACCLL|Mux24~33_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux39~6_combout\) # (\ps2_ACCLL|Mux39~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux39~5_combout\,
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux39~7_combout\);

-- Location: LCCOMB_X24_Y17_N8
\ps2_ACCLL|Mux39~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~26_combout\ = (\ps2_ACCLL|Mux24~33_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux44~4_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux44~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux39~26_combout\);

-- Location: LCCOMB_X24_Y17_N14
\ps2_ACCLL|Mux39~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~27_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((!\ps2_ACCLL|Mux24~15_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux39~27_combout\);

-- Location: LCCOMB_X24_Y17_N26
\ps2_ACCLL|Mux39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux24~33_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Mux42~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux24~33_combout\) # ((\ps2_ACCLL|Mux42~6_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux39~8_combout\);

-- Location: LCCOMB_X24_Y21_N12
\ps2_ACCLL|Mux39~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~9_combout\);

-- Location: LCCOMB_X24_Y21_N10
\ps2_ACCLL|Mux39~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux38~13_combout\ & \ps2_ACCLL|Mux24~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux39~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~9_combout\,
	datab => \ps2_ACCLL|Mux38~13_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux39~10_combout\);

-- Location: LCCOMB_X24_Y17_N20
\ps2_ACCLL|Mux39~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~11_combout\ = (\ps2_ACCLL|Mux39~10_combout\) # (\ps2_ACCLL|Mux24~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux39~10_combout\,
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux39~11_combout\);

-- Location: LCCOMB_X24_Y17_N2
\ps2_ACCLL|Mux39~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux39~27_combout\ & ((\ps2_ACCLL|Mux39~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux39~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux39~27_combout\,
	datac => \ps2_ACCLL|Mux39~8_combout\,
	datad => \ps2_ACCLL|Mux39~11_combout\,
	combout => \ps2_ACCLL|Mux39~12_combout\);

-- Location: LCCOMB_X24_Y17_N0
\ps2_ACCLL|Mux39~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux39~26_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|process_0~1_combout\ & 
-- ((\ps2_ACCLL|Mux39~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux39~26_combout\,
	datad => \ps2_ACCLL|Mux39~12_combout\,
	combout => \ps2_ACCLL|Mux39~13_combout\);

-- Location: LCCOMB_X24_Y17_N6
\ps2_ACCLL|Mux39~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~19_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux39~13_combout\ & (\ps2_ACCLL|Mux39~18_combout\)) # (!\ps2_ACCLL|Mux39~13_combout\ & ((\ps2_ACCLL|Mux39~7_combout\))))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux39~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~18_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux39~7_combout\,
	datad => \ps2_ACCLL|Mux39~13_combout\,
	combout => \ps2_ACCLL|Mux39~19_combout\);

-- Location: LCCOMB_X24_Y17_N10
\ps2_ACCLL|Mux39~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux39~19_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux39~20_combout\) # ((\ps2_ACCLL|Mux39~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~20_combout\,
	datab => \ps2_ACCLL|Mux39~24_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux39~19_combout\,
	combout => \ps2_ACCLL|Mux39~25_combout\);

-- Location: LCCOMB_X24_Y17_N16
\ps2_ACCLL|ascii~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~62_combout\ = (!\ps2_ACCLL|ascii~60_combout\ & (!\ps2_ACCLL|ascii~58_combout\ & ((!\ps2_ACCLL|Mux39~25_combout\) # (!\ps2_ACCLL|ascii~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~60_combout\,
	datab => \ps2_ACCLL|ascii~61_combout\,
	datac => \ps2_ACCLL|ascii~58_combout\,
	datad => \ps2_ACCLL|Mux39~25_combout\,
	combout => \ps2_ACCLL|ascii~62_combout\);

-- Location: FF_X24_Y17_N17
\ps2_ACCLL|ascii[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~62_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(5));

-- Location: LCCOMB_X27_Y20_N14
\ps2_ACCLL|ascii_code[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[5]~4_combout\ = !\ps2_ACCLL|ascii\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|ascii_code[5]~4_combout\);

-- Location: FF_X27_Y20_N15
\ps2_ACCLL|ascii_code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[5]~4_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(5));

-- Location: LCCOMB_X20_Y22_N14
\ps2_ACCLL|Mux17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux24~15_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux24~15_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) 
-- & (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux17~20_combout\);

-- Location: LCCOMB_X20_Y22_N12
\ps2_ACCLL|Mux17~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~31_combout\ = (\ps2_ACCLL|Mux17~7_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux17~7_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~7_combout\,
	combout => \ps2_ACCLL|Mux17~31_combout\);

-- Location: LCCOMB_X20_Y22_N0
\ps2_ACCLL|Mux17~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~21_combout\ = (\ps2_ACCLL|Mux17~31_combout\) # ((\ps2_ACCLL|Mux42~6_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux17~31_combout\,
	combout => \ps2_ACCLL|Mux17~21_combout\);

-- Location: LCCOMB_X20_Y22_N30
\ps2_ACCLL|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux17~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux17~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~20_combout\,
	datad => \ps2_ACCLL|Mux17~21_combout\,
	combout => \ps2_ACCLL|Mux9~2_combout\);

-- Location: LCCOMB_X24_Y19_N30
\ps2_ACCLL|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~4_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux15~4_combout\);

-- Location: LCCOMB_X20_Y21_N14
\ps2_ACCLL|Mux17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux19~4_combout\) # ((\ps2_ACCLL|Mux15~4_combout\ & \ps2_ACCLL|Mux42~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux15~4_combout\ & 
-- (\ps2_ACCLL|Mux42~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|Mux42~6_combout\,
	datad => \ps2_ACCLL|Mux19~4_combout\,
	combout => \ps2_ACCLL|Mux17~22_combout\);

-- Location: LCCOMB_X20_Y21_N2
\ps2_ACCLL|Mux17~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~32_combout\ = (\ps2_ACCLL|Mux17~22_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|Mux17~22_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux17~22_combout\,
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~32_combout\);

-- Location: LCCOMB_X20_Y21_N0
\ps2_ACCLL|Mux17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~19_combout\ = (\ps2_ACCLL|Mux24~15_combout\ & ((\ps2_ACCLL|Mux25~24_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux25~24_combout\ & ((!\ps2_ACCLL|ascii\(3)))))) # (!\ps2_ACCLL|Mux24~15_combout\ & 
-- (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux24~15_combout\,
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|Mux25~24_combout\,
	combout => \ps2_ACCLL|Mux17~19_combout\);

-- Location: LCCOMB_X20_Y21_N4
\ps2_ACCLL|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~3_combout\ = (\ps2_ACCLL|Mux9~2_combout\ & ((\ps2_ACCLL|Mux17~32_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux9~2_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux17~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux9~2_combout\,
	datab => \ps2_ACCLL|Mux17~32_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux17~19_combout\,
	combout => \ps2_ACCLL|Mux9~3_combout\);

-- Location: LCCOMB_X20_Y22_N2
\ps2_ACCLL|Mux17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux17~10_combout\);

-- Location: LCCOMB_X20_Y22_N24
\ps2_ACCLL|Mux17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux17~10_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # 
-- (!\ps2_ACCLL|ascii\(3)))) # (!\ps2_ACCLL|Mux17~10_combout\ & (!\ps2_ACCLL|ascii\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux17~10_combout\,
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~11_combout\);

-- Location: LCCOMB_X20_Y22_N18
\ps2_ACCLL|Mux17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~12_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ascii\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux17~12_combout\);

-- Location: LCCOMB_X20_Y22_N20
\ps2_ACCLL|Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|ascii\(3)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux17~9_combout\);

-- Location: LCCOMB_X20_Y22_N16
\ps2_ACCLL|Mux17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~13_combout\ = (\ps2_ACCLL|Mux17~11_combout\ & ((\ps2_ACCLL|Mux17~12_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|Mux17~11_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~11_combout\,
	datab => \ps2_ACCLL|Mux17~12_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux17~9_combout\,
	combout => \ps2_ACCLL|Mux17~13_combout\);

-- Location: LCCOMB_X21_Y21_N14
\ps2_ACCLL|Mux17~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~30_combout\ = (\ps2_ACCLL|Mux17~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|ascii\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux17~7_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux17~7_combout\,
	combout => \ps2_ACCLL|Mux17~30_combout\);

-- Location: LCCOMB_X20_Y19_N24
\ps2_ACCLL|Mux17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~15_combout\ = (\ps2_ACCLL|shift_l~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux17~14_combout\) # (!\ps2_ACCLL|ascii\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux17~14_combout\)))) # 
-- (!\ps2_ACCLL|shift_l~4_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|shift_l~4_combout\,
	datac => \ps2_ACCLL|Mux17~14_combout\,
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux17~15_combout\);

-- Location: LCCOMB_X20_Y21_N8
\ps2_ACCLL|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux17~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux17~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~30_combout\,
	datad => \ps2_ACCLL|Mux17~15_combout\,
	combout => \ps2_ACCLL|Mux9~0_combout\);

-- Location: LCCOMB_X20_Y18_N4
\ps2_ACCLL|Mux17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux17~16_combout\);

-- Location: LCCOMB_X20_Y21_N6
\ps2_ACCLL|Mux17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux19~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux17~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux17~16_combout\,
	datad => \ps2_ACCLL|Mux19~4_combout\,
	combout => \ps2_ACCLL|Mux17~17_combout\);

-- Location: LCCOMB_X20_Y21_N28
\ps2_ACCLL|Mux17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~18_combout\ = (\ps2_ACCLL|Mux17~17_combout\ & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|Mux17~17_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux17~8_combout\,
	datad => \ps2_ACCLL|Mux17~17_combout\,
	combout => \ps2_ACCLL|Mux17~18_combout\);

-- Location: LCCOMB_X20_Y21_N18
\ps2_ACCLL|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux9~0_combout\ & ((\ps2_ACCLL|Mux17~18_combout\))) # (!\ps2_ACCLL|Mux9~0_combout\ & (\ps2_ACCLL|Mux17~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~13_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux9~0_combout\,
	datad => \ps2_ACCLL|Mux17~18_combout\,
	combout => \ps2_ACCLL|Mux9~1_combout\);

-- Location: LCCOMB_X20_Y21_N30
\ps2_ACCLL|ascii~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~53_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux9~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux9~3_combout\))))

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
	combout => \ps2_ACCLL|ascii~53_combout\);

-- Location: LCCOMB_X22_Y20_N22
\ps2_ACCLL|Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~6_combout\);

-- Location: LCCOMB_X21_Y19_N30
\ps2_ACCLL|Mux17~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux17~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux17~6_combout\,
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux17~27_combout\);

-- Location: LCCOMB_X21_Y19_N12
\ps2_ACCLL|Mux17~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- \ps2_ACCLL|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux13~2_combout\,
	combout => \ps2_ACCLL|Mux17~26_combout\);

-- Location: LCCOMB_X21_Y19_N8
\ps2_ACCLL|Mux17~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~28_combout\ = (\ps2_ACCLL|ascii\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux17~27_combout\ & \ps2_ACCLL|Mux17~26_combout\))) # (!\ps2_ACCLL|ascii\(3) & (((\ps2_ACCLL|Mux17~26_combout\) # 
-- (!\ps2_ACCLL|Mux17~27_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~27_combout\,
	datad => \ps2_ACCLL|Mux17~26_combout\,
	combout => \ps2_ACCLL|Mux17~28_combout\);

-- Location: LCCOMB_X23_Y19_N22
\ps2_ACCLL|Mux17~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux17~23_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~7_combout\,
	datad => \ps2_ACCLL|Mux17~23_combout\,
	combout => \ps2_ACCLL|Mux17~24_combout\);

-- Location: LCCOMB_X21_Y19_N2
\ps2_ACCLL|Mux17~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~25_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~24_combout\) # (!\ps2_ACCLL|ascii\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux17~25_combout\);

-- Location: LCCOMB_X20_Y20_N16
\ps2_ACCLL|Mux26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~1_combout\ = (!\ps2_ACCLL|Mux26~0_combout\ & ((\ps2_ACCLL|Mux17~25_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux17~28_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~1_combout\);

-- Location: LCCOMB_X21_Y19_N28
\ps2_ACCLL|Mux26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux17~28_combout\) # (\ps2_ACCLL|Mux17~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux25~24_combout\ & ((\ps2_ACCLL|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux25~24_combout\,
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~11_combout\);

-- Location: LCCOMB_X21_Y19_N16
\ps2_ACCLL|Mux17~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux17~28_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux17~24_combout\)) # (!\ps2_ACCLL|ascii\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux17~29_combout\);

-- Location: LCCOMB_X21_Y19_N6
\ps2_ACCLL|Mux26~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (\ps2_ACCLL|Mux17~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux17~29_combout\,
	combout => \ps2_ACCLL|Mux26~10_combout\);

-- Location: LCCOMB_X21_Y19_N26
\ps2_ACCLL|Mux26~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux26~11_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|Mux26~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux26~11_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux26~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux26~11_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux26~10_combout\,
	combout => \ps2_ACCLL|Mux26~12_combout\);

-- Location: LCCOMB_X21_Y19_N14
\ps2_ACCLL|Mux26~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux17~25_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~15_combout\);

-- Location: LCCOMB_X21_Y19_N0
\ps2_ACCLL|Mux26~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux17~28_combout\) # (\ps2_ACCLL|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~13_combout\);

-- Location: LCCOMB_X21_Y20_N22
\ps2_ACCLL|Mux26~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux26~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux17~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux17~29_combout\,
	datad => \ps2_ACCLL|Mux26~13_combout\,
	combout => \ps2_ACCLL|Mux26~14_combout\);

-- Location: LCCOMB_X21_Y19_N24
\ps2_ACCLL|Mux26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~7_combout\ = (\ps2_ACCLL|Mux17~29_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~29_combout\,
	combout => \ps2_ACCLL|Mux26~7_combout\);

-- Location: LCCOMB_X21_Y20_N16
\ps2_ACCLL|Mux26~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux26~14_combout\ & (\ps2_ACCLL|Mux26~15_combout\)) # (!\ps2_ACCLL|Mux26~14_combout\ & ((\ps2_ACCLL|Mux26~7_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux26~15_combout\,
	datac => \ps2_ACCLL|Mux26~14_combout\,
	datad => \ps2_ACCLL|Mux26~7_combout\,
	combout => \ps2_ACCLL|Mux26~16_combout\);

-- Location: LCCOMB_X21_Y20_N30
\ps2_ACCLL|Mux26~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux26~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux17~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~29_combout\,
	datad => \ps2_ACCLL|Mux26~16_combout\,
	combout => \ps2_ACCLL|Mux26~17_combout\);

-- Location: LCCOMB_X20_Y20_N14
\ps2_ACCLL|Mux26~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux26~18_combout\);

-- Location: LCCOMB_X20_Y20_N4
\ps2_ACCLL|Mux26~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux26~19_combout\);

-- Location: LCCOMB_X20_Y20_N2
\ps2_ACCLL|Mux26~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~28_combout\) # ((!\ps2_ACCLL|Mux26~19_combout\ & \ps2_ACCLL|Mux17~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux26~19_combout\,
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~22_combout\);

-- Location: LCCOMB_X20_Y20_N12
\ps2_ACCLL|Mux26~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~23_combout\ = (\ps2_ACCLL|Mux26~18_combout\ & ((\ps2_ACCLL|Mux26~19_combout\ & ((\ps2_ACCLL|Mux26~22_combout\))) # (!\ps2_ACCLL|Mux26~19_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux26~18_combout\ & 
-- ((\ps2_ACCLL|Mux26~19_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux26~19_combout\ & ((\ps2_ACCLL|Mux26~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux26~18_combout\,
	datac => \ps2_ACCLL|Mux26~19_combout\,
	datad => \ps2_ACCLL|Mux26~22_combout\,
	combout => \ps2_ACCLL|Mux26~23_combout\);

-- Location: LCCOMB_X21_Y20_N4
\ps2_ACCLL|Mux26~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux26~17_combout\ & ((\ps2_ACCLL|Mux26~23_combout\))) # (!\ps2_ACCLL|Mux26~17_combout\ & (\ps2_ACCLL|Mux26~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux26~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux26~12_combout\,
	datac => \ps2_ACCLL|Mux26~17_combout\,
	datad => \ps2_ACCLL|Mux26~23_combout\,
	combout => \ps2_ACCLL|Mux26~20_combout\);

-- Location: LCCOMB_X21_Y19_N22
\ps2_ACCLL|Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~2_combout\ = (\ps2_ACCLL|Mux25~24_combout\) # ((\ps2_ACCLL|Mux17~25_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux25~24_combout\,
	datac => \ps2_ACCLL|Mux17~28_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~2_combout\);

-- Location: LCCOMB_X20_Y19_N14
\ps2_ACCLL|Mux26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|Mux26~3_combout\);

-- Location: LCCOMB_X20_Y19_N28
\ps2_ACCLL|Mux26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux17~23_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux17~23_combout\,
	datad => \ps2_ACCLL|Mux16~7_combout\,
	combout => \ps2_ACCLL|Mux26~4_combout\);

-- Location: LCCOMB_X20_Y19_N26
\ps2_ACCLL|Mux26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~5_combout\ = (\ps2_ACCLL|Mux26~3_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|Mux26~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux26~3_combout\,
	datad => \ps2_ACCLL|Mux26~4_combout\,
	combout => \ps2_ACCLL|Mux26~5_combout\);

-- Location: LCCOMB_X21_Y19_N10
\ps2_ACCLL|Mux26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux26~5_combout\) # 
-- (\ps2_ACCLL|Mux17~29_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux26~5_combout\,
	datad => \ps2_ACCLL|Mux17~29_combout\,
	combout => \ps2_ACCLL|Mux26~6_combout\);

-- Location: LCCOMB_X21_Y19_N18
\ps2_ACCLL|Mux26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux26~6_combout\ & (\ps2_ACCLL|Mux26~7_combout\)) # (!\ps2_ACCLL|Mux26~6_combout\ & ((\ps2_ACCLL|Mux26~2_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux26~7_combout\,
	datac => \ps2_ACCLL|Mux26~2_combout\,
	datad => \ps2_ACCLL|Mux26~6_combout\,
	combout => \ps2_ACCLL|Mux26~8_combout\);

-- Location: LCCOMB_X21_Y19_N4
\ps2_ACCLL|Mux26~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~9_combout\ = (\ps2_ACCLL|Mux25~26_combout\ & \ps2_ACCLL|Mux26~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux25~26_combout\,
	datad => \ps2_ACCLL|Mux26~8_combout\,
	combout => \ps2_ACCLL|Mux26~9_combout\);

-- Location: LCCOMB_X21_Y20_N10
\ps2_ACCLL|Mux26~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~21_combout\ = (\ps2_ACCLL|Mux26~1_combout\) # ((\ps2_ACCLL|Mux26~9_combout\) # ((\ps2_ACCLL|Mux38~12_combout\ & \ps2_ACCLL|Mux26~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~1_combout\,
	datab => \ps2_ACCLL|Mux38~12_combout\,
	datac => \ps2_ACCLL|Mux26~20_combout\,
	datad => \ps2_ACCLL|Mux26~9_combout\,
	combout => \ps2_ACCLL|Mux26~21_combout\);

-- Location: LCCOMB_X22_Y20_N30
\ps2_ACCLL|Mux41~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~26_combout\ = (\ps2_ACCLL|Mux26~21_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|Mux41~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux41~6_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux41~26_combout\);

-- Location: LCCOMB_X22_Y20_N10
\ps2_ACCLL|Mux41~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~23_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~23_combout\);

-- Location: LCCOMB_X22_Y20_N28
\ps2_ACCLL|Mux41~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux41~7_combout\);

-- Location: LCCOMB_X21_Y17_N20
\ps2_ACCLL|Mux41~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|shift_r~q\) # (\ps2_ACCLL|shift_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|shift_r~q\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux41~22_combout\);

-- Location: LCCOMB_X22_Y20_N0
\ps2_ACCLL|Mux41~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~24_combout\ = (\ps2_ACCLL|Mux41~23_combout\ & ((\ps2_ACCLL|Mux41~7_combout\ & (\ps2_ACCLL|Mux41~22_combout\)) # (!\ps2_ACCLL|Mux41~7_combout\ & ((\ps2_ACCLL|Mux26~21_combout\))))) # (!\ps2_ACCLL|Mux41~23_combout\ & 
-- (((\ps2_ACCLL|Mux26~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~23_combout\,
	datab => \ps2_ACCLL|Mux41~7_combout\,
	datac => \ps2_ACCLL|Mux41~22_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux41~24_combout\);

-- Location: LCCOMB_X22_Y20_N4
\ps2_ACCLL|Mux41~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~12_combout\);

-- Location: LCCOMB_X22_Y20_N14
\ps2_ACCLL|Mux41~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux25~31_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux25~31_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~8_combout\);

-- Location: LCCOMB_X20_Y18_N2
\ps2_ACCLL|Mux41~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~10_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|shift_l~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~10_combout\);

-- Location: LCCOMB_X24_Y20_N22
\ps2_ACCLL|Mux41~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux41~9_combout\);

-- Location: LCCOMB_X21_Y20_N0
\ps2_ACCLL|Mux41~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~11_combout\ = (\ps2_ACCLL|Mux41~8_combout\) # ((\ps2_ACCLL|Mux41~9_combout\) # ((\ps2_ACCLL|Mux41~10_combout\ & \ps2_ACCLL|Mux26~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~8_combout\,
	datab => \ps2_ACCLL|Mux41~10_combout\,
	datac => \ps2_ACCLL|Mux41~9_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux41~11_combout\);

-- Location: LCCOMB_X21_Y20_N26
\ps2_ACCLL|Mux41~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux41~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux41~12_combout\ & (\ps2_ACCLL|Mux26~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux26~21_combout\,
	datad => \ps2_ACCLL|Mux41~11_combout\,
	combout => \ps2_ACCLL|Mux41~13_combout\);

-- Location: LCCOMB_X20_Y20_N6
\ps2_ACCLL|Mux41~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux41~15_combout\);

-- Location: LCCOMB_X22_Y20_N20
\ps2_ACCLL|Mux41~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux41~15_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux41~12_combout\ & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux41~12_combout\,
	datac => \ps2_ACCLL|Mux41~15_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux41~16_combout\);

-- Location: LCCOMB_X22_Y20_N26
\ps2_ACCLL|Mux41~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~14_combout\);

-- Location: LCCOMB_X21_Y20_N24
\ps2_ACCLL|Mux41~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~17_combout\ = (\ps2_ACCLL|Mux26~21_combout\) # ((\ps2_ACCLL|Mux41~16_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Mux41~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux41~16_combout\,
	datac => \ps2_ACCLL|Mux41~14_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux41~17_combout\);

-- Location: LCCOMB_X21_Y20_N8
\ps2_ACCLL|Mux41~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~19_combout\ = (\ps2_ACCLL|Mux41~15_combout\) # (\ps2_ACCLL|Mux26~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux41~15_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux41~19_combout\);

-- Location: LCCOMB_X21_Y20_N14
\ps2_ACCLL|Mux41~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux26~21_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux41~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux41~18_combout\);

-- Location: LCCOMB_X21_Y20_N12
\ps2_ACCLL|Mux41~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~27_combout\ = (\ps2_ACCLL|Mux41~14_combout\ & (((\ps2_ACCLL|Mux26~21_combout\)))) # (!\ps2_ACCLL|Mux41~14_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux41~14_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux41~27_combout\);

-- Location: LCCOMB_X21_Y20_N18
\ps2_ACCLL|Mux41~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux41~18_combout\ & (\ps2_ACCLL|Mux41~19_combout\)) # (!\ps2_ACCLL|Mux41~18_combout\ & ((\ps2_ACCLL|Mux41~27_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (((\ps2_ACCLL|Mux41~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux41~19_combout\,
	datac => \ps2_ACCLL|Mux41~18_combout\,
	datad => \ps2_ACCLL|Mux41~27_combout\,
	combout => \ps2_ACCLL|Mux41~20_combout\);

-- Location: LCCOMB_X21_Y20_N6
\ps2_ACCLL|Mux41~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~28_combout\ = (\ps2_ACCLL|shift_r~q\ & (\ps2_ACCLL|Mux41~17_combout\)) # (!\ps2_ACCLL|shift_r~q\ & ((\ps2_ACCLL|shift_l~q\ & (\ps2_ACCLL|Mux41~17_combout\)) # (!\ps2_ACCLL|shift_l~q\ & ((\ps2_ACCLL|Mux41~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_r~q\,
	datab => \ps2_ACCLL|Mux41~17_combout\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|Mux41~20_combout\,
	combout => \ps2_ACCLL|Mux41~28_combout\);

-- Location: LCCOMB_X21_Y20_N20
\ps2_ACCLL|Mux41~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux41~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((\ps2_ACCLL|Mux41~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux41~13_combout\,
	datad => \ps2_ACCLL|Mux41~28_combout\,
	combout => \ps2_ACCLL|Mux41~21_combout\);

-- Location: LCCOMB_X21_Y20_N2
\ps2_ACCLL|Mux41~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux41~21_combout\ & ((\ps2_ACCLL|Mux41~24_combout\))) # (!\ps2_ACCLL|Mux41~21_combout\ & (\ps2_ACCLL|Mux41~26_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux41~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~26_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux41~24_combout\,
	datad => \ps2_ACCLL|Mux41~21_combout\,
	combout => \ps2_ACCLL|Mux41~25_combout\);

-- Location: LCCOMB_X21_Y20_N28
\ps2_ACCLL|ascii~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~54_combout\ = (!\ps2_ACCLL|ascii~49_combout\ & (!\ps2_ACCLL|ascii~53_combout\ & ((\ps2_ACCLL|process_0~0_combout\) # (!\ps2_ACCLL|Mux41~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ascii~49_combout\,
	datac => \ps2_ACCLL|ascii~53_combout\,
	datad => \ps2_ACCLL|Mux41~25_combout\,
	combout => \ps2_ACCLL|ascii~54_combout\);

-- Location: FF_X21_Y20_N29
\ps2_ACCLL|ascii[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~54_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(3));

-- Location: LCCOMB_X26_Y20_N2
\ps2_ACCLL|ascii_code[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[3]~2_combout\ = !\ps2_ACCLL|ascii\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|ascii_code[3]~2_combout\);

-- Location: FF_X26_Y20_N3
\ps2_ACCLL|ascii_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[3]~2_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(3));

-- Location: LCCOMB_X27_Y17_N20
\ps2_ACCLL|Mux18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~20_combout\);

-- Location: LCCOMB_X27_Y17_N26
\ps2_ACCLL|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ascii\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # 
-- (!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ascii\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111001001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~14_combout\);

-- Location: LCCOMB_X27_Y17_N22
\ps2_ACCLL|Mux18~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~21_combout\ = (\ps2_ACCLL|Mux18~20_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|Mux18~20_combout\ & ((\ps2_ACCLL|Mux18~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux18~14_combout\,
	datad => \ps2_ACCLL|Mux18~20_combout\,
	combout => \ps2_ACCLL|Mux18~21_combout\);

-- Location: LCCOMB_X27_Y17_N10
\ps2_ACCLL|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~19_combout\);

-- Location: LCCOMB_X27_Y17_N24
\ps2_ACCLL|Mux18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~22_combout\ = (\ps2_ACCLL|ascii\(2) & (!\ps2_ACCLL|Mux18~19_combout\ & (\ps2_ACCLL|Mux18~20_combout\ $ (\ps2_ACCLL|Mux18~21_combout\)))) # (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|Mux18~21_combout\) # (\ps2_ACCLL|Mux18~20_combout\ $ 
-- (\ps2_ACCLL|Mux18~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|Mux18~20_combout\,
	datac => \ps2_ACCLL|Mux18~21_combout\,
	datad => \ps2_ACCLL|Mux18~19_combout\,
	combout => \ps2_ACCLL|Mux18~22_combout\);

-- Location: LCCOMB_X26_Y17_N22
\ps2_ACCLL|Mux18~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux18~22_combout\,
	combout => \ps2_ACCLL|Mux18~23_combout\);

-- Location: LCCOMB_X26_Y17_N10
\ps2_ACCLL|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~15_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # 
-- (!\ps2_ACCLL|Mux24~15_combout\ & (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux18~5_combout\);

-- Location: LCCOMB_X22_Y18_N12
\ps2_ACCLL|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~4_combout\ = (!\ps2_ACCLL|ascii\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~4_combout\);

-- Location: LCCOMB_X27_Y17_N28
\ps2_ACCLL|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ascii\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|ascii\(2)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~6_combout\);

-- Location: LCCOMB_X26_Y17_N8
\ps2_ACCLL|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~7_combout\ = (\ps2_ACCLL|Mux18~5_combout\ & (((\ps2_ACCLL|Mux18~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux18~5_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux18~4_combout\,
	datad => \ps2_ACCLL|Mux18~6_combout\,
	combout => \ps2_ACCLL|Mux18~7_combout\);

-- Location: LCCOMB_X26_Y17_N6
\ps2_ACCLL|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux42~6_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~2_combout\);

-- Location: LCCOMB_X26_Y17_N4
\ps2_ACCLL|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~1_combout\);

-- Location: LCCOMB_X26_Y17_N12
\ps2_ACCLL|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~3_combout\ = (\ps2_ACCLL|Mux18~2_combout\ & (((\ps2_ACCLL|Mux18~1_combout\ & !\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux18~2_combout\ & (((\ps2_ACCLL|Mux18~1_combout\ & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ascii\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~2_combout\,
	datab => \ps2_ACCLL|Mux18~1_combout\,
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~3_combout\);

-- Location: LCCOMB_X26_Y17_N14
\ps2_ACCLL|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~3_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux18~7_combout\,
	datad => \ps2_ACCLL|Mux18~3_combout\,
	combout => \ps2_ACCLL|Mux18~8_combout\);

-- Location: LCCOMB_X27_Y17_N12
\ps2_ACCLL|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~15_combout\);

-- Location: LCCOMB_X27_Y17_N18
\ps2_ACCLL|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~15_combout\) # ((!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux18~16_combout\);

-- Location: LCCOMB_X27_Y17_N16
\ps2_ACCLL|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~16_combout\ & (\ps2_ACCLL|Mux18~6_combout\)) # (!\ps2_ACCLL|Mux18~16_combout\ & ((\ps2_ACCLL|Mux18~14_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux18~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux18~6_combout\,
	datac => \ps2_ACCLL|Mux18~14_combout\,
	datad => \ps2_ACCLL|Mux18~16_combout\,
	combout => \ps2_ACCLL|Mux18~17_combout\);

-- Location: LCCOMB_X26_Y17_N26
\ps2_ACCLL|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~17_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux18~17_combout\,
	combout => \ps2_ACCLL|Mux18~18_combout\);

-- Location: LCCOMB_X26_Y17_N30
\ps2_ACCLL|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux17~7_combout\ & 
-- (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~7_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~12_combout\);

-- Location: LCCOMB_X24_Y21_N22
\ps2_ACCLL|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~9_combout\);

-- Location: LCCOMB_X24_Y21_N0
\ps2_ACCLL|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|Mux18~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux24~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux18~9_combout\,
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux18~10_combout\);

-- Location: LCCOMB_X26_Y17_N28
\ps2_ACCLL|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~10_combout\ & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|Mux18~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) 
-- & (!\ps2_ACCLL|ascii\(2) & ((!\ps2_ACCLL|Mux18~10_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux18~10_combout\,
	combout => \ps2_ACCLL|Mux18~11_combout\);

-- Location: LCCOMB_X26_Y17_N24
\ps2_ACCLL|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~11_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux18~12_combout\,
	datad => \ps2_ACCLL|Mux18~11_combout\,
	combout => \ps2_ACCLL|Mux18~13_combout\);

-- Location: LCCOMB_X26_Y17_N20
\ps2_ACCLL|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux18~13_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux18~18_combout\,
	datad => \ps2_ACCLL|Mux18~13_combout\,
	combout => \ps2_ACCLL|Mux10~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\ps2_ACCLL|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux10~0_combout\ & (\ps2_ACCLL|Mux18~23_combout\)) # (!\ps2_ACCLL|Mux10~0_combout\ & ((\ps2_ACCLL|Mux18~8_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux18~8_combout\,
	datad => \ps2_ACCLL|Mux10~0_combout\,
	combout => \ps2_ACCLL|Mux10~1_combout\);

-- Location: LCCOMB_X22_Y18_N10
\ps2_ACCLL|Mux42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~8_combout\ = (\ps2_ACCLL|Mux24~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux42~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux42~6_combout\,
	combout => \ps2_ACCLL|Mux42~8_combout\);

-- Location: LCCOMB_X24_Y20_N4
\ps2_ACCLL|Mux42~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux42~7_combout\);

-- Location: LCCOMB_X24_Y20_N12
\ps2_ACCLL|Mux42~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~25_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux42~7_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux42~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux42~25_combout\);

-- Location: LCCOMB_X24_Y18_N14
\ps2_ACCLL|Mux42~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~9_combout\ = (\ps2_ACCLL|Mux42~25_combout\) # ((\ps2_ACCLL|Mux42~8_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~8_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux42~25_combout\,
	combout => \ps2_ACCLL|Mux42~9_combout\);

-- Location: LCCOMB_X22_Y18_N4
\ps2_ACCLL|Mux18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux18~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|Mux18~0_combout\,
	combout => \ps2_ACCLL|Mux18~24_combout\);

-- Location: LCCOMB_X22_Y18_N6
\ps2_ACCLL|Mux18~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux40~33_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux24~14_combout\ & (\ps2_ACCLL|Mux18~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux18~24_combout\,
	datad => \ps2_ACCLL|Mux40~33_combout\,
	combout => \ps2_ACCLL|Mux18~25_combout\);

-- Location: LCCOMB_X24_Y19_N18
\ps2_ACCLL|Mux18~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~27_combout\);

-- Location: LCCOMB_X23_Y18_N8
\ps2_ACCLL|Mux18~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~28_combout\ = ((\ps2_ACCLL|control_l~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux15~5_combout\)))) # (!\ps2_ACCLL|Mux15~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux15~4_combout\,
	datad => \ps2_ACCLL|Mux15~5_combout\,
	combout => \ps2_ACCLL|Mux18~28_combout\);

-- Location: LCCOMB_X22_Y17_N24
\ps2_ACCLL|Mux18~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~26_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux18~0_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux18~0_combout\,
	combout => \ps2_ACCLL|Mux18~26_combout\);

-- Location: LCCOMB_X23_Y18_N24
\ps2_ACCLL|Mux18~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~29_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|Mux18~27_combout\) # ((\ps2_ACCLL|Mux18~28_combout\) # (\ps2_ACCLL|Mux18~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|Mux18~27_combout\,
	datac => \ps2_ACCLL|Mux18~28_combout\,
	datad => \ps2_ACCLL|Mux18~26_combout\,
	combout => \ps2_ACCLL|Mux18~29_combout\);

-- Location: LCCOMB_X23_Y18_N22
\ps2_ACCLL|Mux18~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~30_combout\ = (\ps2_ACCLL|Mux18~29_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux15~4_combout\ & \ps2_ACCLL|Mux18~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|Mux18~25_combout\,
	datad => \ps2_ACCLL|Mux18~29_combout\,
	combout => \ps2_ACCLL|Mux18~30_combout\);

-- Location: LCCOMB_X20_Y18_N28
\ps2_ACCLL|Mux27~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux27~15_combout\);

-- Location: LCCOMB_X23_Y18_N28
\ps2_ACCLL|Mux27~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~29_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|Mux18~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux18~29_combout\,
	combout => \ps2_ACCLL|Mux27~29_combout\);

-- Location: LCCOMB_X24_Y19_N4
\ps2_ACCLL|Mux27~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux27~10_combout\);

-- Location: LCCOMB_X23_Y18_N30
\ps2_ACCLL|Mux27~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~11_combout\ = (\ps2_ACCLL|Mux18~27_combout\) # ((\ps2_ACCLL|Mux18~28_combout\) # (\ps2_ACCLL|Mux18~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux18~27_combout\,
	datac => \ps2_ACCLL|Mux18~28_combout\,
	datad => \ps2_ACCLL|Mux18~26_combout\,
	combout => \ps2_ACCLL|Mux27~11_combout\);

-- Location: LCCOMB_X23_Y18_N20
\ps2_ACCLL|Mux27~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~12_combout\ = (\ps2_ACCLL|ascii\(2) & (\ps2_ACCLL|Mux15~4_combout\ & (\ps2_ACCLL|Mux18~25_combout\))) # (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|Mux27~11_combout\) # ((\ps2_ACCLL|Mux15~4_combout\ & \ps2_ACCLL|Mux18~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|Mux18~25_combout\,
	datad => \ps2_ACCLL|Mux27~11_combout\,
	combout => \ps2_ACCLL|Mux27~12_combout\);

-- Location: LCCOMB_X23_Y18_N6
\ps2_ACCLL|Mux27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~10_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|Mux27~10_combout\ & ((\ps2_ACCLL|Mux27~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux27~10_combout\,
	datad => \ps2_ACCLL|Mux27~12_combout\,
	combout => \ps2_ACCLL|Mux27~13_combout\);

-- Location: LCCOMB_X23_Y18_N26
\ps2_ACCLL|Mux27~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~29_combout\ & ((!\ps2_ACCLL|Mux27~13_combout\))) # (!\ps2_ACCLL|Mux27~29_combout\ & (\ps2_ACCLL|Mux18~29_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux27~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~29_combout\,
	datab => \ps2_ACCLL|Mux27~29_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux27~13_combout\,
	combout => \ps2_ACCLL|Mux27~14_combout\);

-- Location: LCCOMB_X22_Y18_N8
\ps2_ACCLL|Mux27~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux27~22_combout\);

-- Location: LCCOMB_X22_Y18_N18
\ps2_ACCLL|Mux27~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ascii\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|Mux27~23_combout\);

-- Location: LCCOMB_X22_Y18_N28
\ps2_ACCLL|Mux27~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~24_combout\ = (\ps2_ACCLL|Mux27~23_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))) # 
-- (!\ps2_ACCLL|Mux27~23_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux27~23_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux27~24_combout\);

-- Location: LCCOMB_X22_Y18_N14
\ps2_ACCLL|Mux27~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux25~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux15~4_combout\ & ((\ps2_ACCLL|Mux18~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|Mux25~24_combout\,
	datad => \ps2_ACCLL|Mux18~25_combout\,
	combout => \ps2_ACCLL|Mux27~21_combout\);

-- Location: LCCOMB_X23_Y18_N14
\ps2_ACCLL|Mux27~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~25_combout\ = (\ps2_ACCLL|Mux27~22_combout\ & ((\ps2_ACCLL|Mux27~21_combout\) # ((!\ps2_ACCLL|Mux27~24_combout\ & \ps2_ACCLL|Mux18~29_combout\)))) # (!\ps2_ACCLL|Mux27~22_combout\ & (!\ps2_ACCLL|Mux27~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~22_combout\,
	datab => \ps2_ACCLL|Mux27~24_combout\,
	datac => \ps2_ACCLL|Mux18~29_combout\,
	datad => \ps2_ACCLL|Mux27~21_combout\,
	combout => \ps2_ACCLL|Mux27~25_combout\);

-- Location: LCCOMB_X23_Y18_N2
\ps2_ACCLL|Mux27~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux18~29_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux18~29_combout\,
	combout => \ps2_ACCLL|Mux27~30_combout\);

-- Location: LCCOMB_X23_Y18_N16
\ps2_ACCLL|Mux27~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux18~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux18~29_combout\,
	combout => \ps2_ACCLL|Mux27~16_combout\);

-- Location: LCCOMB_X23_Y18_N18
\ps2_ACCLL|Mux27~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~17_combout\ = (\ps2_ACCLL|Mux15~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux18~25_combout\) # (\ps2_ACCLL|Mux27~16_combout\)))) # (!\ps2_ACCLL|Mux15~4_combout\ & (((\ps2_ACCLL|Mux27~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux15~4_combout\,
	datac => \ps2_ACCLL|Mux18~25_combout\,
	datad => \ps2_ACCLL|Mux27~16_combout\,
	combout => \ps2_ACCLL|Mux27~17_combout\);

-- Location: LCCOMB_X23_Y18_N4
\ps2_ACCLL|Mux27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~30_combout\) # ((\ps2_ACCLL|Mux18~29_combout\ & !\ps2_ACCLL|Mux27~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux27~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux27~30_combout\,
	datac => \ps2_ACCLL|Mux18~29_combout\,
	datad => \ps2_ACCLL|Mux27~17_combout\,
	combout => \ps2_ACCLL|Mux27~18_combout\);

-- Location: LCCOMB_X22_Y18_N20
\ps2_ACCLL|Mux27~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux27~31_combout\);

-- Location: LCCOMB_X22_Y18_N24
\ps2_ACCLL|Mux27~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~19_combout\ = (\ps2_ACCLL|Mux22~2_combout\ & (((\ps2_ACCLL|Mux27~31_combout\)))) # (!\ps2_ACCLL|Mux22~2_combout\ & ((\ps2_ACCLL|Mux18~29_combout\) # ((\ps2_ACCLL|Mux18~25_combout\ & \ps2_ACCLL|Mux27~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~25_combout\,
	datab => \ps2_ACCLL|Mux27~31_combout\,
	datac => \ps2_ACCLL|Mux22~2_combout\,
	datad => \ps2_ACCLL|Mux18~29_combout\,
	combout => \ps2_ACCLL|Mux27~19_combout\);

-- Location: LCCOMB_X23_Y18_N12
\ps2_ACCLL|Mux27~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux27~19_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux18~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux18~30_combout\,
	datad => \ps2_ACCLL|Mux27~19_combout\,
	combout => \ps2_ACCLL|Mux27~20_combout\);

-- Location: LCCOMB_X23_Y18_N0
\ps2_ACCLL|Mux27~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux27~20_combout\ & (\ps2_ACCLL|Mux27~25_combout\)) # (!\ps2_ACCLL|Mux27~20_combout\ & ((\ps2_ACCLL|Mux27~18_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux27~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux27~25_combout\,
	datac => \ps2_ACCLL|Mux27~18_combout\,
	datad => \ps2_ACCLL|Mux27~20_combout\,
	combout => \ps2_ACCLL|Mux27~26_combout\);

-- Location: LCCOMB_X23_Y18_N10
\ps2_ACCLL|Mux27~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~27_combout\ = (\ps2_ACCLL|Mux27~15_combout\ & ((\ps2_ACCLL|Mux27~14_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux27~26_combout\)))) # (!\ps2_ACCLL|Mux27~15_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|Mux27~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux27~14_combout\,
	datad => \ps2_ACCLL|Mux27~26_combout\,
	combout => \ps2_ACCLL|Mux27~27_combout\);

-- Location: LCCOMB_X24_Y18_N0
\ps2_ACCLL|Mux27~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux18~30_combout\ & (!\ps2_ACCLL|Mux26~0_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux27~27_combout\) # ((\ps2_ACCLL|Mux18~30_combout\ & 
-- !\ps2_ACCLL|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux18~30_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux27~27_combout\,
	combout => \ps2_ACCLL|Mux27~28_combout\);

-- Location: LCCOMB_X24_Y18_N30
\ps2_ACCLL|ascii~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~55_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux42~9_combout\) # ((!\ps2_ACCLL|Mux42~8_combout\ & \ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~8_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux42~9_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|ascii~55_combout\);

-- Location: LCCOMB_X20_Y18_N14
\ps2_ACCLL|Mux42~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~11_combout\ = (\ps2_ACCLL|Mux17~8_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~8_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux42~11_combout\);

-- Location: LCCOMB_X20_Y18_N16
\ps2_ACCLL|Mux42~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~12_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~12_combout\);

-- Location: LCCOMB_X20_Y18_N6
\ps2_ACCLL|Mux42~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux42~11_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux42~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux42~11_combout\,
	datad => \ps2_ACCLL|Mux42~12_combout\,
	combout => \ps2_ACCLL|Mux42~13_combout\);

-- Location: LCCOMB_X24_Y18_N16
\ps2_ACCLL|Mux42~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux42~10_combout\);

-- Location: LCCOMB_X24_Y18_N4
\ps2_ACCLL|Mux42~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~26_combout\ = (\ps2_ACCLL|Mux42~13_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux42~13_combout\,
	combout => \ps2_ACCLL|Mux42~26_combout\);

-- Location: LCCOMB_X24_Y18_N6
\ps2_ACCLL|Mux42~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~15_combout\ = (\ps2_ACCLL|Mux42~13_combout\ & (\ps2_ACCLL|Mux42~10_combout\ & (\ps2_ACCLL|Mux42~26_combout\))) # (!\ps2_ACCLL|Mux42~13_combout\ & ((\ps2_ACCLL|Mux27~28_combout\) # ((\ps2_ACCLL|Mux42~10_combout\ & 
-- \ps2_ACCLL|Mux42~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~13_combout\,
	datab => \ps2_ACCLL|Mux42~10_combout\,
	datac => \ps2_ACCLL|Mux42~26_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~15_combout\);

-- Location: LCCOMB_X26_Y18_N4
\ps2_ACCLL|Mux42~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux42~16_combout\);

-- Location: LCCOMB_X24_Y18_N24
\ps2_ACCLL|Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux13~4_combout\);

-- Location: LCCOMB_X24_Y19_N28
\ps2_ACCLL|Mux42~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux42~21_combout\);

-- Location: LCCOMB_X24_Y18_N26
\ps2_ACCLL|Mux42~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~22_combout\ = (\ps2_ACCLL|Mux42~16_combout\ & ((\ps2_ACCLL|Mux13~4_combout\ & ((\ps2_ACCLL|Mux27~28_combout\))) # (!\ps2_ACCLL|Mux13~4_combout\ & (\ps2_ACCLL|Mux42~21_combout\)))) # (!\ps2_ACCLL|Mux42~16_combout\ & 
-- (((\ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~16_combout\,
	datab => \ps2_ACCLL|Mux13~4_combout\,
	datac => \ps2_ACCLL|Mux42~21_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~22_combout\);

-- Location: LCCOMB_X24_Y18_N22
\ps2_ACCLL|Mux42~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~17_combout\ = (\ps2_ACCLL|Mux42~16_combout\ & ((\ps2_ACCLL|Mux13~4_combout\ & ((\ps2_ACCLL|Mux27~28_combout\))) # (!\ps2_ACCLL|Mux13~4_combout\ & (\ps2_ACCLL|Mux24~16_combout\)))) # (!\ps2_ACCLL|Mux42~16_combout\ & 
-- (((\ps2_ACCLL|Mux27~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~16_combout\,
	datab => \ps2_ACCLL|Mux13~4_combout\,
	datac => \ps2_ACCLL|Mux24~16_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~17_combout\);

-- Location: LCCOMB_X24_Y18_N28
\ps2_ACCLL|Mux42~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux42~18_combout\);

-- Location: LCCOMB_X24_Y18_N10
\ps2_ACCLL|Mux42~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~19_combout\ = (\ps2_ACCLL|Mux42~13_combout\ & (\ps2_ACCLL|Mux42~18_combout\ & (\ps2_ACCLL|Mux42~26_combout\))) # (!\ps2_ACCLL|Mux42~13_combout\ & ((\ps2_ACCLL|Mux27~28_combout\) # ((\ps2_ACCLL|Mux42~18_combout\ & 
-- \ps2_ACCLL|Mux42~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~13_combout\,
	datab => \ps2_ACCLL|Mux42~18_combout\,
	datac => \ps2_ACCLL|Mux42~26_combout\,
	datad => \ps2_ACCLL|Mux27~28_combout\,
	combout => \ps2_ACCLL|Mux42~19_combout\);

-- Location: LCCOMB_X24_Y18_N12
\ps2_ACCLL|Mux42~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux42~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|process_0~1_combout\ & 
-- ((\ps2_ACCLL|Mux42~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux42~17_combout\,
	datad => \ps2_ACCLL|Mux42~19_combout\,
	combout => \ps2_ACCLL|Mux42~20_combout\);

-- Location: LCCOMB_X24_Y18_N20
\ps2_ACCLL|Mux42~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~23_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux42~20_combout\ & ((\ps2_ACCLL|Mux42~22_combout\))) # (!\ps2_ACCLL|Mux42~20_combout\ & (\ps2_ACCLL|Mux42~15_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux42~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~15_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux42~22_combout\,
	datad => \ps2_ACCLL|Mux42~20_combout\,
	combout => \ps2_ACCLL|Mux42~23_combout\);

-- Location: LCCOMB_X24_Y18_N2
\ps2_ACCLL|ascii~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~56_combout\ = (\ps2_ACCLL|Mux48~0_combout\ & ((\ps2_ACCLL|e0_code~q\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux42~23_combout\)))) # (!\ps2_ACCLL|Mux48~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux42~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux48~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|Mux42~23_combout\,
	combout => \ps2_ACCLL|ascii~56_combout\);

-- Location: LCCOMB_X24_Y18_N8
\ps2_ACCLL|ascii~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~57_combout\ = (\ps2_ACCLL|process_0~0_combout\ & (!\ps2_ACCLL|Mux10~1_combout\)) # (!\ps2_ACCLL|process_0~0_combout\ & (((!\ps2_ACCLL|ascii~55_combout\ & !\ps2_ACCLL|ascii~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|Mux10~1_combout\,
	datac => \ps2_ACCLL|ascii~55_combout\,
	datad => \ps2_ACCLL|ascii~56_combout\,
	combout => \ps2_ACCLL|ascii~57_combout\);

-- Location: FF_X24_Y18_N9
\ps2_ACCLL|ascii[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~57_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(2));

-- Location: LCCOMB_X26_Y17_N2
\ps2_ACCLL|ascii_code[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[2]~3_combout\ = !\ps2_ACCLL|ascii\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|ascii_code[2]~3_combout\);

-- Location: FF_X26_Y20_N17
\ps2_ACCLL|ascii_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[2]~3_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(2));

-- Location: LCCOMB_X23_Y22_N26
\ps2_ACCLL|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux8~2_combout\);

-- Location: LCCOMB_X23_Y22_N28
\ps2_ACCLL|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|Mux8~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux8~2_combout\,
	datad => \ps2_ACCLL|Mux13~0_combout\,
	combout => \ps2_ACCLL|Mux8~3_combout\);

-- Location: LCCOMB_X19_Y19_N16
\ps2_ACCLL|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~4_combout\ = (\ps2_ACCLL|Mux17~6_combout\) # ((\ps2_ACCLL|Mux8~3_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux17~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux8~3_combout\,
	combout => \ps2_ACCLL|Mux8~4_combout\);

-- Location: LCCOMB_X19_Y19_N30
\ps2_ACCLL|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux8~4_combout\) # ((!\ps2_ACCLL|ascii\(4) & !\ps2_ACCLL|Mux8~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ascii\(4) & 
-- !\ps2_ACCLL|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux8~4_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux8~3_combout\,
	combout => \ps2_ACCLL|Mux8~5_combout\);

-- Location: LCCOMB_X19_Y19_N22
\ps2_ACCLL|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux8~11_combout\);

-- Location: LCCOMB_X19_Y19_N12
\ps2_ACCLL|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux8~11_combout\ & ((!\ps2_ACCLL|ascii\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux13~1_combout\ & (\ps2_ACCLL|Mux8~11_combout\ $ 
-- (\ps2_ACCLL|ascii\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~11_combout\,
	datab => \ps2_ACCLL|Mux13~1_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux8~12_combout\);

-- Location: LCCOMB_X19_Y19_N26
\ps2_ACCLL|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ascii\(4) $ (!\ps2_ACCLL|Mux8~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|Mux16~2_combout\ & (!\ps2_ACCLL|ascii\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux16~2_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux8~12_combout\,
	combout => \ps2_ACCLL|Mux8~13_combout\);

-- Location: LCCOMB_X20_Y18_N8
\ps2_ACCLL|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux8~6_combout\);

-- Location: LCCOMB_X20_Y18_N18
\ps2_ACCLL|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux8~7_combout\);

-- Location: LCCOMB_X20_Y18_N22
\ps2_ACCLL|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~9_combout\ = (\ps2_ACCLL|Mux8~7_combout\ & (((!\ps2_ACCLL|shift_l~4_combout\) # (!\ps2_ACCLL|Mux8~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux8~6_combout\,
	datac => \ps2_ACCLL|shift_l~4_combout\,
	datad => \ps2_ACCLL|Mux8~7_combout\,
	combout => \ps2_ACCLL|Mux8~9_combout\);

-- Location: LCCOMB_X20_Y18_N24
\ps2_ACCLL|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~8_combout\ = (\ps2_ACCLL|Mux8~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|Mux8~6_combout\)))) # (!\ps2_ACCLL|Mux8~7_combout\ & (\ps2_ACCLL|shift_l~4_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ 
-- (\ps2_ACCLL|Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux8~6_combout\,
	datac => \ps2_ACCLL|shift_l~4_combout\,
	datad => \ps2_ACCLL|Mux8~7_combout\,
	combout => \ps2_ACCLL|Mux8~8_combout\);

-- Location: LCCOMB_X20_Y18_N10
\ps2_ACCLL|Mux8~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux8~17_combout\);

-- Location: LCCOMB_X20_Y18_N12
\ps2_ACCLL|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~10_combout\ = (\ps2_ACCLL|Mux8~9_combout\ & ((\ps2_ACCLL|Mux8~17_combout\ & (!\ps2_ACCLL|Mux8~8_combout\)) # (!\ps2_ACCLL|Mux8~17_combout\ & ((!\ps2_ACCLL|ascii\(4)))))) # (!\ps2_ACCLL|Mux8~9_combout\ & ((\ps2_ACCLL|Mux8~8_combout\) # 
-- ((!\ps2_ACCLL|ascii\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~9_combout\,
	datab => \ps2_ACCLL|Mux8~8_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux8~17_combout\,
	combout => \ps2_ACCLL|Mux8~10_combout\);

-- Location: LCCOMB_X19_Y19_N4
\ps2_ACCLL|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux8~10_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux8~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~13_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux8~10_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux8~14_combout\);

-- Location: LCCOMB_X19_Y19_N8
\ps2_ACCLL|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~3_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux16~3_combout\);

-- Location: LCCOMB_X19_Y19_N24
\ps2_ACCLL|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~4_combout\ = (\ps2_ACCLL|Mux16~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux16~2_combout\ & (!\ps2_ACCLL|ascii\(4) & ((!\ps2_ACCLL|Mux38~12_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux16~2_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux38~12_combout\,
	combout => \ps2_ACCLL|Mux16~4_combout\);

-- Location: LCCOMB_X19_Y19_N6
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

-- Location: LCCOMB_X19_Y19_N20
\ps2_ACCLL|Mux8~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~18_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux15~2_combout\ & !\ps2_ACCLL|Mux8~15_combout\))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux15~2_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux8~15_combout\,
	combout => \ps2_ACCLL|Mux8~18_combout\);

-- Location: LCCOMB_X19_Y19_N2
\ps2_ACCLL|Mux8~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux8~18_combout\) # ((\ps2_ACCLL|Mux8~15_combout\ & \ps2_ACCLL|Mux16~5_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux8~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~5_combout\,
	datad => \ps2_ACCLL|Mux8~18_combout\,
	combout => \ps2_ACCLL|Mux8~19_combout\);

-- Location: LCCOMB_X19_Y19_N0
\ps2_ACCLL|Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~16_combout\ = (\ps2_ACCLL|Mux8~14_combout\ & (((\ps2_ACCLL|Mux8~19_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|Mux8~14_combout\ & (\ps2_ACCLL|Mux8~5_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~5_combout\,
	datab => \ps2_ACCLL|Mux8~14_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux8~19_combout\,
	combout => \ps2_ACCLL|Mux8~16_combout\);

-- Location: LCCOMB_X24_Y22_N4
\ps2_ACCLL|Mux16~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~13_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux16~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux16~5_combout\,
	datad => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|Mux16~13_combout\);

-- Location: LCCOMB_X24_Y22_N30
\ps2_ACCLL|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~8_combout\ = (\ps2_ACCLL|Mux16~7_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ascii\(4)))))) # (!\ps2_ACCLL|Mux16~7_combout\ & 
-- (((!\ps2_ACCLL|ascii\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|Mux16~7_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux16~8_combout\);

-- Location: LCCOMB_X24_Y22_N16
\ps2_ACCLL|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~6_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (!\ps2_ACCLL|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux14~2_combout\,
	combout => \ps2_ACCLL|Mux16~6_combout\);

-- Location: LCCOMB_X23_Y22_N4
\ps2_ACCLL|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux16~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|Mux16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux16~6_combout\,
	combout => \ps2_ACCLL|Mux16~10_combout\);

-- Location: LCCOMB_X24_Y22_N24
\ps2_ACCLL|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~9_combout\ = ((\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|Mux38~13_combout\ & \ps2_ACCLL|caps_lock~2_combout\))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux38~13_combout\,
	datad => \ps2_ACCLL|caps_lock~2_combout\,
	combout => \ps2_ACCLL|Mux16~9_combout\);

-- Location: LCCOMB_X23_Y22_N10
\ps2_ACCLL|Mux16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~10_combout\ & (\ps2_ACCLL|Mux16~13_combout\)) # (!\ps2_ACCLL|Mux16~10_combout\ & ((\ps2_ACCLL|Mux16~9_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux16~13_combout\,
	datac => \ps2_ACCLL|Mux16~10_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux16~11_combout\);

-- Location: LCCOMB_X24_Y22_N10
\ps2_ACCLL|Mux25~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux16~13_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~13_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~22_combout\);

-- Location: LCCOMB_X24_Y22_N12
\ps2_ACCLL|Mux25~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux25~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux25~22_combout\ & (\ps2_ACCLL|Mux16~6_combout\)) # (!\ps2_ACCLL|Mux25~22_combout\ & 
-- ((\ps2_ACCLL|Mux16~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux16~6_combout\,
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux25~22_combout\,
	combout => \ps2_ACCLL|Mux25~23_combout\);

-- Location: LCCOMB_X23_Y22_N22
\ps2_ACCLL|Mux25~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~9_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~18_combout\);

-- Location: LCCOMB_X23_Y22_N16
\ps2_ACCLL|Mux25~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux16~13_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux16~13_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux25~19_combout\);

-- Location: LCCOMB_X23_Y22_N2
\ps2_ACCLL|Mux25~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux25~18_combout\ & \ps2_ACCLL|Mux25~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~18_combout\,
	datad => \ps2_ACCLL|Mux25~19_combout\,
	combout => \ps2_ACCLL|Mux25~20_combout\);

-- Location: LCCOMB_X23_Y22_N8
\ps2_ACCLL|Mux25~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~20_combout\) # ((\ps2_ACCLL|Mux16~6_combout\ & !\ps2_ACCLL|Mux25~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux25~18_combout\ & 
-- !\ps2_ACCLL|Mux25~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux16~6_combout\,
	datac => \ps2_ACCLL|Mux25~18_combout\,
	datad => \ps2_ACCLL|Mux25~20_combout\,
	combout => \ps2_ACCLL|Mux25~21_combout\);

-- Location: LCCOMB_X23_Y22_N6
\ps2_ACCLL|Mux25~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~42_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|Mux25~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux25~23_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux25~42_combout\);

-- Location: LCCOMB_X23_Y22_N18
\ps2_ACCLL|Mux25~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~42_combout\ & ((\ps2_ACCLL|Mux25~21_combout\))) # (!\ps2_ACCLL|Mux25~42_combout\ & (\ps2_ACCLL|Mux25~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux25~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux25~23_combout\,
	datac => \ps2_ACCLL|Mux25~21_combout\,
	datad => \ps2_ACCLL|Mux25~42_combout\,
	combout => \ps2_ACCLL|Mux25~25_combout\);

-- Location: LCCOMB_X23_Y22_N0
\ps2_ACCLL|Mux25~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~27_combout\ = (\ps2_ACCLL|Mux16~11_combout\ & (((\ps2_ACCLL|Mux25~26_combout\ & \ps2_ACCLL|Mux25~25_combout\)) # (!\ps2_ACCLL|Mux26~0_combout\))) # (!\ps2_ACCLL|Mux16~11_combout\ & (\ps2_ACCLL|Mux25~26_combout\ & 
-- ((\ps2_ACCLL|Mux25~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~11_combout\,
	datab => \ps2_ACCLL|Mux25~26_combout\,
	datac => \ps2_ACCLL|Mux26~0_combout\,
	datad => \ps2_ACCLL|Mux25~25_combout\,
	combout => \ps2_ACCLL|Mux25~27_combout\);

-- Location: LCCOMB_X24_Y22_N26
\ps2_ACCLL|Mux25~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux16~13_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~6_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux16~6_combout\,
	datac => \ps2_ACCLL|Mux16~13_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux25~28_combout\);

-- Location: LCCOMB_X24_Y22_N20
\ps2_ACCLL|Mux25~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~45_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ascii\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|Mux25~45_combout\);

-- Location: LCCOMB_X24_Y22_N28
\ps2_ACCLL|Mux25~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux25~28_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux25~28_combout\,
	datad => \ps2_ACCLL|Mux25~45_combout\,
	combout => \ps2_ACCLL|Mux25~29_combout\);

-- Location: LCCOMB_X24_Y22_N2
\ps2_ACCLL|Mux25~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~43_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux25~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux25~23_combout\,
	combout => \ps2_ACCLL|Mux25~43_combout\);

-- Location: LCCOMB_X24_Y22_N22
\ps2_ACCLL|Mux25~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~30_combout\ = (\ps2_ACCLL|Mux25~43_combout\ & ((\ps2_ACCLL|Mux25~23_combout\) # ((\ps2_ACCLL|Mux25~29_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux25~43_combout\ & (((\ps2_ACCLL|Mux25~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~23_combout\,
	datab => \ps2_ACCLL|Mux25~29_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux25~43_combout\,
	combout => \ps2_ACCLL|Mux25~30_combout\);

-- Location: LCCOMB_X24_Y22_N14
\ps2_ACCLL|Mux25~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~46_combout\ = (!\ps2_ACCLL|ascii\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~46_combout\);

-- Location: LCCOMB_X24_Y22_N6
\ps2_ACCLL|Mux25~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~37_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~13_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux16~13_combout\,
	datad => \ps2_ACCLL|Mux16~6_combout\,
	combout => \ps2_ACCLL|Mux25~37_combout\);

-- Location: LCCOMB_X24_Y22_N8
\ps2_ACCLL|Mux25~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~38_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux25~37_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux25~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~46_combout\,
	datad => \ps2_ACCLL|Mux25~37_combout\,
	combout => \ps2_ACCLL|Mux25~38_combout\);

-- Location: LCCOMB_X24_Y22_N18
\ps2_ACCLL|Mux25~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~39_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux25~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux25~38_combout\ & ((\ps2_ACCLL|Mux25~23_combout\))) # (!\ps2_ACCLL|Mux25~38_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux25~38_combout\,
	datad => \ps2_ACCLL|Mux25~23_combout\,
	combout => \ps2_ACCLL|Mux25~39_combout\);

-- Location: LCCOMB_X22_Y22_N24
\ps2_ACCLL|Mux25~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~40_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~39_combout\) # ((\ps2_ACCLL|Mux25~24_combout\ & \ps2_ACCLL|Mux25~38_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux25~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~38_combout\,
	datad => \ps2_ACCLL|Mux25~39_combout\,
	combout => \ps2_ACCLL|Mux25~40_combout\);

-- Location: LCCOMB_X21_Y22_N10
\ps2_ACCLL|Mux25~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux16~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- \ps2_ACCLL|Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux16~6_combout\,
	combout => \ps2_ACCLL|Mux25~32_combout\);

-- Location: LCCOMB_X21_Y22_N28
\ps2_ACCLL|Mux25~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|Mux25~32_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|Mux16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux25~32_combout\,
	combout => \ps2_ACCLL|Mux25~33_combout\);

-- Location: LCCOMB_X24_Y22_N0
\ps2_ACCLL|Mux25~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~34_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux16~13_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~13_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~34_combout\);

-- Location: LCCOMB_X22_Y22_N12
\ps2_ACCLL|Mux25~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~44_combout\ = (\ps2_ACCLL|Mux25~34_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|Mux25~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~34_combout\,
	datad => \ps2_ACCLL|Mux25~33_combout\,
	combout => \ps2_ACCLL|Mux25~44_combout\);

-- Location: LCCOMB_X22_Y22_N16
\ps2_ACCLL|Mux25~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux25~44_combout\) # ((\ps2_ACCLL|Mux25~33_combout\ & \ps2_ACCLL|Mux25~31_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux25~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux25~33_combout\,
	datac => \ps2_ACCLL|Mux25~31_combout\,
	datad => \ps2_ACCLL|Mux25~44_combout\,
	combout => \ps2_ACCLL|Mux25~35_combout\);

-- Location: LCCOMB_X22_Y22_N2
\ps2_ACCLL|Mux25~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~36_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux25~35_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux16~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux16~11_combout\,
	datad => \ps2_ACCLL|Mux25~35_combout\,
	combout => \ps2_ACCLL|Mux25~36_combout\);

-- Location: LCCOMB_X22_Y22_N26
\ps2_ACCLL|Mux25~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~41_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux25~36_combout\ & ((\ps2_ACCLL|Mux25~40_combout\))) # (!\ps2_ACCLL|Mux25~36_combout\ & (\ps2_ACCLL|Mux25~30_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux25~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~30_combout\,
	datab => \ps2_ACCLL|Mux25~40_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux25~36_combout\,
	combout => \ps2_ACCLL|Mux25~41_combout\);

-- Location: LCCOMB_X21_Y22_N16
\ps2_ACCLL|Mux40~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~40_combout\ = (\ps2_ACCLL|Mux25~27_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux25~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux25~27_combout\,
	datad => \ps2_ACCLL|Mux25~41_combout\,
	combout => \ps2_ACCLL|Mux40~40_combout\);

-- Location: LCCOMB_X21_Y22_N4
\ps2_ACCLL|Mux40~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~34_combout\ = (\ps2_ACCLL|Mux40~40_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux40~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux40~33_combout\,
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~34_combout\);

-- Location: LCCOMB_X21_Y22_N8
\ps2_ACCLL|Mux40~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~31_combout\ = (\ps2_ACCLL|Mux40~40_combout\) # ((\ps2_ACCLL|Mux40~36_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~31_combout\);

-- Location: LCCOMB_X21_Y22_N22
\ps2_ACCLL|Mux40~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~41_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|Mux42~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~6_combout\,
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux40~41_combout\);

-- Location: LCCOMB_X21_Y22_N12
\ps2_ACCLL|Mux40~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux40~41_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|process_0~1_combout\ & 
-- ((!\ps2_ACCLL|Mux39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux40~41_combout\,
	datad => \ps2_ACCLL|Mux39~4_combout\,
	combout => \ps2_ACCLL|Mux40~29_combout\);

-- Location: LCCOMB_X21_Y22_N30
\ps2_ACCLL|Mux40~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\) # ((!\ps2_ACCLL|Mux40~41_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux39~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux40~41_combout\,
	datad => \ps2_ACCLL|Mux39~4_combout\,
	combout => \ps2_ACCLL|Mux40~28_combout\);

-- Location: LCCOMB_X21_Y22_N26
\ps2_ACCLL|Mux40~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|Mux42~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~6_combout\,
	datad => \ps2_ACCLL|Mux24~15_combout\,
	combout => \ps2_ACCLL|Mux40~26_combout\);

-- Location: LCCOMB_X21_Y22_N24
\ps2_ACCLL|Mux40~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~27_combout\ = (\ps2_ACCLL|Mux40~26_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|Mux40~26_combout\ & (((\ps2_ACCLL|Mux40~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux40~26_combout\,
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~27_combout\);

-- Location: LCCOMB_X21_Y22_N18
\ps2_ACCLL|Mux40~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~30_combout\ = (\ps2_ACCLL|Mux40~29_combout\ & (((\ps2_ACCLL|Mux40~27_combout\) # (!\ps2_ACCLL|Mux40~28_combout\)))) # (!\ps2_ACCLL|Mux40~29_combout\ & (\ps2_ACCLL|Mux40~40_combout\ & (\ps2_ACCLL|Mux40~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~29_combout\,
	datab => \ps2_ACCLL|Mux40~40_combout\,
	datac => \ps2_ACCLL|Mux40~28_combout\,
	datad => \ps2_ACCLL|Mux40~27_combout\,
	combout => \ps2_ACCLL|Mux40~30_combout\);

-- Location: LCCOMB_X21_Y22_N14
\ps2_ACCLL|Mux40~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~30_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux40~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux40~31_combout\,
	datad => \ps2_ACCLL|Mux40~30_combout\,
	combout => \ps2_ACCLL|Mux40~32_combout\);

-- Location: LCCOMB_X22_Y22_N8
\ps2_ACCLL|Mux40~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~16_combout\ = (!\ps2_ACCLL|Mux40~36_combout\ & ((\ps2_ACCLL|Mux25~27_combout\) # ((\ps2_ACCLL|Mux38~12_combout\ & \ps2_ACCLL|Mux25~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~12_combout\,
	datab => \ps2_ACCLL|Mux25~27_combout\,
	datac => \ps2_ACCLL|Mux25~41_combout\,
	datad => \ps2_ACCLL|Mux40~36_combout\,
	combout => \ps2_ACCLL|Mux40~16_combout\);

-- Location: LCCOMB_X22_Y22_N30
\ps2_ACCLL|Mux40~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~37_combout\ = (\ps2_ACCLL|Mux40~16_combout\) # ((\ps2_ACCLL|Mux42~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux40~16_combout\,
	combout => \ps2_ACCLL|Mux40~37_combout\);

-- Location: LCCOMB_X23_Y22_N14
\ps2_ACCLL|Mux40~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~39_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux16~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux16~11_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux16~11_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux40~39_combout\);

-- Location: LCCOMB_X22_Y22_N0
\ps2_ACCLL|Mux40~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~22_combout\ = (!\ps2_ACCLL|Mux24~15_combout\ & ((\ps2_ACCLL|Mux25~27_combout\) # ((\ps2_ACCLL|Mux38~12_combout\ & \ps2_ACCLL|Mux25~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~12_combout\,
	datab => \ps2_ACCLL|Mux24~15_combout\,
	datac => \ps2_ACCLL|Mux25~27_combout\,
	datad => \ps2_ACCLL|Mux25~41_combout\,
	combout => \ps2_ACCLL|Mux40~22_combout\);

-- Location: LCCOMB_X22_Y22_N14
\ps2_ACCLL|Mux40~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux40~39_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- \ps2_ACCLL|Mux40~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux40~39_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux40~22_combout\,
	combout => \ps2_ACCLL|Mux40~23_combout\);

-- Location: LCCOMB_X23_Y22_N24
\ps2_ACCLL|Mux40~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~38_combout\ = (\ps2_ACCLL|Mux25~27_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux25~27_combout\,
	combout => \ps2_ACCLL|Mux40~38_combout\);

-- Location: LCCOMB_X22_Y22_N4
\ps2_ACCLL|Mux40~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux40~38_combout\) # ((\ps2_ACCLL|Mux17~7_combout\ & !\ps2_ACCLL|Mux40~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux40~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux40~23_combout\,
	datad => \ps2_ACCLL|Mux40~38_combout\,
	combout => \ps2_ACCLL|Mux40~24_combout\);

-- Location: LCCOMB_X22_Y22_N6
\ps2_ACCLL|Mux40~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux25~36_combout\ & (\ps2_ACCLL|Mux25~40_combout\)) # (!\ps2_ACCLL|Mux25~36_combout\ & ((\ps2_ACCLL|Mux25~30_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux25~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux25~40_combout\,
	datac => \ps2_ACCLL|Mux25~30_combout\,
	datad => \ps2_ACCLL|Mux25~36_combout\,
	combout => \ps2_ACCLL|Mux40~17_combout\);

-- Location: LCCOMB_X22_Y22_N20
\ps2_ACCLL|Mux40~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~18_combout\ = (\ps2_ACCLL|Mux25~27_combout\) # ((\ps2_ACCLL|Mux38~12_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|Mux40~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux25~27_combout\,
	datad => \ps2_ACCLL|Mux40~17_combout\,
	combout => \ps2_ACCLL|Mux40~18_combout\);

-- Location: LCCOMB_X22_Y22_N18
\ps2_ACCLL|Mux40~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|Mux40~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|Mux40~18_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|Mux40~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux40~18_combout\,
	combout => \ps2_ACCLL|Mux40~19_combout\);

-- Location: LCCOMB_X22_Y22_N28
\ps2_ACCLL|Mux40~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~20_combout\ = \ps2_ACCLL|Mux40~18_combout\ $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux40~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux40~18_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux40~19_combout\,
	combout => \ps2_ACCLL|Mux40~20_combout\);

-- Location: LCCOMB_X22_Y22_N10
\ps2_ACCLL|Mux40~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux40~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|process_0~1_combout\ & 
-- (\ps2_ACCLL|Mux40~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux40~16_combout\,
	datad => \ps2_ACCLL|Mux40~20_combout\,
	combout => \ps2_ACCLL|Mux40~21_combout\);

-- Location: LCCOMB_X22_Y22_N22
\ps2_ACCLL|Mux40~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~25_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux40~21_combout\ & ((\ps2_ACCLL|Mux40~24_combout\))) # (!\ps2_ACCLL|Mux40~21_combout\ & (\ps2_ACCLL|Mux40~37_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux40~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~37_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux40~24_combout\,
	datad => \ps2_ACCLL|Mux40~21_combout\,
	combout => \ps2_ACCLL|Mux40~25_combout\);

-- Location: LCCOMB_X21_Y22_N2
\ps2_ACCLL|Mux40~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux40~32_combout\ & (\ps2_ACCLL|Mux40~34_combout\)) # (!\ps2_ACCLL|Mux40~32_combout\ & ((\ps2_ACCLL|Mux40~25_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux40~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux40~34_combout\,
	datac => \ps2_ACCLL|Mux40~32_combout\,
	datad => \ps2_ACCLL|Mux40~25_combout\,
	combout => \ps2_ACCLL|Mux40~35_combout\);

-- Location: LCCOMB_X21_Y22_N20
\ps2_ACCLL|ascii~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~50_combout\ = (!\ps2_ACCLL|ascii~49_combout\ & ((\ps2_ACCLL|process_0~0_combout\ & (!\ps2_ACCLL|Mux8~16_combout\)) # (!\ps2_ACCLL|process_0~0_combout\ & ((!\ps2_ACCLL|Mux40~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ascii~49_combout\,
	datac => \ps2_ACCLL|Mux8~16_combout\,
	datad => \ps2_ACCLL|Mux40~35_combout\,
	combout => \ps2_ACCLL|ascii~50_combout\);

-- Location: FF_X21_Y22_N21
\ps2_ACCLL|ascii[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~50_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(4));

-- Location: LCCOMB_X26_Y20_N24
\ps2_ACCLL|ascii_code[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[4]~1_combout\ = !\ps2_ACCLL|ascii\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|ascii_code[4]~1_combout\);

-- Location: FF_X26_Y20_N25
\ps2_ACCLL|ascii_code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[4]~1_combout\,
	ena => \ps2_ACCLL|ascii_code[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(4));

-- Location: LCCOMB_X26_Y20_N16
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\ps2_ACCLL|ascii_code\(3) & (\ps2_ACCLL|ascii_code\(2) & \ps2_ACCLL|ascii_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii_code\(3),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \ps2_ACCLL|ascii_code\(4),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X27_Y20_N8
\process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\ps2_ACCLL|ascii_code\(6) & (\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(5) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(6),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(5),
	datad => \process_0~0_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X28_Y20_N8
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((posr(6) $ (\process_0~6_combout\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((posr(6) & (\process_0~6_combout\ & !\Add1~7\)) # (!posr(6) & ((\process_0~6_combout\) # (!\Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(6),
	datab => \process_0~6_combout\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X28_Y20_N10
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (posr(7) & ((\process_0~6_combout\ & (!\Add1~9\)) # (!\process_0~6_combout\ & ((\Add1~9\) # (GND))))) # (!posr(7) & ((\process_0~6_combout\ & (\Add1~9\ & VCC)) # (!\process_0~6_combout\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((posr(7) & ((!\Add1~9\) # (!\process_0~6_combout\))) # (!posr(7) & (!\process_0~6_combout\ & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(7),
	datab => \process_0~6_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X28_Y20_N28
\posr[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posr[7]~1_combout\ = !\Add1~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~10_combout\,
	combout => \posr[7]~1_combout\);

-- Location: FF_X28_Y20_N29
\posr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \posr[7]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(7));

-- Location: LCCOMB_X28_Y20_N12
\Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((posr(8) $ (\process_0~6_combout\ $ (!\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((posr(8) & ((\process_0~6_combout\) # (!\Add1~11\))) # (!posr(8) & (\process_0~6_combout\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(8),
	datab => \process_0~6_combout\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X28_Y20_N13
\posr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(8));

-- Location: LCCOMB_X27_Y20_N10
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (posr(5) & (posr(4) & ((!posr(3)) # (!posr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posr(5),
	datab => posr(4),
	datac => posr(2),
	datad => posr(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y20_N20
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (posr(7)) # ((posr(6)) # ((\LessThan1~0_combout\) # (!posr(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posr(7),
	datab => posr(6),
	datac => posr(8),
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y20_N18
\process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (!posr(9) & (\process_0~7_combout\ & \LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => posr(9),
	datac => \process_0~7_combout\,
	datad => \LessThan1~1_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X27_Y20_N16
\posr[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posr[2]~0_combout\ = (\process_0~6_combout\) # (\process_0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~6_combout\,
	datad => \process_0~8_combout\,
	combout => \posr[2]~0_combout\);

-- Location: FF_X28_Y20_N1
\posr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add1~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(2));

-- Location: LCCOMB_X28_Y20_N2
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (posr(3) & ((\process_0~6_combout\ & (\Add1~1\ & VCC)) # (!\process_0~6_combout\ & (!\Add1~1\)))) # (!posr(3) & ((\process_0~6_combout\ & (!\Add1~1\)) # (!\process_0~6_combout\ & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((posr(3) & (!\process_0~6_combout\ & !\Add1~1\)) # (!posr(3) & ((!\Add1~1\) # (!\process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(3),
	datab => \process_0~6_combout\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X28_Y20_N3
\posr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(3));

-- Location: LCCOMB_X28_Y20_N4
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((posr(4) $ (\process_0~6_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((posr(4) & (!\process_0~6_combout\ & !\Add1~3\)) # (!posr(4) & ((!\Add1~3\) # (!\process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(4),
	datab => \process_0~6_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X27_Y20_N4
\posr[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posr[4]~4_combout\ = !\Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~4_combout\,
	combout => \posr[4]~4_combout\);

-- Location: FF_X27_Y20_N5
\posr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \posr[4]~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(4));

-- Location: LCCOMB_X28_Y20_N6
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (posr(5) & ((\process_0~6_combout\ & (!\Add1~5\)) # (!\process_0~6_combout\ & ((\Add1~5\) # (GND))))) # (!posr(5) & ((\process_0~6_combout\ & (\Add1~5\ & VCC)) # (!\process_0~6_combout\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((posr(5) & ((!\Add1~5\) # (!\process_0~6_combout\))) # (!posr(5) & (!\process_0~6_combout\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(5),
	datab => \process_0~6_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X27_Y20_N2
\posr[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posr[5]~3_combout\ = !\Add1~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add1~6_combout\,
	combout => \posr[5]~3_combout\);

-- Location: FF_X27_Y20_N3
\posr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \posr[5]~3_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(5));

-- Location: LCCOMB_X27_Y20_N0
\posr[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posr[6]~2_combout\ = !\Add1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~8_combout\,
	combout => \posr[6]~2_combout\);

-- Location: FF_X27_Y20_N1
\posr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \posr[6]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(6));

-- Location: LCCOMB_X27_Y20_N30
\process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (posr(6) & ((posr(4)) # (!posr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posr(6),
	datac => posr(4),
	datad => posr(3),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X27_Y20_N12
\process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\ps2_ACCLL|ascii_code\(0) & (\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(5) & \ps2_ACCLL|ascii_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(5),
	datad => \ps2_ACCLL|ascii_code\(6),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X27_Y20_N28
\process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (posr(5) & (posr(7) & (!posr(8) & !posr(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posr(5),
	datab => posr(7),
	datac => posr(8),
	datad => posr(9),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X27_Y20_N6
\process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\process_0~3_combout\ & (\process_0~0_combout\ & ((!\process_0~5_combout\) # (!\process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~3_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~5_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X28_Y20_N14
\Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \process_0~6_combout\ $ (\Add1~13\ $ (posr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \process_0~6_combout\,
	datad => posr(9),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: FF_X28_Y20_N15
\posr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posr[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posr(9));

-- Location: LCCOMB_X29_Y21_N18
\dot_display1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add1~0_combout\ = (posr(4) & (posr(3) & VCC)) # (!posr(4) & (posr(3) $ (VCC)))
-- \dot_display1|Add1~1\ = CARRY((!posr(4) & posr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posr(4),
	datab => posr(3),
	datad => VCC,
	combout => \dot_display1|Add1~0_combout\,
	cout => \dot_display1|Add1~1\);

-- Location: LCCOMB_X29_Y21_N20
\dot_display1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add1~2_combout\ = (posr(5) & ((\dot_display1|Add1~1\) # (GND))) # (!posr(5) & (!\dot_display1|Add1~1\))
-- \dot_display1|Add1~3\ = CARRY((posr(5)) # (!\dot_display1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(5),
	datad => VCC,
	cin => \dot_display1|Add1~1\,
	combout => \dot_display1|Add1~2_combout\,
	cout => \dot_display1|Add1~3\);

-- Location: LCCOMB_X29_Y21_N22
\dot_display1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add1~4_combout\ = (posr(6) & (!\dot_display1|Add1~3\ & VCC)) # (!posr(6) & (\dot_display1|Add1~3\ $ (GND)))
-- \dot_display1|Add1~5\ = CARRY((!posr(6) & !\dot_display1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(6),
	datad => VCC,
	cin => \dot_display1|Add1~3\,
	combout => \dot_display1|Add1~4_combout\,
	cout => \dot_display1|Add1~5\);

-- Location: LCCOMB_X29_Y21_N24
\dot_display1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add1~6_combout\ = (posr(7) & ((\dot_display1|Add1~5\) # (GND))) # (!posr(7) & (!\dot_display1|Add1~5\))
-- \dot_display1|Add1~7\ = CARRY((posr(7)) # (!\dot_display1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posr(7),
	datad => VCC,
	cin => \dot_display1|Add1~5\,
	combout => \dot_display1|Add1~6_combout\,
	cout => \dot_display1|Add1~7\);

-- Location: LCCOMB_X29_Y21_N26
\dot_display1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add1~8_combout\ = (posr(8) & (\dot_display1|Add1~7\ $ (GND))) # (!posr(8) & (!\dot_display1|Add1~7\ & VCC))
-- \dot_display1|Add1~9\ = CARRY((posr(8) & !\dot_display1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(8),
	datad => VCC,
	cin => \dot_display1|Add1~7\,
	combout => \dot_display1|Add1~8_combout\,
	cout => \dot_display1|Add1~9\);

-- Location: LCCOMB_X29_Y21_N28
\dot_display1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add1~10_combout\ = (posr(9) & (!\dot_display1|Add1~9\)) # (!posr(9) & ((\dot_display1|Add1~9\) # (GND)))
-- \dot_display1|Add1~11\ = CARRY((!\dot_display1|Add1~9\) # (!posr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(9),
	datad => VCC,
	cin => \dot_display1|Add1~9\,
	combout => \dot_display1|Add1~10_combout\,
	cout => \dot_display1|Add1~11\);

-- Location: LCCOMB_X29_Y21_N30
\dot_display1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add1~12_combout\ = !\dot_display1|Add1~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dot_display1|Add1~11\,
	combout => \dot_display1|Add1~12_combout\);

-- Location: LCCOMB_X27_Y24_N8
\Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = posc(2) $ (VCC)
-- \Add3~1\ = CARRY(posc(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posc(2),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X27_Y20_N24
\process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (\ps2_ACCLL|ascii_code\(5) & (!\ps2_ACCLL|ascii_code\(6) & \ps2_ACCLL|ascii_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(5),
	datac => \ps2_ACCLL|ascii_code\(6),
	datad => \ps2_ACCLL|ascii_code\(1),
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X27_Y24_N14
\Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (posc(5) & ((\process_0~2_combout\ & (\Add3~5\ & VCC)) # (!\process_0~2_combout\ & (!\Add3~5\)))) # (!posc(5) & ((\process_0~2_combout\ & (!\Add3~5\)) # (!\process_0~2_combout\ & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((posc(5) & (!\process_0~2_combout\ & !\Add3~5\)) # (!posc(5) & ((!\Add3~5\) # (!\process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(5),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X27_Y24_N16
\Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = ((\process_0~2_combout\ $ (posc(6) $ (\Add3~7\)))) # (GND)
-- \Add3~9\ = CARRY((\process_0~2_combout\ & ((!\Add3~7\) # (!posc(6)))) # (!\process_0~2_combout\ & (!posc(6) & !\Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => posc(6),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X27_Y24_N2
\posc[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posc[6]~2_combout\ = !\Add3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~8_combout\,
	combout => \posc[6]~2_combout\);

-- Location: FF_X27_Y24_N3
\posc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \posc[6]~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(6));

-- Location: LCCOMB_X27_Y24_N18
\Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\process_0~2_combout\ & ((posc(7) & (\Add3~9\ & VCC)) # (!posc(7) & (!\Add3~9\)))) # (!\process_0~2_combout\ & ((posc(7) & (!\Add3~9\)) # (!posc(7) & ((\Add3~9\) # (GND)))))
-- \Add3~11\ = CARRY((\process_0~2_combout\ & (!posc(7) & !\Add3~9\)) # (!\process_0~2_combout\ & ((!\Add3~9\) # (!posc(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => posc(7),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: FF_X27_Y24_N19
\posc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add3~10_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(7));

-- Location: LCCOMB_X27_Y24_N20
\Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = ((posc(8) $ (\process_0~2_combout\ $ (\Add3~11\)))) # (GND)
-- \Add3~13\ = CARRY((posc(8) & (\process_0~2_combout\ & !\Add3~11\)) # (!posc(8) & ((\process_0~2_combout\) # (!\Add3~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(8),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X27_Y24_N0
\posc[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posc[8]~1_combout\ = !\Add3~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add3~12_combout\,
	combout => \posc[8]~1_combout\);

-- Location: FF_X27_Y24_N1
\posc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \posc[8]~1_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(8));

-- Location: LCCOMB_X27_Y24_N6
\process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = ((!posc(4) & ((!posc(3)) # (!posc(2))))) # (!posc(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posc(4),
	datab => posc(5),
	datac => posc(2),
	datad => posc(3),
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X28_Y24_N4
\process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (posc(8) & (!posc(7) & ((posc(6)) # (\process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posc(6),
	datab => posc(8),
	datac => \process_0~10_combout\,
	datad => posc(7),
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X27_Y24_N4
\process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~12_combout\ = (\process_0~0_combout\ & (\process_0~9_combout\ & ((\process_0~11_combout\) # (!posc(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posc(9),
	datab => \process_0~0_combout\,
	datac => \process_0~9_combout\,
	datad => \process_0~11_combout\,
	combout => \process_0~12_combout\);

-- Location: LCCOMB_X27_Y24_N30
\posc[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \posc[3]~0_combout\ = (!\process_0~6_combout\ & (!\process_0~8_combout\ & ((\process_0~2_combout\) # (\process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \process_0~6_combout\,
	datac => \process_0~12_combout\,
	datad => \process_0~8_combout\,
	combout => \posc[3]~0_combout\);

-- Location: FF_X27_Y24_N9
\posc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add3~0_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(2));

-- Location: LCCOMB_X27_Y24_N10
\Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (posc(3) & ((\process_0~2_combout\ & (\Add3~1\ & VCC)) # (!\process_0~2_combout\ & (!\Add3~1\)))) # (!posc(3) & ((\process_0~2_combout\ & (!\Add3~1\)) # (!\process_0~2_combout\ & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((posc(3) & (!\process_0~2_combout\ & !\Add3~1\)) # (!posc(3) & ((!\Add3~1\) # (!\process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(3),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: FF_X27_Y24_N11
\posc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add3~2_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(3));

-- Location: LCCOMB_X27_Y24_N12
\Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((posc(4) $ (\process_0~2_combout\ $ (\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((posc(4) & ((!\Add3~3\) # (!\process_0~2_combout\))) # (!posc(4) & (!\process_0~2_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(4),
	datab => \process_0~2_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X27_Y24_N13
\posc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add3~4_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(4));

-- Location: FF_X27_Y24_N15
\posc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add3~6_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(5));

-- Location: LCCOMB_X27_Y24_N26
\LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (posc(5)) # ((posc(9)) # (!posc(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => posc(5),
	datac => posc(9),
	datad => posc(6),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X27_Y24_N24
\LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (posc(7)) # (((posc(4) & posc(3))) # (!posc(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posc(4),
	datab => posc(7),
	datac => posc(8),
	datad => posc(3),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X27_Y20_N22
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (!\ps2_ACCLL|ascii_code\(0) & (!\ps2_ACCLL|ascii_code\(6) & (\ps2_ACCLL|ascii_code\(5) & !\ps2_ACCLL|ascii_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(6),
	datac => \ps2_ACCLL|ascii_code\(5),
	datad => \ps2_ACCLL|ascii_code\(1),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X27_Y24_N28
\process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\process_0~1_combout\ & (\process_0~0_combout\ & ((\LessThan2~1_combout\) # (\LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~1_combout\,
	datab => \LessThan2~0_combout\,
	datac => \process_0~1_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X27_Y24_N22
\Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = posc(9) $ (\Add3~13\ $ (\process_0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(9),
	datad => \process_0~2_combout\,
	cin => \Add3~13\,
	combout => \Add3~14_combout\);

-- Location: FF_X27_Y24_N23
\posc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \Add3~14_combout\,
	clrn => \KEY[0]~inputclkctrl_outclk\,
	ena => \posc[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => posc(9));

-- Location: LCCOMB_X28_Y23_N14
\dot_display1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~0_combout\ = (posc(3) & (posc(2) $ (VCC))) # (!posc(3) & (posc(2) & VCC))
-- \dot_display1|Add2~1\ = CARRY((posc(3) & posc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posc(3),
	datab => posc(2),
	datad => VCC,
	combout => \dot_display1|Add2~0_combout\,
	cout => \dot_display1|Add2~1\);

-- Location: LCCOMB_X28_Y23_N16
\dot_display1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~2_combout\ = (posc(4) & (\dot_display1|Add2~1\ & VCC)) # (!posc(4) & (!\dot_display1|Add2~1\))
-- \dot_display1|Add2~3\ = CARRY((!posc(4) & !\dot_display1|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(4),
	datad => VCC,
	cin => \dot_display1|Add2~1\,
	combout => \dot_display1|Add2~2_combout\,
	cout => \dot_display1|Add2~3\);

-- Location: LCCOMB_X28_Y23_N18
\dot_display1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~4_combout\ = (posc(5) & ((GND) # (!\dot_display1|Add2~3\))) # (!posc(5) & (\dot_display1|Add2~3\ $ (GND)))
-- \dot_display1|Add2~5\ = CARRY((posc(5)) # (!\dot_display1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(5),
	datad => VCC,
	cin => \dot_display1|Add2~3\,
	combout => \dot_display1|Add2~4_combout\,
	cout => \dot_display1|Add2~5\);

-- Location: LCCOMB_X28_Y23_N20
\dot_display1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~6_combout\ = (posc(6) & (!\dot_display1|Add2~5\)) # (!posc(6) & (\dot_display1|Add2~5\ & VCC))
-- \dot_display1|Add2~7\ = CARRY((posc(6) & !\dot_display1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(6),
	datad => VCC,
	cin => \dot_display1|Add2~5\,
	combout => \dot_display1|Add2~6_combout\,
	cout => \dot_display1|Add2~7\);

-- Location: LCCOMB_X28_Y23_N22
\dot_display1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~8_combout\ = (posc(7) & ((GND) # (!\dot_display1|Add2~7\))) # (!posc(7) & (\dot_display1|Add2~7\ $ (GND)))
-- \dot_display1|Add2~9\ = CARRY((posc(7)) # (!\dot_display1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(7),
	datad => VCC,
	cin => \dot_display1|Add2~7\,
	combout => \dot_display1|Add2~8_combout\,
	cout => \dot_display1|Add2~9\);

-- Location: LCCOMB_X28_Y23_N24
\dot_display1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~10_combout\ = (posc(8) & (!\dot_display1|Add2~9\)) # (!posc(8) & (\dot_display1|Add2~9\ & VCC))
-- \dot_display1|Add2~11\ = CARRY((posc(8) & !\dot_display1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(8),
	datad => VCC,
	cin => \dot_display1|Add2~9\,
	combout => \dot_display1|Add2~10_combout\,
	cout => \dot_display1|Add2~11\);

-- Location: LCCOMB_X28_Y23_N26
\dot_display1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~12_combout\ = (posc(9) & ((GND) # (!\dot_display1|Add2~11\))) # (!posc(9) & (\dot_display1|Add2~11\ $ (GND)))
-- \dot_display1|Add2~13\ = CARRY((posc(9)) # (!\dot_display1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posc(9),
	datad => VCC,
	cin => \dot_display1|Add2~11\,
	combout => \dot_display1|Add2~12_combout\,
	cout => \dot_display1|Add2~13\);

-- Location: LCCOMB_X28_Y23_N28
\dot_display1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add2~14_combout\ = \dot_display1|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dot_display1|Add2~13\,
	combout => \dot_display1|Add2~14_combout\);

-- Location: LCCOMB_X29_Y23_N10
\dot_display1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~1_cout\ = CARRY(\VGA_sync1|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(1),
	datad => VCC,
	cout => \dot_display1|LessThan2~1_cout\);

-- Location: LCCOMB_X29_Y23_N12
\dot_display1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~3_cout\ = CARRY((posc(2) & (!\VGA_sync1|h_count\(2) & !\dot_display1|LessThan2~1_cout\)) # (!posc(2) & ((!\dot_display1|LessThan2~1_cout\) # (!\VGA_sync1|h_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(2),
	datab => \VGA_sync1|h_count\(2),
	datad => VCC,
	cin => \dot_display1|LessThan2~1_cout\,
	cout => \dot_display1|LessThan2~3_cout\);

-- Location: LCCOMB_X29_Y23_N14
\dot_display1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~5_cout\ = CARRY((\dot_display1|Add2~0_combout\ & (\VGA_sync1|h_count\(3) & !\dot_display1|LessThan2~3_cout\)) # (!\dot_display1|Add2~0_combout\ & ((\VGA_sync1|h_count\(3)) # (!\dot_display1|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add2~0_combout\,
	datab => \VGA_sync1|h_count\(3),
	datad => VCC,
	cin => \dot_display1|LessThan2~3_cout\,
	cout => \dot_display1|LessThan2~5_cout\);

-- Location: LCCOMB_X29_Y23_N16
\dot_display1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~7_cout\ = CARRY((\dot_display1|Add2~2_combout\ & ((!\dot_display1|LessThan2~5_cout\) # (!\VGA_sync1|h_count\(4)))) # (!\dot_display1|Add2~2_combout\ & (!\VGA_sync1|h_count\(4) & !\dot_display1|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add2~2_combout\,
	datab => \VGA_sync1|h_count\(4),
	datad => VCC,
	cin => \dot_display1|LessThan2~5_cout\,
	cout => \dot_display1|LessThan2~7_cout\);

-- Location: LCCOMB_X29_Y23_N18
\dot_display1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~9_cout\ = CARRY((\VGA_sync1|h_count\(5) & ((!\dot_display1|LessThan2~7_cout\) # (!\dot_display1|Add2~4_combout\))) # (!\VGA_sync1|h_count\(5) & (!\dot_display1|Add2~4_combout\ & !\dot_display1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(5),
	datab => \dot_display1|Add2~4_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan2~7_cout\,
	cout => \dot_display1|LessThan2~9_cout\);

-- Location: LCCOMB_X29_Y23_N20
\dot_display1|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~11_cout\ = CARRY((\dot_display1|Add2~6_combout\ & ((!\dot_display1|LessThan2~9_cout\) # (!\VGA_sync1|h_count\(6)))) # (!\dot_display1|Add2~6_combout\ & (!\VGA_sync1|h_count\(6) & !\dot_display1|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add2~6_combout\,
	datab => \VGA_sync1|h_count\(6),
	datad => VCC,
	cin => \dot_display1|LessThan2~9_cout\,
	cout => \dot_display1|LessThan2~11_cout\);

-- Location: LCCOMB_X29_Y23_N22
\dot_display1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~13_cout\ = CARRY((\VGA_sync1|h_count\(7) & ((!\dot_display1|LessThan2~11_cout\) # (!\dot_display1|Add2~8_combout\))) # (!\VGA_sync1|h_count\(7) & (!\dot_display1|Add2~8_combout\ & !\dot_display1|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(7),
	datab => \dot_display1|Add2~8_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan2~11_cout\,
	cout => \dot_display1|LessThan2~13_cout\);

-- Location: LCCOMB_X29_Y23_N24
\dot_display1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~15_cout\ = CARRY((\VGA_sync1|h_count\(8) & (\dot_display1|Add2~10_combout\ & !\dot_display1|LessThan2~13_cout\)) # (!\VGA_sync1|h_count\(8) & ((\dot_display1|Add2~10_combout\) # (!\dot_display1|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(8),
	datab => \dot_display1|Add2~10_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan2~13_cout\,
	cout => \dot_display1|LessThan2~15_cout\);

-- Location: LCCOMB_X29_Y23_N26
\dot_display1|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan2~16_combout\ = (\dot_display1|Add2~12_combout\ & ((\dot_display1|LessThan2~15_cout\) # (!\VGA_sync1|h_count\(9)))) # (!\dot_display1|Add2~12_combout\ & (\dot_display1|LessThan2~15_cout\ & !\VGA_sync1|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add2~12_combout\,
	datad => \VGA_sync1|h_count\(9),
	cin => \dot_display1|LessThan2~15_cout\,
	combout => \dot_display1|LessThan2~16_combout\);

-- Location: LCCOMB_X29_Y21_N0
\dot_display1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~1_cout\ = CARRY(\VGA_sync1|v_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(1),
	datad => VCC,
	cout => \dot_display1|LessThan1~1_cout\);

-- Location: LCCOMB_X29_Y21_N2
\dot_display1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~3_cout\ = CARRY((posr(2) & ((!\dot_display1|LessThan1~1_cout\) # (!\VGA_sync1|v_count\(2)))) # (!posr(2) & (!\VGA_sync1|v_count\(2) & !\dot_display1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(2),
	datab => \VGA_sync1|v_count\(2),
	datad => VCC,
	cin => \dot_display1|LessThan1~1_cout\,
	cout => \dot_display1|LessThan1~3_cout\);

-- Location: LCCOMB_X29_Y21_N4
\dot_display1|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~5_cout\ = CARRY((\VGA_sync1|v_count\(3) & ((posr(3)) # (!\dot_display1|LessThan1~3_cout\))) # (!\VGA_sync1|v_count\(3) & (posr(3) & !\dot_display1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(3),
	datab => posr(3),
	datad => VCC,
	cin => \dot_display1|LessThan1~3_cout\,
	cout => \dot_display1|LessThan1~5_cout\);

-- Location: LCCOMB_X29_Y21_N6
\dot_display1|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~7_cout\ = CARRY((\VGA_sync1|v_count\(4) & (\dot_display1|Add1~0_combout\ & !\dot_display1|LessThan1~5_cout\)) # (!\VGA_sync1|v_count\(4) & ((\dot_display1|Add1~0_combout\) # (!\dot_display1|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(4),
	datab => \dot_display1|Add1~0_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan1~5_cout\,
	cout => \dot_display1|LessThan1~7_cout\);

-- Location: LCCOMB_X29_Y21_N8
\dot_display1|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~9_cout\ = CARRY((\dot_display1|Add1~2_combout\ & (\VGA_sync1|v_count\(5) & !\dot_display1|LessThan1~7_cout\)) # (!\dot_display1|Add1~2_combout\ & ((\VGA_sync1|v_count\(5)) # (!\dot_display1|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add1~2_combout\,
	datab => \VGA_sync1|v_count\(5),
	datad => VCC,
	cin => \dot_display1|LessThan1~7_cout\,
	cout => \dot_display1|LessThan1~9_cout\);

-- Location: LCCOMB_X29_Y21_N10
\dot_display1|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~11_cout\ = CARRY((\dot_display1|Add1~4_combout\ & ((!\dot_display1|LessThan1~9_cout\) # (!\VGA_sync1|v_count\(6)))) # (!\dot_display1|Add1~4_combout\ & (!\VGA_sync1|v_count\(6) & !\dot_display1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add1~4_combout\,
	datab => \VGA_sync1|v_count\(6),
	datad => VCC,
	cin => \dot_display1|LessThan1~9_cout\,
	cout => \dot_display1|LessThan1~11_cout\);

-- Location: LCCOMB_X29_Y21_N12
\dot_display1|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~13_cout\ = CARRY((\VGA_sync1|v_count\(7) & ((!\dot_display1|LessThan1~11_cout\) # (!\dot_display1|Add1~6_combout\))) # (!\VGA_sync1|v_count\(7) & (!\dot_display1|Add1~6_combout\ & !\dot_display1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \dot_display1|Add1~6_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan1~11_cout\,
	cout => \dot_display1|LessThan1~13_cout\);

-- Location: LCCOMB_X29_Y21_N14
\dot_display1|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~15_cout\ = CARRY((\dot_display1|Add1~8_combout\ & ((!\dot_display1|LessThan1~13_cout\) # (!\VGA_sync1|v_count\(8)))) # (!\dot_display1|Add1~8_combout\ & (!\VGA_sync1|v_count\(8) & !\dot_display1|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add1~8_combout\,
	datab => \VGA_sync1|v_count\(8),
	datad => VCC,
	cin => \dot_display1|LessThan1~13_cout\,
	cout => \dot_display1|LessThan1~15_cout\);

-- Location: LCCOMB_X29_Y21_N16
\dot_display1|LessThan1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan1~16_combout\ = (\VGA_sync1|v_count\(9) & (\dot_display1|LessThan1~15_cout\ & \dot_display1|Add1~10_combout\)) # (!\VGA_sync1|v_count\(9) & ((\dot_display1|LessThan1~15_cout\) # (\dot_display1|Add1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(9),
	datad => \dot_display1|Add1~10_combout\,
	cin => \dot_display1|LessThan1~15_cout\,
	combout => \dot_display1|LessThan1~16_combout\);

-- Location: LCCOMB_X29_Y23_N0
\dot_display1|Rout[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Rout[0]~1_combout\ = (\dot_display1|Add1~12_combout\ & (((!\dot_display1|LessThan2~16_combout\)) # (!\dot_display1|Add2~14_combout\))) # (!\dot_display1|Add1~12_combout\ & (\dot_display1|LessThan1~16_combout\ & 
-- ((!\dot_display1|LessThan2~16_combout\) # (!\dot_display1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add1~12_combout\,
	datab => \dot_display1|Add2~14_combout\,
	datac => \dot_display1|LessThan2~16_combout\,
	datad => \dot_display1|LessThan1~16_combout\,
	combout => \dot_display1|Rout[0]~1_combout\);

-- Location: LCCOMB_X29_Y23_N4
\VGA_sync1|process_4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~4_combout\ = (\VGA_sync1|h_count\(8) & ((\VGA_sync1|h_count\(5)) # ((\VGA_sync1|h_count\(6)) # (\VGA_sync1|h_count\(7))))) # (!\VGA_sync1|h_count\(8) & (((!\VGA_sync1|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(5),
	datab => \VGA_sync1|h_count\(6),
	datac => \VGA_sync1|h_count\(8),
	datad => \VGA_sync1|h_count\(7),
	combout => \VGA_sync1|process_4~4_combout\);

-- Location: LCCOMB_X29_Y23_N30
\VGA_sync1|process_4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_4~5_combout\ = (\VGA_sync1|process_4~4_combout\) # (!\VGA_sync1|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|process_4~4_combout\,
	datac => \VGA_sync1|h_count\(9),
	combout => \VGA_sync1|process_4~5_combout\);

-- Location: LCCOMB_X27_Y23_N0
\dot_display1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add3~0_combout\ = (posc(4) & (posc(3) $ (VCC))) # (!posc(4) & (posc(3) & VCC))
-- \dot_display1|Add3~1\ = CARRY((posc(4) & posc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posc(4),
	datab => posc(3),
	datad => VCC,
	combout => \dot_display1|Add3~0_combout\,
	cout => \dot_display1|Add3~1\);

-- Location: LCCOMB_X27_Y23_N2
\dot_display1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add3~2_combout\ = (posc(5) & (!\dot_display1|Add3~1\)) # (!posc(5) & ((\dot_display1|Add3~1\) # (GND)))
-- \dot_display1|Add3~3\ = CARRY((!\dot_display1|Add3~1\) # (!posc(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(5),
	datad => VCC,
	cin => \dot_display1|Add3~1\,
	combout => \dot_display1|Add3~2_combout\,
	cout => \dot_display1|Add3~3\);

-- Location: LCCOMB_X27_Y23_N4
\dot_display1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add3~4_combout\ = (posc(6) & (!\dot_display1|Add3~3\ & VCC)) # (!posc(6) & (\dot_display1|Add3~3\ $ (GND)))
-- \dot_display1|Add3~5\ = CARRY((!posc(6) & !\dot_display1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posc(6),
	datad => VCC,
	cin => \dot_display1|Add3~3\,
	combout => \dot_display1|Add3~4_combout\,
	cout => \dot_display1|Add3~5\);

-- Location: LCCOMB_X27_Y23_N6
\dot_display1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add3~6_combout\ = (posc(7) & (!\dot_display1|Add3~5\)) # (!posc(7) & ((\dot_display1|Add3~5\) # (GND)))
-- \dot_display1|Add3~7\ = CARRY((!\dot_display1|Add3~5\) # (!posc(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(7),
	datad => VCC,
	cin => \dot_display1|Add3~5\,
	combout => \dot_display1|Add3~6_combout\,
	cout => \dot_display1|Add3~7\);

-- Location: LCCOMB_X27_Y23_N8
\dot_display1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add3~8_combout\ = (posc(8) & (!\dot_display1|Add3~7\ & VCC)) # (!posc(8) & (\dot_display1|Add3~7\ $ (GND)))
-- \dot_display1|Add3~9\ = CARRY((!posc(8) & !\dot_display1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posc(8),
	datad => VCC,
	cin => \dot_display1|Add3~7\,
	combout => \dot_display1|Add3~8_combout\,
	cout => \dot_display1|Add3~9\);

-- Location: LCCOMB_X27_Y23_N10
\dot_display1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add3~10_combout\ = (posc(9) & (!\dot_display1|Add3~9\)) # (!posc(9) & ((\dot_display1|Add3~9\) # (GND)))
-- \dot_display1|Add3~11\ = CARRY((!\dot_display1|Add3~9\) # (!posc(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(9),
	datad => VCC,
	cin => \dot_display1|Add3~9\,
	combout => \dot_display1|Add3~10_combout\,
	cout => \dot_display1|Add3~11\);

-- Location: LCCOMB_X27_Y23_N14
\dot_display1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~1_cout\ = CARRY(\VGA_sync1|h_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(1),
	datad => VCC,
	cout => \dot_display1|LessThan3~1_cout\);

-- Location: LCCOMB_X27_Y23_N16
\dot_display1|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~3_cout\ = CARRY((posc(2) & ((!\dot_display1|LessThan3~1_cout\) # (!\VGA_sync1|h_count\(2)))) # (!posc(2) & (!\VGA_sync1|h_count\(2) & !\dot_display1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posc(2),
	datab => \VGA_sync1|h_count\(2),
	datad => VCC,
	cin => \dot_display1|LessThan3~1_cout\,
	cout => \dot_display1|LessThan3~3_cout\);

-- Location: LCCOMB_X27_Y23_N18
\dot_display1|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~5_cout\ = CARRY((\VGA_sync1|h_count\(3) & ((posc(3)) # (!\dot_display1|LessThan3~3_cout\))) # (!\VGA_sync1|h_count\(3) & (posc(3) & !\dot_display1|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(3),
	datab => posc(3),
	datad => VCC,
	cin => \dot_display1|LessThan3~3_cout\,
	cout => \dot_display1|LessThan3~5_cout\);

-- Location: LCCOMB_X27_Y23_N20
\dot_display1|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~7_cout\ = CARRY((\VGA_sync1|h_count\(4) & (\dot_display1|Add3~0_combout\ & !\dot_display1|LessThan3~5_cout\)) # (!\VGA_sync1|h_count\(4) & ((\dot_display1|Add3~0_combout\) # (!\dot_display1|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(4),
	datab => \dot_display1|Add3~0_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan3~5_cout\,
	cout => \dot_display1|LessThan3~7_cout\);

-- Location: LCCOMB_X27_Y23_N22
\dot_display1|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~9_cout\ = CARRY((\VGA_sync1|h_count\(5) & ((!\dot_display1|LessThan3~7_cout\) # (!\dot_display1|Add3~2_combout\))) # (!\VGA_sync1|h_count\(5) & (!\dot_display1|Add3~2_combout\ & !\dot_display1|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(5),
	datab => \dot_display1|Add3~2_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan3~7_cout\,
	cout => \dot_display1|LessThan3~9_cout\);

-- Location: LCCOMB_X27_Y23_N24
\dot_display1|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~11_cout\ = CARRY((\dot_display1|Add3~4_combout\ & ((!\dot_display1|LessThan3~9_cout\) # (!\VGA_sync1|h_count\(6)))) # (!\dot_display1|Add3~4_combout\ & (!\VGA_sync1|h_count\(6) & !\dot_display1|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add3~4_combout\,
	datab => \VGA_sync1|h_count\(6),
	datad => VCC,
	cin => \dot_display1|LessThan3~9_cout\,
	cout => \dot_display1|LessThan3~11_cout\);

-- Location: LCCOMB_X27_Y23_N26
\dot_display1|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~13_cout\ = CARRY((\dot_display1|Add3~6_combout\ & (\VGA_sync1|h_count\(7) & !\dot_display1|LessThan3~11_cout\)) # (!\dot_display1|Add3~6_combout\ & ((\VGA_sync1|h_count\(7)) # (!\dot_display1|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add3~6_combout\,
	datab => \VGA_sync1|h_count\(7),
	datad => VCC,
	cin => \dot_display1|LessThan3~11_cout\,
	cout => \dot_display1|LessThan3~13_cout\);

-- Location: LCCOMB_X27_Y23_N28
\dot_display1|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~15_cout\ = CARRY((\VGA_sync1|h_count\(8) & (\dot_display1|Add3~8_combout\ & !\dot_display1|LessThan3~13_cout\)) # (!\VGA_sync1|h_count\(8) & ((\dot_display1|Add3~8_combout\) # (!\dot_display1|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(8),
	datab => \dot_display1|Add3~8_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan3~13_cout\,
	cout => \dot_display1|LessThan3~15_cout\);

-- Location: LCCOMB_X27_Y23_N30
\dot_display1|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan3~16_combout\ = (\VGA_sync1|h_count\(9) & (\dot_display1|LessThan3~15_cout\ & \dot_display1|Add3~10_combout\)) # (!\VGA_sync1|h_count\(9) & ((\dot_display1|LessThan3~15_cout\) # (\dot_display1|Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(9),
	datad => \dot_display1|Add3~10_combout\,
	cin => \dot_display1|LessThan3~15_cout\,
	combout => \dot_display1|LessThan3~16_combout\);

-- Location: LCCOMB_X27_Y21_N0
\dot_display1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~0_combout\ = (posr(3) & (posr(2) $ (VCC))) # (!posr(3) & (posr(2) & VCC))
-- \dot_display1|Add0~1\ = CARRY((posr(3) & posr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => posr(3),
	datab => posr(2),
	datad => VCC,
	combout => \dot_display1|Add0~0_combout\,
	cout => \dot_display1|Add0~1\);

-- Location: LCCOMB_X27_Y21_N2
\dot_display1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~2_combout\ = (posr(4) & (!\dot_display1|Add0~1\)) # (!posr(4) & (\dot_display1|Add0~1\ & VCC))
-- \dot_display1|Add0~3\ = CARRY((posr(4) & !\dot_display1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(4),
	datad => VCC,
	cin => \dot_display1|Add0~1\,
	combout => \dot_display1|Add0~2_combout\,
	cout => \dot_display1|Add0~3\);

-- Location: LCCOMB_X27_Y21_N4
\dot_display1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~4_combout\ = (posr(5) & (\dot_display1|Add0~3\ $ (GND))) # (!posr(5) & ((GND) # (!\dot_display1|Add0~3\)))
-- \dot_display1|Add0~5\ = CARRY((!\dot_display1|Add0~3\) # (!posr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posr(5),
	datad => VCC,
	cin => \dot_display1|Add0~3\,
	combout => \dot_display1|Add0~4_combout\,
	cout => \dot_display1|Add0~5\);

-- Location: LCCOMB_X27_Y21_N6
\dot_display1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~6_combout\ = (posr(6) & (!\dot_display1|Add0~5\)) # (!posr(6) & (\dot_display1|Add0~5\ & VCC))
-- \dot_display1|Add0~7\ = CARRY((posr(6) & !\dot_display1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => posr(6),
	datad => VCC,
	cin => \dot_display1|Add0~5\,
	combout => \dot_display1|Add0~6_combout\,
	cout => \dot_display1|Add0~7\);

-- Location: LCCOMB_X27_Y21_N8
\dot_display1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~8_combout\ = (posr(7) & (\dot_display1|Add0~7\ $ (GND))) # (!posr(7) & ((GND) # (!\dot_display1|Add0~7\)))
-- \dot_display1|Add0~9\ = CARRY((!\dot_display1|Add0~7\) # (!posr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(7),
	datad => VCC,
	cin => \dot_display1|Add0~7\,
	combout => \dot_display1|Add0~8_combout\,
	cout => \dot_display1|Add0~9\);

-- Location: LCCOMB_X27_Y21_N10
\dot_display1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~10_combout\ = (posr(8) & (\dot_display1|Add0~9\ & VCC)) # (!posr(8) & (!\dot_display1|Add0~9\))
-- \dot_display1|Add0~11\ = CARRY((!posr(8) & !\dot_display1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(8),
	datad => VCC,
	cin => \dot_display1|Add0~9\,
	combout => \dot_display1|Add0~10_combout\,
	cout => \dot_display1|Add0~11\);

-- Location: LCCOMB_X27_Y21_N12
\dot_display1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~12_combout\ = (posr(9) & ((GND) # (!\dot_display1|Add0~11\))) # (!posr(9) & (\dot_display1|Add0~11\ $ (GND)))
-- \dot_display1|Add0~13\ = CARRY((posr(9)) # (!\dot_display1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(9),
	datad => VCC,
	cin => \dot_display1|Add0~11\,
	combout => \dot_display1|Add0~12_combout\,
	cout => \dot_display1|Add0~13\);

-- Location: LCCOMB_X27_Y21_N14
\dot_display1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add0~14_combout\ = \dot_display1|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dot_display1|Add0~13\,
	combout => \dot_display1|Add0~14_combout\);

-- Location: LCCOMB_X27_Y23_N12
\dot_display1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Add3~12_combout\ = !\dot_display1|Add3~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dot_display1|Add3~11\,
	combout => \dot_display1|Add3~12_combout\);

-- Location: LCCOMB_X28_Y21_N4
\dot_display1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~1_cout\ = CARRY(\VGA_sync1|v_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|v_count\(1),
	datad => VCC,
	cout => \dot_display1|LessThan0~1_cout\);

-- Location: LCCOMB_X28_Y21_N6
\dot_display1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~3_cout\ = CARRY((posr(2) & (!\VGA_sync1|v_count\(2) & !\dot_display1|LessThan0~1_cout\)) # (!posr(2) & ((!\dot_display1|LessThan0~1_cout\) # (!\VGA_sync1|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => posr(2),
	datab => \VGA_sync1|v_count\(2),
	datad => VCC,
	cin => \dot_display1|LessThan0~1_cout\,
	cout => \dot_display1|LessThan0~3_cout\);

-- Location: LCCOMB_X28_Y21_N8
\dot_display1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~5_cout\ = CARRY((\dot_display1|Add0~0_combout\ & (\VGA_sync1|v_count\(3) & !\dot_display1|LessThan0~3_cout\)) # (!\dot_display1|Add0~0_combout\ & ((\VGA_sync1|v_count\(3)) # (!\dot_display1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add0~0_combout\,
	datab => \VGA_sync1|v_count\(3),
	datad => VCC,
	cin => \dot_display1|LessThan0~3_cout\,
	cout => \dot_display1|LessThan0~5_cout\);

-- Location: LCCOMB_X28_Y21_N10
\dot_display1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~7_cout\ = CARRY((\dot_display1|Add0~2_combout\ & ((!\dot_display1|LessThan0~5_cout\) # (!\VGA_sync1|v_count\(4)))) # (!\dot_display1|Add0~2_combout\ & (!\VGA_sync1|v_count\(4) & !\dot_display1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add0~2_combout\,
	datab => \VGA_sync1|v_count\(4),
	datad => VCC,
	cin => \dot_display1|LessThan0~5_cout\,
	cout => \dot_display1|LessThan0~7_cout\);

-- Location: LCCOMB_X28_Y21_N12
\dot_display1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~9_cout\ = CARRY((\VGA_sync1|v_count\(5) & ((!\dot_display1|LessThan0~7_cout\) # (!\dot_display1|Add0~4_combout\))) # (!\VGA_sync1|v_count\(5) & (!\dot_display1|Add0~4_combout\ & !\dot_display1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(5),
	datab => \dot_display1|Add0~4_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan0~7_cout\,
	cout => \dot_display1|LessThan0~9_cout\);

-- Location: LCCOMB_X28_Y21_N14
\dot_display1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~11_cout\ = CARRY((\dot_display1|Add0~6_combout\ & ((!\dot_display1|LessThan0~9_cout\) # (!\VGA_sync1|v_count\(6)))) # (!\dot_display1|Add0~6_combout\ & (!\VGA_sync1|v_count\(6) & !\dot_display1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add0~6_combout\,
	datab => \VGA_sync1|v_count\(6),
	datad => VCC,
	cin => \dot_display1|LessThan0~9_cout\,
	cout => \dot_display1|LessThan0~11_cout\);

-- Location: LCCOMB_X28_Y21_N16
\dot_display1|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~13_cout\ = CARRY((\VGA_sync1|v_count\(7) & ((!\dot_display1|LessThan0~11_cout\) # (!\dot_display1|Add0~8_combout\))) # (!\VGA_sync1|v_count\(7) & (!\dot_display1|Add0~8_combout\ & !\dot_display1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(7),
	datab => \dot_display1|Add0~8_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan0~11_cout\,
	cout => \dot_display1|LessThan0~13_cout\);

-- Location: LCCOMB_X28_Y21_N18
\dot_display1|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~15_cout\ = CARRY((\VGA_sync1|v_count\(8) & (\dot_display1|Add0~10_combout\ & !\dot_display1|LessThan0~13_cout\)) # (!\VGA_sync1|v_count\(8) & ((\dot_display1|Add0~10_combout\) # (!\dot_display1|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(8),
	datab => \dot_display1|Add0~10_combout\,
	datad => VCC,
	cin => \dot_display1|LessThan0~13_cout\,
	cout => \dot_display1|LessThan0~15_cout\);

-- Location: LCCOMB_X28_Y21_N20
\dot_display1|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|LessThan0~16_combout\ = (\dot_display1|Add0~12_combout\ & ((\dot_display1|LessThan0~15_cout\) # (!\VGA_sync1|v_count\(9)))) # (!\dot_display1|Add0~12_combout\ & (\dot_display1|LessThan0~15_cout\ & !\VGA_sync1|v_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|Add0~12_combout\,
	datad => \VGA_sync1|v_count\(9),
	cin => \dot_display1|LessThan0~15_cout\,
	combout => \dot_display1|LessThan0~16_combout\);

-- Location: LCCOMB_X26_Y23_N24
\dot_display1|Rout[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Rout[0]~0_combout\ = (\dot_display1|LessThan3~16_combout\ & (((!\dot_display1|LessThan0~16_combout\)) # (!\dot_display1|Add0~14_combout\))) # (!\dot_display1|LessThan3~16_combout\ & (\dot_display1|Add3~12_combout\ & 
-- ((!\dot_display1|LessThan0~16_combout\) # (!\dot_display1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dot_display1|LessThan3~16_combout\,
	datab => \dot_display1|Add0~14_combout\,
	datac => \dot_display1|Add3~12_combout\,
	datad => \dot_display1|LessThan0~16_combout\,
	combout => \dot_display1|Rout[0]~0_combout\);

-- Location: LCCOMB_X29_Y23_N6
\dot_display1|Rout[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dot_display1|Rout[0]~2_combout\ = (\VGA_sync1|process_4~3_combout\ & (\dot_display1|Rout[0]~1_combout\ & (\VGA_sync1|process_4~5_combout\ & \dot_display1|Rout[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|process_4~3_combout\,
	datab => \dot_display1|Rout[0]~1_combout\,
	datac => \VGA_sync1|process_4~5_combout\,
	datad => \dot_display1|Rout[0]~0_combout\,
	combout => \dot_display1|Rout[0]~2_combout\);

-- Location: LCCOMB_X29_Y23_N8
\VGA_sync1|process_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~0_combout\ = ((\VGA_sync1|h_count\(8)) # (!\VGA_sync1|h_count\(9))) # (!\VGA_sync1|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(7),
	datab => \VGA_sync1|h_count\(8),
	datac => \VGA_sync1|h_count\(9),
	combout => \VGA_sync1|process_2~0_combout\);

-- Location: LCCOMB_X29_Y23_N28
\VGA_sync1|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~1_combout\ = (\VGA_sync1|h_count\(4) & ((\VGA_sync1|h_count\(2)) # (\VGA_sync1|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_sync1|h_count\(2),
	datac => \VGA_sync1|h_count\(4),
	datad => \VGA_sync1|h_count\(3),
	combout => \VGA_sync1|process_2~1_combout\);

-- Location: LCCOMB_X29_Y23_N2
\VGA_sync1|process_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_2~2_combout\ = (\VGA_sync1|process_2~0_combout\) # ((\VGA_sync1|h_count\(5) & (\VGA_sync1|h_count\(6) & \VGA_sync1|process_2~1_combout\)) # (!\VGA_sync1|h_count\(5) & (!\VGA_sync1|h_count\(6) & !\VGA_sync1|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|h_count\(5),
	datab => \VGA_sync1|h_count\(6),
	datac => \VGA_sync1|process_2~0_combout\,
	datad => \VGA_sync1|process_2~1_combout\,
	combout => \VGA_sync1|process_2~2_combout\);

-- Location: LCCOMB_X28_Y21_N28
\VGA_sync1|process_3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~1_combout\ = (\VGA_sync1|v_count\(9)) # (((\VGA_sync1|v_count\(4)) # (!\VGA_sync1|v_count\(2))) # (!\VGA_sync1|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(9),
	datab => \VGA_sync1|v_count\(3),
	datac => \VGA_sync1|v_count\(4),
	datad => \VGA_sync1|v_count\(2),
	combout => \VGA_sync1|process_3~1_combout\);

-- Location: LCCOMB_X28_Y21_N30
\VGA_sync1|process_3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~0_combout\ = ((\VGA_sync1|v_count\(0) $ (!\VGA_sync1|v_count\(1))) # (!\VGA_sync1|v_count\(7))) # (!\VGA_sync1|v_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(0),
	datab => \VGA_sync1|v_count\(1),
	datac => \VGA_sync1|v_count\(6),
	datad => \VGA_sync1|v_count\(7),
	combout => \VGA_sync1|process_3~0_combout\);

-- Location: LCCOMB_X28_Y21_N2
\VGA_sync1|process_3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \VGA_sync1|process_3~2_combout\ = ((\VGA_sync1|process_3~1_combout\) # ((\VGA_sync1|process_3~0_combout\) # (!\VGA_sync1|v_count\(8)))) # (!\VGA_sync1|v_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_sync1|v_count\(5),
	datab => \VGA_sync1|process_3~1_combout\,
	datac => \VGA_sync1|process_3~0_combout\,
	datad => \VGA_sync1|v_count\(8),
	combout => \VGA_sync1|process_3~2_combout\);

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


