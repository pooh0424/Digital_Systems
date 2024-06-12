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

-- DATE "06/12/2024 21:36:47"

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

ENTITY 	paritice1 IS
    PORT (
	CLOCK_50 : IN std_logic;
	PS2_KBDAT : IN std_logic;
	PS2_KBCLK : IN std_logic;
	KEY : IN std_logic_vector(2 DOWNTO 2);
	GPIO_0 : OUT std_logic_vector(21 DOWNTO 9);
	GPIO_1 : OUT std_logic_vector(21 DOWNTO 9)
	);
END paritice1;

-- Design Ports Information
-- GPIO_0[9]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[10]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[11]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[12]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[13]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[14]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[15]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[16]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[17]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[18]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[19]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[20]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[21]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[9]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[11]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[12]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[13]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[14]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[16]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[18]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[20]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_1[21]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBCLK	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PS2_KBDAT	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF paritice1 IS
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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 2);
SIGNAL ww_GPIO_0 : std_logic_vector(21 DOWNTO 9);
SIGNAL ww_GPIO_1 : std_logic_vector(21 DOWNTO 9);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkgen|CLK_1Khz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO_0[9]~output_o\ : std_logic;
SIGNAL \GPIO_0[10]~output_o\ : std_logic;
SIGNAL \GPIO_0[11]~output_o\ : std_logic;
SIGNAL \GPIO_0[12]~output_o\ : std_logic;
SIGNAL \GPIO_0[13]~output_o\ : std_logic;
SIGNAL \GPIO_0[14]~output_o\ : std_logic;
SIGNAL \GPIO_0[15]~output_o\ : std_logic;
SIGNAL \GPIO_0[16]~output_o\ : std_logic;
SIGNAL \GPIO_0[17]~output_o\ : std_logic;
SIGNAL \GPIO_0[18]~output_o\ : std_logic;
SIGNAL \GPIO_0[19]~output_o\ : std_logic;
SIGNAL \GPIO_0[20]~output_o\ : std_logic;
SIGNAL \GPIO_0[21]~output_o\ : std_logic;
SIGNAL \GPIO_1[9]~output_o\ : std_logic;
SIGNAL \GPIO_1[10]~output_o\ : std_logic;
SIGNAL \GPIO_1[11]~output_o\ : std_logic;
SIGNAL \GPIO_1[12]~output_o\ : std_logic;
SIGNAL \GPIO_1[13]~output_o\ : std_logic;
SIGNAL \GPIO_1[14]~output_o\ : std_logic;
SIGNAL \GPIO_1[15]~output_o\ : std_logic;
SIGNAL \GPIO_1[16]~output_o\ : std_logic;
SIGNAL \GPIO_1[17]~output_o\ : std_logic;
SIGNAL \GPIO_1[18]~output_o\ : std_logic;
SIGNAL \GPIO_1[19]~output_o\ : std_logic;
SIGNAL \GPIO_1[20]~output_o\ : std_logic;
SIGNAL \GPIO_1[21]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~0_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~feeder_combout\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~q\ : std_logic;
SIGNAL \clkgen|CLK_1Khz~clkctrl_outclk\ : std_logic;
SIGNAL \SCANLINE[0]~2_combout\ : std_logic;
SIGNAL \SCANLINE[1]~1_combout\ : std_logic;
SIGNAL \SCANLINE[2]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[0]~12_combout\ : std_logic;
SIGNAL \PS2_KBCLK~input_o\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ : std_logic;
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
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~28\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[8]~30\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[9]~32\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[10]~34\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[11]~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\ : std_logic;
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
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[7]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[2]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word[1]~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|process_2~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|prev_ps2_code_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.new_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|Equal1~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Equal0~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.translate~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.output~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector2~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|break~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|state.ready~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector1~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector3~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|e0_code~q\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|control_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux5~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux22~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux37~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector4~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Selector0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~feeder_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~q\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_new~clkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux16~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~43_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~46_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~44_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~47_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~41_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~45_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~42_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_r~q\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux40~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~42_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[4]~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux12~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux20~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux29~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|shift_l~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux44~4_combout\ : std_logic;
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
SIGNAL \ps2_ACCLL|ascii~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[0]~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux8~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux9~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux26~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux25~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux41~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[3]~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux10~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux13~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux18~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux27~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux42~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~39_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[2]~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|caps_lock~q\ : std_logic;
SIGNAL \ps2_ACCLL|process_0~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~32_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~33_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~34_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~36_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~35_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~31_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~37_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux24~38_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux39~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux15~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux7~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~40_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[5]~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux11~1_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux17~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux19~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux28~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~16_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux43~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[1]~2_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux6~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~10_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~12_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~13_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~9_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux14~7_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~2_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~3_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~4_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~5_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux23~6_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~14_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~15_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~11_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~21_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~22_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~23_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~24_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~27_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~28_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~29_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~19_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~17_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~18_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~20_combout\ : std_logic;
SIGNAL \ps2_ACCLL|Mux38~26_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~25_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~30_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii~41_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ascii_code[6]~4_combout\ : std_logic;
SIGNAL \r0~5_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \r1[2]~1_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \r1[2]~0_combout\ : std_logic;
SIGNAL \r1[2]~2_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \r3[0]~feeder_combout\ : std_logic;
SIGNAL \LED8x8~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LED8x8[6][4]~q\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \r0~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \r0~2_combout\ : std_logic;
SIGNAL \r0~3_combout\ : std_logic;
SIGNAL \LED8x8[6][0]~12\ : std_logic;
SIGNAL \LED8x8[7][1]~14\ : std_logic;
SIGNAL \LED8x8[7][2]~16\ : std_logic;
SIGNAL \LED8x8[7][3]~18\ : std_logic;
SIGNAL \LED8x8[7][4]~19_combout\ : std_logic;
SIGNAL \LED8x8[7][4]~q\ : std_logic;
SIGNAL \LED8x8~10_combout\ : std_logic;
SIGNAL \LED8x8[4][4]~q\ : std_logic;
SIGNAL \LED8x8[5][4]~47_combout\ : std_logic;
SIGNAL \LED8x8[5][4]~q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \LED8x8~8_combout\ : std_logic;
SIGNAL \LED8x8[3][4]~q\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~combout\ : std_logic;
SIGNAL \LED8x8~21_combout\ : std_logic;
SIGNAL \LED8x8[3][2]~q\ : std_logic;
SIGNAL \LED8x8[5][2]~48_combout\ : std_logic;
SIGNAL \LED8x8[5][2]~q\ : std_logic;
SIGNAL \LED8x8~23_combout\ : std_logic;
SIGNAL \LED8x8[4][2]~q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \LED8x8[7][2]~15_combout\ : std_logic;
SIGNAL \LED8x8[7][2]~q\ : std_logic;
SIGNAL \LED8x8~22_combout\ : std_logic;
SIGNAL \LED8x8[6][2]~q\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \LED8x8~24_combout\ : std_logic;
SIGNAL \LED8x8[3][7]~q\ : std_logic;
SIGNAL \LED8x8[5][7]~49_combout\ : std_logic;
SIGNAL \LED8x8[5][7]~q\ : std_logic;
SIGNAL \LED8x8~26_combout\ : std_logic;
SIGNAL \LED8x8[4][7]~q\ : std_logic;
SIGNAL \LED8x8~25_combout\ : std_logic;
SIGNAL \LED8x8[6][7]~q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \r3[1]~feeder_combout\ : std_logic;
SIGNAL \LED8x8[7][4]~20\ : std_logic;
SIGNAL \LED8x8[7][5]~28\ : std_logic;
SIGNAL \LED8x8[7][6]~30\ : std_logic;
SIGNAL \LED8x8[7][7]~31_combout\ : std_logic;
SIGNAL \LED8x8[7][7]~q\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \LED8x8~33_combout\ : std_logic;
SIGNAL \LED8x8[3][1]~q\ : std_logic;
SIGNAL \LED8x8~35_combout\ : std_logic;
SIGNAL \LED8x8[4][1]~q\ : std_logic;
SIGNAL \LED8x8[5][1]~50_combout\ : std_logic;
SIGNAL \LED8x8[5][1]~q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \LED8x8~34_combout\ : std_logic;
SIGNAL \LED8x8[6][1]~q\ : std_logic;
SIGNAL \LED8x8[7][1]~13_combout\ : std_logic;
SIGNAL \LED8x8[7][1]~q\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~combout\ : std_logic;
SIGNAL \LED8x8~36_combout\ : std_logic;
SIGNAL \LED8x8[3][0]~q\ : std_logic;
SIGNAL \LED8x8[5][0]~51_combout\ : std_logic;
SIGNAL \LED8x8[5][0]~q\ : std_logic;
SIGNAL \LED8x8~37_combout\ : std_logic;
SIGNAL \LED8x8[4][0]~q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \LED8x8[6][0]~11_combout\ : std_logic;
SIGNAL \LED8x8[6][0]~q\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \LED8x8[7][3]~17_combout\ : std_logic;
SIGNAL \LED8x8[7][3]~q\ : std_logic;
SIGNAL \LED8x8~40_combout\ : std_logic;
SIGNAL \LED8x8[4][3]~q\ : std_logic;
SIGNAL \LED8x8~39_combout\ : std_logic;
SIGNAL \LED8x8[6][3]~q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \LED8x8[5][3]~52_combout\ : std_logic;
SIGNAL \LED8x8[5][3]~q\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \LED8x8~38_combout\ : std_logic;
SIGNAL \LED8x8[3][3]~q\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \LED8x8~42_combout\ : std_logic;
SIGNAL \LED8x8[6][5]~q\ : std_logic;
SIGNAL \LED8x8[7][5]~27_combout\ : std_logic;
SIGNAL \LED8x8[7][5]~q\ : std_logic;
SIGNAL \LED8x8[5][5]~53_combout\ : std_logic;
SIGNAL \LED8x8[5][5]~q\ : std_logic;
SIGNAL \LED8x8~43_combout\ : std_logic;
SIGNAL \LED8x8[4][5]~q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \LED8x8~41_combout\ : std_logic;
SIGNAL \LED8x8[3][5]~q\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~combout\ : std_logic;
SIGNAL \LED8x8~44_combout\ : std_logic;
SIGNAL \LED8x8[3][6]~q\ : std_logic;
SIGNAL \LED8x8[5][6]~54_combout\ : std_logic;
SIGNAL \LED8x8[5][6]~q\ : std_logic;
SIGNAL \LED8x8[7][6]~29_combout\ : std_logic;
SIGNAL \LED8x8[7][6]~q\ : std_logic;
SIGNAL \LED8x8~46_combout\ : std_logic;
SIGNAL \LED8x8[4][6]~q\ : std_logic;
SIGNAL \LED8x8~45_combout\ : std_logic;
SIGNAL \LED8x8[6][6]~q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|count_idle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_word\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|ps2_code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL SCANLINE : std_logic_vector(2 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii\ : std_logic_vector(7 DOWNTO 0);
SIGNAL r1 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL r0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|sync_ffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL r3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ascii_code\ : std_logic_vector(6 DOWNTO 0);
SIGNAL r2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ : std_logic;
SIGNAL \ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_PS2_KBDAT <= PS2_KBDAT;
ww_PS2_KBCLK <= PS2_KBCLK;
ww_KEY <= KEY;
GPIO_0 <= ww_GPIO_0;
GPIO_1 <= ww_GPIO_1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\);

\ps2_ACCLL|ascii_new~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ps2_ACCLL|ascii_new~q\);

\clkgen|CLK_1Khz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkgen|CLK_1Khz~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~clkctrl_outclk\;
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~q\ <= NOT \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\;
\ALT_INV_Mux0~8_combout\ <= NOT \Mux0~8_combout\;
\ALT_INV_Mux0~7_combout\ <= NOT \Mux0~7_combout\;
\ALT_INV_Mux0~6_combout\ <= NOT \Mux0~6_combout\;
\ALT_INV_Mux0~5_combout\ <= NOT \Mux0~5_combout\;
\ALT_INV_Mux0~4_combout\ <= NOT \Mux0~4_combout\;
\ALT_INV_Mux0~3_combout\ <= NOT \Mux0~3_combout\;
\ALT_INV_Mux0~2_combout\ <= NOT \Mux0~2_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

-- Location: IOOBUF_X19_Y0_N2
\GPIO_0[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[9]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\GPIO_0[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\GPIO_0[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~combout\,
	devoe => ww_devoe,
	o => \GPIO_0[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\GPIO_0[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[12]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\GPIO_0[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~combout\,
	devoe => ww_devoe,
	o => \GPIO_0[13]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\GPIO_0[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~2_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[14]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\GPIO_0[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~combout\,
	devoe => ww_devoe,
	o => \GPIO_0[15]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\GPIO_0[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[16]~output_o\);

-- Location: IOOBUF_X39_Y0_N23
\GPIO_0[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~3_combout\,
	devoe => ww_devoe,
	o => \GPIO_0[17]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\GPIO_0[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[18]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\GPIO_0[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~combout\,
	devoe => ww_devoe,
	o => \GPIO_0[19]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\GPIO_0[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_0[20]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\GPIO_0[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~combout\,
	devoe => ww_devoe,
	o => \GPIO_0[21]~output_o\);

-- Location: IOOBUF_X35_Y0_N9
\GPIO_1[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~4_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[9]~output_o\);

-- Location: IOOBUF_X39_Y0_N30
\GPIO_1[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[10]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\GPIO_1[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~5_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[11]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\GPIO_1[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[12]~output_o\);

-- Location: IOOBUF_X32_Y0_N30
\GPIO_1[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~combout\,
	devoe => ww_devoe,
	o => \GPIO_1[13]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\GPIO_1[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~6_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[14]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\GPIO_1[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~combout\,
	devoe => ww_devoe,
	o => \GPIO_1[15]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\GPIO_1[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\GPIO_1[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~combout\,
	devoe => ww_devoe,
	o => \GPIO_1[17]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\GPIO_1[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[18]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\GPIO_1[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~7_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[19]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\GPIO_1[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO_1[20]~output_o\);

-- Location: IOOBUF_X28_Y0_N30
\GPIO_1[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux0~8_combout\,
	devoe => ww_devoe,
	o => \GPIO_1[21]~output_o\);

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

-- Location: LCCOMB_X1_Y14_N0
\clkgen|CLK_1Khz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|CLK_1Khz~0_combout\ = !\clkgen|CLK_1Khz~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clkgen|CLK_1Khz~q\,
	combout => \clkgen|CLK_1Khz~0_combout\);

-- Location: LCCOMB_X1_Y14_N2
\clkgen|CLK_1Khz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \clkgen|CLK_1Khz~feeder_combout\ = \clkgen|CLK_1Khz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkgen|CLK_1Khz~0_combout\,
	combout => \clkgen|CLK_1Khz~feeder_combout\);

-- Location: FF_X1_Y14_N3
\clkgen|CLK_1Khz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \clkgen|CLK_1Khz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkgen|CLK_1Khz~q\);

-- Location: CLKCTRL_G4
\clkgen|CLK_1Khz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkgen|CLK_1Khz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkgen|CLK_1Khz~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y1_N16
\SCANLINE[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[0]~2_combout\ = !SCANLINE(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SCANLINE(0),
	combout => \SCANLINE[0]~2_combout\);

-- Location: FF_X26_Y1_N17
\SCANLINE[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(0));

-- Location: LCCOMB_X26_Y1_N0
\SCANLINE[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[1]~1_combout\ = SCANLINE(1) $ (SCANLINE(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => SCANLINE(1),
	datad => SCANLINE(0),
	combout => \SCANLINE[1]~1_combout\);

-- Location: FF_X26_Y1_N1
\SCANLINE[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(1));

-- Location: LCCOMB_X26_Y1_N26
\SCANLINE[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SCANLINE[2]~0_combout\ = SCANLINE(2) $ (((SCANLINE(1) & SCANLINE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(2),
	datad => SCANLINE(0),
	combout => \SCANLINE[2]~0_combout\);

-- Location: FF_X26_Y1_N27
\SCANLINE[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkgen|CLK_1Khz~clkctrl_outclk\,
	d => \SCANLINE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SCANLINE(2));

-- Location: LCCOMB_X20_Y2_N28
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!SCANLINE(1) & (!SCANLINE(0) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X17_Y12_N4
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

-- Location: FF_X16_Y12_N25
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

-- Location: LCCOMB_X16_Y12_N12
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

-- Location: FF_X16_Y12_N13
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

-- Location: LCCOMB_X16_Y12_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops[1]~feeder_combout\);

-- Location: FF_X16_Y12_N29
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

-- Location: LCCOMB_X16_Y12_N24
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

-- Location: LCCOMB_X16_Y12_N18
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\);

-- Location: LCCOMB_X15_Y12_N0
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

-- Location: LCCOMB_X15_Y12_N22
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- (((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0) & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~9_combout\);

-- Location: FF_X15_Y12_N23
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

-- Location: LCCOMB_X15_Y12_N2
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

-- Location: LCCOMB_X16_Y12_N20
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

-- Location: FF_X16_Y12_N21
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

-- Location: LCCOMB_X15_Y12_N4
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

-- Location: LCCOMB_X15_Y12_N24
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~4_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[2]~7_combout\);

-- Location: FF_X15_Y12_N25
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

-- Location: LCCOMB_X15_Y12_N6
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

-- Location: LCCOMB_X15_Y12_N26
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ 
-- & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[3]~6_combout\);

-- Location: FF_X15_Y12_N27
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

-- Location: LCCOMB_X15_Y12_N8
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

-- Location: LCCOMB_X16_Y12_N30
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

-- Location: FF_X16_Y12_N31
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

-- Location: LCCOMB_X15_Y12_N10
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

-- Location: LCCOMB_X15_Y12_N28
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~10_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[5]~4_combout\);

-- Location: FF_X15_Y12_N29
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

-- Location: LCCOMB_X15_Y12_N12
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

-- Location: LCCOMB_X15_Y12_N30
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~12_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[6]~3_combout\);

-- Location: FF_X15_Y12_N31
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

-- Location: LCCOMB_X15_Y12_N14
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

-- Location: LCCOMB_X15_Y12_N20
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|Add0~14_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out[7]~2_combout\);

-- Location: FF_X15_Y12_N21
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

-- Location: LCCOMB_X15_Y12_N16
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

-- Location: LCCOMB_X15_Y12_N18
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

-- Location: FF_X15_Y12_N19
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

-- Location: LCCOMB_X16_Y12_N22
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\) # ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1) & 
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|flipflops\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|counter_out\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\);

-- Location: LCCOMB_X16_Y12_N26
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~feeder_combout\);

-- Location: FF_X16_Y12_N27
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

-- Location: LCCOMB_X17_Y12_N10
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

-- Location: LCCOMB_X17_Y12_N12
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

-- Location: FF_X17_Y12_N13
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(4));

-- Location: LCCOMB_X17_Y12_N14
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

-- Location: FF_X17_Y12_N15
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(5));

-- Location: LCCOMB_X17_Y12_N16
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

-- Location: FF_X17_Y12_N17
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(6));

-- Location: LCCOMB_X17_Y12_N18
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

-- Location: FF_X17_Y12_N19
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(7));

-- Location: LCCOMB_X17_Y12_N20
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

-- Location: FF_X17_Y12_N21
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(8));

-- Location: LCCOMB_X17_Y12_N22
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

-- Location: FF_X17_Y12_N23
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(9));

-- Location: LCCOMB_X17_Y12_N24
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

-- Location: FF_X17_Y12_N25
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(10));

-- Location: LCCOMB_X17_Y12_N26
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

-- Location: FF_X17_Y12_N27
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(11));

-- Location: LCCOMB_X17_Y12_N28
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

-- Location: LCCOMB_X17_Y12_N2
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

-- Location: LCCOMB_X17_Y12_N30
\ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\ = (((!\ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\)) # (!\ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|Equal0~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|Equal0~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|result~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|Equal0~0_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\);

-- Location: FF_X17_Y12_N5
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(0));

-- Location: LCCOMB_X17_Y12_N6
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

-- Location: FF_X17_Y12_N7
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(1));

-- Location: LCCOMB_X17_Y12_N8
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

-- Location: FF_X17_Y12_N9
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(2));

-- Location: FF_X17_Y12_N11
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
	ena => \ps2_ACCLL|ps2_keyboard_0|count_idle[7]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|count_idle\(3));

-- Location: LCCOMB_X17_Y12_N0
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

-- Location: CLKCTRL_G16
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

-- Location: LCCOMB_X31_Y12_N24
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

-- Location: FF_X31_Y12_N25
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

-- Location: LCCOMB_X19_Y12_N14
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

-- Location: FF_X19_Y12_N15
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

-- Location: LCCOMB_X19_Y12_N24
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

-- Location: FF_X19_Y12_N25
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

-- Location: LCCOMB_X19_Y12_N22
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

-- Location: LCCOMB_X19_Y12_N20
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

-- Location: LCCOMB_X20_Y12_N4
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\ = \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0) $ (VCC)
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\ = CARRY(\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0),
	datad => VCC,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~0_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~1\);

-- Location: LCCOMB_X19_Y12_N16
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

-- Location: FF_X20_Y12_N5
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(0));

-- Location: LCCOMB_X20_Y12_N6
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

-- Location: LCCOMB_X19_Y12_N6
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[0]~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~2_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out[1]~8_combout\);

-- Location: FF_X19_Y12_N7
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

-- Location: LCCOMB_X20_Y12_N8
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & (\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\ $ (GND))) # (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\ & VCC))
-- \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\ = CARRY((\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2) & !\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|counter_out\(2),
	datad => VCC,
	cin => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~3\,
	combout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~4_combout\,
	cout => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|Add0~5\);

-- Location: LCCOMB_X20_Y12_N26
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

-- Location: FF_X20_Y12_N27
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

-- Location: LCCOMB_X20_Y12_N10
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

-- Location: LCCOMB_X20_Y12_N0
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

-- Location: FF_X20_Y12_N1
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

-- Location: LCCOMB_X20_Y12_N12
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

-- Location: LCCOMB_X20_Y12_N22
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

-- Location: FF_X20_Y12_N23
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

-- Location: LCCOMB_X20_Y12_N14
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

-- Location: LCCOMB_X20_Y12_N28
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

-- Location: FF_X20_Y12_N29
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

-- Location: LCCOMB_X20_Y12_N16
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

-- Location: LCCOMB_X20_Y12_N30
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

-- Location: FF_X20_Y12_N31
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

-- Location: LCCOMB_X20_Y12_N18
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

-- Location: LCCOMB_X20_Y12_N2
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

-- Location: FF_X20_Y12_N3
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

-- Location: LCCOMB_X20_Y12_N20
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

-- Location: LCCOMB_X20_Y12_N24
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

-- Location: FF_X20_Y12_N25
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

-- Location: LCCOMB_X19_Y12_N12
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

-- Location: FF_X19_Y11_N9
\ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_data|result~q\);

-- Location: FF_X19_Y11_N27
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

-- Location: FF_X19_Y11_N15
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

-- Location: FF_X19_Y11_N19
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

-- Location: LCCOMB_X19_Y11_N22
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

-- Location: FF_X19_Y11_N23
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

-- Location: FF_X19_Y11_N17
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

-- Location: LCCOMB_X19_Y11_N4
\ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[5]~feeder_combout\);

-- Location: FF_X19_Y11_N5
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

-- Location: FF_X19_Y11_N25
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

-- Location: LCCOMB_X19_Y11_N2
\ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[3]~feeder_combout\);

-- Location: FF_X19_Y11_N3
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

-- Location: LCCOMB_X19_Y11_N12
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

-- Location: FF_X19_Y11_N13
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

-- Location: LCCOMB_X19_Y11_N30
\ps2_ACCLL|ps2_keyboard_0|ps2_word[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|ps2_word[1]~feeder_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2),
	combout => \ps2_ACCLL|ps2_keyboard_0|ps2_word[1]~feeder_combout\);

-- Location: FF_X19_Y11_N31
\ps2_ACCLL|ps2_keyboard_0|ps2_word[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ps2_keyboard_0|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	d => \ps2_ACCLL|ps2_keyboard_0|ps2_word[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1));

-- Location: FF_X19_Y11_N11
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

-- Location: LCCOMB_X19_Y11_N10
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

-- Location: LCCOMB_X19_Y11_N24
\ps2_ACCLL|ps2_keyboard_0|error~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~0_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(3),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\);

-- Location: LCCOMB_X19_Y11_N20
\ps2_ACCLL|ps2_keyboard_0|error~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|error~1_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(7) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(8),
	combout => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\);

-- Location: LCCOMB_X19_Y11_N28
\ps2_ACCLL|ps2_keyboard_0|process_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|error~0_combout\ $ (\ps2_ACCLL|ps2_keyboard_0|ps2_word\(9) $ (\ps2_ACCLL|ps2_keyboard_0|error~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|process_2~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|error~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_word\(9),
	datad => \ps2_ACCLL|ps2_keyboard_0|error~1_combout\,
	combout => \ps2_ACCLL|ps2_keyboard_0|process_2~1_combout\);

-- Location: LCCOMB_X19_Y11_N6
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

-- Location: FF_X19_Y11_N7
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

-- Location: LCCOMB_X20_Y7_N22
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

-- Location: FF_X20_Y7_N23
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

-- Location: FF_X20_Y10_N1
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

-- Location: FF_X20_Y11_N5
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

-- Location: LCCOMB_X20_Y6_N30
\ps2_ACCLL|Equal0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Equal0~12_combout\);

-- Location: FF_X20_Y7_N9
\ps2_ACCLL|state.new_code\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.new_code~q\);

-- Location: LCCOMB_X23_Y11_N8
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

-- Location: FF_X20_Y11_N9
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

-- Location: FF_X20_Y11_N7
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

-- Location: FF_X20_Y11_N25
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

-- Location: FF_X20_Y11_N29
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

-- Location: FF_X20_Y11_N19
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

-- Location: FF_X20_Y11_N15
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

-- Location: LCCOMB_X17_Y11_N18
\ps2_ACCLL|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y11_N0
\ps2_ACCLL|Equal0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Equal0~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Equal0~3_combout\,
	combout => \ps2_ACCLL|Equal0~13_combout\);

-- Location: LCCOMB_X20_Y7_N30
\ps2_ACCLL|Selector1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~1_combout\ = (\ps2_ACCLL|state.new_code~q\ & (((!\ps2_ACCLL|Equal0~12_combout\ & !\ps2_ACCLL|Equal1~0_combout\)) # (!\ps2_ACCLL|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~12_combout\,
	datab => \ps2_ACCLL|state.new_code~q\,
	datac => \ps2_ACCLL|Equal1~0_combout\,
	datad => \ps2_ACCLL|Equal0~13_combout\,
	combout => \ps2_ACCLL|Selector1~1_combout\);

-- Location: FF_X20_Y7_N31
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

-- Location: LCCOMB_X20_Y7_N2
\ps2_ACCLL|Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~3_combout\ = (\ps2_ACCLL|state.translate~q\ & !\ps2_ACCLL|break~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|state.translate~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|Selector1~3_combout\);

-- Location: FF_X20_Y7_N3
\ps2_ACCLL|state.output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|state.output~q\);

-- Location: LCCOMB_X20_Y7_N12
\ps2_ACCLL|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~0_combout\ = (\ps2_ACCLL|break~q\ & ((\ps2_ACCLL|state.output~q\) # ((\ps2_ACCLL|state.new_code~q\) # (!\ps2_ACCLL|state.ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|break~q\,
	datab => \ps2_ACCLL|state.output~q\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector2~0_combout\);

-- Location: LCCOMB_X20_Y7_N16
\ps2_ACCLL|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector2~1_combout\ = (\ps2_ACCLL|Selector2~0_combout\) # ((\ps2_ACCLL|Equal0~13_combout\ & (\ps2_ACCLL|state.new_code~q\ & \ps2_ACCLL|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector2~0_combout\,
	datab => \ps2_ACCLL|Equal0~13_combout\,
	datac => \ps2_ACCLL|state.new_code~q\,
	datad => \ps2_ACCLL|Equal0~12_combout\,
	combout => \ps2_ACCLL|Selector2~1_combout\);

-- Location: FF_X20_Y7_N17
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

-- Location: LCCOMB_X20_Y7_N0
\ps2_ACCLL|Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~2_combout\ = (\ps2_ACCLL|Selector1~1_combout\) # ((\ps2_ACCLL|Selector1~0_combout\) # ((!\ps2_ACCLL|break~q\ & \ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector1~1_combout\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|state.translate~q\,
	datad => \ps2_ACCLL|Selector1~0_combout\,
	combout => \ps2_ACCLL|Selector1~2_combout\);

-- Location: FF_X20_Y7_N1
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

-- Location: LCCOMB_X20_Y7_N8
\ps2_ACCLL|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector1~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\ & (\ps2_ACCLL|prev_ps2_code_new~q\ & !\ps2_ACCLL|state.ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code_new~q\,
	datac => \ps2_ACCLL|prev_ps2_code_new~q\,
	datad => \ps2_ACCLL|state.ready~q\,
	combout => \ps2_ACCLL|Selector1~0_combout\);

-- Location: LCCOMB_X20_Y7_N26
\ps2_ACCLL|Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~1_combout\ = (\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|state.output~q\) # ((\ps2_ACCLL|state.new_code~q\) # (!\ps2_ACCLL|state.ready~q\))))

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
	combout => \ps2_ACCLL|Selector3~1_combout\);

-- Location: LCCOMB_X20_Y7_N28
\ps2_ACCLL|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~0_combout\ = (!\ps2_ACCLL|Equal0~12_combout\ & (\ps2_ACCLL|state.new_code~q\ & (\ps2_ACCLL|Equal1~0_combout\ & \ps2_ACCLL|Equal0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Equal0~12_combout\,
	datab => \ps2_ACCLL|state.new_code~q\,
	datac => \ps2_ACCLL|Equal1~0_combout\,
	datad => \ps2_ACCLL|Equal0~13_combout\,
	combout => \ps2_ACCLL|Selector3~0_combout\);

-- Location: LCCOMB_X21_Y8_N18
\ps2_ACCLL|Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector3~2_combout\ = (\ps2_ACCLL|Selector3~1_combout\) # (\ps2_ACCLL|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector3~1_combout\,
	datad => \ps2_ACCLL|Selector3~0_combout\,
	combout => \ps2_ACCLL|Selector3~2_combout\);

-- Location: FF_X21_Y8_N19
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

-- Location: LCCOMB_X19_Y7_N16
\ps2_ACCLL|Mux38~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~8_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux38~8_combout\);

-- Location: LCCOMB_X19_Y7_N30
\ps2_ACCLL|control_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|control_l~0_combout\);

-- Location: LCCOMB_X20_Y7_N18
\ps2_ACCLL|control_l~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~1_combout\ = (\ps2_ACCLL|Mux38~8_combout\ & (\ps2_ACCLL|control_l~0_combout\ & (\ps2_ACCLL|state.translate~q\ & \ps2_ACCLL|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~8_combout\,
	datab => \ps2_ACCLL|control_l~0_combout\,
	datac => \ps2_ACCLL|state.translate~q\,
	datad => \ps2_ACCLL|Equal0~12_combout\,
	combout => \ps2_ACCLL|control_l~1_combout\);

-- Location: LCCOMB_X20_Y7_N6
\ps2_ACCLL|control_l~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_l~2_combout\ = (\ps2_ACCLL|e0_code~q\ & (((\ps2_ACCLL|control_l~q\)))) # (!\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|control_l~1_combout\ & (!\ps2_ACCLL|break~q\)) # (!\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|control_l~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|control_l~1_combout\,
	combout => \ps2_ACCLL|control_l~2_combout\);

-- Location: FF_X20_Y7_N7
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

-- Location: LCCOMB_X20_Y7_N24
\ps2_ACCLL|control_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|control_r~0_combout\ = (\ps2_ACCLL|e0_code~q\ & ((\ps2_ACCLL|control_l~1_combout\ & (!\ps2_ACCLL|break~q\)) # (!\ps2_ACCLL|control_l~1_combout\ & ((\ps2_ACCLL|control_r~q\))))) # (!\ps2_ACCLL|e0_code~q\ & (((\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|control_l~1_combout\,
	combout => \ps2_ACCLL|control_r~0_combout\);

-- Location: FF_X20_Y7_N25
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

-- Location: LCCOMB_X20_Y6_N12
\ps2_ACCLL|Selector4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|control_l~q\) # (\ps2_ACCLL|control_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Selector4~6_combout\);

-- Location: LCCOMB_X20_Y6_N22
\ps2_ACCLL|Selector4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Selector4~7_combout\);

