library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity Lab11_2 is 
port(	CLOCK_50:in std_logic;
		PS2_KBDAT:in std_logic;
		PS2_KBCLK:in std_LOGIC;
		KEY:in std_LOGIC_VECTOR(1 to 1);
		LEDG:buffer std_logic_vector(7 downto 0)
		);
end Lab11_2;

architecture arch of Lab11_2 is
component ps2_keyboard_to_ascii IS
  GENERIC(
		clk_freq                  : INTEGER := 50_000_000; --system clock frequency in Hz
		ps2_debounce_counter_size : INTEGER := 8);         --set such that 2^size/clk_freq = 5us (size = 8 for 50MHz)
  PORT(
		clk        : IN  STD_LOGIC;                     --system clock input
		ps2_clk    : IN  STD_LOGIC;                     --clock signal from PS2 keyboard
		ps2_data   : IN  STD_LOGIC;                     --data signal from PS2 keyboard
		ascii_new  : OUT STD_LOGIC;                     --output flag indicating new ASCII value
		ascii_code : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)); --ASCII value
END component;
signal reset:std_LOGIC;
signal newdata:std_LOGIC;
signal code:std_LOGIC_VECTOR(6 downto 0);
begin
reset<=KEY(1);
ps2_ACCLL: ps2_keyboard_to_ascii  port map(CLOCK_50, PS2_KBCLK,PS2_KBDAT,newdata,code);
process(newdata,reset)
begin
	if reset='0' then
		LEDG <="10000000";
	elsif newdata'event and newdata='1' then
		case code is
			when "0110001"=>LEDG <=LEDG(6 downto 0)&LEDG(7);
			when "0110000" =>LEDG <=LEDG(0)&LEDG(7 downto 1);
			when others =>NULL;
		end case;
	end if;
end process;
end arch;


