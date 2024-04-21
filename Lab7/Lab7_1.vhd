LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Lab7_1 is
	port (
		KEY: in std_logic_vector(1 downto 1);
		LEDG: out std_logic_vector(7 downto 0);
		CLOCK_50: in std_LOGIC
	);
end  Lab7_1;
architecture behavor of Lab7_1 is
	component CLK_DIV
		PORT( 
			clock_50Mhz	: IN	STD_LOGIC;
			clock_1Hz: OUT	STD_LOGIC
		);
	end component;
	signal clock:std_logic;
	signal reset:std_logic;
begin
	reset <= KEY(1);
	PROCESS(clock)
		VARIABLE temp:std_logic_vector(7 downto 0);
	BEGIN
		IF (clock'EVENT and clock='1')THEN
			temp := temp(0)&temp(7 downto 1);
		END IF;
		IF(reset='0')THEN
			temp:="10000000";
		END IF;
		LEDG<=temp;
	END PROCESS;
	myclock:CLK_DIV PORT MAP(clock_50,clock);
end behavor ;



library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLK_DIV is
	port 
	(	
		clock_50Mhz				: IN	STD_LOGIC;
		clock_1Hz				: OUT	STD_LOGIC); 
end CLK_DIV;

architecture arch of CLK_DIV is
	constant divisor: integer := 4;
	signal count_1hz: integer range 0 to 25000000 := 0;
	signal CLK_1hz: STD_LOGIC;
	
begin
	clock_1Hz <= CLK_1hz;
	
	process(clock_50Mhz)
	begin
		IF clock_50Mhz'event and clock_50Mhz='1' THEN
			IF count_1hz <  divisor/2-1 THEN
				count_1hz <= count_1hz + 1;
			ELSE
				count_1hz <= 0;
				CLK_1hz <= NOT CLK_1hz;
			END IF;
		END IF;
	end process;
end arch;