-- Location: LCCOMB_X21_Y10_N4
\ps2_ACCLL|Mux29~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux29~4_combout\);

-- Location: LCCOMB_X21_Y6_N16
\ps2_ACCLL|Selector4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux29~4_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux29~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Selector4~15_combout\);

-- Location: LCCOMB_X20_Y6_N8
\ps2_ACCLL|Selector4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~8_combout\ = (\ps2_ACCLL|Selector4~6_combout\ & ((\ps2_ACCLL|Selector4~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Selector4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector4~6_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Selector4~7_combout\,
	datad => \ps2_ACCLL|Selector4~15_combout\,
	combout => \ps2_ACCLL|Selector4~8_combout\);

-- Location: LCCOMB_X21_Y6_N4
\ps2_ACCLL|Selector4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((!\ps2_ACCLL|control_l~q\ & !\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|control_l~q\,
	datad => \ps2_ACCLL|control_r~q\,
	combout => \ps2_ACCLL|Selector4~9_combout\);

-- Location: LCCOMB_X20_Y6_N2
\ps2_ACCLL|Selector4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~10_combout\ = (!\ps2_ACCLL|ascii\(7) & (((\ps2_ACCLL|Selector4~8_combout\) # (\ps2_ACCLL|Selector4~9_combout\)) # (!\ps2_ACCLL|state.translate~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|ascii\(7),
	datac => \ps2_ACCLL|Selector4~8_combout\,
	datad => \ps2_ACCLL|Selector4~9_combout\,
	combout => \ps2_ACCLL|Selector4~10_combout\);

-- Location: LCCOMB_X22_Y6_N16
\ps2_ACCLL|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~0_combout\ = (\ps2_ACCLL|control_r~q\) # (\ps2_ACCLL|control_l~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|control_l~q\,
	combout => \ps2_ACCLL|process_0~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\ps2_ACCLL|Mux5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~6_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux5~6_combout\);

-- Location: LCCOMB_X19_Y8_N6
\ps2_ACCLL|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux5~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux5~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux5~4_combout\);

-- Location: LCCOMB_X19_Y8_N20
\ps2_ACCLL|Mux5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux5~15_combout\);

-- Location: LCCOMB_X19_Y8_N18
\ps2_ACCLL|Mux5~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~16_combout\ = (\ps2_ACCLL|Mux5~15_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux5~15_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux5~16_combout\);

-- Location: LCCOMB_X19_Y8_N28
\ps2_ACCLL|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux5~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux5~16_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux5~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux5~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux5~16_combout\,
	combout => \ps2_ACCLL|Mux5~3_combout\);

-- Location: LCCOMB_X20_Y6_N0
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

-- Location: LCCOMB_X20_Y6_N28
\ps2_ACCLL|Selector4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux5~14_combout\ & ((\ps2_ACCLL|control_l~q\) # (\ps2_ACCLL|control_r~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|Mux5~14_combout\,
	combout => \ps2_ACCLL|Selector4~11_combout\);

-- Location: LCCOMB_X20_Y6_N6
\ps2_ACCLL|Mux37~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux37~0_combout\);

-- Location: LCCOMB_X20_Y6_N26
\ps2_ACCLL|Selector4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|Mux37~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux37~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Selector4~16_combout\);

-- Location: LCCOMB_X21_Y6_N22
\ps2_ACCLL|Mux37~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux37~4_combout\);

-- Location: LCCOMB_X21_Y6_N10
\ps2_ACCLL|Mux37~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux37~1_combout\);

-- Location: LCCOMB_X21_Y6_N6
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

-- Location: LCCOMB_X21_Y6_N12
\ps2_ACCLL|Mux37~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux37~2_combout\);

-- Location: LCCOMB_X20_Y6_N4
\ps2_ACCLL|Mux37~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux37~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux37~2_combout\,
	combout => \ps2_ACCLL|Mux37~3_combout\);

-- Location: LCCOMB_X23_Y11_N20
\ps2_ACCLL|Mux22~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux22~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\ps2_ACCLL|Mux22~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux22~1_combout\);

-- Location: LCCOMB_X21_Y10_N20
\ps2_ACCLL|Mux22~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux22~0_combout\) # (!\ps2_ACCLL|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux22~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux22~1_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux22~2_combout\);

-- Location: LCCOMB_X20_Y11_N18
\ps2_ACCLL|Mux20~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~4_combout\);

-- Location: LCCOMB_X21_Y10_N12
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

-- Location: LCCOMB_X21_Y10_N6
\ps2_ACCLL|Mux13~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux20~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|Mux19~2_combout\) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux20~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux19~2_combout\,
	combout => \ps2_ACCLL|Mux13~5_combout\);

-- Location: LCCOMB_X21_Y10_N28
\ps2_ACCLL|Mux13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~6_combout\ = (\ps2_ACCLL|Mux13~5_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux13~6_combout\);

-- Location: LCCOMB_X20_Y11_N24
\ps2_ACCLL|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux16~0_combout\);

-- Location: LCCOMB_X21_Y10_N24
\ps2_ACCLL|Mux13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux13~10_combout\);

-- Location: LCCOMB_X23_Y11_N30
\ps2_ACCLL|Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux13~2_combout\);

-- Location: LCCOMB_X22_Y10_N28
\ps2_ACCLL|Mux13~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux20~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~4_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux13~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux13~3_combout\);

-- Location: LCCOMB_X21_Y10_N2
\ps2_ACCLL|Mux13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~4_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|Mux16~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|Mux13~3_combout\)))) # (!\ps2_ACCLL|Mux13~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~0_combout\,
	datab => \ps2_ACCLL|Mux13~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux13~3_combout\,
	combout => \ps2_ACCLL|Mux13~4_combout\);

-- Location: LCCOMB_X21_Y10_N22
\ps2_ACCLL|Mux13~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~7_combout\ = (!\ps2_ACCLL|ascii\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(7),
	datab => \ps2_ACCLL|Mux13~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux13~4_combout\,
	combout => \ps2_ACCLL|Mux13~7_combout\);

-- Location: LCCOMB_X17_Y10_N8
\ps2_ACCLL|Mux22~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux22~7_combout\);

-- Location: LCCOMB_X17_Y9_N4
\ps2_ACCLL|Mux22~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~3_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux22~3_combout\);

-- Location: LCCOMB_X17_Y9_N18
\ps2_ACCLL|Mux22~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux22~4_combout\);

-- Location: LCCOMB_X17_Y9_N24
\ps2_ACCLL|Mux22~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux22~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux22~3_combout\,
	datad => \ps2_ACCLL|Mux22~4_combout\,
	combout => \ps2_ACCLL|Mux22~5_combout\);

-- Location: LCCOMB_X21_Y10_N8
\ps2_ACCLL|Mux22~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~8_combout\ = (\ps2_ACCLL|ascii\(7)) # ((\ps2_ACCLL|Mux22~5_combout\ & ((\ps2_ACCLL|Mux22~7_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(7),
	datab => \ps2_ACCLL|Mux22~7_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux22~5_combout\,
	combout => \ps2_ACCLL|Mux22~8_combout\);

-- Location: LCCOMB_X21_Y10_N18
\ps2_ACCLL|Mux22~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~6_combout\ = (!\ps2_ACCLL|Mux13~5_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux22~5_combout\,
	combout => \ps2_ACCLL|Mux22~6_combout\);

-- Location: LCCOMB_X21_Y10_N10
\ps2_ACCLL|Mux22~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~9_combout\ = (!\ps2_ACCLL|Mux22~8_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux13~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|Mux22~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux13~4_combout\,
	datac => \ps2_ACCLL|Mux22~8_combout\,
	datad => \ps2_ACCLL|Mux22~6_combout\,
	combout => \ps2_ACCLL|Mux22~9_combout\);

-- Location: LCCOMB_X21_Y10_N16
\ps2_ACCLL|Mux22~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux22~10_combout\ = (\ps2_ACCLL|Mux38~8_combout\ & ((\ps2_ACCLL|Mux22~9_combout\) # ((\ps2_ACCLL|Mux22~2_combout\ & \ps2_ACCLL|Mux13~7_combout\)))) # (!\ps2_ACCLL|Mux38~8_combout\ & (\ps2_ACCLL|Mux22~2_combout\ & (\ps2_ACCLL|Mux13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~8_combout\,
	datab => \ps2_ACCLL|Mux22~2_combout\,
	datac => \ps2_ACCLL|Mux13~7_combout\,
	datad => \ps2_ACCLL|Mux22~9_combout\,
	combout => \ps2_ACCLL|Mux22~10_combout\);

-- Location: LCCOMB_X20_Y6_N14
\ps2_ACCLL|Mux37~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux37~6_combout\ = (\ps2_ACCLL|Mux22~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux37~5_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux37~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux37~5_combout\,
	datab => \ps2_ACCLL|Mux37~3_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux22~10_combout\,
	combout => \ps2_ACCLL|Mux37~6_combout\);

-- Location: LCCOMB_X20_Y6_N18
\ps2_ACCLL|Selector4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~12_combout\ = (\ps2_ACCLL|Selector4~16_combout\ & ((\ps2_ACCLL|Mux22~10_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux37~6_combout\)))) # (!\ps2_ACCLL|Selector4~16_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux37~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector4~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux37~6_combout\,
	datad => \ps2_ACCLL|Mux22~10_combout\,
	combout => \ps2_ACCLL|Selector4~12_combout\);

-- Location: LCCOMB_X20_Y6_N24
\ps2_ACCLL|Selector4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~13_combout\ = (\ps2_ACCLL|Selector4~11_combout\) # ((!\ps2_ACCLL|process_0~0_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Selector4~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|Selector4~11_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Selector4~12_combout\,
	combout => \ps2_ACCLL|Selector4~13_combout\);

-- Location: LCCOMB_X20_Y6_N20
\ps2_ACCLL|Selector4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector4~14_combout\ = (!\ps2_ACCLL|Selector4~10_combout\ & ((\ps2_ACCLL|state.translate~q\ & ((!\ps2_ACCLL|Selector4~13_combout\))) # (!\ps2_ACCLL|state.translate~q\ & (!\ps2_ACCLL|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|state.translate~q\,
	datab => \ps2_ACCLL|Selector4~10_combout\,
	datac => \ps2_ACCLL|Selector1~1_combout\,
	datad => \ps2_ACCLL|Selector4~13_combout\,
	combout => \ps2_ACCLL|Selector4~14_combout\);

-- Location: FF_X20_Y6_N21
\ps2_ACCLL|ascii[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|Selector4~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(7));

-- Location: LCCOMB_X20_Y7_N4
\ps2_ACCLL|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Selector0~0_combout\ = (\ps2_ACCLL|state.output~q\ & \ps2_ACCLL|ascii\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|state.output~q\,
	datad => \ps2_ACCLL|ascii\(7),
	combout => \ps2_ACCLL|Selector0~0_combout\);

-- Location: LCCOMB_X20_Y4_N30
\ps2_ACCLL|ascii_new~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_new~2_combout\ = (\ps2_ACCLL|Selector1~0_combout\ & (\ps2_ACCLL|state.ready~q\ & ((\ps2_ACCLL|Selector0~0_combout\)))) # (!\ps2_ACCLL|Selector1~0_combout\ & ((\ps2_ACCLL|ascii_new~q\) # ((\ps2_ACCLL|state.ready~q\ & 
-- \ps2_ACCLL|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Selector1~0_combout\,
	datab => \ps2_ACCLL|state.ready~q\,
	datac => \ps2_ACCLL|ascii_new~q\,
	datad => \ps2_ACCLL|Selector0~0_combout\,
	combout => \ps2_ACCLL|ascii_new~2_combout\);

-- Location: LCCOMB_X20_Y4_N0
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

-- Location: FF_X20_Y4_N1
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

-- Location: LCCOMB_X17_Y6_N14
\ps2_ACCLL|Mux8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux8~9_combout\);

-- Location: LCCOMB_X16_Y9_N28
\ps2_ACCLL|Mux13~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux13~9_combout\);

-- Location: LCCOMB_X17_Y6_N8
\ps2_ACCLL|Mux8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux8~9_combout\ & (!\ps2_ACCLL|ascii\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux13~9_combout\ & (\ps2_ACCLL|Mux8~9_combout\ $ 
-- (\ps2_ACCLL|ascii\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux8~9_combout\,
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux13~9_combout\,
	combout => \ps2_ACCLL|Mux8~10_combout\);

-- Location: LCCOMB_X19_Y6_N10
\ps2_ACCLL|Mux20~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~5_combout\);

-- Location: LCCOMB_X17_Y6_N26
\ps2_ACCLL|Mux8~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ascii\(4) $ ((!\ps2_ACCLL|Mux8~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ascii\(4) & ((!\ps2_ACCLL|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|Mux8~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux20~5_combout\,
	combout => \ps2_ACCLL|Mux8~11_combout\);

-- Location: LCCOMB_X19_Y6_N12
\ps2_ACCLL|Mux20~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~6_combout\);

-- Location: LCCOMB_X21_Y8_N8
\ps2_ACCLL|shift_l~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|shift_l~0_combout\);

-- Location: LCCOMB_X17_Y6_N6
\ps2_ACCLL|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~2_combout\ = (\ps2_ACCLL|ascii\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|shift_l~0_combout\)))) # (!\ps2_ACCLL|ascii\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|shift_l~0_combout\)) # 
-- (!\ps2_ACCLL|Mux20~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|Mux20~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|shift_l~0_combout\,
	combout => \ps2_ACCLL|Mux16~2_combout\);

-- Location: LCCOMB_X17_Y6_N18
\ps2_ACCLL|Mux16~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~5_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux16~5_combout\);

-- Location: LCCOMB_X17_Y6_N16
\ps2_ACCLL|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~3_combout\ = (\ps2_ACCLL|Mux13~9_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux13~9_combout\ & ((!\ps2_ACCLL|ascii\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|Mux13~9_combout\,
	combout => \ps2_ACCLL|Mux16~3_combout\);

-- Location: LCCOMB_X17_Y6_N2
\ps2_ACCLL|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~4_combout\ = ((\ps2_ACCLL|shift_l~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|shift_l~0_combout\,
	combout => \ps2_ACCLL|Mux16~4_combout\);

-- Location: LCCOMB_X17_Y6_N28
\ps2_ACCLL|Mux8~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux16~3_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux16~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux16~3_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux16~4_combout\,
	combout => \ps2_ACCLL|Mux8~7_combout\);

-- Location: LCCOMB_X17_Y6_N12
\ps2_ACCLL|Mux8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux8~7_combout\ & ((\ps2_ACCLL|Mux16~5_combout\))) # (!\ps2_ACCLL|Mux8~7_combout\ & (\ps2_ACCLL|Mux16~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~2_combout\,
	datab => \ps2_ACCLL|Mux16~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux8~7_combout\,
	combout => \ps2_ACCLL|Mux8~8_combout\);

-- Location: LCCOMB_X17_Y6_N20
\ps2_ACCLL|Mux8~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux8~8_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux8~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux8~11_combout\,
	datad => \ps2_ACCLL|Mux8~8_combout\,
	combout => \ps2_ACCLL|Mux8~12_combout\);

-- Location: LCCOMB_X17_Y6_N4
\ps2_ACCLL|Mux16~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~7_combout\ = (\ps2_ACCLL|Mux20~5_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux20~5_combout\ & (!\ps2_ACCLL|ascii\(4) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux38~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|Mux38~8_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux20~5_combout\,
	combout => \ps2_ACCLL|Mux16~7_combout\);

-- Location: LCCOMB_X17_Y6_N10
\ps2_ACCLL|Mux16~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~6_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux16~6_combout\);

-- Location: LCCOMB_X17_Y6_N22
\ps2_ACCLL|Mux8~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux16~6_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux16~7_combout\,
	datad => \ps2_ACCLL|Mux16~6_combout\,
	combout => \ps2_ACCLL|Mux8~13_combout\);

-- Location: LCCOMB_X21_Y7_N10
\ps2_ACCLL|Mux15~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux15~9_combout\);

-- Location: LCCOMB_X21_Y8_N16
\ps2_ACCLL|Mux8~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~15_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux15~9_combout\ & !\ps2_ACCLL|Mux8~13_combout\))) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~9_combout\,
	datad => \ps2_ACCLL|Mux8~13_combout\,
	combout => \ps2_ACCLL|Mux8~15_combout\);

-- Location: LCCOMB_X21_Y8_N22
\ps2_ACCLL|Mux8~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux8~15_combout\) # ((\ps2_ACCLL|Mux8~13_combout\ & \ps2_ACCLL|Mux16~0_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux8~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~13_combout\,
	datab => \ps2_ACCLL|Mux8~15_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux8~16_combout\);

-- Location: LCCOMB_X21_Y8_N4
\ps2_ACCLL|Mux8~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux8~4_combout\);

-- Location: LCCOMB_X21_Y8_N30
\ps2_ACCLL|Mux8~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|Mux8~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux8~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux13~2_combout\,
	combout => \ps2_ACCLL|Mux8~5_combout\);

-- Location: LCCOMB_X21_Y7_N26
\ps2_ACCLL|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux8~1_combout\);

-- Location: LCCOMB_X21_Y8_N28
\ps2_ACCLL|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux8~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux8~1_combout\,
	datad => \ps2_ACCLL|Mux13~2_combout\,
	combout => \ps2_ACCLL|Mux8~2_combout\);

-- Location: LCCOMB_X21_Y8_N2
\ps2_ACCLL|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux19~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux19~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux8~2_combout\,
	combout => \ps2_ACCLL|Mux8~3_combout\);

-- Location: LCCOMB_X21_Y8_N20
\ps2_ACCLL|Mux8~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~6_combout\ = (\ps2_ACCLL|ascii\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux8~3_combout\)))) # (!\ps2_ACCLL|ascii\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux8~3_combout\)) # 
-- (!\ps2_ACCLL|Mux8~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux8~5_combout\,
	datad => \ps2_ACCLL|Mux8~3_combout\,
	combout => \ps2_ACCLL|Mux8~6_combout\);

-- Location: LCCOMB_X21_Y8_N26
\ps2_ACCLL|Mux8~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux8~12_combout\ & (\ps2_ACCLL|Mux8~16_combout\)) # (!\ps2_ACCLL|Mux8~12_combout\ & ((\ps2_ACCLL|Mux8~6_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux8~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux8~12_combout\,
	datac => \ps2_ACCLL|Mux8~16_combout\,
	datad => \ps2_ACCLL|Mux8~6_combout\,
	combout => \ps2_ACCLL|Mux8~14_combout\);

-- Location: LCCOMB_X19_Y11_N8
\ps2_ACCLL|caps_lock~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|caps_lock~1_combout\);

-- Location: LCCOMB_X20_Y11_N4
\ps2_ACCLL|Mux42~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux42~2_combout\);

-- Location: LCCOMB_X21_Y7_N30
\ps2_ACCLL|Mux29~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~5_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux29~5_combout\);

-- Location: LCCOMB_X24_Y9_N4
\ps2_ACCLL|Mux25~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux25~19_combout\);

-- Location: LCCOMB_X20_Y11_N6
\ps2_ACCLL|Mux14~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux14~4_combout\);

-- Location: LCCOMB_X24_Y8_N4
\ps2_ACCLL|Mux16~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~8_combout\ = (\ps2_ACCLL|Mux14~4_combout\ & ((\ps2_ACCLL|Mux20~4_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux20~4_combout\ & (!\ps2_ACCLL|ascii\(4))))) # (!\ps2_ACCLL|Mux14~4_combout\ & 
-- (!\ps2_ACCLL|ascii\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux14~4_combout\,
	datad => \ps2_ACCLL|Mux20~4_combout\,
	combout => \ps2_ACCLL|Mux16~8_combout\);

-- Location: LCCOMB_X23_Y8_N16
\ps2_ACCLL|Mux14~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux14~5_combout\);

-- Location: LCCOMB_X23_Y8_N14
\ps2_ACCLL|Mux16~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~10_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|Mux14~5_combout\) # (!\ps2_ACCLL|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|Mux14~5_combout\,
	combout => \ps2_ACCLL|Mux16~10_combout\);

-- Location: LCCOMB_X24_Y8_N8
\ps2_ACCLL|Mux25~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux16~10_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux16~10_combout\,
	combout => \ps2_ACCLL|Mux25~26_combout\);

-- Location: LCCOMB_X21_Y8_N14
\ps2_ACCLL|Mux16~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~11_combout\ = (!\ps2_ACCLL|ascii\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux16~11_combout\);

-- Location: LCCOMB_X20_Y11_N30
\ps2_ACCLL|Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux15~2_combout\);

-- Location: LCCOMB_X20_Y8_N12
\ps2_ACCLL|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~1_combout\ = (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux15~2_combout\,
	combout => \ps2_ACCLL|Mux16~1_combout\);

-- Location: LCCOMB_X24_Y8_N18
\ps2_ACCLL|Mux16~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~9_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux16~1_combout\)) # (!\ps2_ACCLL|ascii\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux16~9_combout\);

-- Location: LCCOMB_X24_Y8_N30
\ps2_ACCLL|Mux16~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux16~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux25~26_combout\ & (\ps2_ACCLL|Mux16~11_combout\)) # (!\ps2_ACCLL|Mux25~26_combout\ & ((\ps2_ACCLL|Mux16~9_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|Mux25~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux25~26_combout\,
	datac => \ps2_ACCLL|Mux16~11_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux16~12_combout\);

-- Location: LCCOMB_X24_Y8_N6
\ps2_ACCLL|Mux25~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux25~26_combout\ & (\ps2_ACCLL|Mux16~11_combout\)) # (!\ps2_ACCLL|Mux25~26_combout\ & ((\ps2_ACCLL|Mux16~9_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux25~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux16~11_combout\,
	datac => \ps2_ACCLL|Mux25~26_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~27_combout\);

-- Location: LCCOMB_X21_Y8_N24
\ps2_ACCLL|Mux25~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~22_combout\ = (\ps2_ACCLL|ascii\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux16~0_combout\,
	combout => \ps2_ACCLL|Mux25~22_combout\);

-- Location: LCCOMB_X24_Y8_N22
\ps2_ACCLL|Mux25~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux25~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~22_combout\,
	combout => \ps2_ACCLL|Mux25~23_combout\);

-- Location: LCCOMB_X24_Y8_N20
\ps2_ACCLL|Mux25~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (\ps2_ACCLL|Mux16~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux16~10_combout\,
	combout => \ps2_ACCLL|Mux25~24_combout\);

-- Location: LCCOMB_X24_Y8_N24
\ps2_ACCLL|Mux25~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|Mux16~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|Mux16~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~21_combout\);

-- Location: LCCOMB_X24_Y8_N26
\ps2_ACCLL|Mux25~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux25~24_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~21_combout\ & (!\ps2_ACCLL|Mux25~23_combout\)) # (!\ps2_ACCLL|Mux25~21_combout\ & 
-- ((\ps2_ACCLL|Mux25~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~23_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~24_combout\,
	datad => \ps2_ACCLL|Mux25~21_combout\,
	combout => \ps2_ACCLL|Mux25~25_combout\);

-- Location: LCCOMB_X24_Y8_N0
\ps2_ACCLL|Mux25~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~43_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|Mux25~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux25~27_combout\,
	combout => \ps2_ACCLL|Mux25~43_combout\);

-- Location: LCCOMB_X24_Y8_N28
\ps2_ACCLL|Mux25~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~43_combout\ & ((\ps2_ACCLL|Mux25~25_combout\))) # (!\ps2_ACCLL|Mux25~43_combout\ & (\ps2_ACCLL|Mux25~27_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux25~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~25_combout\,
	datad => \ps2_ACCLL|Mux25~43_combout\,
	combout => \ps2_ACCLL|Mux25~28_combout\);

-- Location: LCCOMB_X24_Y8_N16
\ps2_ACCLL|Mux25~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~29_combout\ = (\ps2_ACCLL|Mux29~5_combout\ & (\ps2_ACCLL|Mux25~19_combout\ & ((\ps2_ACCLL|Mux25~28_combout\)))) # (!\ps2_ACCLL|Mux29~5_combout\ & ((\ps2_ACCLL|Mux16~12_combout\) # ((\ps2_ACCLL|Mux25~19_combout\ & 
-- \ps2_ACCLL|Mux25~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~5_combout\,
	datab => \ps2_ACCLL|Mux25~19_combout\,
	datac => \ps2_ACCLL|Mux16~12_combout\,
	datad => \ps2_ACCLL|Mux25~28_combout\,
	combout => \ps2_ACCLL|Mux25~29_combout\);

-- Location: LCCOMB_X21_Y8_N12
\ps2_ACCLL|Mux25~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~46_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ascii\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~46_combout\);

-- Location: LCCOMB_X23_Y8_N20
\ps2_ACCLL|Mux25~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~11_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~10_combout\,
	datad => \ps2_ACCLL|Mux16~11_combout\,
	combout => \ps2_ACCLL|Mux25~30_combout\);

-- Location: LCCOMB_X23_Y8_N30
\ps2_ACCLL|Mux25~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~31_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux25~30_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
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
	datad => \ps2_ACCLL|Mux25~30_combout\,
	combout => \ps2_ACCLL|Mux25~31_combout\);

-- Location: LCCOMB_X23_Y8_N24
\ps2_ACCLL|Mux25~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~44_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux25~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux25~27_combout\,
	combout => \ps2_ACCLL|Mux25~44_combout\);

-- Location: LCCOMB_X23_Y8_N12
\ps2_ACCLL|Mux25~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~32_combout\ = (\ps2_ACCLL|Mux25~44_combout\ & ((\ps2_ACCLL|Mux25~27_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux25~31_combout\)))) # (!\ps2_ACCLL|Mux25~44_combout\ & (((\ps2_ACCLL|Mux25~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux25~31_combout\,
	datad => \ps2_ACCLL|Mux25~44_combout\,
	combout => \ps2_ACCLL|Mux25~32_combout\);

-- Location: LCCOMB_X21_Y9_N0
\ps2_ACCLL|Mux25~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~18_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~18_combout\);

-- Location: LCCOMB_X21_Y8_N6
\ps2_ACCLL|Mux25~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~47_combout\ = (!\ps2_ACCLL|ascii\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux25~47_combout\);

-- Location: LCCOMB_X23_Y8_N6
\ps2_ACCLL|Mux25~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~38_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux16~11_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux16~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux16~10_combout\,
	datad => \ps2_ACCLL|Mux16~11_combout\,
	combout => \ps2_ACCLL|Mux25~38_combout\);

-- Location: LCCOMB_X23_Y8_N4
\ps2_ACCLL|Mux25~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~39_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~38_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux25~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~47_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux25~38_combout\,
	combout => \ps2_ACCLL|Mux25~39_combout\);

-- Location: LCCOMB_X23_Y8_N10
\ps2_ACCLL|Mux25~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~40_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux25~27_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux25~39_combout\ & ((\ps2_ACCLL|Mux25~27_combout\))) # (!\ps2_ACCLL|Mux25~39_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux25~39_combout\,
	datad => \ps2_ACCLL|Mux25~27_combout\,
	combout => \ps2_ACCLL|Mux25~40_combout\);

-- Location: LCCOMB_X23_Y8_N8
\ps2_ACCLL|Mux25~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~41_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~40_combout\) # ((\ps2_ACCLL|Mux25~18_combout\ & \ps2_ACCLL|Mux25~39_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux25~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux25~39_combout\,
	datad => \ps2_ACCLL|Mux25~40_combout\,
	combout => \ps2_ACCLL|Mux25~41_combout\);

-- Location: LCCOMB_X24_Y8_N12
\ps2_ACCLL|Mux25~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~34_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux16~10_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- \ps2_ACCLL|Mux16~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux16~10_combout\,
	combout => \ps2_ACCLL|Mux25~34_combout\);

-- Location: LCCOMB_X24_Y8_N2
\ps2_ACCLL|Mux25~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux25~34_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux16~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~8_combout\,
	datad => \ps2_ACCLL|Mux25~34_combout\,
	combout => \ps2_ACCLL|Mux25~35_combout\);

-- Location: LCCOMB_X24_Y8_N10
\ps2_ACCLL|Mux25~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux16~11_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux16~11_combout\,
	datad => \ps2_ACCLL|Mux16~9_combout\,
	combout => \ps2_ACCLL|Mux25~33_combout\);

-- Location: LCCOMB_X23_Y8_N18
\ps2_ACCLL|Mux25~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~45_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux25~35_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux25~35_combout\,
	combout => \ps2_ACCLL|Mux25~45_combout\);

-- Location: LCCOMB_X23_Y8_N2
\ps2_ACCLL|Mux25~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~36_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux25~33_combout\) # (\ps2_ACCLL|Mux25~45_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux25~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~35_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux25~33_combout\,
	datad => \ps2_ACCLL|Mux25~45_combout\,
	combout => \ps2_ACCLL|Mux25~36_combout\);

-- Location: LCCOMB_X23_Y8_N0
\ps2_ACCLL|Mux25~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~37_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux25~36_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux16~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux16~12_combout\,
	datad => \ps2_ACCLL|Mux25~36_combout\,
	combout => \ps2_ACCLL|Mux25~37_combout\);

-- Location: LCCOMB_X23_Y8_N26
\ps2_ACCLL|Mux25~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~42_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux25~37_combout\ & ((\ps2_ACCLL|Mux25~41_combout\))) # (!\ps2_ACCLL|Mux25~37_combout\ & (\ps2_ACCLL|Mux25~32_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux25~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~32_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux25~41_combout\,
	datad => \ps2_ACCLL|Mux25~37_combout\,
	combout => \ps2_ACCLL|Mux25~42_combout\);

-- Location: LCCOMB_X22_Y8_N18
\ps2_ACCLL|Mux40~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~40_combout\ = (\ps2_ACCLL|Mux25~29_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux25~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux25~29_combout\,
	datad => \ps2_ACCLL|Mux25~42_combout\,
	combout => \ps2_ACCLL|Mux40~40_combout\);

-- Location: LCCOMB_X22_Y8_N22
\ps2_ACCLL|Mux40~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~34_combout\ = (\ps2_ACCLL|Mux40~40_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|caps_lock~1_combout\ & \ps2_ACCLL|Mux42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|caps_lock~1_combout\,
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~34_combout\);

-- Location: LCCOMB_X17_Y11_N10
\ps2_ACCLL|Mux24~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~14_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~14_combout\);

-- Location: LCCOMB_X22_Y10_N6
\ps2_ACCLL|Mux40~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~36_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux24~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux24~14_combout\,
	combout => \ps2_ACCLL|Mux40~36_combout\);

-- Location: LCCOMB_X22_Y8_N14
\ps2_ACCLL|Mux40~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~32_combout\ = (\ps2_ACCLL|Mux40~40_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux40~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux40~36_combout\,
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~32_combout\);

-- Location: LCCOMB_X22_Y8_N30
\ps2_ACCLL|Mux40~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~25_combout\ = (\ps2_ACCLL|Mux25~19_combout\) # ((\ps2_ACCLL|Mux25~29_combout\) # ((\ps2_ACCLL|Mux38~8_combout\ & \ps2_ACCLL|Mux25~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~19_combout\,
	datab => \ps2_ACCLL|Mux38~8_combout\,
	datac => \ps2_ACCLL|Mux25~29_combout\,
	datad => \ps2_ACCLL|Mux25~42_combout\,
	combout => \ps2_ACCLL|Mux40~25_combout\);

-- Location: LCCOMB_X20_Y11_N8
\ps2_ACCLL|caps_lock~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|caps_lock~0_combout\);

