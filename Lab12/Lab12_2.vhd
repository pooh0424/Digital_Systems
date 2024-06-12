library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity Lab12_2 is 
port(	CLOCK_50:in std_logic;
		PS2_KBDAT:in std_logic;
		PS2_KBCLK:in std_LOGIC;
		KEY:in std_LOGIC_VECTOR(0 to 0);
		VGA_R, VGA_G, VGA_B: out std_logic_vector(3 downto 0);
		VGA_HS,VGA_VS: OUT std_logic
		);
end Lab12_2;
architecture behavor of Lab12_2 is
component VGA_sync IS
	PORT(
		CLOCK,RESET: IN std_logic;
		HOR_SYN,VER_SYN,video_on: OUT std_logic;
      row_counter:out INTEGER RANGE 0 TO 524;		
      col_counter:out INTEGER RANGE 0 TO 799	);
END component;
component dot_display IS   
	PORT( video_on:IN std_logic;
          r,c: IN INTEGER RANGE 0 TO 799;
			posr,posc:IN INTEGER RANGE 0 TO 799;
		  Rout, Gout, Bout: out std_logic_vector(3 downto 0));
END component;
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

component CLK_DIV is
	port 
	(	
		clock_in				: IN	STD_LOGIC;
		clock_out			: OUT	STD_LOGIC); 
end component;
signal clock25:std_logic;
signal r,c:INTEGER RANGE 0 TO 799;
signal video_on:std_logic;
signal posr:IntEGER RANGE 0 TO 799:=240;
signal posc:IntEGER RANGE 0 TO 799:=320;
signal newdata:std_LOGIC;
signal code:std_LOGIC_VECTOR(6 downto 0);
signal reset:std_LOGIC;
begin
	reset<=KEY(0);
	ps2_ACCLL: ps2_keyboard_to_ascii  port map(CLOCK_50, PS2_KBCLK,PS2_KBDAT,newdata,code);
	VGA_sync1:VGA_sync port map(clock25,'1',VGA_HS,VGA_VS,video_on,r,c);
	dot_display1:dot_display port map(video_on,r,c,posr,posc,VGA_R,VGA_G,VGA_B);
	clock_div1:CLK_DIV port map(cloCK_50,clock25);
	process(newdata,reset)
	begin
		if(reset='0')then
			posr<=240;
			posc<=320;
		elsif newdata'event and newdata='1' then
			if(code=x"5E" and posr>20) then
				posr<=posr-20;
			elsif(code=x"5F"and posr<460) then
				posr<=posr+20;
			elsif(code=x"3C"and posc>20) then
				posc<=posc-20;
			elsif(code=x"3E"and posc<620) then
				posc<=posc+20;
			end if;
		end if;
	end process;
end Behavor;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLK_DIV is
	port 
	(	
		clock_in				: IN	STD_LOGIC;
		clock_out			: OUT	STD_LOGIC); 
end CLK_DIV;

architecture arch of CLK_DIV is
	signal CLK_out: STD_LOGIC;
begin
	process(clock_in)
	begin
		IF clock_in'event and clock_in='1' THEN
				CLK_out <= NOT CLK_out;
		END IF;
		clock_out <= CLK_out;
	end process;
end arch;



