LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity pil8 is
	port (
		KEY: in std_logic_vector(1 downto 1);
		LEDG: out std_logic_vector(7 downto 0);
		CLOCK_50: in std_LOGIC
	);
end  pil8;
architecture behavor of pil8 is
	component CLK_DIV
		PORT( 
			clock_50Mhz	: IN	STD_LOGIC;
			clock_5Hz: OUT	STD_LOGIC
		);
	end component;
	signal clock:std_logic;
	signal reset:std_logic;
	signal count:integer range 0 to 12:= 0;
begin
	reset <= KEY(1);
	PROCESS(clock)
	BEGIN
		IF (clock'EVENT and clock='1')THEN
			count <= count+1;
			IF(count=11) THEN
				count<=0;
			END IF;
		END IF;
		IF(reset='0')THEN
			count <=0;
		END IF;
	END PROCESS;
	with COUNT select
			LEDG<=
			"11100000" when 0,
			"01110000" when 1,
			"00111000" when 2,
			"00011100" when 3,
			"00001110" when 4,
			"00000111" when 5,
			"00000111" when 6,
			"00001110" when 7,
			"00011100" when 8,
			"00111000" when 9,
			"01110000" when 10,
			"11100000" when 11,
			"01111111" when others;
	myclock:CLK_DIV PORT MAP(clock_50,clock);
end behavor ;


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLK_DIV is
	port 
	(	
		clock_50Mhz				: IN	STD_LOGIC;
		clock_5Hz				: OUT	STD_LOGIC
		);
end CLK_DIV;

architecture arch of CLK_DIV is
	constant divisor: integer := 10000000;
	signal count_5hz: integer range 0 to 5000000 := 0;
	signal CLK_5hz:std_LOGIC;
begin
	clock_5Hz <= CLK_5hz;
	process(clock_50Mhz)
	begin
		IF clock_50Mhz'event and clock_50Mhz='1' THEN
			IF count_5hz <  divisor/2 THEN
				count_5hz <= count_5hz + 1;
			ELSE
				count_5hz <= 0;
				CLK_5hz <= NOT CLK_5hz;
			END IF;
		END IF;
	end process;
end arch;