-- Location: LCCOMB_X16_Y10_N28
\ps2_ACCLL|Mux38~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux38~16_combout\);

-- Location: LCCOMB_X17_Y9_N6
\ps2_ACCLL|caps_lock~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~3_combout\ = (\ps2_ACCLL|caps_lock~0_combout\ & (\ps2_ACCLL|Mux38~16_combout\ & \ps2_ACCLL|state.translate~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|caps_lock~0_combout\,
	datac => \ps2_ACCLL|Mux38~16_combout\,
	datad => \ps2_ACCLL|state.translate~q\,
	combout => \ps2_ACCLL|caps_lock~3_combout\);

-- Location: LCCOMB_X17_Y9_N16
\ps2_ACCLL|shift_r~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_r~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|caps_lock~3_combout\ & ((!\ps2_ACCLL|break~q\))) # (!\ps2_ACCLL|caps_lock~3_combout\ & (\ps2_ACCLL|shift_r~q\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|shift_r~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_r~q\,
	datab => \ps2_ACCLL|break~q\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|caps_lock~3_combout\,
	combout => \ps2_ACCLL|shift_r~0_combout\);

-- Location: FF_X19_Y9_N25
\ps2_ACCLL|shift_r\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|shift_r~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|shift_r~q\);

-- Location: LCCOMB_X19_Y7_N24
\ps2_ACCLL|shift_l~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|shift_l~2_combout\);

-- Location: LCCOMB_X20_Y7_N20
\ps2_ACCLL|shift_l~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|state.translate~q\ & \ps2_ACCLL|Equal0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|state.translate~q\,
	datad => \ps2_ACCLL|Equal0~12_combout\,
	combout => \ps2_ACCLL|shift_l~3_combout\);

-- Location: LCCOMB_X20_Y7_N10
\ps2_ACCLL|shift_l~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|shift_l~4_combout\ = (\ps2_ACCLL|shift_l~2_combout\ & ((\ps2_ACCLL|shift_l~3_combout\ & (!\ps2_ACCLL|break~q\)) # (!\ps2_ACCLL|shift_l~3_combout\ & ((\ps2_ACCLL|shift_l~q\))))) # (!\ps2_ACCLL|shift_l~2_combout\ & (((\ps2_ACCLL|shift_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|break~q\,
	datab => \ps2_ACCLL|shift_l~2_combout\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_l~3_combout\,
	combout => \ps2_ACCLL|shift_l~4_combout\);

-- Location: FF_X20_Y7_N11
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

-- Location: LCCOMB_X16_Y8_N28
\ps2_ACCLL|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~1_combout\ = (\ps2_ACCLL|shift_r~q\) # (\ps2_ACCLL|shift_l~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|shift_r~q\,
	datad => \ps2_ACCLL|shift_l~q\,
	combout => \ps2_ACCLL|process_0~1_combout\);

-- Location: LCCOMB_X19_Y11_N26
\ps2_ACCLL|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux15~0_combout\);

-- Location: LCCOMB_X23_Y10_N16
\ps2_ACCLL|Mux40~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~0_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux42~2_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux40~29_combout\);

-- Location: LCCOMB_X22_Y8_N26
\ps2_ACCLL|Mux40~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~30_combout\ = (\ps2_ACCLL|Mux40~29_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux40~29_combout\ & (((\ps2_ACCLL|Mux40~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~29_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~30_combout\);

-- Location: LCCOMB_X24_Y9_N8
\ps2_ACCLL|Mux40~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~26_combout\ = (\ps2_ACCLL|Mux42~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux40~26_combout\);

-- Location: LCCOMB_X24_Y9_N30
\ps2_ACCLL|Mux40~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~27_combout\ = (\ps2_ACCLL|Mux24~14_combout\ & (((\ps2_ACCLL|Mux40~26_combout\)))) # (!\ps2_ACCLL|Mux24~14_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux15~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux40~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~0_combout\,
	datab => \ps2_ACCLL|Mux40~26_combout\,
	datac => \ps2_ACCLL|Mux24~14_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux40~27_combout\);

-- Location: LCCOMB_X22_Y8_N12
\ps2_ACCLL|Mux40~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~28_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux40~27_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|Mux40~27_combout\ & 
-- ((\ps2_ACCLL|Mux40~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux40~27_combout\,
	datad => \ps2_ACCLL|Mux40~40_combout\,
	combout => \ps2_ACCLL|Mux40~28_combout\);

-- Location: LCCOMB_X22_Y8_N28
\ps2_ACCLL|Mux40~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~31_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux40~28_combout\ & ((\ps2_ACCLL|Mux40~30_combout\))) # (!\ps2_ACCLL|Mux40~28_combout\ & (\ps2_ACCLL|Mux40~25_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux40~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~25_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux40~30_combout\,
	datad => \ps2_ACCLL|Mux40~28_combout\,
	combout => \ps2_ACCLL|Mux40~31_combout\);

-- Location: LCCOMB_X22_Y8_N8
\ps2_ACCLL|Mux40~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~31_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux40~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux40~32_combout\,
	datad => \ps2_ACCLL|Mux40~31_combout\,
	combout => \ps2_ACCLL|Mux40~33_combout\);

-- Location: LCCOMB_X15_Y10_N2
\ps2_ACCLL|Mux40~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux40~16_combout\);

-- Location: LCCOMB_X15_Y10_N8
\ps2_ACCLL|Mux40~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~37_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux40~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|Mux40~16_combout\,
	combout => \ps2_ACCLL|Mux40~37_combout\);

-- Location: LCCOMB_X22_Y10_N4
\ps2_ACCLL|Mux40~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux40~17_combout\);

-- Location: LCCOMB_X22_Y10_N18
\ps2_ACCLL|Mux40~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|Mux40~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux40~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux40~17_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux40~18_combout\);

-- Location: LCCOMB_X23_Y8_N28
\ps2_ACCLL|Mux40~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~19_combout\ = (!\ps2_ACCLL|Mux40~18_combout\ & ((\ps2_ACCLL|Mux25~29_combout\) # ((\ps2_ACCLL|Mux38~8_combout\ & \ps2_ACCLL|Mux25~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~8_combout\,
	datab => \ps2_ACCLL|Mux40~18_combout\,
	datac => \ps2_ACCLL|Mux25~42_combout\,
	datad => \ps2_ACCLL|Mux25~29_combout\,
	combout => \ps2_ACCLL|Mux40~19_combout\);

-- Location: LCCOMB_X23_Y8_N22
\ps2_ACCLL|Mux40~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~20_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux40~19_combout\) # ((\ps2_ACCLL|Mux40~37_combout\ & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~37_combout\,
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux40~19_combout\,
	combout => \ps2_ACCLL|Mux40~20_combout\);

-- Location: LCCOMB_X22_Y8_N10
\ps2_ACCLL|Mux40~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~14_combout\ = (!\ps2_ACCLL|Mux40~36_combout\ & ((\ps2_ACCLL|Mux25~29_combout\) # ((\ps2_ACCLL|Mux38~8_combout\ & \ps2_ACCLL|Mux25~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|Mux38~8_combout\,
	datac => \ps2_ACCLL|Mux25~29_combout\,
	datad => \ps2_ACCLL|Mux25~42_combout\,
	combout => \ps2_ACCLL|Mux40~14_combout\);

-- Location: LCCOMB_X22_Y8_N4
\ps2_ACCLL|Mux40~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~15_combout\ = (\ps2_ACCLL|Mux40~14_combout\) # ((\ps2_ACCLL|Mux40~36_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux40~14_combout\,
	combout => \ps2_ACCLL|Mux40~15_combout\);

-- Location: LCCOMB_X19_Y11_N14
\ps2_ACCLL|Mux17~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~9_combout\);

-- Location: LCCOMB_X24_Y8_N14
\ps2_ACCLL|Mux40~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~38_combout\ = (\ps2_ACCLL|Mux25~29_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux25~29_combout\,
	combout => \ps2_ACCLL|Mux40~38_combout\);

-- Location: LCCOMB_X23_Y10_N28
\ps2_ACCLL|Mux40~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~39_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux16~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|Mux16~12_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux16~12_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux40~39_combout\);

-- Location: LCCOMB_X22_Y8_N2
\ps2_ACCLL|Mux40~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~21_combout\ = (!\ps2_ACCLL|Mux15~0_combout\ & ((\ps2_ACCLL|Mux25~29_combout\) # ((\ps2_ACCLL|Mux38~8_combout\ & \ps2_ACCLL|Mux25~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~0_combout\,
	datab => \ps2_ACCLL|Mux38~8_combout\,
	datac => \ps2_ACCLL|Mux25~29_combout\,
	datad => \ps2_ACCLL|Mux25~42_combout\,
	combout => \ps2_ACCLL|Mux40~21_combout\);

-- Location: LCCOMB_X22_Y8_N24
\ps2_ACCLL|Mux40~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux40~39_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux40~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux40~39_combout\,
	datad => \ps2_ACCLL|Mux40~21_combout\,
	combout => \ps2_ACCLL|Mux40~22_combout\);

-- Location: LCCOMB_X22_Y8_N6
\ps2_ACCLL|Mux40~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux40~38_combout\) # ((\ps2_ACCLL|Mux17~9_combout\ & !\ps2_ACCLL|Mux40~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux40~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux17~9_combout\,
	datac => \ps2_ACCLL|Mux40~38_combout\,
	datad => \ps2_ACCLL|Mux40~22_combout\,
	combout => \ps2_ACCLL|Mux40~23_combout\);

-- Location: LCCOMB_X22_Y8_N0
\ps2_ACCLL|Mux40~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~24_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux40~20_combout\ & ((\ps2_ACCLL|Mux40~23_combout\))) # (!\ps2_ACCLL|Mux40~20_combout\ & (\ps2_ACCLL|Mux40~15_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (\ps2_ACCLL|Mux40~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux40~20_combout\,
	datac => \ps2_ACCLL|Mux40~15_combout\,
	datad => \ps2_ACCLL|Mux40~23_combout\,
	combout => \ps2_ACCLL|Mux40~24_combout\);

-- Location: LCCOMB_X22_Y8_N20
\ps2_ACCLL|Mux40~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux40~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux40~33_combout\ & (\ps2_ACCLL|Mux40~34_combout\)) # (!\ps2_ACCLL|Mux40~33_combout\ & ((\ps2_ACCLL|Mux40~24_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux40~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~34_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux40~33_combout\,
	datad => \ps2_ACCLL|Mux40~24_combout\,
	combout => \ps2_ACCLL|Mux40~35_combout\);

-- Location: LCCOMB_X22_Y8_N16
\ps2_ACCLL|ascii~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~42_combout\ = (\ps2_ACCLL|control_l~q\ & (((!\ps2_ACCLL|Mux8~14_combout\)))) # (!\ps2_ACCLL|control_l~q\ & ((\ps2_ACCLL|control_r~q\ & (!\ps2_ACCLL|Mux8~14_combout\)) # (!\ps2_ACCLL|control_r~q\ & ((!\ps2_ACCLL|Mux40~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_l~q\,
	datab => \ps2_ACCLL|control_r~q\,
	datac => \ps2_ACCLL|Mux8~14_combout\,
	datad => \ps2_ACCLL|Mux40~35_combout\,
	combout => \ps2_ACCLL|ascii~42_combout\);

-- Location: FF_X22_Y8_N17
\ps2_ACCLL|ascii[4]\ : dffeas
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
	q => \ps2_ACCLL|ascii\(4));

-- Location: LCCOMB_X21_Y5_N14
\ps2_ACCLL|ascii_code[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[4]~5_combout\ = !\ps2_ACCLL|ascii\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(4),
	combout => \ps2_ACCLL|ascii_code[4]~5_combout\);

-- Location: FF_X21_Y1_N7
\ps2_ACCLL|ascii_code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[4]~5_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(4));

-- Location: LCCOMB_X16_Y9_N24
\ps2_ACCLL|Mux20~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux19~2_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux19~2_combout\ & 
-- \ps2_ACCLL|Mux38~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|Mux38~8_combout\,
	combout => \ps2_ACCLL|Mux20~7_combout\);

-- Location: LCCOMB_X16_Y9_N6
\ps2_ACCLL|Mux20~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~8_combout\ = (\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|Mux19~2_combout\ & !\ps2_ACCLL|Mux20~7_combout\)))) # (!\ps2_ACCLL|ascii\(0) & (((!\ps2_ACCLL|Mux20~7_combout\)) # (!\ps2_ACCLL|Mux24~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux24~14_combout\,
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|Mux20~7_combout\,
	combout => \ps2_ACCLL|Mux20~8_combout\);

-- Location: LCCOMB_X16_Y9_N4
\ps2_ACCLL|Mux20~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~28_combout\ = (\ps2_ACCLL|Mux13~9_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux13~9_combout\ & (((!\ps2_ACCLL|ascii\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux13~9_combout\,
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~28_combout\);

-- Location: LCCOMB_X23_Y11_N0
\ps2_ACCLL|Mux20~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux20~9_combout\);

-- Location: LCCOMB_X23_Y11_N26
\ps2_ACCLL|Mux20~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~10_combout\ = (\ps2_ACCLL|Mux20~9_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Equal1~0_combout\)))) # (!\ps2_ACCLL|Mux20~9_combout\ & (((!\ps2_ACCLL|ascii\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(0),
	datac => \ps2_ACCLL|Equal1~0_combout\,
	datad => \ps2_ACCLL|Mux20~9_combout\,
	combout => \ps2_ACCLL|Mux20~10_combout\);

-- Location: LCCOMB_X16_Y9_N8
\ps2_ACCLL|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~10_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux20~28_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux20~10_combout\,
	combout => \ps2_ACCLL|Mux12~0_combout\);

-- Location: LCCOMB_X16_Y9_N2
\ps2_ACCLL|Mux20~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~29_combout\ = (\ps2_ACCLL|ascii\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux19~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (!\ps2_ACCLL|Mux19~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux20~29_combout\);

-- Location: LCCOMB_X16_Y9_N14
\ps2_ACCLL|Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux12~0_combout\ & ((\ps2_ACCLL|Mux20~29_combout\))) # (!\ps2_ACCLL|Mux12~0_combout\ & (\ps2_ACCLL|Mux20~8_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~8_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux12~0_combout\,
	datad => \ps2_ACCLL|Mux20~29_combout\,
	combout => \ps2_ACCLL|Mux12~1_combout\);

-- Location: LCCOMB_X19_Y6_N30
\ps2_ACCLL|caps_lock~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~2_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|caps_lock~2_combout\);

-- Location: LCCOMB_X19_Y6_N28
\ps2_ACCLL|Mux20~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~17_combout\ = (!\ps2_ACCLL|ascii\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|caps_lock~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|Mux20~17_combout\);

-- Location: LCCOMB_X19_Y6_N6
\ps2_ACCLL|Mux20~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~18_combout\ = (\ps2_ACCLL|Mux20~17_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux38~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux38~8_combout\,
	datad => \ps2_ACCLL|Mux20~17_combout\,
	combout => \ps2_ACCLL|Mux20~18_combout\);

-- Location: LCCOMB_X19_Y6_N8
\ps2_ACCLL|Mux42~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~16_combout\);

-- Location: LCCOMB_X19_Y6_N0
\ps2_ACCLL|Mux20~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~16_combout\ = (\ps2_ACCLL|Mux20~5_combout\) # ((!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|Mux42~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux42~16_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux20~5_combout\,
	combout => \ps2_ACCLL|Mux20~16_combout\);

-- Location: LCCOMB_X19_Y6_N24
\ps2_ACCLL|Mux20~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|Mux20~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((!\ps2_ACCLL|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux20~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux20~6_combout\,
	combout => \ps2_ACCLL|Mux20~14_combout\);

-- Location: LCCOMB_X19_Y6_N22
\ps2_ACCLL|Mux20~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~15_combout\ = (\ps2_ACCLL|Mux20~14_combout\ & (!\ps2_ACCLL|ascii\(0))) # (!\ps2_ACCLL|Mux20~14_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux20~14_combout\,
	combout => \ps2_ACCLL|Mux20~15_combout\);

-- Location: LCCOMB_X19_Y6_N26
\ps2_ACCLL|Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux20~15_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux20~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux20~16_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux20~15_combout\,
	combout => \ps2_ACCLL|Mux12~2_combout\);

-- Location: LCCOMB_X19_Y6_N14
\ps2_ACCLL|Mux20~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux20~11_combout\);

-- Location: LCCOMB_X19_Y6_N16
\ps2_ACCLL|Mux20~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux20~11_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux13~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux20~11_combout\,
	datad => \ps2_ACCLL|Mux13~2_combout\,
	combout => \ps2_ACCLL|Mux20~12_combout\);

-- Location: LCCOMB_X19_Y6_N18
\ps2_ACCLL|Mux20~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~13_combout\ = (\ps2_ACCLL|Mux20~12_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|caps_lock~1_combout\))) # (!\ps2_ACCLL|Mux20~12_combout\ & (((!\ps2_ACCLL|ascii\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(0),
	datad => \ps2_ACCLL|Mux20~12_combout\,
	combout => \ps2_ACCLL|Mux20~13_combout\);

-- Location: LCCOMB_X19_Y6_N4
\ps2_ACCLL|Mux12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux12~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux12~2_combout\ & (\ps2_ACCLL|Mux20~18_combout\)) # (!\ps2_ACCLL|Mux12~2_combout\ & ((\ps2_ACCLL|Mux20~13_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux20~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux12~2_combout\,
	datad => \ps2_ACCLL|Mux20~13_combout\,
	combout => \ps2_ACCLL|Mux12~3_combout\);

-- Location: LCCOMB_X19_Y9_N22
\ps2_ACCLL|ascii~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~31_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux12~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux12~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux12~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux12~3_combout\,
	datad => \ps2_ACCLL|process_0~0_combout\,
	combout => \ps2_ACCLL|ascii~31_combout\);

-- Location: LCCOMB_X22_Y10_N16
\ps2_ACCLL|ascii~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~33_combout\ = (\ps2_ACCLL|Mux40~36_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux40~36_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|process_0~1_combout\,
	combout => \ps2_ACCLL|ascii~33_combout\);

-- Location: LCCOMB_X22_Y10_N26
\ps2_ACCLL|ascii~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~34_combout\ = (\ps2_ACCLL|ascii~33_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux42~2_combout\ & \ps2_ACCLL|caps_lock~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii~33_combout\,
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|caps_lock~1_combout\,
	combout => \ps2_ACCLL|ascii~34_combout\);

-- Location: LCCOMB_X20_Y11_N28
\ps2_ACCLL|Mux20~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~25_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~25_combout\);

-- Location: LCCOMB_X20_Y11_N14
\ps2_ACCLL|Mux20~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~22_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~22_combout\);

-- Location: LCCOMB_X20_Y11_N10
\ps2_ACCLL|Mux20~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~23_combout\ = (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux20~23_combout\);

-- Location: LCCOMB_X20_Y11_N0
\ps2_ACCLL|Mux20~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~24_combout\ = (\ps2_ACCLL|Mux20~22_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux16~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|Mux20~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~22_combout\,
	datad => \ps2_ACCLL|Mux20~23_combout\,
	combout => \ps2_ACCLL|Mux20~24_combout\);

-- Location: LCCOMB_X20_Y11_N22
\ps2_ACCLL|Mux20~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|Mux20~4_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|Mux16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux16~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux20~26_combout\);

-- Location: LCCOMB_X21_Y11_N8
\ps2_ACCLL|Mux29~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~6_combout\ = (\ps2_ACCLL|Mux20~24_combout\) # ((!\ps2_ACCLL|ascii\(0) & ((\ps2_ACCLL|Mux20~25_combout\) # (\ps2_ACCLL|Mux20~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(0),
	datab => \ps2_ACCLL|Mux20~25_combout\,
	datac => \ps2_ACCLL|Mux20~24_combout\,
	datad => \ps2_ACCLL|Mux20~26_combout\,
	combout => \ps2_ACCLL|Mux29~6_combout\);

-- Location: LCCOMB_X21_Y11_N12
\ps2_ACCLL|Mux20~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux20~20_combout\);

-- Location: LCCOMB_X20_Y11_N16
\ps2_ACCLL|Mux20~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux20~4_combout\) # ((\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|caps_lock~0_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|e0_code~q\ & 
-- \ps2_ACCLL|caps_lock~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux20~4_combout\,
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|caps_lock~0_combout\,
	combout => \ps2_ACCLL|Mux20~19_combout\);

-- Location: LCCOMB_X21_Y11_N2
\ps2_ACCLL|Mux20~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~21_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux20~20_combout\ & \ps2_ACCLL|Mux20~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux20~20_combout\,
	datad => \ps2_ACCLL|Mux20~19_combout\,
	combout => \ps2_ACCLL|Mux20~21_combout\);

-- Location: LCCOMB_X23_Y11_N18
\ps2_ACCLL|Mux29~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux29~22_combout\);

-- Location: LCCOMB_X23_Y11_N28
\ps2_ACCLL|Mux29~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~7_combout\ = (\ps2_ACCLL|Mux29~22_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux29~22_combout\ & (((\ps2_ACCLL|Mux29~6_combout\) # (\ps2_ACCLL|Mux20~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux29~22_combout\,
	datac => \ps2_ACCLL|Mux29~6_combout\,
	datad => \ps2_ACCLL|Mux20~21_combout\,
	combout => \ps2_ACCLL|Mux29~7_combout\);

-- Location: LCCOMB_X23_Y11_N22
\ps2_ACCLL|Mux29~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux29~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux29~7_combout\,
	combout => \ps2_ACCLL|Mux29~8_combout\);

-- Location: LCCOMB_X21_Y11_N30
\ps2_ACCLL|Mux29~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux29~9_combout\);

-- Location: LCCOMB_X21_Y11_N0
\ps2_ACCLL|Mux29~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~10_combout\ = (\ps2_ACCLL|Mux29~6_combout\) # ((\ps2_ACCLL|Mux29~9_combout\) # (\ps2_ACCLL|Mux20~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux29~6_combout\,
	datac => \ps2_ACCLL|Mux29~9_combout\,
	datad => \ps2_ACCLL|Mux20~21_combout\,
	combout => \ps2_ACCLL|Mux29~10_combout\);

-- Location: LCCOMB_X21_Y11_N16
\ps2_ACCLL|Mux29~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~6_combout\) # (\ps2_ACCLL|Mux20~21_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (!\ps2_ACCLL|Mux29~6_combout\ & !\ps2_ACCLL|Mux20~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux29~6_combout\,
	datad => \ps2_ACCLL|Mux20~21_combout\,
	combout => \ps2_ACCLL|Mux29~16_combout\);

-- Location: LCCOMB_X21_Y11_N22
\ps2_ACCLL|Mux29~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- !\ps2_ACCLL|Mux29~16_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux29~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux29~16_combout\,
	combout => \ps2_ACCLL|Mux29~17_combout\);

-- Location: LCCOMB_X21_Y11_N6
\ps2_ACCLL|Mux20~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux20~27_combout\ = (\ps2_ACCLL|Mux29~6_combout\) # (\ps2_ACCLL|Mux20~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux29~6_combout\,
	datad => \ps2_ACCLL|Mux20~21_combout\,
	combout => \ps2_ACCLL|Mux20~27_combout\);

-- Location: LCCOMB_X21_Y11_N4
\ps2_ACCLL|Mux29~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|caps_lock~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|caps_lock~1_combout\ & ((\ps2_ACCLL|Mux20~27_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux20~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|caps_lock~1_combout\,
	datad => \ps2_ACCLL|Mux20~27_combout\,
	combout => \ps2_ACCLL|Mux29~14_combout\);

-- Location: LCCOMB_X19_Y11_N16
\ps2_ACCLL|Mux29~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux29~11_combout\);

-- Location: LCCOMB_X21_Y11_N10
\ps2_ACCLL|Mux29~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~12_combout\ = (\ps2_ACCLL|Mux29~11_combout\) # ((\ps2_ACCLL|Mux29~4_combout\ & ((\ps2_ACCLL|Mux29~6_combout\) # (\ps2_ACCLL|Mux20~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~11_combout\,
	datab => \ps2_ACCLL|Mux29~4_combout\,
	datac => \ps2_ACCLL|Mux29~6_combout\,
	datad => \ps2_ACCLL|Mux20~21_combout\,
	combout => \ps2_ACCLL|Mux29~12_combout\);

-- Location: LCCOMB_X21_Y11_N24
\ps2_ACCLL|Mux29~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|caps_lock~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|caps_lock~1_combout\,
	datad => \ps2_ACCLL|Mux29~12_combout\,
	combout => \ps2_ACCLL|Mux29~13_combout\);

-- Location: LCCOMB_X21_Y11_N18
\ps2_ACCLL|Mux29~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux29~13_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux29~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux29~14_combout\,
	datad => \ps2_ACCLL|Mux29~13_combout\,
	combout => \ps2_ACCLL|Mux29~15_combout\);

-- Location: LCCOMB_X21_Y11_N28
\ps2_ACCLL|Mux29~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux29~15_combout\ & ((\ps2_ACCLL|Mux29~17_combout\))) # (!\ps2_ACCLL|Mux29~15_combout\ & (\ps2_ACCLL|Mux29~10_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux29~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux29~10_combout\,
	datac => \ps2_ACCLL|Mux29~17_combout\,
	datad => \ps2_ACCLL|Mux29~15_combout\,
	combout => \ps2_ACCLL|Mux29~18_combout\);

-- Location: LCCOMB_X21_Y11_N14
\ps2_ACCLL|Mux29~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux29~8_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux29~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux29~8_combout\,
	datad => \ps2_ACCLL|Mux29~18_combout\,
	combout => \ps2_ACCLL|Mux29~19_combout\);

-- Location: LCCOMB_X22_Y11_N10
\ps2_ACCLL|Mux29~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~21_combout\ = (\ps2_ACCLL|Mux29~19_combout\) # ((!\ps2_ACCLL|Mux29~5_combout\ & ((\ps2_ACCLL|Mux29~6_combout\) # (\ps2_ACCLL|Mux20~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~6_combout\,
	datab => \ps2_ACCLL|Mux20~21_combout\,
	datac => \ps2_ACCLL|Mux29~5_combout\,
	datad => \ps2_ACCLL|Mux29~19_combout\,
	combout => \ps2_ACCLL|Mux29~21_combout\);

-- Location: LCCOMB_X23_Y11_N24
\ps2_ACCLL|ascii~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~32_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|Mux25~19_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|Mux40~36_combout\) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux25~19_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux40~36_combout\,
	combout => \ps2_ACCLL|ascii~32_combout\);

-- Location: LCCOMB_X22_Y11_N14
\ps2_ACCLL|ascii~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~35_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ascii~34_combout\) # ((\ps2_ACCLL|Mux29~21_combout\ & \ps2_ACCLL|ascii~32_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux29~21_combout\ & 
-- \ps2_ACCLL|ascii~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii~34_combout\,
	datac => \ps2_ACCLL|Mux29~21_combout\,
	datad => \ps2_ACCLL|ascii~32_combout\,
	combout => \ps2_ACCLL|ascii~35_combout\);

-- Location: LCCOMB_X23_Y11_N6
\ps2_ACCLL|Mux44~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux44~16_combout\);

-- Location: LCCOMB_X21_Y11_N20
\ps2_ACCLL|Mux29~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux29~20_combout\ = (!\ps2_ACCLL|Mux29~5_combout\ & ((\ps2_ACCLL|Mux20~21_combout\) # (\ps2_ACCLL|Mux29~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux20~21_combout\,
	datac => \ps2_ACCLL|Mux29~5_combout\,
	datad => \ps2_ACCLL|Mux29~6_combout\,
	combout => \ps2_ACCLL|Mux29~20_combout\);

-- Location: LCCOMB_X22_Y7_N26
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

-- Location: LCCOMB_X23_Y11_N4
\ps2_ACCLL|Mux44~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (((\ps2_ACCLL|Equal1~0_combout\ & \ps2_ACCLL|shift_l~1_combout\)) # (!\ps2_ACCLL|Mux29~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Equal1~0_combout\,
	datac => \ps2_ACCLL|shift_l~1_combout\,
	datad => \ps2_ACCLL|Mux29~5_combout\,
	combout => \ps2_ACCLL|Mux44~17_combout\);

-- Location: LCCOMB_X23_Y11_N10
\ps2_ACCLL|Mux44~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~18_combout\ = (\ps2_ACCLL|Mux44~17_combout\ & (((\ps2_ACCLL|Mux29~20_combout\) # (\ps2_ACCLL|Mux29~19_combout\)))) # (!\ps2_ACCLL|Mux44~17_combout\ & (\ps2_ACCLL|Mux44~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~16_combout\,
	datab => \ps2_ACCLL|Mux29~20_combout\,
	datac => \ps2_ACCLL|Mux44~17_combout\,
	datad => \ps2_ACCLL|Mux29~19_combout\,
	combout => \ps2_ACCLL|Mux44~18_combout\);

-- Location: LCCOMB_X22_Y11_N30
\ps2_ACCLL|Mux44~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~36_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux40~36_combout\ & ((\ps2_ACCLL|Mux29~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux40~36_combout\,
	datad => \ps2_ACCLL|Mux29~21_combout\,
	combout => \ps2_ACCLL|Mux44~3_combout\);

-- Location: LCCOMB_X22_Y11_N22
\ps2_ACCLL|Mux44~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~5_combout\ = (\ps2_ACCLL|Mux15~0_combout\ & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|Mux15~0_combout\ & ((\ps2_ACCLL|Mux29~20_combout\) # ((\ps2_ACCLL|Mux29~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|Mux29~19_combout\,
	combout => \ps2_ACCLL|Mux44~5_combout\);

-- Location: LCCOMB_X22_Y11_N12
\ps2_ACCLL|Mux44~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~4_combout\ = (\ps2_ACCLL|Mux29~20_combout\) # ((\ps2_ACCLL|Mux42~2_combout\) # (\ps2_ACCLL|Mux29~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux29~20_combout\,
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|Mux29~19_combout\,
	combout => \ps2_ACCLL|Mux44~4_combout\);

-- Location: LCCOMB_X22_Y11_N16
\ps2_ACCLL|Mux44~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux44~4_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux44~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux44~5_combout\,
	datad => \ps2_ACCLL|Mux44~4_combout\,
	combout => \ps2_ACCLL|Mux44~6_combout\);

-- Location: LCCOMB_X22_Y11_N26
\ps2_ACCLL|Mux44~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux29~21_combout\ & ((!\ps2_ACCLL|Mux44~6_combout\) # (!\ps2_ACCLL|Mux15~0_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux44~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux29~21_combout\,
	datad => \ps2_ACCLL|Mux44~6_combout\,
	combout => \ps2_ACCLL|Mux44~7_combout\);

-- Location: LCCOMB_X22_Y11_N8
\ps2_ACCLL|Mux44~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~8_combout\ = (\ps2_ACCLL|Mux44~3_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux44~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~3_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux44~7_combout\,
	combout => \ps2_ACCLL|Mux44~8_combout\);

-- Location: LCCOMB_X23_Y11_N16
\ps2_ACCLL|Mux44~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux44~9_combout\);

-- Location: LCCOMB_X22_Y10_N2
\ps2_ACCLL|Mux44~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux44~2_combout\);

-- Location: LCCOMB_X22_Y10_N10
\ps2_ACCLL|Mux44~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux44~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux44~2_combout\,
	combout => \ps2_ACCLL|Mux44~20_combout\);

-- Location: LCCOMB_X21_Y11_N26
\ps2_ACCLL|Mux44~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~10_combout\ = (\ps2_ACCLL|Mux44~20_combout\ & (\ps2_ACCLL|Mux44~9_combout\)) # (!\ps2_ACCLL|Mux44~20_combout\ & (((\ps2_ACCLL|Mux29~20_combout\) # (\ps2_ACCLL|Mux29~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~9_combout\,
	datab => \ps2_ACCLL|Mux29~20_combout\,
	datac => \ps2_ACCLL|Mux29~19_combout\,
	datad => \ps2_ACCLL|Mux44~20_combout\,
	combout => \ps2_ACCLL|Mux44~10_combout\);

