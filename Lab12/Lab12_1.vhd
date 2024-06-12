library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity Lab12_1 is 
port(	CLOCK_50:in std_logic;
		SW:in std_LOGIC_Vector(0 to 0);
		VGA_R, VGA_G, VGA_B: out std_logic_vector(3 downto 0);
		VGA_HS,VGA_VS: OUT std_logic
		);
end Lab12_1;

architecture behavor of Lab12_1 is
component VGA_sync IS
	PORT(
		CLOCK,RESET: IN std_logic;
		HOR_SYN,VER_SYN,video_on: OUT std_logic;
      row_counter:out INTEGER RANGE 0 TO 524;		
      col_counter:out INTEGER RANGE 0 TO 799	);
END component;
component Vbar_display IS   
	PORT( video_on:IN std_logic;
   r,c: IN INTEGER RANGE 0 TO 799;
	Rout, Gout, Bout: out std_logic_vector(3 downto 0));
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
signal display:std_LOGIC;
begin
	display<=SW(0);
	VGA_sync1:VGA_sync port map(clock25,'1',VGA_HS,VGA_VS,video_on,r,c);
	Vbar_display1:Vbar_display port map((video_on and display),r,c,VGA_R,VGA_G,VGA_B);
	clock_div1:CLK_DIV port map(cloCK_50,clock25);
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