-- Location: LCCOMB_X22_Y11_N4
\ps2_ACCLL|Mux44~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~12_combout\ = (\ps2_ACCLL|Mux15~0_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|Mux15~0_combout\ & ((\ps2_ACCLL|Mux29~20_combout\) # ((\ps2_ACCLL|Mux29~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux29~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|Mux29~19_combout\,
	combout => \ps2_ACCLL|Mux44~12_combout\);

-- Location: LCCOMB_X22_Y11_N2
\ps2_ACCLL|Mux44~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux29~21_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|Mux29~21_combout\,
	combout => \ps2_ACCLL|Mux44~11_combout\);

-- Location: LCCOMB_X22_Y11_N6
\ps2_ACCLL|Mux44~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux44~11_combout\ & ((\ps2_ACCLL|Mux44~12_combout\))) # (!\ps2_ACCLL|Mux44~11_combout\ & (\ps2_ACCLL|Mux44~4_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux44~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~4_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux44~12_combout\,
	datad => \ps2_ACCLL|Mux44~11_combout\,
	combout => \ps2_ACCLL|Mux44~13_combout\);

-- Location: LCCOMB_X22_Y11_N20
\ps2_ACCLL|Mux44~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux44~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux40~36_combout\) # ((\ps2_ACCLL|Mux29~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux40~36_combout\,
	datac => \ps2_ACCLL|Mux29~21_combout\,
	datad => \ps2_ACCLL|Mux44~13_combout\,
	combout => \ps2_ACCLL|Mux44~14_combout\);

-- Location: LCCOMB_X22_Y11_N18
\ps2_ACCLL|Mux44~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~15_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux44~10_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux44~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux44~10_combout\,
	datad => \ps2_ACCLL|Mux44~14_combout\,
	combout => \ps2_ACCLL|Mux44~15_combout\);

-- Location: LCCOMB_X22_Y11_N0
\ps2_ACCLL|Mux44~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux44~19_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux44~15_combout\ & (\ps2_ACCLL|Mux44~18_combout\)) # (!\ps2_ACCLL|Mux44~15_combout\ & ((\ps2_ACCLL|Mux44~8_combout\))))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux44~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux44~18_combout\,
	datac => \ps2_ACCLL|Mux44~8_combout\,
	datad => \ps2_ACCLL|Mux44~15_combout\,
	combout => \ps2_ACCLL|Mux44~19_combout\);

-- Location: LCCOMB_X22_Y11_N24
\ps2_ACCLL|ascii~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~36_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux44~19_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ascii~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|ascii~35_combout\,
	datad => \ps2_ACCLL|Mux44~19_combout\,
	combout => \ps2_ACCLL|ascii~36_combout\);

-- Location: LCCOMB_X22_Y11_N28
\ps2_ACCLL|ascii~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~37_combout\ = (!\ps2_ACCLL|ascii~31_combout\ & !\ps2_ACCLL|ascii~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii~31_combout\,
	datad => \ps2_ACCLL|ascii~36_combout\,
	combout => \ps2_ACCLL|ascii~37_combout\);

-- Location: FF_X22_Y11_N29
\ps2_ACCLL|ascii[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~37_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(0));

-- Location: LCCOMB_X21_Y1_N2
\ps2_ACCLL|ascii_code[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[0]~6_combout\ = !\ps2_ACCLL|ascii\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(0),
	combout => \ps2_ACCLL|ascii_code[0]~6_combout\);

-- Location: FF_X21_Y1_N3
\ps2_ACCLL|ascii_code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[0]~6_combout\,
	ena => \ps2_ACCLL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(0));

-- Location: LCCOMB_X19_Y9_N10
\ps2_ACCLL|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux8~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y6_N28
\ps2_ACCLL|Mux17~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~16_combout\ = (\ps2_ACCLL|Mux25~18_combout\ & (((!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux25~18_combout\ & ((\ps2_ACCLL|Mux17~9_combout\ & (!\ps2_ACCLL|Mux8~0_combout\)) # (!\ps2_ACCLL|Mux17~9_combout\ & ((!\ps2_ACCLL|ascii\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~0_combout\,
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux25~18_combout\,
	datad => \ps2_ACCLL|Mux17~9_combout\,
	combout => \ps2_ACCLL|Mux17~16_combout\);

-- Location: LCCOMB_X21_Y6_N14
\ps2_ACCLL|Mux17~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~17_combout\ = (\ps2_ACCLL|Mux17~16_combout\) # ((\ps2_ACCLL|Mux20~4_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux17~16_combout\,
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~17_combout\);

-- Location: LCCOMB_X21_Y6_N2
\ps2_ACCLL|Mux17~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~15_combout\ = (\ps2_ACCLL|Mux15~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((!\ps2_ACCLL|ascii\(3)))))) # (!\ps2_ACCLL|Mux15~0_combout\ & 
-- (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux17~15_combout\);

-- Location: LCCOMB_X21_Y6_N0
\ps2_ACCLL|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (\ps2_ACCLL|Mux17~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux17~17_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux17~17_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux17~15_combout\,
	combout => \ps2_ACCLL|Mux9~2_combout\);

-- Location: LCCOMB_X21_Y7_N14
\ps2_ACCLL|Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~1_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux15~1_combout\);

-- Location: LCCOMB_X21_Y7_N8
\ps2_ACCLL|Mux17~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~18_combout\ = (\ps2_ACCLL|Mux19~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux15~1_combout\ & \ps2_ACCLL|Mux42~2_combout\)))) # (!\ps2_ACCLL|Mux19~2_combout\ & (((\ps2_ACCLL|Mux15~1_combout\ & 
-- \ps2_ACCLL|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux15~1_combout\,
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux17~18_combout\);

-- Location: LCCOMB_X21_Y6_N30
\ps2_ACCLL|Mux17~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~19_combout\ = (\ps2_ACCLL|Mux17~18_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|Mux17~18_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|Mux17~18_combout\,
	combout => \ps2_ACCLL|Mux17~19_combout\);

-- Location: LCCOMB_X21_Y6_N20
\ps2_ACCLL|Mux17~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~14_combout\ = (\ps2_ACCLL|Mux15~0_combout\ & ((\ps2_ACCLL|Mux25~18_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux25~18_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux15~0_combout\ & 
-- (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~0_combout\,
	datab => \ps2_ACCLL|Mux25~18_combout\,
	datac => \ps2_ACCLL|ascii\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~14_combout\);

-- Location: LCCOMB_X21_Y6_N8
\ps2_ACCLL|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux9~2_combout\ & (\ps2_ACCLL|Mux17~19_combout\)) # (!\ps2_ACCLL|Mux9~2_combout\ & ((\ps2_ACCLL|Mux17~14_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux9~2_combout\,
	datac => \ps2_ACCLL|Mux17~19_combout\,
	datad => \ps2_ACCLL|Mux17~14_combout\,
	combout => \ps2_ACCLL|Mux9~3_combout\);

-- Location: LCCOMB_X22_Y7_N8
\ps2_ACCLL|Mux17~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~10_combout\);

-- Location: LCCOMB_X22_Y7_N18
\ps2_ACCLL|Mux17~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~11_combout\);

-- Location: LCCOMB_X22_Y7_N12
\ps2_ACCLL|Mux17~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux19~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux17~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|Mux17~11_combout\,
	combout => \ps2_ACCLL|Mux17~12_combout\);

-- Location: LCCOMB_X22_Y7_N2
\ps2_ACCLL|Mux17~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~13_combout\ = (\ps2_ACCLL|Mux17~12_combout\ & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|Mux17~12_combout\ & ((\ps2_ACCLL|Mux17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux17~10_combout\,
	datad => \ps2_ACCLL|Mux17~12_combout\,
	combout => \ps2_ACCLL|Mux17~13_combout\);

-- Location: LCCOMB_X22_Y7_N30
\ps2_ACCLL|Mux17~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~4_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|ascii\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux17~4_combout\);

-- Location: LCCOMB_X22_Y7_N24
\ps2_ACCLL|Mux17~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ascii\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux17~3_combout\);

-- Location: LCCOMB_X22_Y7_N16
\ps2_ACCLL|Mux17~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux17~3_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux17~4_combout\,
	datad => \ps2_ACCLL|Mux17~3_combout\,
	combout => \ps2_ACCLL|Mux17~5_combout\);

-- Location: LCCOMB_X22_Y7_N14
\ps2_ACCLL|Mux17~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~2_combout\ & ((\ps2_ACCLL|Mux17~5_combout\))) # (!\ps2_ACCLL|Mux19~2_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (((\ps2_ACCLL|Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|Mux17~5_combout\,
	combout => \ps2_ACCLL|Mux17~6_combout\);

-- Location: LCCOMB_X22_Y7_N4
\ps2_ACCLL|Mux17~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~27_combout\ = (\ps2_ACCLL|Mux17~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|ascii\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux17~9_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|Mux17~9_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux17~27_combout\);

-- Location: LCCOMB_X22_Y7_N0
\ps2_ACCLL|Mux17~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~7_combout\ = (\ps2_ACCLL|shift_l~0_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|shift_l~0_combout\,
	combout => \ps2_ACCLL|Mux17~7_combout\);

-- Location: LCCOMB_X22_Y7_N28
\ps2_ACCLL|Mux17~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~8_combout\ = (\ps2_ACCLL|Mux17~7_combout\ & (((!\ps2_ACCLL|shift_l~1_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|Mux17~7_combout\ & (((!\ps2_ACCLL|ascii\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(3),
	datac => \ps2_ACCLL|shift_l~1_combout\,
	datad => \ps2_ACCLL|Mux17~7_combout\,
	combout => \ps2_ACCLL|Mux17~8_combout\);

-- Location: LCCOMB_X22_Y7_N6
\ps2_ACCLL|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~8_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux17~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~27_combout\,
	datad => \ps2_ACCLL|Mux17~8_combout\,
	combout => \ps2_ACCLL|Mux9~0_combout\);

-- Location: LCCOMB_X22_Y7_N20
\ps2_ACCLL|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux9~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux9~0_combout\ & (\ps2_ACCLL|Mux17~13_combout\)) # (!\ps2_ACCLL|Mux9~0_combout\ & ((\ps2_ACCLL|Mux17~6_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux17~13_combout\,
	datac => \ps2_ACCLL|Mux17~6_combout\,
	datad => \ps2_ACCLL|Mux9~0_combout\,
	combout => \ps2_ACCLL|Mux9~1_combout\);

-- Location: LCCOMB_X21_Y6_N26
\ps2_ACCLL|ascii~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~10_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux9~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|Mux9~3_combout\,
	datad => \ps2_ACCLL|Mux9~1_combout\,
	combout => \ps2_ACCLL|ascii~10_combout\);

-- Location: LCCOMB_X16_Y8_N14
\ps2_ACCLL|Mux41~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|shift_r~q\) # (\ps2_ACCLL|shift_l~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|shift_r~q\,
	datad => \ps2_ACCLL|shift_l~q\,
	combout => \ps2_ACCLL|Mux41~22_combout\);

-- Location: LCCOMB_X16_Y8_N18
\ps2_ACCLL|Mux41~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux41~7_combout\);

-- Location: LCCOMB_X17_Y6_N24
\ps2_ACCLL|Mux41~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~23_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~23_combout\);

-- Location: LCCOMB_X20_Y8_N6
\ps2_ACCLL|Mux17~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux16~1_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux17~20_combout\);

-- Location: LCCOMB_X20_Y8_N4
\ps2_ACCLL|Mux17~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~21_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux17~20_combout\)) # (!\ps2_ACCLL|ascii\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux17~20_combout\,
	combout => \ps2_ACCLL|Mux17~21_combout\);

-- Location: LCCOMB_X20_Y8_N16
\ps2_ACCLL|Mux17~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux17~23_combout\);

-- Location: LCCOMB_X20_Y8_N18
\ps2_ACCLL|Mux17~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux20~4_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|Mux19~2_combout\,
	combout => \ps2_ACCLL|Mux17~22_combout\);

-- Location: LCCOMB_X20_Y8_N10
\ps2_ACCLL|Mux17~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~24_combout\ = (\ps2_ACCLL|Mux17~23_combout\ & ((\ps2_ACCLL|Mux17~22_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux17~22_combout\ & (!\ps2_ACCLL|ascii\(3))))) # (!\ps2_ACCLL|Mux17~23_combout\ & 
-- (!\ps2_ACCLL|ascii\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(3),
	datab => \ps2_ACCLL|Mux17~23_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux17~22_combout\,
	combout => \ps2_ACCLL|Mux17~24_combout\);

-- Location: LCCOMB_X19_Y8_N16
\ps2_ACCLL|Mux26~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~2_combout\ = (!\ps2_ACCLL|Mux29~5_combout\ & ((\ps2_ACCLL|Mux17~21_combout\) # ((\ps2_ACCLL|Mux17~24_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~21_combout\,
	datab => \ps2_ACCLL|Mux17~24_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux29~5_combout\,
	combout => \ps2_ACCLL|Mux26~2_combout\);

-- Location: LCCOMB_X20_Y8_N22
\ps2_ACCLL|Mux26~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~27_combout\ = (\ps2_ACCLL|Mux17~21_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux26~27_combout\);

-- Location: LCCOMB_X19_Y7_N14
\ps2_ACCLL|Mux26~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux26~4_combout\);

-- Location: LCCOMB_X21_Y8_N0
\ps2_ACCLL|Mux26~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux26~3_combout\);

-- Location: LCCOMB_X20_Y8_N28
\ps2_ACCLL|Mux17~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~25_combout\ = (\ps2_ACCLL|Mux17~21_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux17~25_combout\);

-- Location: LCCOMB_X20_Y8_N30
\ps2_ACCLL|Mux26~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~5_combout\ = (\ps2_ACCLL|Mux26~4_combout\ & ((\ps2_ACCLL|Mux26~3_combout\) # ((\ps2_ACCLL|Mux17~25_combout\)))) # (!\ps2_ACCLL|Mux26~4_combout\ & (\ps2_ACCLL|Mux26~3_combout\ & (\ps2_ACCLL|Mux17~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~4_combout\,
	datab => \ps2_ACCLL|Mux26~3_combout\,
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~5_combout\);

-- Location: LCCOMB_X20_Y8_N0
\ps2_ACCLL|Mux26~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~6_combout\ = (\ps2_ACCLL|Mux17~25_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~6_combout\);

-- Location: LCCOMB_X20_Y8_N26
\ps2_ACCLL|Mux26~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux26~5_combout\ & ((\ps2_ACCLL|Mux26~6_combout\))) # (!\ps2_ACCLL|Mux26~5_combout\ & (\ps2_ACCLL|Mux26~27_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~27_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux26~5_combout\,
	datad => \ps2_ACCLL|Mux26~6_combout\,
	combout => \ps2_ACCLL|Mux26~7_combout\);

-- Location: LCCOMB_X17_Y8_N26
\ps2_ACCLL|Mux26~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~8_combout\ = (\ps2_ACCLL|Mux25~19_combout\ & \ps2_ACCLL|Mux26~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|Mux25~19_combout\,
	datad => \ps2_ACCLL|Mux26~7_combout\,
	combout => \ps2_ACCLL|Mux26~8_combout\);

-- Location: LCCOMB_X19_Y8_N14
\ps2_ACCLL|Mux26~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux26~19_combout\);

-- Location: LCCOMB_X19_Y8_N12
\ps2_ACCLL|Mux26~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux26~20_combout\);

-- Location: LCCOMB_X19_Y8_N30
\ps2_ACCLL|Mux26~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux26~21_combout\);

-- Location: LCCOMB_X19_Y8_N4
\ps2_ACCLL|Mux26~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~22_combout\ = (\ps2_ACCLL|Mux17~24_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|Mux26~21_combout\)))) # (!\ps2_ACCLL|Mux17~24_combout\ & ((\ps2_ACCLL|Mux26~20_combout\ & ((\ps2_ACCLL|Mux26~21_combout\))) # 
-- (!\ps2_ACCLL|Mux26~20_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux17~24_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux26~22_combout\);

-- Location: LCCOMB_X19_Y8_N10
\ps2_ACCLL|Mux26~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~23_combout\ = (\ps2_ACCLL|Mux26~20_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux17~24_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux26~21_combout\))))) # (!\ps2_ACCLL|Mux26~20_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux26~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux26~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux17~24_combout\,
	datad => \ps2_ACCLL|Mux26~21_combout\,
	combout => \ps2_ACCLL|Mux26~23_combout\);

-- Location: LCCOMB_X19_Y8_N8
\ps2_ACCLL|Mux26~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~24_combout\ = (\ps2_ACCLL|Mux17~21_combout\ & (((\ps2_ACCLL|Mux26~22_combout\) # (!\ps2_ACCLL|Mux26~23_combout\)))) # (!\ps2_ACCLL|Mux17~21_combout\ & (\ps2_ACCLL|Mux26~22_combout\ & ((\ps2_ACCLL|Mux26~19_combout\) # 
-- (!\ps2_ACCLL|Mux26~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux17~21_combout\,
	datab => \ps2_ACCLL|Mux26~19_combout\,
	datac => \ps2_ACCLL|Mux26~22_combout\,
	datad => \ps2_ACCLL|Mux26~23_combout\,
	combout => \ps2_ACCLL|Mux26~24_combout\);

-- Location: LCCOMB_X20_Y8_N14
\ps2_ACCLL|Mux26~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux17~21_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux26~12_combout\);

-- Location: LCCOMB_X20_Y8_N8
\ps2_ACCLL|Mux26~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~9_combout\ = (!\ps2_ACCLL|Mux25~18_combout\ & ((\ps2_ACCLL|Mux17~21_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux17~21_combout\,
	datac => \ps2_ACCLL|Mux25~18_combout\,
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux26~9_combout\);

-- Location: LCCOMB_X20_Y8_N2
\ps2_ACCLL|Mux26~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux17~21_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|Mux17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux26~10_combout\);

-- Location: LCCOMB_X20_Y8_N20
\ps2_ACCLL|Mux26~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux26~10_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux26~10_combout\,
	combout => \ps2_ACCLL|Mux26~11_combout\);

-- Location: LCCOMB_X20_Y8_N24
\ps2_ACCLL|Mux26~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux26~11_combout\ & (\ps2_ACCLL|Mux26~12_combout\)) # (!\ps2_ACCLL|Mux26~11_combout\ & ((\ps2_ACCLL|Mux26~9_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux26~12_combout\,
	datac => \ps2_ACCLL|Mux26~9_combout\,
	datad => \ps2_ACCLL|Mux26~11_combout\,
	combout => \ps2_ACCLL|Mux26~13_combout\);

-- Location: LCCOMB_X17_Y8_N4
\ps2_ACCLL|Mux26~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~16_combout\ = (\ps2_ACCLL|Mux17~25_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux17~25_combout\,
	combout => \ps2_ACCLL|Mux26~16_combout\);

-- Location: LCCOMB_X17_Y8_N28
\ps2_ACCLL|Mux26~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ ((!\ps2_ACCLL|Mux17~21_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|Mux17~21_combout\ & 
-- \ps2_ACCLL|Mux17~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|Mux17~24_combout\,
	combout => \ps2_ACCLL|Mux26~14_combout\);

-- Location: LCCOMB_X17_Y8_N18
\ps2_ACCLL|Mux26~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux17~21_combout\ $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|Mux26~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux17~21_combout\,
	datad => \ps2_ACCLL|Mux26~14_combout\,
	combout => \ps2_ACCLL|Mux26~15_combout\);

-- Location: LCCOMB_X17_Y8_N6
\ps2_ACCLL|Mux26~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux26~16_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|Mux26~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux26~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux26~16_combout\,
	datad => \ps2_ACCLL|Mux26~15_combout\,
	combout => \ps2_ACCLL|Mux26~17_combout\);

-- Location: LCCOMB_X17_Y8_N24
\ps2_ACCLL|Mux26~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux26~17_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux17~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux17~25_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux26~17_combout\,
	combout => \ps2_ACCLL|Mux26~18_combout\);

-- Location: LCCOMB_X17_Y8_N2
\ps2_ACCLL|Mux26~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux26~18_combout\ & (\ps2_ACCLL|Mux26~24_combout\)) # (!\ps2_ACCLL|Mux26~18_combout\ & ((\ps2_ACCLL|Mux26~13_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux26~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux26~24_combout\,
	datac => \ps2_ACCLL|Mux26~13_combout\,
	datad => \ps2_ACCLL|Mux26~18_combout\,
	combout => \ps2_ACCLL|Mux26~25_combout\);

-- Location: LCCOMB_X17_Y8_N12
\ps2_ACCLL|Mux26~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux26~26_combout\ = (\ps2_ACCLL|Mux26~2_combout\) # ((\ps2_ACCLL|Mux26~8_combout\) # ((\ps2_ACCLL|Mux38~8_combout\ & \ps2_ACCLL|Mux26~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~8_combout\,
	datab => \ps2_ACCLL|Mux26~2_combout\,
	datac => \ps2_ACCLL|Mux26~8_combout\,
	datad => \ps2_ACCLL|Mux26~25_combout\,
	combout => \ps2_ACCLL|Mux26~26_combout\);

-- Location: LCCOMB_X17_Y8_N22
\ps2_ACCLL|Mux41~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~24_combout\ = (\ps2_ACCLL|Mux41~7_combout\ & ((\ps2_ACCLL|Mux41~23_combout\ & (\ps2_ACCLL|Mux41~22_combout\)) # (!\ps2_ACCLL|Mux41~23_combout\ & ((\ps2_ACCLL|Mux26~26_combout\))))) # (!\ps2_ACCLL|Mux41~7_combout\ & 
-- (((\ps2_ACCLL|Mux26~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~22_combout\,
	datab => \ps2_ACCLL|Mux41~7_combout\,
	datac => \ps2_ACCLL|Mux41~23_combout\,
	datad => \ps2_ACCLL|Mux26~26_combout\,
	combout => \ps2_ACCLL|Mux41~24_combout\);

-- Location: LCCOMB_X16_Y8_N0
\ps2_ACCLL|Mux41~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux41~6_combout\);

-- Location: LCCOMB_X17_Y8_N14
\ps2_ACCLL|Mux41~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~26_combout\ = (\ps2_ACCLL|Mux26~26_combout\ & (((\ps2_ACCLL|Mux41~6_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux41~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux26~26_combout\,
	combout => \ps2_ACCLL|Mux41~26_combout\);

-- Location: LCCOMB_X16_Y8_N22
\ps2_ACCLL|Mux41~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~18_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~18_combout\);

-- Location: LCCOMB_X16_Y8_N30
\ps2_ACCLL|Mux41~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~28_combout\ = (\ps2_ACCLL|Mux41~18_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|shift_r~q\ & !\ps2_ACCLL|shift_l~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|shift_r~q\,
	datad => \ps2_ACCLL|shift_l~q\,
	combout => \ps2_ACCLL|Mux41~28_combout\);

-- Location: LCCOMB_X16_Y8_N2
\ps2_ACCLL|Mux41~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~12_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~12_combout\);

-- Location: LCCOMB_X16_Y8_N12
\ps2_ACCLL|Mux41~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((!\ps2_ACCLL|Mux41~28_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((!\ps2_ACCLL|Mux41~12_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux41~28_combout\,
	datad => \ps2_ACCLL|Mux41~12_combout\,
	combout => \ps2_ACCLL|Mux41~19_combout\);

-- Location: LCCOMB_X16_Y8_N10
\ps2_ACCLL|Mux41~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|process_0~1_combout\,
	combout => \ps2_ACCLL|Mux41~14_combout\);

-- Location: LCCOMB_X16_Y8_N6
\ps2_ACCLL|Mux41~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|Mux41~14_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux41~14_combout\,
	combout => \ps2_ACCLL|Mux41~16_combout\);

-- Location: LCCOMB_X16_Y8_N20
\ps2_ACCLL|Mux41~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~27_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux41~27_combout\);

-- Location: LCCOMB_X16_Y8_N24
\ps2_ACCLL|Mux41~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((!\ps2_ACCLL|Mux41~27_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((!\ps2_ACCLL|Mux41~12_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux41~27_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux41~12_combout\,
	combout => \ps2_ACCLL|Mux41~15_combout\);

-- Location: LCCOMB_X16_Y8_N16
\ps2_ACCLL|Mux41~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~17_combout\ = (!\ps2_ACCLL|Mux41~15_combout\ & ((\ps2_ACCLL|Mux41~16_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|Mux41~16_combout\ & ((\ps2_ACCLL|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux41~15_combout\,
	datad => \ps2_ACCLL|process_0~1_combout\,
	combout => \ps2_ACCLL|Mux41~17_combout\);

-- Location: LCCOMB_X17_Y8_N30
\ps2_ACCLL|Mux41~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~20_combout\ = (\ps2_ACCLL|Mux41~17_combout\ & (((\ps2_ACCLL|Mux41~14_combout\) # (\ps2_ACCLL|Mux26~26_combout\)))) # (!\ps2_ACCLL|Mux41~17_combout\ & (\ps2_ACCLL|Mux41~19_combout\ & ((\ps2_ACCLL|Mux26~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~19_combout\,
	datab => \ps2_ACCLL|Mux41~14_combout\,
	datac => \ps2_ACCLL|Mux41~17_combout\,
	datad => \ps2_ACCLL|Mux26~26_combout\,
	combout => \ps2_ACCLL|Mux41~20_combout\);

-- Location: LCCOMB_X16_Y8_N8
\ps2_ACCLL|Mux41~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux41~8_combout\);

-- Location: LCCOMB_X16_Y8_N4
\ps2_ACCLL|Mux41~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|shift_l~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|shift_l~0_combout\,
	combout => \ps2_ACCLL|Mux41~10_combout\);

-- Location: LCCOMB_X21_Y8_N10
\ps2_ACCLL|Mux25~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux25~20_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux25~20_combout\);

-- Location: LCCOMB_X16_Y8_N26
\ps2_ACCLL|Mux41~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|Mux25~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux25~20_combout\,
	combout => \ps2_ACCLL|Mux41~9_combout\);

-- Location: LCCOMB_X17_Y8_N10
\ps2_ACCLL|Mux41~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~11_combout\ = (\ps2_ACCLL|Mux41~8_combout\) # ((\ps2_ACCLL|Mux41~9_combout\) # ((\ps2_ACCLL|Mux41~10_combout\ & \ps2_ACCLL|Mux26~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~8_combout\,
	datab => \ps2_ACCLL|Mux41~10_combout\,
	datac => \ps2_ACCLL|Mux41~9_combout\,
	datad => \ps2_ACCLL|Mux26~26_combout\,
	combout => \ps2_ACCLL|Mux41~11_combout\);

-- Location: LCCOMB_X17_Y8_N16
\ps2_ACCLL|Mux41~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux41~11_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux41~12_combout\ & (\ps2_ACCLL|Mux26~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~12_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux26~26_combout\,
	datad => \ps2_ACCLL|Mux41~11_combout\,
	combout => \ps2_ACCLL|Mux41~13_combout\);

-- Location: LCCOMB_X17_Y8_N20
\ps2_ACCLL|Mux41~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux41~13_combout\))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux41~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux41~20_combout\,
	datad => \ps2_ACCLL|Mux41~13_combout\,
	combout => \ps2_ACCLL|Mux41~21_combout\);

-- Location: LCCOMB_X17_Y8_N0
\ps2_ACCLL|Mux41~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux41~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux41~21_combout\ & (\ps2_ACCLL|Mux41~24_combout\)) # (!\ps2_ACCLL|Mux41~21_combout\ & ((\ps2_ACCLL|Mux41~26_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (((\ps2_ACCLL|Mux41~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux41~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux41~26_combout\,
	datad => \ps2_ACCLL|Mux41~21_combout\,
	combout => \ps2_ACCLL|Mux41~25_combout\);

-- Location: LCCOMB_X17_Y8_N8
\ps2_ACCLL|ascii~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~38_combout\ = (!\ps2_ACCLL|ascii~10_combout\ & ((\ps2_ACCLL|control_r~q\) # ((\ps2_ACCLL|control_l~q\) # (!\ps2_ACCLL|Mux41~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|ascii~10_combout\,
	datad => \ps2_ACCLL|Mux41~25_combout\,
	combout => \ps2_ACCLL|ascii~38_combout\);

-- Location: FF_X17_Y8_N9
\ps2_ACCLL|ascii[3]\ : dffeas
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
	q => \ps2_ACCLL|ascii\(3));

-- Location: LCCOMB_X21_Y1_N10
\ps2_ACCLL|ascii_code[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[3]~0_combout\ = !\ps2_ACCLL|ascii\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(3),
	combout => \ps2_ACCLL|ascii_code[3]~0_combout\);

-- Location: FF_X21_Y1_N11
\ps2_ACCLL|ascii_code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii_code[3]~0_combout\,
	ena => \ps2_ACCLL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(3));

-- Location: LCCOMB_X17_Y7_N26
\ps2_ACCLL|Mux18~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux17~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux17~9_combout\ & 
-- (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux17~9_combout\,
	combout => \ps2_ACCLL|Mux18~17_combout\);

-- Location: LCCOMB_X17_Y7_N4
\ps2_ACCLL|Mux18~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~14_combout\);

-- Location: LCCOMB_X17_Y7_N10
\ps2_ACCLL|Mux18~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~14_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux18~14_combout\,
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux18~15_combout\);

-- Location: LCCOMB_X17_Y7_N28
\ps2_ACCLL|Mux18~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~15_combout\ & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|Mux18~15_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) 
-- & (!\ps2_ACCLL|ascii\(2) & ((!\ps2_ACCLL|Mux18~15_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux18~15_combout\,
	combout => \ps2_ACCLL|Mux18~16_combout\);

-- Location: LCCOMB_X17_Y7_N12
\ps2_ACCLL|Mux18~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~16_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux18~17_combout\,
	datad => \ps2_ACCLL|Mux18~16_combout\,
	combout => \ps2_ACCLL|Mux18~18_combout\);

-- Location: LCCOMB_X24_Y9_N28
\ps2_ACCLL|Mux18~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((!\ps2_ACCLL|ascii\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((!\ps2_ACCLL|ascii\(2)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|Mux18~11_combout\);

-- Location: LCCOMB_X17_Y7_N22
\ps2_ACCLL|Mux18~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~19_combout\ = (\ps2_ACCLL|ascii\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~19_combout\);

-- Location: LCCOMB_X21_Y9_N22
\ps2_ACCLL|Mux18~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~20_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux18~20_combout\);

-- Location: LCCOMB_X21_Y9_N28
\ps2_ACCLL|Mux18~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~20_combout\) # ((!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~20_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|Mux18~21_combout\);

-- Location: LCCOMB_X21_Y9_N26
\ps2_ACCLL|Mux18~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~21_combout\ & (\ps2_ACCLL|Mux18~11_combout\)) # (!\ps2_ACCLL|Mux18~21_combout\ & ((\ps2_ACCLL|Mux18~19_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux18~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux18~19_combout\,
	datad => \ps2_ACCLL|Mux18~21_combout\,
	combout => \ps2_ACCLL|Mux18~22_combout\);

-- Location: LCCOMB_X21_Y9_N20
\ps2_ACCLL|Mux18~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~22_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|Mux18~22_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux18~23_combout\);

-- Location: LCCOMB_X17_Y9_N10
\ps2_ACCLL|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux18~18_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- \ps2_ACCLL|Mux18~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux18~18_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux18~23_combout\,
	combout => \ps2_ACCLL|Mux10~0_combout\);

-- Location: LCCOMB_X17_Y7_N8
\ps2_ACCLL|Mux18~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~24_combout\);

-- Location: LCCOMB_X17_Y7_N30
\ps2_ACCLL|Mux18~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~25_combout\);

-- Location: LCCOMB_X17_Y7_N16
\ps2_ACCLL|Mux18~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~26_combout\ = (\ps2_ACCLL|Mux18~25_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))) # (!\ps2_ACCLL|Mux18~25_combout\ & (\ps2_ACCLL|Mux18~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~19_combout\,
	datac => \ps2_ACCLL|Mux18~25_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux18~26_combout\);

-- Location: LCCOMB_X17_Y7_N6
\ps2_ACCLL|Mux18~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~27_combout\ = (\ps2_ACCLL|Mux18~24_combout\ & (((\ps2_ACCLL|Mux18~25_combout\ & !\ps2_ACCLL|Mux18~26_combout\)) # (!\ps2_ACCLL|ascii\(2)))) # (!\ps2_ACCLL|Mux18~24_combout\ & (\ps2_ACCLL|Mux18~26_combout\ & 
-- ((!\ps2_ACCLL|Mux18~25_combout\) # (!\ps2_ACCLL|ascii\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|Mux18~24_combout\,
	datac => \ps2_ACCLL|Mux18~25_combout\,
	datad => \ps2_ACCLL|Mux18~26_combout\,
	combout => \ps2_ACCLL|Mux18~27_combout\);

-- Location: LCCOMB_X17_Y7_N20
\ps2_ACCLL|Mux18~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(2))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux18~27_combout\,
	combout => \ps2_ACCLL|Mux18~28_combout\);

-- Location: LCCOMB_X24_Y9_N12
\ps2_ACCLL|Mux18~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux42~2_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~7_combout\);

-- Location: LCCOMB_X24_Y9_N14
\ps2_ACCLL|Mux18~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~6_combout\);

-- Location: LCCOMB_X24_Y9_N22
\ps2_ACCLL|Mux18~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~8_combout\ = (\ps2_ACCLL|Mux18~7_combout\ & (((!\ps2_ACCLL|ascii\(2) & \ps2_ACCLL|Mux18~6_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux18~7_combout\ & (((\ps2_ACCLL|Mux18~6_combout\ & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ascii\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~7_combout\,
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|Mux18~6_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~8_combout\);

-- Location: LCCOMB_X24_Y9_N24
\ps2_ACCLL|Mux18~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~9_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux18~9_combout\);

-- Location: LCCOMB_X24_Y9_N18
\ps2_ACCLL|Mux18~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~10_combout\ = (\ps2_ACCLL|Mux15~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux15~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|ascii\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux18~10_combout\);

-- Location: LCCOMB_X24_Y9_N10
\ps2_ACCLL|Mux18~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux18~10_combout\ & (\ps2_ACCLL|Mux18~11_combout\)) # (!\ps2_ACCLL|Mux18~10_combout\ & ((\ps2_ACCLL|Mux18~9_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux18~11_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux18~9_combout\,
	datad => \ps2_ACCLL|Mux18~10_combout\,
	combout => \ps2_ACCLL|Mux18~12_combout\);

-- Location: LCCOMB_X24_Y9_N20
\ps2_ACCLL|Mux18~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux18~8_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux18~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux18~8_combout\,
	datad => \ps2_ACCLL|Mux18~12_combout\,
	combout => \ps2_ACCLL|Mux18~13_combout\);

-- Location: LCCOMB_X17_Y9_N0
\ps2_ACCLL|Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux10~1_combout\ = (\ps2_ACCLL|Mux10~0_combout\ & ((\ps2_ACCLL|Mux18~28_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|Mux10~0_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux18~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux10~0_combout\,
	datab => \ps2_ACCLL|Mux18~28_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux18~13_combout\,
	combout => \ps2_ACCLL|Mux10~1_combout\);

-- Location: LCCOMB_X16_Y9_N20
\ps2_ACCLL|Mux42~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux24~14_combout\ & \ps2_ACCLL|Mux42~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux24~14_combout\,
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux42~19_combout\);

-- Location: LCCOMB_X17_Y9_N20
\ps2_ACCLL|Mux13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux13~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux13~8_combout\);

-- Location: LCCOMB_X19_Y9_N20
\ps2_ACCLL|Mux42~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~17_combout\ = (\ps2_ACCLL|Mux17~10_combout\ & ((\ps2_ACCLL|Mux42~16_combout\) # ((!\ps2_ACCLL|Mux13~8_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~8_combout\,
	datab => \ps2_ACCLL|Mux42~16_combout\,
	datac => \ps2_ACCLL|Mux17~10_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~17_combout\);

-- Location: LCCOMB_X19_Y9_N24
\ps2_ACCLL|Mux42~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~18_combout\ = ((!\ps2_ACCLL|shift_l~q\ & !\ps2_ACCLL|shift_r~q\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|shift_l~q\,
	datac => \ps2_ACCLL|shift_r~q\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~18_combout\);

-- Location: LCCOMB_X19_Y9_N26
\ps2_ACCLL|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~0_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux14~4_combout\,
	combout => \ps2_ACCLL|Mux18~0_combout\);

-- Location: LCCOMB_X20_Y9_N28
\ps2_ACCLL|Mux18~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux18~1_combout\);

-- Location: LCCOMB_X20_Y9_N10
\ps2_ACCLL|Mux18~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~2_combout\ = (\ps2_ACCLL|Mux18~1_combout\) # ((\ps2_ACCLL|Mux26~19_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux18~1_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux26~19_combout\,
	combout => \ps2_ACCLL|Mux18~2_combout\);

-- Location: LCCOMB_X20_Y9_N8
\ps2_ACCLL|Mux18~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~3_combout\ = (!\ps2_ACCLL|ascii\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|Mux18~0_combout\) # (\ps2_ACCLL|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ascii\(2),
	datac => \ps2_ACCLL|Mux18~0_combout\,
	datad => \ps2_ACCLL|Mux18~2_combout\,
	combout => \ps2_ACCLL|Mux18~3_combout\);

-- Location: LCCOMB_X20_Y9_N30
\ps2_ACCLL|Mux18~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~4_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux18~4_combout\);

-- Location: LCCOMB_X20_Y9_N16
\ps2_ACCLL|Mux18~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux18~5_combout\ = (\ps2_ACCLL|Mux18~4_combout\) # ((\ps2_ACCLL|Mux8~0_combout\ & (\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|Mux26~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux8~0_combout\,
	datab => \ps2_ACCLL|e0_code~q\,
	datac => \ps2_ACCLL|Mux18~4_combout\,
	datad => \ps2_ACCLL|Mux26~19_combout\,
	combout => \ps2_ACCLL|Mux18~5_combout\);

-- Location: LCCOMB_X20_Y9_N14
\ps2_ACCLL|Mux27~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~6_combout\ = (\ps2_ACCLL|Mux18~3_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~2_combout\ & \ps2_ACCLL|Mux18~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux15~2_combout\,
	datac => \ps2_ACCLL|Mux18~3_combout\,
	datad => \ps2_ACCLL|Mux18~5_combout\,
	combout => \ps2_ACCLL|Mux27~6_combout\);

-- Location: LCCOMB_X19_Y8_N26
\ps2_ACCLL|Mux27~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux27~10_combout\);

-- Location: LCCOMB_X23_Y11_N14
\ps2_ACCLL|Mux27~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux27~11_combout\);

-- Location: LCCOMB_X20_Y9_N12
\ps2_ACCLL|Mux27~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~9_combout\ = (\ps2_ACCLL|Mux15~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|Mux18~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux15~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux18~5_combout\,
	combout => \ps2_ACCLL|Mux27~9_combout\);

-- Location: LCCOMB_X20_Y9_N26
\ps2_ACCLL|Mux27~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~12_combout\ = (\ps2_ACCLL|Mux27~10_combout\ & (\ps2_ACCLL|Mux27~11_combout\ & ((\ps2_ACCLL|Mux18~3_combout\) # (\ps2_ACCLL|Mux27~9_combout\)))) # (!\ps2_ACCLL|Mux27~10_combout\ & ((\ps2_ACCLL|Mux27~11_combout\) # 
-- ((\ps2_ACCLL|Mux18~3_combout\) # (\ps2_ACCLL|Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~10_combout\,
	datab => \ps2_ACCLL|Mux27~11_combout\,
	datac => \ps2_ACCLL|Mux18~3_combout\,
	datad => \ps2_ACCLL|Mux27~9_combout\,
	combout => \ps2_ACCLL|Mux27~12_combout\);

-- Location: LCCOMB_X19_Y8_N0
\ps2_ACCLL|Mux27~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux27~25_combout\);

-- Location: LCCOMB_X19_Y11_N18
\ps2_ACCLL|Mux27~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ascii\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|Mux27~13_combout\);

-- Location: LCCOMB_X21_Y10_N26
\ps2_ACCLL|Mux27~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux27~24_combout\);

-- Location: LCCOMB_X20_Y9_N24
\ps2_ACCLL|Mux27~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~14_combout\ = (\ps2_ACCLL|Mux27~25_combout\ & (((\ps2_ACCLL|Mux27~6_combout\) # (!\ps2_ACCLL|Mux27~24_combout\)))) # (!\ps2_ACCLL|Mux27~25_combout\ & (!\ps2_ACCLL|Mux27~13_combout\ & ((!\ps2_ACCLL|Mux27~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~25_combout\,
	datab => \ps2_ACCLL|Mux27~13_combout\,
	datac => \ps2_ACCLL|Mux27~6_combout\,
	datad => \ps2_ACCLL|Mux27~24_combout\,
	combout => \ps2_ACCLL|Mux27~14_combout\);

-- Location: LCCOMB_X20_Y9_N18
\ps2_ACCLL|Mux27~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux27~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|Mux27~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux27~12_combout\,
	datad => \ps2_ACCLL|Mux27~14_combout\,
	combout => \ps2_ACCLL|Mux27~15_combout\);

-- Location: LCCOMB_X19_Y8_N24
\ps2_ACCLL|Mux27~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux27~16_combout\);

-- Location: LCCOMB_X20_Y9_N0
\ps2_ACCLL|Mux27~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~17_combout\ = (\ps2_ACCLL|Mux27~16_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux27~16_combout\ & (((\ps2_ACCLL|Mux18~3_combout\) # (\ps2_ACCLL|Mux27~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux27~16_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux18~3_combout\,
	datad => \ps2_ACCLL|Mux27~9_combout\,
	combout => \ps2_ACCLL|Mux27~17_combout\);

-- Location: LCCOMB_X20_Y9_N2
\ps2_ACCLL|Mux27~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~18_combout\ = (\ps2_ACCLL|Mux27~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((!\ps2_ACCLL|Mux27~17_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux27~6_combout\,
	datad => \ps2_ACCLL|Mux27~17_combout\,
	combout => \ps2_ACCLL|Mux27~18_combout\);

-- Location: LCCOMB_X20_Y9_N4
\ps2_ACCLL|Mux27~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~18_combout\) # ((\ps2_ACCLL|Mux25~18_combout\ & !\ps2_ACCLL|Mux27~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux27~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~18_combout\,
	datab => \ps2_ACCLL|Mux27~17_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux27~18_combout\,
	combout => \ps2_ACCLL|Mux27~19_combout\);

-- Location: LCCOMB_X20_Y9_N22
\ps2_ACCLL|Mux27~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux27~19_combout\) # (\ps2_ACCLL|Mux27~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux18~3_combout\ & ((!\ps2_ACCLL|Mux27~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux18~3_combout\,
	datac => \ps2_ACCLL|Mux27~19_combout\,
	datad => \ps2_ACCLL|Mux27~15_combout\,
	combout => \ps2_ACCLL|Mux27~20_combout\);

-- Location: LCCOMB_X21_Y9_N4
\ps2_ACCLL|Mux27~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux27~6_combout\ $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|Mux27~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux27~6_combout\,
	combout => \ps2_ACCLL|Mux27~23_combout\);

-- Location: LCCOMB_X21_Y9_N2
\ps2_ACCLL|Mux27~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~7_combout\ = (\ps2_ACCLL|Mux27~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux27~6_combout\,
	combout => \ps2_ACCLL|Mux27~7_combout\);

-- Location: LCCOMB_X21_Y9_N24
\ps2_ACCLL|Mux27~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux25~18_combout\) # ((\ps2_ACCLL|Mux27~7_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux27~23_combout\ $ (\ps2_ACCLL|Mux27~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux27~23_combout\,
	datad => \ps2_ACCLL|Mux27~7_combout\,
	combout => \ps2_ACCLL|Mux27~8_combout\);

-- Location: LCCOMB_X20_Y9_N20
\ps2_ACCLL|Mux27~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~21_combout\ = (\ps2_ACCLL|Mux27~15_combout\ & (!\ps2_ACCLL|Mux27~20_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|Mux27~8_combout\)))) # (!\ps2_ACCLL|Mux27~15_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|Mux27~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux27~15_combout\,
	datac => \ps2_ACCLL|Mux27~20_combout\,
	datad => \ps2_ACCLL|Mux27~8_combout\,
	combout => \ps2_ACCLL|Mux27~21_combout\);

-- Location: LCCOMB_X20_Y9_N6
\ps2_ACCLL|Mux27~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux27~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|Mux29~5_combout\ & (\ps2_ACCLL|Mux27~6_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux27~21_combout\) # ((!\ps2_ACCLL|Mux29~5_combout\ & 
-- \ps2_ACCLL|Mux27~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|Mux29~5_combout\,
	datac => \ps2_ACCLL|Mux27~6_combout\,
	datad => \ps2_ACCLL|Mux27~21_combout\,
	combout => \ps2_ACCLL|Mux27~22_combout\);

-- Location: LCCOMB_X19_Y9_N30
\ps2_ACCLL|Mux42~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~20_combout\ = (\ps2_ACCLL|Mux42~17_combout\) # ((\ps2_ACCLL|Mux42~19_combout\ & (\ps2_ACCLL|Mux42~18_combout\)) # (!\ps2_ACCLL|Mux42~19_combout\ & ((\ps2_ACCLL|Mux27~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~19_combout\,
	datab => \ps2_ACCLL|Mux42~17_combout\,
	datac => \ps2_ACCLL|Mux42~18_combout\,
	datad => \ps2_ACCLL|Mux27~22_combout\,
	combout => \ps2_ACCLL|Mux42~20_combout\);

-- Location: LCCOMB_X19_Y8_N2
\ps2_ACCLL|Mux42~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux42~13_combout\);

-- Location: LCCOMB_X15_Y9_N28
\ps2_ACCLL|Mux42~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~8_combout\);

-- Location: LCCOMB_X19_Y9_N4
\ps2_ACCLL|Mux42~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~14_combout\ = (\ps2_ACCLL|Mux13~8_combout\ & (((\ps2_ACCLL|Mux27~22_combout\)))) # (!\ps2_ACCLL|Mux13~8_combout\ & ((\ps2_ACCLL|Mux42~8_combout\ & (\ps2_ACCLL|Mux42~13_combout\)) # (!\ps2_ACCLL|Mux42~8_combout\ & 
-- ((\ps2_ACCLL|Mux27~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~8_combout\,
	datab => \ps2_ACCLL|Mux42~13_combout\,
	datac => \ps2_ACCLL|Mux42~8_combout\,
	datad => \ps2_ACCLL|Mux27~22_combout\,
	combout => \ps2_ACCLL|Mux42~14_combout\);

-- Location: LCCOMB_X21_Y7_N22
\ps2_ACCLL|Mux42~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~5_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~5_combout\);

-- Location: LCCOMB_X21_Y7_N24
\ps2_ACCLL|Mux17~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux17~2_combout\);

-- Location: LCCOMB_X21_Y7_N20
\ps2_ACCLL|Mux42~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~4_combout\ = (\ps2_ACCLL|Mux17~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux17~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux42~4_combout\);

-- Location: LCCOMB_X21_Y7_N16
\ps2_ACCLL|Mux42~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux42~4_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & \ps2_ACCLL|Mux42~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux42~5_combout\,
	datad => \ps2_ACCLL|Mux42~4_combout\,
	combout => \ps2_ACCLL|Mux42~6_combout\);

-- Location: LCCOMB_X17_Y9_N26
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

-- Location: LCCOMB_X17_Y7_N0
\ps2_ACCLL|Mux42~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux42~21_combout\);

-- Location: LCCOMB_X17_Y7_N2
\ps2_ACCLL|Mux42~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~22_combout\ = (\ps2_ACCLL|Mux42~21_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~21_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux42~22_combout\);

-- Location: LCCOMB_X19_Y9_N8
\ps2_ACCLL|Mux42~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~7_combout\ = (\ps2_ACCLL|Mux42~6_combout\ & (\ps2_ACCLL|Mux42~3_combout\ & (\ps2_ACCLL|Mux42~22_combout\))) # (!\ps2_ACCLL|Mux42~6_combout\ & ((\ps2_ACCLL|Mux27~22_combout\) # ((\ps2_ACCLL|Mux42~3_combout\ & 
-- \ps2_ACCLL|Mux42~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~6_combout\,
	datab => \ps2_ACCLL|Mux42~3_combout\,
	datac => \ps2_ACCLL|Mux42~22_combout\,
	datad => \ps2_ACCLL|Mux27~22_combout\,
	combout => \ps2_ACCLL|Mux42~7_combout\);

-- Location: LCCOMB_X19_Y9_N14
\ps2_ACCLL|Mux42~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~9_combout\ = (\ps2_ACCLL|Mux42~8_combout\ & ((\ps2_ACCLL|Mux13~8_combout\ & ((\ps2_ACCLL|Mux27~22_combout\))) # (!\ps2_ACCLL|Mux13~8_combout\ & (\ps2_ACCLL|Mux22~0_combout\)))) # (!\ps2_ACCLL|Mux42~8_combout\ & 
-- (((\ps2_ACCLL|Mux27~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~8_combout\,
	datab => \ps2_ACCLL|Mux22~0_combout\,
	datac => \ps2_ACCLL|Mux13~8_combout\,
	datad => \ps2_ACCLL|Mux27~22_combout\,
	combout => \ps2_ACCLL|Mux42~9_combout\);

-- Location: LCCOMB_X17_Y11_N24
\ps2_ACCLL|Mux42~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

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
	combout => \ps2_ACCLL|Mux42~10_combout\);

-- Location: LCCOMB_X19_Y9_N12
\ps2_ACCLL|Mux42~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~11_combout\ = (\ps2_ACCLL|Mux42~6_combout\ & (\ps2_ACCLL|Mux42~22_combout\ & (\ps2_ACCLL|Mux42~10_combout\))) # (!\ps2_ACCLL|Mux42~6_combout\ & ((\ps2_ACCLL|Mux27~22_combout\) # ((\ps2_ACCLL|Mux42~22_combout\ & 
-- \ps2_ACCLL|Mux42~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~6_combout\,
	datab => \ps2_ACCLL|Mux42~22_combout\,
	datac => \ps2_ACCLL|Mux42~10_combout\,
	datad => \ps2_ACCLL|Mux27~22_combout\,
	combout => \ps2_ACCLL|Mux42~11_combout\);

-- Location: LCCOMB_X19_Y9_N18
\ps2_ACCLL|Mux42~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|process_0~1_combout\) # ((\ps2_ACCLL|Mux42~9_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|process_0~1_combout\ & 
-- ((\ps2_ACCLL|Mux42~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|process_0~1_combout\,
	datac => \ps2_ACCLL|Mux42~9_combout\,
	datad => \ps2_ACCLL|Mux42~11_combout\,
	combout => \ps2_ACCLL|Mux42~12_combout\);

-- Location: LCCOMB_X19_Y9_N6
\ps2_ACCLL|Mux42~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux42~15_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux42~12_combout\ & (\ps2_ACCLL|Mux42~14_combout\)) # (!\ps2_ACCLL|Mux42~12_combout\ & ((\ps2_ACCLL|Mux42~7_combout\))))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux42~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux42~14_combout\,
	datac => \ps2_ACCLL|Mux42~7_combout\,
	datad => \ps2_ACCLL|Mux42~12_combout\,
	combout => \ps2_ACCLL|Mux42~15_combout\);

-- Location: LCCOMB_X19_Y9_N16
\ps2_ACCLL|ascii~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~11_combout\ = (!\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux42~15_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux42~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|Mux42~20_combout\,
	datad => \ps2_ACCLL|Mux42~15_combout\,
	combout => \ps2_ACCLL|ascii~11_combout\);

-- Location: LCCOMB_X19_Y9_N28
\ps2_ACCLL|ascii~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~39_combout\ = (!\ps2_ACCLL|ascii~11_combout\ & (((!\ps2_ACCLL|control_l~q\ & !\ps2_ACCLL|control_r~q\)) # (!\ps2_ACCLL|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux10~1_combout\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|control_r~q\,
	datad => \ps2_ACCLL|ascii~11_combout\,
	combout => \ps2_ACCLL|ascii~39_combout\);

-- Location: FF_X19_Y9_N29
\ps2_ACCLL|ascii[2]\ : dffeas
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
	q => \ps2_ACCLL|ascii\(2));

-- Location: LCCOMB_X20_Y7_N14
\ps2_ACCLL|ascii_code[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[2]~1_combout\ = !\ps2_ACCLL|ascii\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(2),
	combout => \ps2_ACCLL|ascii_code[2]~1_combout\);

-- Location: FF_X21_Y1_N19
\ps2_ACCLL|ascii_code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[2]~1_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(2));

-- Location: LCCOMB_X22_Y10_N24
\ps2_ACCLL|Mux39~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux42~2_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~21_combout\);

-- Location: LCCOMB_X22_Y10_N12
\ps2_ACCLL|Mux39~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~28_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux24~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux24~14_combout\,
	combout => \ps2_ACCLL|Mux39~28_combout\);

-- Location: LCCOMB_X22_Y10_N20
\ps2_ACCLL|Mux39~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~23_combout\ = (\ps2_ACCLL|Mux39~28_combout\) # ((\ps2_ACCLL|caps_lock~1_combout\ & (\ps2_ACCLL|process_0~1_combout\ & \ps2_ACCLL|Mux17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~28_combout\,
	datab => \ps2_ACCLL|caps_lock~1_combout\,
	datac => \ps2_ACCLL|process_0~1_combout\,
	datad => \ps2_ACCLL|Mux17~10_combout\,
	combout => \ps2_ACCLL|Mux39~23_combout\);

-- Location: LCCOMB_X22_Y10_N14
\ps2_ACCLL|Mux39~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~22_combout\ = (((!\ps2_ACCLL|caps_lock~1_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|Mux42~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux42~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|caps_lock~1_combout\,
	combout => \ps2_ACCLL|Mux39~22_combout\);

-- Location: LCCOMB_X19_Y9_N2
\ps2_ACCLL|caps_lock~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|caps_lock~4_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((\ps2_ACCLL|caps_lock~3_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|break~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~3_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|caps_lock~q\,
	datad => \ps2_ACCLL|break~q\,
	combout => \ps2_ACCLL|caps_lock~4_combout\);

-- Location: FF_X19_Y9_N3
\ps2_ACCLL|caps_lock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|caps_lock~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|caps_lock~q\);

-- Location: LCCOMB_X19_Y9_N0
\ps2_ACCLL|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|process_0~2_combout\ = \ps2_ACCLL|caps_lock~q\ $ (((\ps2_ACCLL|shift_l~q\) # (\ps2_ACCLL|shift_r~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|caps_lock~q\,
	datac => \ps2_ACCLL|shift_l~q\,
	datad => \ps2_ACCLL|shift_r~q\,
	combout => \ps2_ACCLL|process_0~2_combout\);

-- Location: LCCOMB_X20_Y11_N2
\ps2_ACCLL|Mux15~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~17_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|Mux42~2_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux15~17_combout\);

-- Location: LCCOMB_X20_Y11_N20
\ps2_ACCLL|Mux15~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~12_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((!\ps2_ACCLL|Mux14~4_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux14~4_combout\,
	datad => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|Mux15~12_combout\);

-- Location: LCCOMB_X20_Y11_N26
\ps2_ACCLL|Mux15~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux15~13_combout\);

-- Location: LCCOMB_X20_Y10_N26
\ps2_ACCLL|Mux15~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux15~13_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux15~13_combout\)) # (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~13_combout\,
	combout => \ps2_ACCLL|Mux15~14_combout\);

-- Location: LCCOMB_X20_Y11_N12
\ps2_ACCLL|Mux38~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux38~10_combout\);

-- Location: LCCOMB_X20_Y10_N12
\ps2_ACCLL|Mux15~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~15_combout\ = ((\ps2_ACCLL|Mux15~2_combout\ & (\ps2_ACCLL|e0_code~q\ & \ps2_ACCLL|Mux38~10_combout\))) # (!\ps2_ACCLL|ascii\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~2_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|e0_code~q\,
	datad => \ps2_ACCLL|Mux38~10_combout\,
	combout => \ps2_ACCLL|Mux15~15_combout\);

-- Location: LCCOMB_X20_Y10_N6
\ps2_ACCLL|Mux15~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux15~14_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux15~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~14_combout\,
	datad => \ps2_ACCLL|Mux15~15_combout\,
	combout => \ps2_ACCLL|Mux15~16_combout\);

-- Location: LCCOMB_X20_Y10_N16
\ps2_ACCLL|Mux15~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~16_combout\ & (\ps2_ACCLL|Mux15~17_combout\)) # (!\ps2_ACCLL|Mux15~16_combout\ & ((\ps2_ACCLL|Mux15~12_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux15~17_combout\,
	datac => \ps2_ACCLL|Mux15~12_combout\,
	datad => \ps2_ACCLL|Mux15~16_combout\,
	combout => \ps2_ACCLL|Mux15~18_combout\);

-- Location: LCCOMB_X20_Y10_N10
\ps2_ACCLL|Mux24~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~24_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux15~18_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux15~18_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux15~18_combout\,
	combout => \ps2_ACCLL|Mux24~24_combout\);

-- Location: LCCOMB_X21_Y7_N4
\ps2_ACCLL|Mux24~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~32_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~32_combout\);

-- Location: LCCOMB_X21_Y7_N12
\ps2_ACCLL|Mux24~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~16_combout\);

-- Location: LCCOMB_X21_Y7_N18
\ps2_ACCLL|Mux24~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~17_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|Mux24~16_combout\)) # (!\ps2_ACCLL|Mux29~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux29~5_combout\,
	datad => \ps2_ACCLL|Mux24~16_combout\,
	combout => \ps2_ACCLL|Mux24~17_combout\);

-- Location: LCCOMB_X21_Y7_N6
\ps2_ACCLL|Mux24~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~33_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|Mux24~17_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux24~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux24~32_combout\,
	datad => \ps2_ACCLL|Mux24~17_combout\,
	combout => \ps2_ACCLL|Mux24~33_combout\);

-- Location: LCCOMB_X19_Y10_N4
\ps2_ACCLL|Mux24~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~34_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux24~33_combout\ & (!\ps2_ACCLL|process_0~2_combout\)) # (!\ps2_ACCLL|Mux24~33_combout\ & ((!\ps2_ACCLL|Mux24~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|process_0~2_combout\,
	datac => \ps2_ACCLL|Mux24~24_combout\,
	datad => \ps2_ACCLL|Mux24~33_combout\,
	combout => \ps2_ACCLL|Mux24~34_combout\);

-- Location: LCCOMB_X19_Y7_N12
\ps2_ACCLL|Mux24~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|Mux15~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux15~12_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~15_combout\);

-- Location: LCCOMB_X17_Y11_N8
\ps2_ACCLL|Mux24~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux24~18_combout\);

-- Location: LCCOMB_X17_Y11_N30
\ps2_ACCLL|Mux24~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~19_combout\ = (\ps2_ACCLL|Mux24~14_combout\ & ((\ps2_ACCLL|Mux17~9_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & \ps2_ACCLL|Mux24~18_combout\)))) # (!\ps2_ACCLL|Mux24~14_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & 
-- (\ps2_ACCLL|Mux24~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux24~18_combout\,
	datad => \ps2_ACCLL|Mux17~9_combout\,
	combout => \ps2_ACCLL|Mux24~19_combout\);

-- Location: LCCOMB_X20_Y10_N22
\ps2_ACCLL|Mux24~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~20_combout\ = (!\ps2_ACCLL|Mux24~19_combout\ & ((\ps2_ACCLL|Mux15~1_combout\ & (\ps2_ACCLL|Mux15~18_combout\)) # (!\ps2_ACCLL|Mux15~1_combout\ & ((!\ps2_ACCLL|ascii\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux24~19_combout\,
	datab => \ps2_ACCLL|Mux15~1_combout\,
	datac => \ps2_ACCLL|Mux15~18_combout\,
	datad => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|Mux24~20_combout\);

-- Location: LCCOMB_X20_Y10_N28
\ps2_ACCLL|Mux15~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~18_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~18_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux15~18_combout\,
	combout => \ps2_ACCLL|Mux15~19_combout\);

-- Location: LCCOMB_X20_Y10_N0
\ps2_ACCLL|Mux24~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~29_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~19_combout\ & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # 
-- (!\ps2_ACCLL|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux15~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux15~19_combout\,
	combout => \ps2_ACCLL|Mux24~29_combout\);

-- Location: LCCOMB_X20_Y10_N18
\ps2_ACCLL|Mux24~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~28_combout\ = (!\ps2_ACCLL|Mux38~8_combout\ & ((\ps2_ACCLL|Mux15~1_combout\ & ((\ps2_ACCLL|Mux15~18_combout\))) # (!\ps2_ACCLL|Mux15~1_combout\ & (!\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~8_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux15~1_combout\,
	datad => \ps2_ACCLL|Mux15~18_combout\,
	combout => \ps2_ACCLL|Mux24~28_combout\);

-- Location: LCCOMB_X20_Y10_N14
\ps2_ACCLL|Mux24~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~36_combout\ = (\ps2_ACCLL|Mux15~19_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux15~19_combout\,
	combout => \ps2_ACCLL|Mux24~36_combout\);

-- Location: LCCOMB_X20_Y10_N30
\ps2_ACCLL|Mux24~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~29_combout\ & ((\ps2_ACCLL|Mux24~36_combout\))) # (!\ps2_ACCLL|Mux24~29_combout\ & (\ps2_ACCLL|Mux24~28_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|Mux24~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux24~29_combout\,
	datac => \ps2_ACCLL|Mux24~28_combout\,
	datad => \ps2_ACCLL|Mux24~36_combout\,
	combout => \ps2_ACCLL|Mux24~30_combout\);

-- Location: LCCOMB_X20_Y10_N8
\ps2_ACCLL|Mux24~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~26_combout\ = (\ps2_ACCLL|Mux24~19_combout\) # ((\ps2_ACCLL|Mux15~1_combout\ & ((\ps2_ACCLL|Mux15~18_combout\))) # (!\ps2_ACCLL|Mux15~1_combout\ & (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|Mux15~1_combout\,
	datac => \ps2_ACCLL|Mux15~18_combout\,
	datad => \ps2_ACCLL|Mux24~19_combout\,
	combout => \ps2_ACCLL|Mux24~26_combout\);

-- Location: LCCOMB_X20_Y10_N24
\ps2_ACCLL|Mux24~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~21_combout\ = (\ps2_ACCLL|Mux38~8_combout\) # ((\ps2_ACCLL|Mux15~1_combout\ & ((\ps2_ACCLL|Mux15~18_combout\))) # (!\ps2_ACCLL|Mux15~1_combout\ & (!\ps2_ACCLL|ascii\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~8_combout\,
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|Mux15~1_combout\,
	datad => \ps2_ACCLL|Mux15~18_combout\,
	combout => \ps2_ACCLL|Mux24~21_combout\);

-- Location: LCCOMB_X20_Y10_N20
\ps2_ACCLL|Mux24~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~35_combout\ = ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|Mux24~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux24~24_combout\,
	combout => \ps2_ACCLL|Mux24~35_combout\);

-- Location: LCCOMB_X20_Y10_N2
\ps2_ACCLL|Mux24~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux15~18_combout\))))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux15~18_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ascii\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux15~18_combout\,
	combout => \ps2_ACCLL|Mux24~22_combout\);

-- Location: LCCOMB_X20_Y10_N4
\ps2_ACCLL|Mux24~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux15~0_combout\)) # 
-- (!\ps2_ACCLL|Mux24~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|Mux24~22_combout\,
	combout => \ps2_ACCLL|Mux24~23_combout\);

-- Location: LCCOMB_X19_Y10_N2
\ps2_ACCLL|Mux24~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux24~23_combout\ & ((\ps2_ACCLL|Mux24~35_combout\))) # (!\ps2_ACCLL|Mux24~23_combout\ & (\ps2_ACCLL|Mux24~21_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (((\ps2_ACCLL|Mux24~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux24~21_combout\,
	datac => \ps2_ACCLL|Mux24~35_combout\,
	datad => \ps2_ACCLL|Mux24~23_combout\,
	combout => \ps2_ACCLL|Mux24~25_combout\);

-- Location: LCCOMB_X19_Y10_N0
\ps2_ACCLL|Mux24~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~27_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|process_0~2_combout\) # ((\ps2_ACCLL|Mux24~25_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|process_0~2_combout\ & 
-- (\ps2_ACCLL|Mux24~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|process_0~2_combout\,
	datac => \ps2_ACCLL|Mux24~26_combout\,
	datad => \ps2_ACCLL|Mux24~25_combout\,
	combout => \ps2_ACCLL|Mux24~27_combout\);

-- Location: LCCOMB_X19_Y10_N6
\ps2_ACCLL|Mux24~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~31_combout\ = (\ps2_ACCLL|process_0~2_combout\ & ((\ps2_ACCLL|Mux24~27_combout\ & ((\ps2_ACCLL|Mux24~30_combout\))) # (!\ps2_ACCLL|Mux24~27_combout\ & (\ps2_ACCLL|Mux24~20_combout\)))) # (!\ps2_ACCLL|process_0~2_combout\ & 
-- (((\ps2_ACCLL|Mux24~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~2_combout\,
	datab => \ps2_ACCLL|Mux24~20_combout\,
	datac => \ps2_ACCLL|Mux24~30_combout\,
	datad => \ps2_ACCLL|Mux24~27_combout\,
	combout => \ps2_ACCLL|Mux24~31_combout\);

-- Location: LCCOMB_X19_Y10_N20
\ps2_ACCLL|Mux24~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~37_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux24~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux24~31_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux24~15_combout\,
	datad => \ps2_ACCLL|Mux24~31_combout\,
	combout => \ps2_ACCLL|Mux24~37_combout\);

-- Location: LCCOMB_X19_Y10_N10
\ps2_ACCLL|Mux24~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux24~38_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux24~34_combout\) # (\ps2_ACCLL|Mux24~37_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux24~34_combout\ & \ps2_ACCLL|Mux24~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux24~34_combout\,
	datad => \ps2_ACCLL|Mux24~37_combout\,
	combout => \ps2_ACCLL|Mux24~38_combout\);

-- Location: LCCOMB_X22_Y10_N22
\ps2_ACCLL|Mux39~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~24_combout\ = (\ps2_ACCLL|shift_l~0_combout\ & ((\ps2_ACCLL|Mux39~23_combout\) # ((\ps2_ACCLL|Mux39~22_combout\ & \ps2_ACCLL|Mux24~38_combout\)))) # (!\ps2_ACCLL|shift_l~0_combout\ & (((\ps2_ACCLL|Mux39~22_combout\ & 
-- \ps2_ACCLL|Mux24~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|shift_l~0_combout\,
	datab => \ps2_ACCLL|Mux39~23_combout\,
	datac => \ps2_ACCLL|Mux39~22_combout\,
	datad => \ps2_ACCLL|Mux24~38_combout\,
	combout => \ps2_ACCLL|Mux39~24_combout\);

-- Location: LCCOMB_X23_Y10_N10
\ps2_ACCLL|Mux39~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux8~0_combout\ & ((\ps2_ACCLL|caps_lock~1_combout\) # (\ps2_ACCLL|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux8~0_combout\,
	datad => \ps2_ACCLL|Equal1~0_combout\,
	combout => \ps2_ACCLL|Mux39~7_combout\);

-- Location: LCCOMB_X21_Y7_N28
\ps2_ACCLL|Mux39~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~6_combout\ = (\ps2_ACCLL|Mux17~2_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux17~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux39~6_combout\);

-- Location: LCCOMB_X19_Y10_N8
\ps2_ACCLL|Mux39~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~8_combout\ = (\ps2_ACCLL|Mux24~38_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux39~7_combout\) # (\ps2_ACCLL|Mux39~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux39~6_combout\,
	datad => \ps2_ACCLL|Mux24~38_combout\,
	combout => \ps2_ACCLL|Mux39~8_combout\);

-- Location: LCCOMB_X22_Y10_N0
\ps2_ACCLL|Mux39~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~15_combout\);

-- Location: LCCOMB_X22_Y10_N30
\ps2_ACCLL|Mux39~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~16_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|Mux39~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (\ps2_ACCLL|Mux39~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux39~15_combout\,
	combout => \ps2_ACCLL|Mux39~16_combout\);

-- Location: LCCOMB_X15_Y10_N22
\ps2_ACCLL|Mux39~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux39~17_combout\);

-- Location: LCCOMB_X15_Y10_N20
\ps2_ACCLL|Mux39~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|Mux39~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux39~17_combout\,
	combout => \ps2_ACCLL|Mux39~18_combout\);

-- Location: LCCOMB_X19_Y10_N14
\ps2_ACCLL|Mux39~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux24~38_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux39~16_combout\) # ((\ps2_ACCLL|Mux39~18_combout\ & \ps2_ACCLL|Mux24~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux39~16_combout\,
	datac => \ps2_ACCLL|Mux39~18_combout\,
	datad => \ps2_ACCLL|Mux24~38_combout\,
	combout => \ps2_ACCLL|Mux39~19_combout\);

-- Location: LCCOMB_X19_Y10_N30
\ps2_ACCLL|Mux39~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~26_combout\ = (\ps2_ACCLL|Mux24~38_combout\) # ((\ps2_ACCLL|Mux44~2_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux44~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux24~38_combout\,
	combout => \ps2_ACCLL|Mux39~26_combout\);

-- Location: LCCOMB_X23_Y10_N18
\ps2_ACCLL|Mux39~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~27_combout\ = (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux15~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux39~27_combout\);

-- Location: LCCOMB_X19_Y10_N22
\ps2_ACCLL|Mux39~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux24~38_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|Mux42~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux24~38_combout\) # ((\ps2_ACCLL|Mux42~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux42~2_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux24~38_combout\,
	combout => \ps2_ACCLL|Mux39~9_combout\);

-- Location: LCCOMB_X17_Y11_N28
\ps2_ACCLL|Mux39~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux39~10_combout\);

-- Location: LCCOMB_X17_Y11_N14
\ps2_ACCLL|Mux39~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux15~0_combout\ & (\ps2_ACCLL|Mux38~10_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux39~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux38~10_combout\,
	datad => \ps2_ACCLL|Mux39~10_combout\,
	combout => \ps2_ACCLL|Mux39~11_combout\);

-- Location: LCCOMB_X19_Y10_N16
\ps2_ACCLL|Mux39~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~12_combout\ = (\ps2_ACCLL|Mux39~11_combout\) # (\ps2_ACCLL|Mux24~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux39~11_combout\,
	datad => \ps2_ACCLL|Mux24~38_combout\,
	combout => \ps2_ACCLL|Mux39~12_combout\);

-- Location: LCCOMB_X19_Y10_N18
\ps2_ACCLL|Mux39~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux39~27_combout\ & ((\ps2_ACCLL|Mux39~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux39~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux39~27_combout\,
	datac => \ps2_ACCLL|Mux39~9_combout\,
	datad => \ps2_ACCLL|Mux39~12_combout\,
	combout => \ps2_ACCLL|Mux39~13_combout\);

-- Location: LCCOMB_X19_Y10_N24
\ps2_ACCLL|Mux39~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~14_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux39~26_combout\)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux39~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux39~26_combout\,
	datad => \ps2_ACCLL|Mux39~13_combout\,
	combout => \ps2_ACCLL|Mux39~14_combout\);

-- Location: LCCOMB_X19_Y10_N12
\ps2_ACCLL|Mux39~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~20_combout\ = (\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux39~14_combout\ & ((\ps2_ACCLL|Mux39~19_combout\))) # (!\ps2_ACCLL|Mux39~14_combout\ & (\ps2_ACCLL|Mux39~8_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & 
-- (((\ps2_ACCLL|Mux39~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|Mux39~8_combout\,
	datac => \ps2_ACCLL|Mux39~19_combout\,
	datad => \ps2_ACCLL|Mux39~14_combout\,
	combout => \ps2_ACCLL|Mux39~20_combout\);

-- Location: LCCOMB_X19_Y10_N26
\ps2_ACCLL|Mux39~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux39~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux39~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux39~21_combout\) # ((\ps2_ACCLL|Mux39~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux39~21_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux39~24_combout\,
	datad => \ps2_ACCLL|Mux39~20_combout\,
	combout => \ps2_ACCLL|Mux39~25_combout\);

-- Location: LCCOMB_X19_Y7_N0
\ps2_ACCLL|Mux15~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~6_combout\);

-- Location: LCCOMB_X19_Y7_N10
\ps2_ACCLL|Mux15~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~7_combout\ = (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|Mux15~6_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|Mux15~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux15~7_combout\);

-- Location: LCCOMB_X19_Y7_N8
\ps2_ACCLL|Mux15~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~8_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|Mux38~8_combout\) # (!\ps2_ACCLL|Mux22~0_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux22~0_combout\,
	datad => \ps2_ACCLL|Mux38~8_combout\,
	combout => \ps2_ACCLL|Mux15~8_combout\);

-- Location: LCCOMB_X19_Y7_N6
\ps2_ACCLL|Mux7~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux15~7_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux15~8_combout\ & 
-- !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~7_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux15~8_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux7~14_combout\);

-- Location: LCCOMB_X19_Y7_N20
\ps2_ACCLL|Mux15~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~10_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~10_combout\);

-- Location: LCCOMB_X19_Y7_N22
\ps2_ACCLL|Mux15~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~11_combout\ = (!\ps2_ACCLL|ascii\(5) & (((!\ps2_ACCLL|Mux15~9_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|Mux15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux15~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ascii\(5),
	datad => \ps2_ACCLL|Mux15~10_combout\,
	combout => \ps2_ACCLL|Mux15~11_combout\);

-- Location: LCCOMB_X17_Y7_N18
\ps2_ACCLL|Mux15~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~4_combout\);

-- Location: LCCOMB_X19_Y7_N28
\ps2_ACCLL|Mux15~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux15~3_combout\);

-- Location: LCCOMB_X19_Y7_N2
\ps2_ACCLL|Mux15~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux15~5_combout\ = (\ps2_ACCLL|ascii\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux15~4_combout\ & !\ps2_ACCLL|Mux15~3_combout\))) # (!\ps2_ACCLL|ascii\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ 
-- (!\ps2_ACCLL|Mux15~4_combout\)) # (!\ps2_ACCLL|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux15~4_combout\,
	datad => \ps2_ACCLL|Mux15~3_combout\,
	combout => \ps2_ACCLL|Mux15~5_combout\);

-- Location: LCCOMB_X19_Y7_N4
\ps2_ACCLL|Mux7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~15_combout\ = (\ps2_ACCLL|Mux7~14_combout\ & (((\ps2_ACCLL|Mux15~11_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|Mux7~14_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux7~14_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux15~11_combout\,
	datad => \ps2_ACCLL|Mux15~5_combout\,
	combout => \ps2_ACCLL|Mux7~15_combout\);

-- Location: LCCOMB_X17_Y11_N16
\ps2_ACCLL|Mux7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux7~5_combout\);

-- Location: LCCOMB_X17_Y11_N6
\ps2_ACCLL|Mux7~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux7~6_combout\);

-- Location: LCCOMB_X17_Y11_N20
\ps2_ACCLL|Mux7~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|Mux7~6_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|Mux7~5_combout\ & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|Mux7~5_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux7~6_combout\,
	combout => \ps2_ACCLL|Mux7~12_combout\);

-- Location: LCCOMB_X17_Y11_N22
\ps2_ACCLL|Mux7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux7~9_combout\);

-- Location: LCCOMB_X17_Y11_N12
\ps2_ACCLL|Mux7~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux7~8_combout\);

-- Location: LCCOMB_X17_Y11_N2
\ps2_ACCLL|Mux7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux7~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux7~12_combout\ & (\ps2_ACCLL|Mux7~9_combout\)) # (!\ps2_ACCLL|Mux7~12_combout\ & ((\ps2_ACCLL|Mux7~8_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|Mux7~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux7~12_combout\,
	datac => \ps2_ACCLL|Mux7~9_combout\,
	datad => \ps2_ACCLL|Mux7~8_combout\,
	combout => \ps2_ACCLL|Mux7~13_combout\);

-- Location: LCCOMB_X19_Y7_N18
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

-- Location: LCCOMB_X19_Y7_N26
\ps2_ACCLL|ascii~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~16_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux7~15_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux7~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux7~15_combout\,
	datad => \ps2_ACCLL|Mux7~16_combout\,
	combout => \ps2_ACCLL|ascii~16_combout\);

-- Location: LCCOMB_X19_Y10_N28
\ps2_ACCLL|ascii~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~40_combout\ = (!\ps2_ACCLL|ascii~16_combout\ & ((\ps2_ACCLL|control_r~q\) # ((\ps2_ACCLL|control_l~q\) # (!\ps2_ACCLL|Mux39~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|Mux39~25_combout\,
	datad => \ps2_ACCLL|ascii~16_combout\,
	combout => \ps2_ACCLL|ascii~40_combout\);

-- Location: FF_X19_Y10_N29
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

-- Location: LCCOMB_X20_Y5_N8
\ps2_ACCLL|ascii_code[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[5]~3_combout\ = !\ps2_ACCLL|ascii\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ascii\(5),
	combout => \ps2_ACCLL|ascii_code[5]~3_combout\);

-- Location: FF_X21_Y1_N21
\ps2_ACCLL|ascii_code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[5]~3_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(5));

-- Location: LCCOMB_X22_Y6_N10
\ps2_ACCLL|Mux19~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~12_combout\ = (\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))) # (!\ps2_ACCLL|ascii\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux19~12_combout\);

-- Location: LCCOMB_X22_Y6_N30
\ps2_ACCLL|Mux19~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~24_combout\ = \ps2_ACCLL|ascii\(1) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((!\ps2_ACCLL|Mux19~12_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux19~12_combout\,
	combout => \ps2_ACCLL|Mux19~24_combout\);

-- Location: LCCOMB_X19_Y6_N20
\ps2_ACCLL|Mux19~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~13_combout\ = (\ps2_ACCLL|Mux20~5_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux20~5_combout\ & ((!\ps2_ACCLL|ascii\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux20~5_combout\,
	combout => \ps2_ACCLL|Mux19~13_combout\);

-- Location: LCCOMB_X22_Y6_N28
\ps2_ACCLL|Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~2_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux19~24_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- \ps2_ACCLL|Mux19~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux19~24_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux19~13_combout\,
	combout => \ps2_ACCLL|Mux11~2_combout\);

-- Location: LCCOMB_X22_Y6_N26
\ps2_ACCLL|Mux19~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~16_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ascii\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) 
-- & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux19~16_combout\);

-- Location: LCCOMB_X22_Y6_N6
\ps2_ACCLL|Mux19~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (((!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # 
-- (!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux19~14_combout\);

-- Location: LCCOMB_X22_Y6_N12
\ps2_ACCLL|Mux19~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ascii\(1) & 
-- \ps2_ACCLL|Mux19~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux19~14_combout\) # (!\ps2_ACCLL|ascii\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux19~14_combout\,
	combout => \ps2_ACCLL|Mux19~15_combout\);

-- Location: LCCOMB_X22_Y6_N4
\ps2_ACCLL|Mux19~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux19~16_combout\ & ((\ps2_ACCLL|Mux19~15_combout\) # (!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux19~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~16_combout\,
	datad => \ps2_ACCLL|Mux19~15_combout\,
	combout => \ps2_ACCLL|Mux19~17_combout\);

-- Location: LCCOMB_X22_Y6_N2
\ps2_ACCLL|Mux19~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~10_combout\ = (!\ps2_ACCLL|ascii\(1) & (((!\ps2_ACCLL|Mux19~2_combout\) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux19~2_combout\,
	combout => \ps2_ACCLL|Mux19~10_combout\);

-- Location: LCCOMB_X22_Y6_N0
\ps2_ACCLL|Mux19~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~11_combout\ = (\ps2_ACCLL|Mux19~10_combout\) # ((\ps2_ACCLL|Mux13~2_combout\ & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux13~2_combout\,
	datab => \ps2_ACCLL|Mux19~10_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~11_combout\);

-- Location: LCCOMB_X22_Y6_N22
\ps2_ACCLL|Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux11~2_combout\ & (\ps2_ACCLL|Mux19~17_combout\)) # (!\ps2_ACCLL|Mux11~2_combout\ & ((\ps2_ACCLL|Mux19~11_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (\ps2_ACCLL|Mux11~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux11~2_combout\,
	datac => \ps2_ACCLL|Mux19~17_combout\,
	datad => \ps2_ACCLL|Mux19~11_combout\,
	combout => \ps2_ACCLL|Mux11~3_combout\);

-- Location: LCCOMB_X16_Y9_N0
\ps2_ACCLL|Mux19~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~9_combout\ = (\ps2_ACCLL|Mux19~2_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ascii\(1))))) # (!\ps2_ACCLL|Mux19~2_combout\ & (!\ps2_ACCLL|ascii\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux19~9_combout\);

-- Location: LCCOMB_X16_Y9_N26
\ps2_ACCLL|Mux19~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~5_combout\ = (\ps2_ACCLL|Mux13~9_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))) # (!\ps2_ACCLL|Mux13~9_combout\ & (!\ps2_ACCLL|ascii\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux13~9_combout\,
	combout => \ps2_ACCLL|Mux19~5_combout\);

-- Location: LCCOMB_X16_Y9_N18
\ps2_ACCLL|Mux19~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~7_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~7_combout\);

-- Location: LCCOMB_X16_Y9_N16
\ps2_ACCLL|Mux19~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~6_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux13~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|Mux13~9_combout\ & (!\ps2_ACCLL|ascii\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux13~9_combout\,
	combout => \ps2_ACCLL|Mux19~6_combout\);

-- Location: LCCOMB_X16_Y9_N12
\ps2_ACCLL|Mux19~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~8_combout\ = (\ps2_ACCLL|Mux19~6_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|Mux19~7_combout\) # (\ps2_ACCLL|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|Mux19~7_combout\,
	datac => \ps2_ACCLL|Mux19~2_combout\,
	datad => \ps2_ACCLL|Mux19~6_combout\,
	combout => \ps2_ACCLL|Mux19~8_combout\);

-- Location: LCCOMB_X16_Y9_N30
\ps2_ACCLL|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~0_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux19~5_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux19~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux19~5_combout\,
	datad => \ps2_ACCLL|Mux19~8_combout\,
	combout => \ps2_ACCLL|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y9_N2
\ps2_ACCLL|Mux38~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~9_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~9_combout\);

-- Location: LCCOMB_X17_Y9_N12
\ps2_ACCLL|Mux19~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~3_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux19~3_combout\);

-- Location: LCCOMB_X16_Y9_N10
\ps2_ACCLL|Mux19~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~4_combout\ = (\ps2_ACCLL|Mux38~9_combout\) # ((!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~3_combout\) # (!\ps2_ACCLL|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|Mux38~9_combout\,
	datac => \ps2_ACCLL|Mux19~3_combout\,
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|Mux19~4_combout\);

-- Location: LCCOMB_X16_Y9_N22
\ps2_ACCLL|Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux11~1_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|Mux11~0_combout\ & (\ps2_ACCLL|Mux19~9_combout\)) # (!\ps2_ACCLL|Mux11~0_combout\ & ((\ps2_ACCLL|Mux19~4_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux19~9_combout\,
	datac => \ps2_ACCLL|Mux11~0_combout\,
	datad => \ps2_ACCLL|Mux19~4_combout\,
	combout => \ps2_ACCLL|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y6_N20
\ps2_ACCLL|ascii~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~12_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux11~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux11~3_combout\))))

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
	combout => \ps2_ACCLL|ascii~12_combout\);

-- Location: LCCOMB_X22_Y9_N12
\ps2_ACCLL|Mux19~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux20~4_combout\,
	combout => \ps2_ACCLL|Mux19~19_combout\);

-- Location: LCCOMB_X22_Y9_N8
\ps2_ACCLL|Mux19~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~18_combout\ = (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((!\ps2_ACCLL|Mux20~4_combout\) # (!\ps2_ACCLL|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux14~4_combout\,
	datad => \ps2_ACCLL|Mux20~4_combout\,
	combout => \ps2_ACCLL|Mux19~18_combout\);

-- Location: LCCOMB_X22_Y9_N18
\ps2_ACCLL|Mux17~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux17~26_combout\ = (\ps2_ACCLL|e0_code~q\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & \ps2_ACCLL|caps_lock~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|e0_code~q\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|caps_lock~0_combout\,
	combout => \ps2_ACCLL|Mux17~26_combout\);

-- Location: LCCOMB_X22_Y9_N22
\ps2_ACCLL|Mux19~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~20_combout\ = (\ps2_ACCLL|Mux19~18_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux19~19_combout\) # (\ps2_ACCLL|Mux17~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~19_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux19~18_combout\,
	datad => \ps2_ACCLL|Mux17~26_combout\,
	combout => \ps2_ACCLL|Mux19~20_combout\);

-- Location: LCCOMB_X21_Y10_N14
\ps2_ACCLL|Mux19~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	combout => \ps2_ACCLL|Mux19~21_combout\);

-- Location: LCCOMB_X21_Y10_N0
\ps2_ACCLL|Mux19~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~22_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|Mux19~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|Mux20~4_combout\)))) # (!\ps2_ACCLL|Mux19~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux19~21_combout\,
	datad => \ps2_ACCLL|Mux20~4_combout\,
	combout => \ps2_ACCLL|Mux19~22_combout\);

-- Location: LCCOMB_X22_Y9_N4
\ps2_ACCLL|Mux19~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux19~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ascii\(1),
	datac => \ps2_ACCLL|Mux19~20_combout\,
	datad => \ps2_ACCLL|Mux19~22_combout\,
	combout => \ps2_ACCLL|Mux19~23_combout\);

-- Location: LCCOMB_X24_Y9_N6
\ps2_ACCLL|Mux28~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~4_combout\ = (!\ps2_ACCLL|Mux29~5_combout\ & \ps2_ACCLL|Mux19~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux29~5_combout\,
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux28~4_combout\);

-- Location: LCCOMB_X21_Y9_N14
\ps2_ACCLL|Mux28~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ascii\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux28~5_combout\);

-- Location: LCCOMB_X22_Y9_N26
\ps2_ACCLL|Mux28~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~6_combout\ = (\ps2_ACCLL|Mux28~5_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (\ps2_ACCLL|Mux25~20_combout\)))) # (!\ps2_ACCLL|Mux28~5_combout\ & (\ps2_ACCLL|Mux25~20_combout\ & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~5_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux25~20_combout\,
	combout => \ps2_ACCLL|Mux28~6_combout\);

-- Location: LCCOMB_X21_Y9_N12
\ps2_ACCLL|Mux28~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|Mux28~5_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux28~5_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux28~7_combout\);

-- Location: LCCOMB_X22_Y9_N16
\ps2_ACCLL|Mux28~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~8_combout\ = (\ps2_ACCLL|Mux28~6_combout\ & (((!\ps2_ACCLL|Mux28~7_combout\)))) # (!\ps2_ACCLL|Mux28~6_combout\ & ((\ps2_ACCLL|Mux28~7_combout\ & ((\ps2_ACCLL|Mux19~22_combout\))) # (!\ps2_ACCLL|Mux28~7_combout\ & 
-- (\ps2_ACCLL|Mux19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux19~20_combout\,
	datab => \ps2_ACCLL|Mux19~22_combout\,
	datac => \ps2_ACCLL|Mux28~6_combout\,
	datad => \ps2_ACCLL|Mux28~7_combout\,
	combout => \ps2_ACCLL|Mux28~8_combout\);

-- Location: LCCOMB_X22_Y9_N14
\ps2_ACCLL|Mux28~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~25_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux28~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux28~8_combout\,
	combout => \ps2_ACCLL|Mux28~25_combout\);

-- Location: LCCOMB_X21_Y9_N18
\ps2_ACCLL|Mux28~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~15_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
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
	combout => \ps2_ACCLL|Mux28~15_combout\);

-- Location: LCCOMB_X23_Y11_N12
\ps2_ACCLL|Mux28~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

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
	combout => \ps2_ACCLL|Mux28~14_combout\);

-- Location: LCCOMB_X22_Y9_N24
\ps2_ACCLL|Mux28~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~13_combout\ = (!\ps2_ACCLL|ascii\(1) & \ps2_ACCLL|Mux19~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux19~22_combout\,
	combout => \ps2_ACCLL|Mux28~13_combout\);

-- Location: LCCOMB_X22_Y9_N30
\ps2_ACCLL|Mux28~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~16_combout\ = (\ps2_ACCLL|Mux28~15_combout\ & (\ps2_ACCLL|Mux28~14_combout\)) # (!\ps2_ACCLL|Mux28~15_combout\ & ((\ps2_ACCLL|Mux28~14_combout\ & ((\ps2_ACCLL|Mux28~13_combout\))) # (!\ps2_ACCLL|Mux28~14_combout\ & 
-- (\ps2_ACCLL|Mux19~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~15_combout\,
	datab => \ps2_ACCLL|Mux28~14_combout\,
	datac => \ps2_ACCLL|Mux19~20_combout\,
	datad => \ps2_ACCLL|Mux28~13_combout\,
	combout => \ps2_ACCLL|Mux28~16_combout\);

-- Location: LCCOMB_X22_Y9_N20
\ps2_ACCLL|Mux28~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|Mux28~16_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- ((\ps2_ACCLL|Mux19~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux28~16_combout\,
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux28~17_combout\);

-- Location: LCCOMB_X21_Y9_N30
\ps2_ACCLL|Mux28~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	combout => \ps2_ACCLL|Mux28~26_combout\);

-- Location: LCCOMB_X21_Y9_N16
\ps2_ACCLL|Mux28~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~18_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ascii\(1) & ((\ps2_ACCLL|Mux19~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux15~1_combout\,
	datad => \ps2_ACCLL|Mux19~22_combout\,
	combout => \ps2_ACCLL|Mux28~18_combout\);

-- Location: LCCOMB_X21_Y9_N8
\ps2_ACCLL|Mux28~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|Mux19~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux19~20_combout\,
	combout => \ps2_ACCLL|Mux28~20_combout\);

-- Location: LCCOMB_X21_Y9_N10
\ps2_ACCLL|Mux28~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux19~20_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux19~20_combout\,
	combout => \ps2_ACCLL|Mux28~19_combout\);

-- Location: LCCOMB_X21_Y9_N6
\ps2_ACCLL|Mux28~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~21_combout\ = (\ps2_ACCLL|Mux28~20_combout\ & ((\ps2_ACCLL|Mux28~26_combout\ & ((!\ps2_ACCLL|Mux28~19_combout\))) # (!\ps2_ACCLL|Mux28~26_combout\ & (\ps2_ACCLL|Mux28~18_combout\ & \ps2_ACCLL|Mux28~19_combout\)))) # 
-- (!\ps2_ACCLL|Mux28~20_combout\ & (((\ps2_ACCLL|Mux28~18_combout\) # (\ps2_ACCLL|Mux28~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~26_combout\,
	datab => \ps2_ACCLL|Mux28~18_combout\,
	datac => \ps2_ACCLL|Mux28~20_combout\,
	datad => \ps2_ACCLL|Mux28~19_combout\,
	combout => \ps2_ACCLL|Mux28~21_combout\);

-- Location: LCCOMB_X21_Y10_N30
\ps2_ACCLL|Mux28~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ascii\(1) & \ps2_ACCLL|Mux19~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ascii\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ascii\(1),
	datad => \ps2_ACCLL|Mux19~22_combout\,
	combout => \ps2_ACCLL|Mux28~9_combout\);

-- Location: LCCOMB_X22_Y9_N10
\ps2_ACCLL|Mux28~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~10_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) $ (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & !\ps2_ACCLL|Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux28~9_combout\,
	combout => \ps2_ACCLL|Mux28~10_combout\);

-- Location: LCCOMB_X22_Y9_N28
\ps2_ACCLL|Mux28~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|Mux19~23_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux28~10_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # 
-- (!\ps2_ACCLL|Mux28~10_combout\ & ((\ps2_ACCLL|Mux19~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux19~23_combout\,
	datad => \ps2_ACCLL|Mux28~10_combout\,
	combout => \ps2_ACCLL|Mux28~11_combout\);

-- Location: LCCOMB_X22_Y9_N2
\ps2_ACCLL|Mux28~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|Mux28~11_combout\ & ((\ps2_ACCLL|Mux28~10_combout\) # (!\ps2_ACCLL|Mux25~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~18_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux28~10_combout\,
	datad => \ps2_ACCLL|Mux28~11_combout\,
	combout => \ps2_ACCLL|Mux28~12_combout\);

-- Location: LCCOMB_X22_Y9_N6
\ps2_ACCLL|Mux28~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux28~17_combout\ & (\ps2_ACCLL|Mux28~21_combout\)) # (!\ps2_ACCLL|Mux28~17_combout\ & ((\ps2_ACCLL|Mux28~12_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- (\ps2_ACCLL|Mux28~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux28~17_combout\,
	datac => \ps2_ACCLL|Mux28~21_combout\,
	datad => \ps2_ACCLL|Mux28~12_combout\,
	combout => \ps2_ACCLL|Mux28~22_combout\);

-- Location: LCCOMB_X22_Y9_N0
\ps2_ACCLL|Mux28~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~23_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux28~25_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & \ps2_ACCLL|Mux28~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|Mux28~25_combout\,
	datad => \ps2_ACCLL|Mux28~22_combout\,
	combout => \ps2_ACCLL|Mux28~23_combout\);

-- Location: LCCOMB_X23_Y9_N22
\ps2_ACCLL|Mux43~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~2_combout\ = (\ps2_ACCLL|Mux28~4_combout\) # ((\ps2_ACCLL|Mux28~23_combout\) # ((\ps2_ACCLL|Mux42~2_combout\ & \ps2_ACCLL|Mux24~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~4_combout\,
	datab => \ps2_ACCLL|Mux42~2_combout\,
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|Mux24~14_combout\,
	combout => \ps2_ACCLL|Mux43~2_combout\);

-- Location: LCCOMB_X23_Y9_N30
\ps2_ACCLL|Mux43~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~5_combout\ = (\ps2_ACCLL|caps_lock~1_combout\ & (!\ps2_ACCLL|Mux42~2_combout\ & ((\ps2_ACCLL|Mux28~23_combout\) # (\ps2_ACCLL|Mux28~4_combout\)))) # (!\ps2_ACCLL|caps_lock~1_combout\ & (((\ps2_ACCLL|Mux28~23_combout\) # 
-- (\ps2_ACCLL|Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|caps_lock~1_combout\,
	datab => \ps2_ACCLL|Mux42~2_combout\,
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|Mux28~4_combout\,
	combout => \ps2_ACCLL|Mux43~5_combout\);

-- Location: LCCOMB_X23_Y9_N8
\ps2_ACCLL|Mux43~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~3_combout\ = (\ps2_ACCLL|Mux25~19_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux25~19_combout\ & ((\ps2_ACCLL|Mux28~4_combout\) # ((\ps2_ACCLL|Mux28~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~4_combout\,
	datab => \ps2_ACCLL|Mux25~19_combout\,
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~3_combout\);

-- Location: LCCOMB_X23_Y9_N6
\ps2_ACCLL|Mux28~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux28~24_combout\ = (\ps2_ACCLL|Mux28~23_combout\) # ((!\ps2_ACCLL|Mux29~5_combout\ & \ps2_ACCLL|Mux19~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|Mux29~5_combout\,
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|Mux19~23_combout\,
	combout => \ps2_ACCLL|Mux28~24_combout\);

-- Location: LCCOMB_X23_Y9_N28
\ps2_ACCLL|Mux43~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~4_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux43~3_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- ((\ps2_ACCLL|Mux28~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~3_combout\,
	datad => \ps2_ACCLL|Mux28~24_combout\,
	combout => \ps2_ACCLL|Mux43~4_combout\);

-- Location: LCCOMB_X23_Y9_N12
\ps2_ACCLL|Mux43~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~4_combout\ & ((\ps2_ACCLL|Mux43~5_combout\))) # (!\ps2_ACCLL|Mux43~4_combout\ & (\ps2_ACCLL|Mux43~2_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~5_combout\,
	datad => \ps2_ACCLL|Mux43~4_combout\,
	combout => \ps2_ACCLL|Mux43~6_combout\);

-- Location: LCCOMB_X23_Y9_N14
\ps2_ACCLL|ascii~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux43~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux43~6_combout\,
	combout => \ps2_ACCLL|ascii~13_combout\);

-- Location: LCCOMB_X23_Y11_N2
\ps2_ACCLL|Mux43~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~7_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|Mux22~0_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- !\ps2_ACCLL|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux22~0_combout\,
	combout => \ps2_ACCLL|Mux43~7_combout\);

-- Location: LCCOMB_X22_Y7_N22
\ps2_ACCLL|Mux43~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~8_combout\ = \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~8_combout\);

-- Location: LCCOMB_X23_Y9_N16
\ps2_ACCLL|Mux43~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~9_combout\ = (\ps2_ACCLL|Mux43~7_combout\ & (((\ps2_ACCLL|Mux28~23_combout\) # (\ps2_ACCLL|Mux28~4_combout\)))) # (!\ps2_ACCLL|Mux43~7_combout\ & (!\ps2_ACCLL|Mux43~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~7_combout\,
	datab => \ps2_ACCLL|Mux43~8_combout\,
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|Mux28~4_combout\,
	combout => \ps2_ACCLL|Mux43~9_combout\);

-- Location: LCCOMB_X24_Y9_N0
\ps2_ACCLL|Mux43~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux43~10_combout\);

-- Location: LCCOMB_X23_Y10_N8
\ps2_ACCLL|Mux43~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~11_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~0_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|Mux42~2_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux15~0_combout\,
	datad => \ps2_ACCLL|Mux42~2_combout\,
	combout => \ps2_ACCLL|Mux43~11_combout\);

-- Location: LCCOMB_X23_Y9_N10
\ps2_ACCLL|Mux43~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~12_combout\ = (\ps2_ACCLL|Mux43~11_combout\ & (((\ps2_ACCLL|Mux43~10_combout\)))) # (!\ps2_ACCLL|Mux43~11_combout\ & ((\ps2_ACCLL|Mux28~4_combout\) # ((\ps2_ACCLL|Mux28~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~4_combout\,
	datab => \ps2_ACCLL|Mux43~10_combout\,
	datac => \ps2_ACCLL|Mux28~23_combout\,
	datad => \ps2_ACCLL|Mux43~11_combout\,
	combout => \ps2_ACCLL|Mux43~12_combout\);

-- Location: LCCOMB_X23_Y9_N24
\ps2_ACCLL|Mux43~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~13_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux43~12_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|Mux43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~2_combout\,
	datad => \ps2_ACCLL|Mux43~12_combout\,
	combout => \ps2_ACCLL|Mux43~13_combout\);

-- Location: LCCOMB_X23_Y9_N26
\ps2_ACCLL|Mux43~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~13_combout\ & (\ps2_ACCLL|Mux28~24_combout\)) # (!\ps2_ACCLL|Mux43~13_combout\ & ((\ps2_ACCLL|Mux43~9_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~24_combout\,
	datab => \ps2_ACCLL|Mux43~9_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|Mux43~13_combout\,
	combout => \ps2_ACCLL|Mux43~14_combout\);

-- Location: LCCOMB_X24_Y9_N26
\ps2_ACCLL|Mux43~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~15_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~15_combout\);

-- Location: LCCOMB_X22_Y10_N8
\ps2_ACCLL|Mux43~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~21_combout\ = (\ps2_ACCLL|Mux38~8_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux38~8_combout\,
	combout => \ps2_ACCLL|Mux43~21_combout\);

-- Location: LCCOMB_X23_Y9_N4
\ps2_ACCLL|Mux43~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~16_combout\ = (\ps2_ACCLL|Mux43~21_combout\) # ((\ps2_ACCLL|Mux28~24_combout\ & ((\ps2_ACCLL|Mux43~15_combout\) # (!\ps2_ACCLL|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux43~15_combout\,
	datab => \ps2_ACCLL|Mux29~5_combout\,
	datac => \ps2_ACCLL|Mux43~21_combout\,
	datad => \ps2_ACCLL|Mux28~24_combout\,
	combout => \ps2_ACCLL|Mux43~16_combout\);

-- Location: LCCOMB_X24_Y9_N16
\ps2_ACCLL|Mux43~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~17_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux43~17_combout\);

-- Location: LCCOMB_X24_Y9_N2
\ps2_ACCLL|Mux43~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~18_combout\ = (\ps2_ACCLL|Mux43~11_combout\ & (((\ps2_ACCLL|Mux43~17_combout\)))) # (!\ps2_ACCLL|Mux43~11_combout\ & ((\ps2_ACCLL|Mux28~4_combout\) # ((\ps2_ACCLL|Mux28~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~4_combout\,
	datab => \ps2_ACCLL|Mux43~17_combout\,
	datac => \ps2_ACCLL|Mux43~11_combout\,
	datad => \ps2_ACCLL|Mux28~23_combout\,
	combout => \ps2_ACCLL|Mux43~18_combout\);

-- Location: LCCOMB_X23_Y9_N2
\ps2_ACCLL|Mux43~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~19_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)) # ((\ps2_ACCLL|Mux43~18_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (\ps2_ACCLL|Mux43~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~2_combout\,
	datad => \ps2_ACCLL|Mux43~18_combout\,
	combout => \ps2_ACCLL|Mux43~19_combout\);

-- Location: LCCOMB_X23_Y9_N20
\ps2_ACCLL|Mux43~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux43~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|Mux43~19_combout\ & (\ps2_ACCLL|Mux28~24_combout\)) # (!\ps2_ACCLL|Mux43~19_combout\ & ((\ps2_ACCLL|Mux43~16_combout\))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|Mux43~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux28~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|Mux43~16_combout\,
	datad => \ps2_ACCLL|Mux43~19_combout\,
	combout => \ps2_ACCLL|Mux43~20_combout\);

-- Location: LCCOMB_X23_Y9_N18
\ps2_ACCLL|ascii~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|process_0~1_combout\ & (\ps2_ACCLL|Mux43~14_combout\)) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|Mux43~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux43~14_combout\,
	datad => \ps2_ACCLL|Mux43~20_combout\,
	combout => \ps2_ACCLL|ascii~14_combout\);

-- Location: LCCOMB_X23_Y9_N0
\ps2_ACCLL|ascii~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~15_combout\ = (!\ps2_ACCLL|ascii~12_combout\ & ((\ps2_ACCLL|process_0~0_combout\) # ((!\ps2_ACCLL|ascii~13_combout\ & !\ps2_ACCLL|ascii~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~12_combout\,
	datab => \ps2_ACCLL|process_0~0_combout\,
	datac => \ps2_ACCLL|ascii~13_combout\,
	datad => \ps2_ACCLL|ascii~14_combout\,
	combout => \ps2_ACCLL|ascii~15_combout\);

-- Location: FF_X23_Y9_N1
\ps2_ACCLL|ascii[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ps2_ACCLL|ascii~15_combout\,
	ena => \ps2_ACCLL|state.translate~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii\(1));

-- Location: LCCOMB_X21_Y5_N28
\ps2_ACCLL|ascii_code[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii_code[1]~2_combout\ = !\ps2_ACCLL|ascii\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_ACCLL|ascii\(1),
	combout => \ps2_ACCLL|ascii_code[1]~2_combout\);

-- Location: FF_X21_Y1_N29
\ps2_ACCLL|ascii_code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[1]~2_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(1));

-- Location: LCCOMB_X21_Y1_N20
\process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((\ps2_ACCLL|ascii_code\(3) & ((\ps2_ACCLL|ascii_code\(2)) # (\ps2_ACCLL|ascii_code\(1))))) # (!\ps2_ACCLL|ascii_code\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(3),
	datab => \ps2_ACCLL|ascii_code\(2),
	datac => \ps2_ACCLL|ascii_code\(5),
	datad => \ps2_ACCLL|ascii_code\(1),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X16_Y7_N14
\ps2_ACCLL|Mux6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux6~5_combout\);

-- Location: LCCOMB_X16_Y7_N28
\ps2_ACCLL|Mux6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux6~6_combout\);

-- Location: LCCOMB_X16_Y7_N24
\ps2_ACCLL|Mux6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (((\ps2_ACCLL|Mux6~6_combout\) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux6~5_combout\ & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux6~5_combout\,
	datab => \ps2_ACCLL|Mux6~6_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|Mux6~12_combout\);

-- Location: LCCOMB_X16_Y7_N4
\ps2_ACCLL|Mux6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~9_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & 
-- \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux6~9_combout\);

-- Location: LCCOMB_X16_Y7_N6
\ps2_ACCLL|Mux6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux6~8_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux6~8_combout\);

-- Location: LCCOMB_X16_Y7_N10
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

-- Location: LCCOMB_X16_Y7_N22
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

-- Location: LCCOMB_X16_Y7_N12
\ps2_ACCLL|ascii~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~17_combout\);

-- Location: LCCOMB_X16_Y7_N20
\ps2_ACCLL|Mux14~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~10_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux17~9_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & \ps2_ACCLL|Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux17~9_combout\,
	combout => \ps2_ACCLL|Mux14~10_combout\);

-- Location: LCCOMB_X16_Y7_N30
\ps2_ACCLL|ascii~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~18_combout\ = (\ps2_ACCLL|ascii~17_combout\ & (\ps2_ACCLL|Mux14~10_combout\ & (\ps2_ACCLL|Mux42~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~17_combout\,
	datab => \ps2_ACCLL|Mux14~10_combout\,
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~18_combout\);

-- Location: LCCOMB_X16_Y7_N8
\ps2_ACCLL|ascii~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~21_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((!\ps2_ACCLL|Mux17~9_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (!\ps2_ACCLL|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux20~4_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datad => \ps2_ACCLL|Mux17~9_combout\,
	combout => \ps2_ACCLL|ascii~21_combout\);

-- Location: LCCOMB_X16_Y7_N18
\ps2_ACCLL|ascii~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~20_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & !\ps2_ACCLL|caps_lock~2_combout\)) # (!\ps2_ACCLL|Mux14~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|Mux14~10_combout\,
	datac => \ps2_ACCLL|caps_lock~2_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~20_combout\);

-- Location: LCCOMB_X16_Y7_N26
\ps2_ACCLL|ascii~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~22_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ascii~21_combout\) # (\ps2_ACCLL|ascii~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ascii~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ascii~21_combout\,
	datad => \ps2_ACCLL|ascii~20_combout\,
	combout => \ps2_ACCLL|ascii~22_combout\);

-- Location: LCCOMB_X16_Y7_N16
\ps2_ACCLL|ascii~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~19_combout\ = (\ps2_ACCLL|Mux25~20_combout\ & (!\ps2_ACCLL|Mux15~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux25~20_combout\ & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux25~20_combout\,
	datab => \ps2_ACCLL|Mux15~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	combout => \ps2_ACCLL|ascii~19_combout\);

-- Location: LCCOMB_X16_Y7_N0
\ps2_ACCLL|ascii~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~23_combout\ = (\ps2_ACCLL|ascii~18_combout\) # ((!\ps2_ACCLL|ascii\(6) & ((\ps2_ACCLL|ascii~22_combout\) # (\ps2_ACCLL|ascii~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii~18_combout\,
	datab => \ps2_ACCLL|ascii\(6),
	datac => \ps2_ACCLL|ascii~22_combout\,
	datad => \ps2_ACCLL|ascii~19_combout\,
	combout => \ps2_ACCLL|ascii~23_combout\);

-- Location: LCCOMB_X16_Y7_N2
\ps2_ACCLL|ascii~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~24_combout\ = (\ps2_ACCLL|process_0~0_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|Mux6~14_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ascii~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~0_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux6~14_combout\,
	datad => \ps2_ACCLL|ascii~23_combout\,
	combout => \ps2_ACCLL|ascii~24_combout\);

-- Location: LCCOMB_X15_Y10_N14
\ps2_ACCLL|Mux38~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~12_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & 
-- (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~12_combout\);

-- Location: LCCOMB_X16_Y10_N6
\ps2_ACCLL|Mux38~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~13_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((!\ps2_ACCLL|Mux38~12_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|Mux38~10_combout\ & 
-- \ps2_ACCLL|Mux38~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|Mux38~10_combout\,
	datad => \ps2_ACCLL|Mux38~12_combout\,
	combout => \ps2_ACCLL|Mux38~13_combout\);

-- Location: LCCOMB_X17_Y10_N30
\ps2_ACCLL|Mux14~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~8_combout\ = (\ps2_ACCLL|Mux16~0_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) $ (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|Mux16~0_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux14~8_combout\);

-- Location: LCCOMB_X17_Y10_N6
\ps2_ACCLL|Mux14~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux20~4_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux20~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	combout => \ps2_ACCLL|Mux14~11_combout\);

-- Location: LCCOMB_X17_Y10_N20
\ps2_ACCLL|Mux14~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~9_combout\ = (\ps2_ACCLL|Mux14~8_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))) # (!\ps2_ACCLL|Mux14~8_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|Mux14~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux14~8_combout\,
	datad => \ps2_ACCLL|Mux14~11_combout\,
	combout => \ps2_ACCLL|Mux14~9_combout\);

-- Location: LCCOMB_X17_Y10_N14
\ps2_ACCLL|Mux14~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~6_combout\ = (!\ps2_ACCLL|ascii\(6) & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux14~4_combout\)) # (!\ps2_ACCLL|Mux20~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii\(6),
	datab => \ps2_ACCLL|Mux20~4_combout\,
	datac => \ps2_ACCLL|Mux14~4_combout\,
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux14~6_combout\);

-- Location: LCCOMB_X17_Y10_N0
\ps2_ACCLL|Mux14~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux14~7_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux14~6_combout\) # ((\ps2_ACCLL|Mux8~0_combout\ & \ps2_ACCLL|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux8~0_combout\,
	datac => \ps2_ACCLL|Mux14~6_combout\,
	datad => \ps2_ACCLL|Mux16~1_combout\,
	combout => \ps2_ACCLL|Mux14~7_combout\);

-- Location: LCCOMB_X17_Y10_N10
\ps2_ACCLL|Mux23~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~2_combout\ = (\ps2_ACCLL|Mux14~7_combout\) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux14~9_combout\ & !\ps2_ACCLL|ascii\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux14~9_combout\,
	datac => \ps2_ACCLL|ascii\(6),
	datad => \ps2_ACCLL|Mux14~7_combout\,
	combout => \ps2_ACCLL|Mux23~2_combout\);

-- Location: LCCOMB_X17_Y10_N16
\ps2_ACCLL|Mux23~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~3_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux22~4_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux22~7_combout\)))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux22~7_combout\,
	datad => \ps2_ACCLL|Mux22~4_combout\,
	combout => \ps2_ACCLL|Mux23~3_combout\);

-- Location: LCCOMB_X17_Y10_N2
\ps2_ACCLL|Mux23~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~4_combout\ = (\ps2_ACCLL|Mux23~2_combout\) # ((\ps2_ACCLL|Mux23~3_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (\ps2_ACCLL|Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|Mux23~3_combout\,
	datac => \ps2_ACCLL|Mux22~3_combout\,
	datad => \ps2_ACCLL|Mux23~2_combout\,
	combout => \ps2_ACCLL|Mux23~4_combout\);

-- Location: LCCOMB_X17_Y10_N12
\ps2_ACCLL|Mux23~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~5_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|Mux22~0_combout\ & (\ps2_ACCLL|Mux22~1_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (((\ps2_ACCLL|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux22~0_combout\,
	datac => \ps2_ACCLL|Mux22~1_combout\,
	datad => \ps2_ACCLL|Mux23~4_combout\,
	combout => \ps2_ACCLL|Mux23~5_combout\);

-- Location: LCCOMB_X17_Y10_N24
\ps2_ACCLL|Mux23~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux23~6_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|Mux23~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & ((\ps2_ACCLL|Mux23~5_combout\) # ((\ps2_ACCLL|Mux23~2_combout\ & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux23~2_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux23~5_combout\,
	combout => \ps2_ACCLL|Mux23~6_combout\);

-- Location: LCCOMB_X17_Y10_N26
\ps2_ACCLL|Mux38~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~14_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|Mux38~13_combout\ & (\ps2_ACCLL|Mux14~5_combout\)) # (!\ps2_ACCLL|Mux38~13_combout\ & ((\ps2_ACCLL|Mux23~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datab => \ps2_ACCLL|Mux14~5_combout\,
	datac => \ps2_ACCLL|Mux38~13_combout\,
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~14_combout\);

-- Location: LCCOMB_X16_Y10_N2
\ps2_ACCLL|Mux38~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~28_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & 
-- ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~28_combout\);

-- Location: LCCOMB_X17_Y10_N18
\ps2_ACCLL|Mux38~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~29_combout\ = (\ps2_ACCLL|Mux38~28_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) & ((\ps2_ACCLL|Mux23~6_combout\))))) # 
-- (!\ps2_ACCLL|Mux38~28_combout\ & (\ps2_ACCLL|Mux23~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~28_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~29_combout\);

-- Location: LCCOMB_X17_Y10_N4
\ps2_ACCLL|Mux38~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~15_combout\ = (\ps2_ACCLL|Mux38~14_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & \ps2_ACCLL|Mux38~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux38~14_combout\,
	datad => \ps2_ACCLL|Mux38~29_combout\,
	combout => \ps2_ACCLL|Mux38~15_combout\);

-- Location: LCCOMB_X16_Y10_N8
\ps2_ACCLL|ascii~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~26_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|Mux23~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # (!\ps2_ACCLL|Mux38~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~8_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|ascii~26_combout\);

-- Location: LCCOMB_X16_Y10_N4
\ps2_ACCLL|Mux38~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~27_combout\ = (\ps2_ACCLL|Mux23~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)) # ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7)) # (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~27_combout\);

-- Location: LCCOMB_X15_Y10_N24
\ps2_ACCLL|Mux38~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~11_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	combout => \ps2_ACCLL|Mux38~11_combout\);

-- Location: LCCOMB_X16_Y10_N10
\ps2_ACCLL|Mux38~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~21_combout\ = (\ps2_ACCLL|Mux38~11_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # 
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
	datad => \ps2_ACCLL|Mux38~11_combout\,
	combout => \ps2_ACCLL|Mux38~21_combout\);

-- Location: LCCOMB_X16_Y10_N12
\ps2_ACCLL|Mux38~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~22_combout\ = (\ps2_ACCLL|Mux38~21_combout\ & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # (!\ps2_ACCLL|Mux38~21_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))) # 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux23~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~21_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~22_combout\);

-- Location: LCCOMB_X16_Y10_N30
\ps2_ACCLL|Mux38~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~23_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|Mux38~27_combout\) # ((\ps2_ACCLL|Mux38~9_combout\ & !\ps2_ACCLL|Mux38~22_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & (((\ps2_ACCLL|Mux38~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~9_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datac => \ps2_ACCLL|Mux38~27_combout\,
	datad => \ps2_ACCLL|Mux38~22_combout\,
	combout => \ps2_ACCLL|Mux38~23_combout\);

-- Location: LCCOMB_X16_Y10_N14
\ps2_ACCLL|Mux38~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~25_combout\ = (\ps2_ACCLL|Mux23~6_combout\ & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4))) # (!\ps2_ACCLL|Mux38~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datab => \ps2_ACCLL|Mux38~11_combout\,
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~25_combout\);

-- Location: LCCOMB_X17_Y10_N22
\ps2_ACCLL|Mux38~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~24_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	combout => \ps2_ACCLL|Mux38~24_combout\);

-- Location: LCCOMB_X17_Y10_N28
\ps2_ACCLL|ascii~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~27_combout\ = (\ps2_ACCLL|Mux38~24_combout\ & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|Mux15~13_combout\))) # (!\ps2_ACCLL|Mux38~24_combout\ & ((\ps2_ACCLL|Mux23~6_combout\) # ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & 
-- \ps2_ACCLL|Mux15~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~24_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|Mux15~13_combout\,
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|ascii~27_combout\);

-- Location: LCCOMB_X16_Y10_N24
\ps2_ACCLL|ascii~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~28_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & ((\ps2_ACCLL|ascii~27_combout\))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3) & (\ps2_ACCLL|Mux38~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datac => \ps2_ACCLL|Mux38~25_combout\,
	datad => \ps2_ACCLL|ascii~27_combout\,
	combout => \ps2_ACCLL|ascii~28_combout\);

-- Location: LCCOMB_X16_Y10_N22
\ps2_ACCLL|ascii~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~29_combout\ = (\ps2_ACCLL|process_0~1_combout\ & (((\ps2_ACCLL|Mux38~23_combout\)))) # (!\ps2_ACCLL|process_0~1_combout\ & ((\ps2_ACCLL|ascii~26_combout\) # ((\ps2_ACCLL|ascii~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|process_0~1_combout\,
	datab => \ps2_ACCLL|ascii~26_combout\,
	datac => \ps2_ACCLL|Mux38~23_combout\,
	datad => \ps2_ACCLL|ascii~28_combout\,
	combout => \ps2_ACCLL|ascii~29_combout\);

-- Location: LCCOMB_X15_Y10_N12
\ps2_ACCLL|Mux38~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~19_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datad => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	combout => \ps2_ACCLL|Mux38~19_combout\);

-- Location: LCCOMB_X22_Y6_N18
\ps2_ACCLL|Mux38~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~17_combout\ = (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(7) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(6) & !\ps2_ACCLL|ps2_keyboard_0|ps2_code\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(7),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(6),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(5),
	combout => \ps2_ACCLL|Mux38~17_combout\);

-- Location: LCCOMB_X22_Y6_N24
\ps2_ACCLL|Mux38~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~18_combout\ = ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & ((!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0) & (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4) $ 
-- (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(3))))) # (!\ps2_ACCLL|Mux38~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(3),
	datad => \ps2_ACCLL|Mux38~17_combout\,
	combout => \ps2_ACCLL|Mux38~18_combout\);

-- Location: LCCOMB_X16_Y10_N26
\ps2_ACCLL|Mux38~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~20_combout\ = (\ps2_ACCLL|Mux38~19_combout\ & ((\ps2_ACCLL|Mux38~16_combout\) # ((\ps2_ACCLL|Mux38~18_combout\ & \ps2_ACCLL|Mux23~6_combout\)))) # (!\ps2_ACCLL|Mux38~19_combout\ & (((\ps2_ACCLL|Mux38~18_combout\ & 
-- \ps2_ACCLL|Mux23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~19_combout\,
	datab => \ps2_ACCLL|Mux38~16_combout\,
	datac => \ps2_ACCLL|Mux38~18_combout\,
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~20_combout\);

-- Location: LCCOMB_X16_Y10_N18
\ps2_ACCLL|Mux38~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|Mux38~26_combout\ = (\ps2_ACCLL|Mux23~6_combout\ & (((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(4)) # (!\ps2_ACCLL|Mux42~2_combout\)) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(0),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(4),
	datac => \ps2_ACCLL|Mux42~2_combout\,
	datad => \ps2_ACCLL|Mux23~6_combout\,
	combout => \ps2_ACCLL|Mux38~26_combout\);

-- Location: LCCOMB_X16_Y10_N16
\ps2_ACCLL|ascii~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~25_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & ((\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2)) # ((\ps2_ACCLL|Mux38~20_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(1) & (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- ((\ps2_ACCLL|Mux38~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(1),
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|Mux38~20_combout\,
	datad => \ps2_ACCLL|Mux38~26_combout\,
	combout => \ps2_ACCLL|ascii~25_combout\);

-- Location: LCCOMB_X16_Y10_N20
\ps2_ACCLL|ascii~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~30_combout\ = (\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & ((\ps2_ACCLL|ascii~25_combout\ & ((\ps2_ACCLL|ascii~29_combout\))) # (!\ps2_ACCLL|ascii~25_combout\ & (\ps2_ACCLL|Mux38~15_combout\)))) # (!\ps2_ACCLL|ps2_keyboard_0|ps2_code\(2) & 
-- (((\ps2_ACCLL|ascii~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|Mux38~15_combout\,
	datab => \ps2_ACCLL|ps2_keyboard_0|ps2_code\(2),
	datac => \ps2_ACCLL|ascii~29_combout\,
	datad => \ps2_ACCLL|ascii~25_combout\,
	combout => \ps2_ACCLL|ascii~30_combout\);

-- Location: LCCOMB_X16_Y10_N0
\ps2_ACCLL|ascii~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ps2_ACCLL|ascii~41_combout\ = (!\ps2_ACCLL|ascii~24_combout\ & ((\ps2_ACCLL|control_r~q\) # ((\ps2_ACCLL|control_l~q\) # (!\ps2_ACCLL|ascii~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|control_r~q\,
	datab => \ps2_ACCLL|control_l~q\,
	datac => \ps2_ACCLL|ascii~24_combout\,
	datad => \ps2_ACCLL|ascii~30_combout\,
	combout => \ps2_ACCLL|ascii~41_combout\);

-- Location: FF_X16_Y10_N1
\ps2_ACCLL|ascii[6]\ : dffeas
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
	q => \ps2_ACCLL|ascii\(6));

-- Location: LCCOMB_X17_Y5_N12
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

-- Location: FF_X21_Y1_N25
\ps2_ACCLL|ascii_code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \ps2_ACCLL|ascii_code[6]~4_combout\,
	sload => VCC,
	ena => \ps2_ACCLL|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps2_ACCLL|ascii_code\(6));

-- Location: LCCOMB_X23_Y1_N4
\r0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0~5_combout\ = \ps2_ACCLL|ascii_code\(0) $ ((((\process_0~0_combout\) # (\ps2_ACCLL|ascii_code\(6))) # (!\ps2_ACCLL|ascii_code\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(4),
	datab => \ps2_ACCLL|ascii_code\(0),
	datac => \process_0~0_combout\,
	datad => \ps2_ACCLL|ascii_code\(6),
	combout => \r0~5_combout\);

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

-- Location: LCCOMB_X21_Y1_N12
\r1[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[2]~1_combout\ = (\ps2_ACCLL|ascii_code\(3)) # (!\ps2_ACCLL|ascii_code\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(3),
	datad => \ps2_ACCLL|ascii_code\(6),
	combout => \r1[2]~1_combout\);

-- Location: LCCOMB_X21_Y1_N22
\process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\ps2_ACCLL|ascii_code\(6)) # (!\ps2_ACCLL|ascii_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_ACCLL|ascii_code\(6),
	datad => \ps2_ACCLL|ascii_code\(4),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X21_Y1_N28
\r1[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[2]~0_combout\ = (\ps2_ACCLL|ascii_code\(4)) # ((\ps2_ACCLL|ascii_code\(2) & (\ps2_ACCLL|ascii_code\(1) & \ps2_ACCLL|ascii_code\(0))) # (!\ps2_ACCLL|ascii_code\(2) & (!\ps2_ACCLL|ascii_code\(1) & !\ps2_ACCLL|ascii_code\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(4),
	datac => \ps2_ACCLL|ascii_code\(1),
	datad => \ps2_ACCLL|ascii_code\(0),
	combout => \r1[2]~0_combout\);

-- Location: LCCOMB_X21_Y1_N0
\r1[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r1[2]~2_combout\ = (\r1[2]~1_combout\ & (!\process_0~0_combout\ & (!\process_0~1_combout\))) # (!\r1[2]~1_combout\ & (((!\process_0~0_combout\ & !\process_0~1_combout\)) # (!\r1[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r1[2]~1_combout\,
	datab => \process_0~0_combout\,
	datac => \process_0~1_combout\,
	datad => \r1[2]~0_combout\,
	combout => \r1[2]~2_combout\);

-- Location: FF_X23_Y1_N5
\r0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \r0~5_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(0));

-- Location: FF_X22_Y1_N17
\r1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r0(0),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(0));

-- Location: LCCOMB_X21_Y1_N8
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!SCANLINE(1) & !SCANLINE(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datad => SCANLINE(2),
	combout => \Mux0~1_combout\);

-- Location: FF_X23_Y1_N7
\r2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r1(0),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(0));

-- Location: LCCOMB_X24_Y1_N28
\r3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r3[0]~feeder_combout\ = r2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2(0),
	combout => \r3[0]~feeder_combout\);

-- Location: FF_X24_Y1_N29
\r3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \r3[0]~feeder_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(0));

-- Location: LCCOMB_X22_Y1_N10
\LED8x8~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~9_combout\ = r1(0) $ (r3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r1(0),
	datad => r3(0),
	combout => \LED8x8~9_combout\);

-- Location: LCCOMB_X21_Y1_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\ps2_ACCLL|ascii_code\(5) & (\ps2_ACCLL|ascii_code\(0) & (!\ps2_ACCLL|ascii_code\(4) & \ps2_ACCLL|ascii_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(5),
	datab => \ps2_ACCLL|ascii_code\(0),
	datac => \ps2_ACCLL|ascii_code\(4),
	datad => \ps2_ACCLL|ascii_code\(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X21_Y1_N24
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\ps2_ACCLL|ascii_code\(3) & (!\ps2_ACCLL|ascii_code\(1) & (!\ps2_ACCLL|ascii_code\(6) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(3),
	datab => \ps2_ACCLL|ascii_code\(1),
	datac => \ps2_ACCLL|ascii_code\(6),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: FF_X22_Y1_N11
\LED8x8[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~9_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][4]~q\);

-- Location: LCCOMB_X21_Y1_N18
\Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = \ps2_ACCLL|ascii_code\(3) $ (((\ps2_ACCLL|ascii_code\(0) & (\ps2_ACCLL|ascii_code\(2) & \ps2_ACCLL|ascii_code\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(0),
	datab => \ps2_ACCLL|ascii_code\(3),
	datac => \ps2_ACCLL|ascii_code\(2),
	datad => \ps2_ACCLL|ascii_code\(1),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X21_Y1_N16
\r0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0~4_combout\ = (\process_0~0_combout\ & (((!\Add1~1_combout\)))) # (!\process_0~0_combout\ & ((\process_0~1_combout\ & ((!\Add1~1_combout\))) # (!\process_0~1_combout\ & (\ps2_ACCLL|ascii_code\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \ps2_ACCLL|ascii_code\(3),
	datac => \process_0~1_combout\,
	datad => \Add1~1_combout\,
	combout => \r0~4_combout\);

-- Location: FF_X21_Y1_N17
\r0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \r0~4_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(3));

-- Location: FF_X20_Y1_N25
\r1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r0(3),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(3));

-- Location: FF_X24_Y1_N31
\r2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r1(3),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(3));

-- Location: LCCOMB_X21_Y1_N26
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \ps2_ACCLL|ascii_code\(2) $ (((\ps2_ACCLL|ascii_code\(0) & \ps2_ACCLL|ascii_code\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_ACCLL|ascii_code\(2),
	datab => \ps2_ACCLL|ascii_code\(0),
	datad => \ps2_ACCLL|ascii_code\(1),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X21_Y1_N14
\r0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0~2_combout\ = (\process_0~1_combout\ & (((\Add1~0_combout\)))) # (!\process_0~1_combout\ & ((\process_0~0_combout\ & (\Add1~0_combout\)) # (!\process_0~0_combout\ & ((\ps2_ACCLL|ascii_code\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~1_combout\,
	datab => \process_0~0_combout\,
	datac => \Add1~0_combout\,
	datad => \ps2_ACCLL|ascii_code\(2),
	combout => \r0~2_combout\);

-- Location: FF_X21_Y1_N15
\r0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \r0~2_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(2));

-- Location: FF_X21_Y1_N9
\r1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r0(2),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(2));

-- Location: FF_X23_Y1_N3
\r2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r1(2),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(2));

-- Location: LCCOMB_X21_Y1_N4
\r0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r0~3_combout\ = \ps2_ACCLL|ascii_code\(1) $ (((\ps2_ACCLL|ascii_code\(0) & ((\process_0~0_combout\) # (\process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \ps2_ACCLL|ascii_code\(0),
	datac => \process_0~1_combout\,
	datad => \ps2_ACCLL|ascii_code\(1),
	combout => \r0~3_combout\);

-- Location: FF_X21_Y1_N5
\r0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \r0~3_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r0(1));

-- Location: FF_X21_Y1_N27
\r1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r0(1),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r1(1));

-- Location: FF_X23_Y1_N9
\r2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r1(1),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r2(1));

-- Location: LCCOMB_X23_Y1_N14
\LED8x8[6][0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[6][0]~11_combout\ = (r2(0) & (r0(0) $ (VCC))) # (!r2(0) & (r0(0) & VCC))
-- \LED8x8[6][0]~12\ = CARRY((r2(0) & r0(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r2(0),
	datab => r0(0),
	datad => VCC,
	combout => \LED8x8[6][0]~11_combout\,
	cout => \LED8x8[6][0]~12\);

-- Location: LCCOMB_X23_Y1_N16
\LED8x8[7][1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[7][1]~13_combout\ = (r0(1) & ((r2(1) & (\LED8x8[6][0]~12\ & VCC)) # (!r2(1) & (!\LED8x8[6][0]~12\)))) # (!r0(1) & ((r2(1) & (!\LED8x8[6][0]~12\)) # (!r2(1) & ((\LED8x8[6][0]~12\) # (GND)))))
-- \LED8x8[7][1]~14\ = CARRY((r0(1) & (!r2(1) & !\LED8x8[6][0]~12\)) # (!r0(1) & ((!\LED8x8[6][0]~12\) # (!r2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r0(1),
	datab => r2(1),
	datad => VCC,
	cin => \LED8x8[6][0]~12\,
	combout => \LED8x8[7][1]~13_combout\,
	cout => \LED8x8[7][1]~14\);

-- Location: LCCOMB_X23_Y1_N18
\LED8x8[7][2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[7][2]~15_combout\ = ((r0(2) $ (r2(2) $ (!\LED8x8[7][1]~14\)))) # (GND)
-- \LED8x8[7][2]~16\ = CARRY((r0(2) & ((r2(2)) # (!\LED8x8[7][1]~14\))) # (!r0(2) & (r2(2) & !\LED8x8[7][1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r0(2),
	datab => r2(2),
	datad => VCC,
	cin => \LED8x8[7][1]~14\,
	combout => \LED8x8[7][2]~15_combout\,
	cout => \LED8x8[7][2]~16\);

-- Location: LCCOMB_X23_Y1_N20
\LED8x8[7][3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[7][3]~17_combout\ = (r2(3) & ((r0(3) & (\LED8x8[7][2]~16\ & VCC)) # (!r0(3) & (!\LED8x8[7][2]~16\)))) # (!r2(3) & ((r0(3) & (!\LED8x8[7][2]~16\)) # (!r0(3) & ((\LED8x8[7][2]~16\) # (GND)))))
-- \LED8x8[7][3]~18\ = CARRY((r2(3) & (!r0(3) & !\LED8x8[7][2]~16\)) # (!r2(3) & ((!\LED8x8[7][2]~16\) # (!r0(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r2(3),
	datab => r0(3),
	datad => VCC,
	cin => \LED8x8[7][2]~16\,
	combout => \LED8x8[7][3]~17_combout\,
	cout => \LED8x8[7][3]~18\);

-- Location: LCCOMB_X23_Y1_N22
\LED8x8[7][4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[7][4]~19_combout\ = ((r1(0) $ (r3(0) $ (!\LED8x8[7][3]~18\)))) # (GND)
-- \LED8x8[7][4]~20\ = CARRY((r1(0) & ((r3(0)) # (!\LED8x8[7][3]~18\))) # (!r1(0) & (r3(0) & !\LED8x8[7][3]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(0),
	datab => r3(0),
	datad => VCC,
	cin => \LED8x8[7][3]~18\,
	combout => \LED8x8[7][4]~19_combout\,
	cout => \LED8x8[7][4]~20\);

-- Location: FF_X23_Y1_N23
\LED8x8[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[7][4]~19_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[7][4]~q\);

-- Location: LCCOMB_X22_Y1_N0
\LED8x8~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~10_combout\ = (r1(0)) # (r3(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r1(0),
	datad => r3(0),
	combout => \LED8x8~10_combout\);

-- Location: FF_X22_Y1_N1
\LED8x8[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~10_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][4]~q\);

-- Location: LCCOMB_X23_Y1_N12
\LED8x8[5][4]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][4]~47_combout\ = !r3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(0),
	combout => \LED8x8[5][4]~47_combout\);

-- Location: FF_X23_Y1_N13
\LED8x8[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][4]~47_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][4]~q\);

-- Location: LCCOMB_X24_Y1_N6
\Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (SCANLINE(1) & (((SCANLINE(0))))) # (!SCANLINE(1) & ((SCANLINE(0) & ((\LED8x8[5][4]~q\))) # (!SCANLINE(0) & (\LED8x8[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => \LED8x8[4][4]~q\,
	datac => SCANLINE(0),
	datad => \LED8x8[5][4]~q\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X24_Y1_N0
\Mux11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~1_combout\ = (SCANLINE(1) & ((\Mux11~0_combout\ & ((\LED8x8[7][4]~q\))) # (!\Mux11~0_combout\ & (\LED8x8[6][4]~q\)))) # (!SCANLINE(1) & (((\Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[6][4]~q\,
	datab => \LED8x8[7][4]~q\,
	datac => SCANLINE(1),
	datad => \Mux11~0_combout\,
	combout => \Mux11~1_combout\);

-- Location: LCCOMB_X22_Y1_N16
\Mux11~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (SCANLINE(2)) # ((!SCANLINE(1) & SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X19_Y1_N4
\LED8x8~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~8_combout\ = (r3(0) & r1(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3(0),
	datad => r1(0),
	combout => \LED8x8~8_combout\);

-- Location: FF_X19_Y1_N5
\LED8x8[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~8_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][4]~q\);

-- Location: LCCOMB_X24_Y1_N26
\Mux11~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (SCANLINE(2)) # ((SCANLINE(1) & SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X19_Y1_N26
\Mux11~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & ((\Mux11~1_combout\) # ((!\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (((\LED8x8[3][4]~q\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datab => \Mux11~3_combout\,
	datac => \LED8x8[3][4]~q\,
	datad => \Mux11~2_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X19_Y1_N0
Mux11 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux11~combout\ = (\Mux0~1_combout\ & ((\Mux11~4_combout\ & (r1(0))) # (!\Mux11~4_combout\ & ((r3(0)))))) # (!\Mux0~1_combout\ & (((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r1(0),
	datab => \Mux0~1_combout\,
	datac => \Mux11~4_combout\,
	datad => r3(0),
	combout => \Mux11~combout\);

-- Location: LCCOMB_X20_Y1_N12
\LED8x8~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~21_combout\ = (r2(2) & r0(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2(2),
	datac => r0(2),
	combout => \LED8x8~21_combout\);

-- Location: FF_X20_Y1_N13
\LED8x8[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~21_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][2]~q\);

-- Location: LCCOMB_X20_Y1_N16
\LED8x8[5][2]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][2]~48_combout\ = !r2(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2(2),
	combout => \LED8x8[5][2]~48_combout\);

-- Location: FF_X20_Y1_N17
\LED8x8[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][2]~48_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][2]~q\);

-- Location: LCCOMB_X20_Y1_N14
\LED8x8~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~23_combout\ = (r2(2)) # (r0(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2(2),
	datac => r0(2),
	combout => \LED8x8~23_combout\);

-- Location: FF_X20_Y1_N15
\LED8x8[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~23_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][2]~q\);

-- Location: LCCOMB_X19_Y1_N10
\Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (SCANLINE(0) & ((\LED8x8[5][2]~q\) # ((SCANLINE(1))))) # (!SCANLINE(0) & (((!SCANLINE(1) & \LED8x8[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[5][2]~q\,
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => \LED8x8[4][2]~q\,
	combout => \Mux13~0_combout\);

-- Location: FF_X23_Y1_N19
\LED8x8[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[7][2]~15_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[7][2]~q\);

-- Location: LCCOMB_X20_Y1_N6
\LED8x8~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~22_combout\ = r2(2) $ (r0(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2(2),
	datac => r0(2),
	combout => \LED8x8~22_combout\);

-- Location: FF_X20_Y1_N7
\LED8x8[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~22_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][2]~q\);

-- Location: LCCOMB_X19_Y1_N20
\Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (\Mux13~0_combout\ & ((\LED8x8[7][2]~q\) # ((!SCANLINE(1))))) # (!\Mux13~0_combout\ & (((SCANLINE(1) & \LED8x8[6][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~0_combout\,
	datab => \LED8x8[7][2]~q\,
	datac => SCANLINE(1),
	datad => \LED8x8[6][2]~q\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X24_Y1_N16
\Mux13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux11~3_combout\ & (((\Mux13~1_combout\) # (!\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (\LED8x8[3][2]~q\ & (\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \LED8x8[3][2]~q\,
	datac => \Mux11~2_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X23_Y1_N2
Mux13 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux13~combout\ = (\Mux13~2_combout\ & ((r0(2)) # ((!\Mux0~1_combout\)))) # (!\Mux13~2_combout\ & (((r2(2) & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r0(2),
	datab => \Mux13~2_combout\,
	datac => r2(2),
	datad => \Mux0~1_combout\,
	combout => \Mux13~combout\);

-- Location: LCCOMB_X20_Y2_N6
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (SCANLINE(1) & (SCANLINE(0) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~2_combout\);

-- Location: FF_X21_Y1_N23
\r3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r2(3),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(3));

-- Location: LCCOMB_X20_Y1_N2
\LED8x8~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~24_combout\ = (r1(3) & r3(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r1(3),
	datad => r3(3),
	combout => \LED8x8~24_combout\);

-- Location: FF_X20_Y1_N3
\LED8x8[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~24_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][7]~q\);

-- Location: LCCOMB_X20_Y1_N8
\LED8x8[5][7]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][7]~49_combout\ = !r3(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(3),
	combout => \LED8x8[5][7]~49_combout\);

-- Location: FF_X20_Y1_N9
\LED8x8[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][7]~49_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][7]~q\);

-- Location: LCCOMB_X20_Y1_N26
\LED8x8~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~26_combout\ = (r1(3)) # (r3(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r1(3),
	datad => r3(3),
	combout => \LED8x8~26_combout\);

-- Location: FF_X20_Y1_N27
\LED8x8[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~26_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][7]~q\);

-- Location: LCCOMB_X19_Y1_N2
\LED8x8~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~25_combout\ = r3(3) $ (r1(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r3(3),
	datad => r1(3),
	combout => \LED8x8~25_combout\);

-- Location: FF_X19_Y1_N3
\LED8x8[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~25_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][7]~q\);

-- Location: LCCOMB_X19_Y1_N24
\Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (SCANLINE(1) & (((SCANLINE(0)) # (\LED8x8[6][7]~q\)))) # (!SCANLINE(1) & (\LED8x8[4][7]~q\ & (!SCANLINE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[4][7]~q\,
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => \LED8x8[6][7]~q\,
	combout => \Mux8~0_combout\);

-- Location: FF_X21_Y1_N13
\r3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => r2(2),
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(2));

-- Location: LCCOMB_X23_Y1_N30
\r3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \r3[1]~feeder_combout\ = r2(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2(1),
	combout => \r3[1]~feeder_combout\);

-- Location: FF_X23_Y1_N31
\r3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \r3[1]~feeder_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \r1[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r3(1));

-- Location: LCCOMB_X23_Y1_N24
\LED8x8[7][5]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[7][5]~27_combout\ = (r3(1) & ((r1(1) & (\LED8x8[7][4]~20\ & VCC)) # (!r1(1) & (!\LED8x8[7][4]~20\)))) # (!r3(1) & ((r1(1) & (!\LED8x8[7][4]~20\)) # (!r1(1) & ((\LED8x8[7][4]~20\) # (GND)))))
-- \LED8x8[7][5]~28\ = CARRY((r3(1) & (!r1(1) & !\LED8x8[7][4]~20\)) # (!r3(1) & ((!\LED8x8[7][4]~20\) # (!r1(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r3(1),
	datab => r1(1),
	datad => VCC,
	cin => \LED8x8[7][4]~20\,
	combout => \LED8x8[7][5]~27_combout\,
	cout => \LED8x8[7][5]~28\);

-- Location: LCCOMB_X23_Y1_N26
\LED8x8[7][6]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[7][6]~29_combout\ = ((r1(2) $ (r3(2) $ (!\LED8x8[7][5]~28\)))) # (GND)
-- \LED8x8[7][6]~30\ = CARRY((r1(2) & ((r3(2)) # (!\LED8x8[7][5]~28\))) # (!r1(2) & (r3(2) & !\LED8x8[7][5]~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(2),
	datab => r3(2),
	datad => VCC,
	cin => \LED8x8[7][5]~28\,
	combout => \LED8x8[7][6]~29_combout\,
	cout => \LED8x8[7][6]~30\);

-- Location: LCCOMB_X23_Y1_N28
\LED8x8[7][7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[7][7]~31_combout\ = r1(3) $ (\LED8x8[7][6]~30\ $ (r3(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r1(3),
	datad => r3(3),
	cin => \LED8x8[7][6]~30\,
	combout => \LED8x8[7][7]~31_combout\);

-- Location: FF_X23_Y1_N29
\LED8x8[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[7][7]~31_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[7][7]~q\);

-- Location: LCCOMB_X19_Y1_N30
\Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~1_combout\ = (\Mux8~0_combout\ & (((\LED8x8[7][7]~q\) # (!SCANLINE(0))))) # (!\Mux8~0_combout\ & (\LED8x8[5][7]~q\ & (SCANLINE(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[5][7]~q\,
	datab => \Mux8~0_combout\,
	datac => SCANLINE(0),
	datad => \LED8x8[7][7]~q\,
	combout => \Mux8~1_combout\);

-- Location: LCCOMB_X19_Y1_N12
\Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = (\Mux11~3_combout\ & (((\Mux8~1_combout\) # (!\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (\LED8x8[3][7]~q\ & ((\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[3][7]~q\,
	datab => \Mux11~3_combout\,
	datac => \Mux8~1_combout\,
	datad => \Mux11~2_combout\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X19_Y1_N14
Mux8 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux8~combout\ = (\Mux8~2_combout\ & (((r1(3))) # (!\Mux0~1_combout\))) # (!\Mux8~2_combout\ & (\Mux0~1_combout\ & (r3(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \Mux0~1_combout\,
	datac => r3(3),
	datad => r1(3),
	combout => \Mux8~combout\);

-- Location: LCCOMB_X24_Y1_N30
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (!SCANLINE(1) & (SCANLINE(0) & !SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X23_Y1_N10
\LED8x8~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~33_combout\ = (r2(1) & r0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2(1),
	datac => r0(1),
	combout => \LED8x8~33_combout\);

-- Location: FF_X22_Y1_N23
\LED8x8[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	asdata => \LED8x8~33_combout\,
	clrn => \KEY[2]~input_o\,
	sload => VCC,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][1]~q\);

-- Location: LCCOMB_X22_Y1_N4
\LED8x8~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~35_combout\ = (r2(1)) # (r0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2(1),
	datac => r0(1),
	combout => \LED8x8~35_combout\);

-- Location: FF_X22_Y1_N5
\LED8x8[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~35_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][1]~q\);

-- Location: LCCOMB_X22_Y1_N2
\LED8x8[5][1]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][1]~50_combout\ = !r2(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r2(1),
	combout => \LED8x8[5][1]~50_combout\);

-- Location: FF_X22_Y1_N3
\LED8x8[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][1]~50_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][1]~q\);

-- Location: LCCOMB_X22_Y1_N26
\Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (SCANLINE(1) & (((SCANLINE(0))))) # (!SCANLINE(1) & ((SCANLINE(0) & ((\LED8x8[5][1]~q\))) # (!SCANLINE(0) & (\LED8x8[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => \LED8x8[4][1]~q\,
	datac => SCANLINE(0),
	datad => \LED8x8[5][1]~q\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X22_Y1_N8
\LED8x8~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~34_combout\ = r2(1) $ (r0(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r2(1),
	datac => r0(1),
	combout => \LED8x8~34_combout\);

-- Location: FF_X22_Y1_N9
\LED8x8[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~34_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][1]~q\);

-- Location: FF_X23_Y1_N17
\LED8x8[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[7][1]~13_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[7][1]~q\);

-- Location: LCCOMB_X22_Y1_N24
\Mux14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\LED8x8[7][1]~q\) # (!SCANLINE(1))))) # (!\Mux14~0_combout\ & (\LED8x8[6][1]~q\ & (SCANLINE(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~0_combout\,
	datab => \LED8x8[6][1]~q\,
	datac => SCANLINE(1),
	datad => \LED8x8[7][1]~q\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X22_Y1_N22
\Mux14~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux11~2_combout\ & ((\Mux11~3_combout\ & ((\Mux14~1_combout\))) # (!\Mux11~3_combout\ & (\LED8x8[3][1]~q\)))) # (!\Mux11~2_combout\ & (\Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \Mux11~3_combout\,
	datac => \LED8x8[3][1]~q\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X23_Y1_N8
Mux14 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux14~combout\ = (\Mux14~2_combout\ & ((r0(1)) # ((!\Mux0~1_combout\)))) # (!\Mux14~2_combout\ & (((r2(1) & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r0(1),
	datab => \Mux14~2_combout\,
	datac => r2(1),
	datad => \Mux0~1_combout\,
	combout => \Mux14~combout\);

-- Location: LCCOMB_X22_Y1_N6
\LED8x8~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~36_combout\ = (r0(0) & r2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r0(0),
	datad => r2(0),
	combout => \LED8x8~36_combout\);

-- Location: FF_X22_Y1_N7
\LED8x8[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~36_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][0]~q\);

-- Location: LCCOMB_X22_Y1_N28
\LED8x8[5][0]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][0]~51_combout\ = !r2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2(0),
	combout => \LED8x8[5][0]~51_combout\);

-- Location: FF_X22_Y1_N29
\LED8x8[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][0]~51_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][0]~q\);

-- Location: LCCOMB_X22_Y1_N14
\LED8x8~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~37_combout\ = (r0(0)) # (r2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r0(0),
	datad => r2(0),
	combout => \LED8x8~37_combout\);

-- Location: FF_X22_Y1_N15
\LED8x8[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~37_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][0]~q\);

-- Location: LCCOMB_X21_Y1_N30
\Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (!SCANLINE(1) & ((SCANLINE(0) & (\LED8x8[5][0]~q\)) # (!SCANLINE(0) & ((\LED8x8[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(0),
	datab => \LED8x8[5][0]~q\,
	datac => SCANLINE(1),
	datad => \LED8x8[4][0]~q\,
	combout => \Mux15~0_combout\);

-- Location: FF_X23_Y1_N15
\LED8x8[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[6][0]~11_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][0]~q\);

-- Location: LCCOMB_X24_Y1_N20
\Mux15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\) # ((SCANLINE(1) & \LED8x8[6][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datac => SCANLINE(1),
	datad => \LED8x8[6][0]~q\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X24_Y1_N10
\Mux15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\Mux11~3_combout\ & (((\Mux15~1_combout\) # (!\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (\LED8x8[3][0]~q\ & (\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \LED8x8[3][0]~q\,
	datac => \Mux11~2_combout\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X23_Y1_N6
Mux15 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux15~combout\ = (\Mux15~2_combout\ & ((r0(0)) # ((!\Mux0~1_combout\)))) # (!\Mux15~2_combout\ & (((r2(0) & \Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r0(0),
	datab => \Mux15~2_combout\,
	datac => r2(0),
	datad => \Mux0~1_combout\,
	combout => \Mux15~combout\);

-- Location: LCCOMB_X26_Y1_N22
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (!SCANLINE(2) & (SCANLINE(1) & !SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datac => SCANLINE(1),
	datad => SCANLINE(0),
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X26_Y1_N24
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (SCANLINE(2) & (!SCANLINE(1) & SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datac => SCANLINE(1),
	datad => SCANLINE(0),
	combout => \Mux0~5_combout\);

-- Location: FF_X23_Y1_N21
\LED8x8[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[7][3]~17_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[7][3]~q\);

-- Location: LCCOMB_X20_Y1_N30
\LED8x8~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~40_combout\ = (r0(3)) # (r2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r0(3),
	datad => r2(3),
	combout => \LED8x8~40_combout\);

-- Location: FF_X20_Y1_N31
\LED8x8[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~40_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][3]~q\);

-- Location: LCCOMB_X20_Y1_N28
\LED8x8~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~39_combout\ = r0(3) $ (r2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r0(3),
	datad => r2(3),
	combout => \LED8x8~39_combout\);

-- Location: FF_X20_Y1_N29
\LED8x8[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~39_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][3]~q\);

-- Location: LCCOMB_X19_Y1_N28
\Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (SCANLINE(0) & (((SCANLINE(1))))) # (!SCANLINE(0) & ((SCANLINE(1) & ((\LED8x8[6][3]~q\))) # (!SCANLINE(1) & (\LED8x8[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[4][3]~q\,
	datab => SCANLINE(0),
	datac => SCANLINE(1),
	datad => \LED8x8[6][3]~q\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X20_Y1_N18
\LED8x8[5][3]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][3]~52_combout\ = !r2(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r2(3),
	combout => \LED8x8[5][3]~52_combout\);

-- Location: FF_X20_Y1_N19
\LED8x8[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][3]~52_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][3]~q\);

-- Location: LCCOMB_X19_Y1_N22
\Mux12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & ((\LED8x8[7][3]~q\) # ((!SCANLINE(0))))) # (!\Mux12~0_combout\ & (((SCANLINE(0) & \LED8x8[5][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[7][3]~q\,
	datab => \Mux12~0_combout\,
	datac => SCANLINE(0),
	datad => \LED8x8[5][3]~q\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X20_Y1_N4
\LED8x8~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~38_combout\ = (r0(3) & r2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r0(3),
	datad => r2(3),
	combout => \LED8x8~38_combout\);

-- Location: FF_X20_Y1_N5
\LED8x8[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~38_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][3]~q\);

-- Location: LCCOMB_X19_Y1_N16
\Mux12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux11~3_combout\ & ((\Mux12~1_combout\) # ((!\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (((\LED8x8[3][3]~q\ & \Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~1_combout\,
	datab => \Mux11~3_combout\,
	datac => \LED8x8[3][3]~q\,
	datad => \Mux11~2_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X20_Y1_N24
Mux12 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux12~combout\ = (\Mux12~2_combout\ & (((r0(3)) # (!\Mux0~1_combout\)))) # (!\Mux12~2_combout\ & (r2(3) & ((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~2_combout\,
	datab => r2(3),
	datac => r0(3),
	datad => \Mux0~1_combout\,
	combout => \Mux12~combout\);

-- Location: LCCOMB_X20_Y2_N8
\Mux0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (SCANLINE(1) & (SCANLINE(0) & SCANLINE(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => SCANLINE(1),
	datac => SCANLINE(0),
	datad => SCANLINE(2),
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X22_Y1_N18
\LED8x8~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~42_combout\ = r1(1) $ (r3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r1(1),
	datad => r3(1),
	combout => \LED8x8~42_combout\);

-- Location: FF_X22_Y1_N19
\LED8x8[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~42_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][5]~q\);

-- Location: FF_X23_Y1_N25
\LED8x8[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[7][5]~27_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[7][5]~q\);

-- Location: LCCOMB_X22_Y1_N12
\LED8x8[5][5]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][5]~53_combout\ = !r3(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r3(1),
	combout => \LED8x8[5][5]~53_combout\);

-- Location: FF_X22_Y1_N13
\LED8x8[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][5]~53_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][5]~q\);

-- Location: LCCOMB_X22_Y1_N30
\LED8x8~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~43_combout\ = (r1(1)) # (r3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r1(1),
	datad => r3(1),
	combout => \LED8x8~43_combout\);

-- Location: FF_X22_Y1_N31
\LED8x8[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~43_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][5]~q\);

-- Location: LCCOMB_X24_Y1_N24
\Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (SCANLINE(1) & (((SCANLINE(0))))) # (!SCANLINE(1) & ((SCANLINE(0) & (\LED8x8[5][5]~q\)) # (!SCANLINE(0) & ((\LED8x8[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => \LED8x8[5][5]~q\,
	datac => SCANLINE(0),
	datad => \LED8x8[4][5]~q\,
	combout => \Mux10~0_combout\);

-- Location: LCCOMB_X24_Y1_N2
\Mux10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~1_combout\ = (SCANLINE(1) & ((\Mux10~0_combout\ & ((\LED8x8[7][5]~q\))) # (!\Mux10~0_combout\ & (\LED8x8[6][5]~q\)))) # (!SCANLINE(1) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[6][5]~q\,
	datab => \LED8x8[7][5]~q\,
	datac => SCANLINE(1),
	datad => \Mux10~0_combout\,
	combout => \Mux10~1_combout\);

-- Location: LCCOMB_X22_Y1_N20
\LED8x8~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~41_combout\ = (r1(1) & r3(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r1(1),
	datad => r3(1),
	combout => \LED8x8~41_combout\);

-- Location: FF_X22_Y1_N21
\LED8x8[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~41_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][5]~q\);

-- Location: LCCOMB_X24_Y1_N8
\Mux10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux11~3_combout\ & ((\Mux10~1_combout\) # ((!\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (((\Mux11~2_combout\ & \LED8x8[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \Mux10~1_combout\,
	datac => \Mux11~2_combout\,
	datad => \LED8x8[3][5]~q\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X23_Y1_N0
Mux10 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux10~combout\ = (\Mux10~2_combout\ & (((r1(1)) # (!\Mux0~1_combout\)))) # (!\Mux10~2_combout\ & (r3(1) & ((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r3(1),
	datab => \Mux10~2_combout\,
	datac => r1(1),
	datad => \Mux0~1_combout\,
	combout => \Mux10~combout\);

-- Location: LCCOMB_X20_Y1_N0
\LED8x8~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~44_combout\ = (r3(2) & r1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3(2),
	datac => r1(2),
	combout => \LED8x8~44_combout\);

-- Location: FF_X20_Y1_N1
\LED8x8[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~44_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[3][6]~q\);

-- Location: LCCOMB_X20_Y1_N10
\LED8x8[5][6]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8[5][6]~54_combout\ = !r3(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r3(2),
	combout => \LED8x8[5][6]~54_combout\);

-- Location: FF_X20_Y1_N11
\LED8x8[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[5][6]~54_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[5][6]~q\);

-- Location: FF_X23_Y1_N27
\LED8x8[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8[7][6]~29_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[7][6]~q\);

-- Location: LCCOMB_X20_Y1_N22
\LED8x8~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~46_combout\ = (r3(2)) # (r1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3(2),
	datac => r1(2),
	combout => \LED8x8~46_combout\);

-- Location: FF_X20_Y1_N23
\LED8x8[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~46_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[4][6]~q\);

-- Location: LCCOMB_X20_Y1_N20
\LED8x8~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LED8x8~45_combout\ = r3(2) $ (r1(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r3(2),
	datac => r1(2),
	combout => \LED8x8~45_combout\);

-- Location: FF_X20_Y1_N21
\LED8x8[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ps2_ACCLL|ascii_new~clkctrl_outclk\,
	d => \LED8x8~45_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LED8x8[6][6]~q\);

-- Location: LCCOMB_X24_Y1_N18
\Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (SCANLINE(1) & ((SCANLINE(0)) # ((\LED8x8[6][6]~q\)))) # (!SCANLINE(1) & (!SCANLINE(0) & (\LED8x8[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(1),
	datab => SCANLINE(0),
	datac => \LED8x8[4][6]~q\,
	datad => \LED8x8[6][6]~q\,
	combout => \Mux9~0_combout\);

-- Location: LCCOMB_X24_Y1_N12
\Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~1_combout\ = (SCANLINE(0) & ((\Mux9~0_combout\ & ((\LED8x8[7][6]~q\))) # (!\Mux9~0_combout\ & (\LED8x8[5][6]~q\)))) # (!SCANLINE(0) & (((\Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LED8x8[5][6]~q\,
	datab => SCANLINE(0),
	datac => \LED8x8[7][6]~q\,
	datad => \Mux9~0_combout\,
	combout => \Mux9~1_combout\);

-- Location: LCCOMB_X24_Y1_N22
\Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux11~3_combout\ & (((\Mux9~1_combout\) # (!\Mux11~2_combout\)))) # (!\Mux11~3_combout\ & (\LED8x8[3][6]~q\ & (\Mux11~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~3_combout\,
	datab => \LED8x8[3][6]~q\,
	datac => \Mux11~2_combout\,
	datad => \Mux9~1_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X19_Y1_N18
Mux9 : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux9~combout\ = (\Mux0~1_combout\ & ((\Mux9~2_combout\ & (r1(2))) # (!\Mux9~2_combout\ & ((r3(2)))))) # (!\Mux0~1_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r1(2),
	datab => \Mux0~1_combout\,
	datac => \Mux9~2_combout\,
	datad => r3(2),
	combout => \Mux9~combout\);

-- Location: LCCOMB_X26_Y1_N2
\Mux0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (SCANLINE(2) & (SCANLINE(1) & !SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datac => SCANLINE(1),
	datad => SCANLINE(0),
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X26_Y1_N28
\Mux0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (SCANLINE(2) & (!SCANLINE(1) & !SCANLINE(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => SCANLINE(2),
	datac => SCANLINE(1),
	datad => SCANLINE(0),
	combout => \Mux0~8_combout\);

ww_GPIO_0(9) <= \GPIO_0[9]~output_o\;

ww_GPIO_0(10) <= \GPIO_0[10]~output_o\;

ww_GPIO_0(11) <= \GPIO_0[11]~output_o\;

ww_GPIO_0(12) <= \GPIO_0[12]~output_o\;

ww_GPIO_0(13) <= \GPIO_0[13]~output_o\;

ww_GPIO_0(14) <= \GPIO_0[14]~output_o\;

ww_GPIO_0(15) <= \GPIO_0[15]~output_o\;

ww_GPIO_0(16) <= \GPIO_0[16]~output_o\;

ww_GPIO_0(17) <= \GPIO_0[17]~output_o\;

ww_GPIO_0(18) <= \GPIO_0[18]~output_o\;

ww_GPIO_0(19) <= \GPIO_0[19]~output_o\;

ww_GPIO_0(20) <= \GPIO_0[20]~output_o\;

ww_GPIO_0(21) <= \GPIO_0[21]~output_o\;

ww_GPIO_1(9) <= \GPIO_1[9]~output_o\;

ww_GPIO_1(10) <= \GPIO_1[10]~output_o\;

ww_GPIO_1(11) <= \GPIO_1[11]~output_o\;

ww_GPIO_1(12) <= \GPIO_1[12]~output_o\;

ww_GPIO_1(13) <= \GPIO_1[13]~output_o\;

ww_GPIO_1(14) <= \GPIO_1[14]~output_o\;

ww_GPIO_1(15) <= \GPIO_1[15]~output_o\;

ww_GPIO_1(16) <= \GPIO_1[16]~output_o\;

ww_GPIO_1(17) <= \GPIO_1[17]~output_o\;

ww_GPIO_1(18) <= \GPIO_1[18]~output_o\;

ww_GPIO_1(19) <= \GPIO_1[19]~output_o\;

ww_GPIO_1(20) <= \GPIO_1[20]~output_o\;

ww_GPIO_1(21) <= \GPIO_1[21]~output_o\;
END structure;


