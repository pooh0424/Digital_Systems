library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Lab8_2 is
	port 
	(	
		CLOCK_50:in std_logic;		
		KEY:in std_logic_vector(2 downto 2);
		GPIO_0:out std_logic_vector(21 downto 9);      -- connect to back-side pin16~pin9 of 8x8 led
		GPIO_1:out std_logic_vector(21 downto 9)  );   -- connect to front-side pin1~pin8 of 8x8 led
end Lab8_2;

architecture behavior of LAb8_2 is

	component CLK_DIV is
	port 
	(	
		clock_50Mhz				: IN	STD_LOGIC;
		clock_1KHz				: OUT	STD_LOGIC;
		clock_2Hz				: OUT STD_LOGIC); 
	end component;
	
	type LED8x8_type is array (1 to 8) of std_logic_vector(1 to 8);   -- each array stores the pattern of a column
	type people8x8 is array(0 to 7)of LED8x8_type;
	constant mypeople : people8x8 := (0=>(1 => "00111000",2 => "00110000",3 => "00011000",4 => "00011000",5 => "00011000",6 => "00001000",7 => "00010100",8 => "00010100"),
											1=>(1 => "00111000",2 => "00110000",3 => "00011000",4 => "00011100",5 => "00111000",6 => "00010100",7 => "00010100",8 => "00100100"),
											2=>(1 => "00111000",2 => "00110000",3 => "00011100",4 => "00111010",5 => "00001000",6 => "00010100",7 => "00100100",8 => "00100010"),
											3=>(1 => "00111000",2 => "00110000",3 => "00011100",4 => "00111010",5 => "01001001",6 => "00010100",7 => "00100010",8 => "00100010"),
											4=>(1 => "00111000",2 => "00110000",3 => "00011110",4 => "00111001",5 => "01001000",6 => "00010100",7 => "00100010",8 => "01000010"),
											5=>(1 => "00111000",2 => "00110000",3 => "00011100",4 => "00111010",5 => "01001001",6 => "00010100",7 => "00100010",8 => "00100010"),
											6=>(1 => "00111000",2 => "00110000",3 => "00011100",4 => "00111010",5 => "00001000",6 => "00010100",7 => "00100100",8 => "00100010"),
											7=>(1 => "00111000",2 => "00110000",3 => "00011000",4 => "00011100",5 => "00111000",6 => "00010100",7 => "00010100",8 => "00100100"));					
	
	signal CLK_1khz: std_logic;
	signal CLK_2Hz: std_logic;
	signal stop: std_logic;
	signal SCANLINE:integer range 0 to 7;
	signal ROW, COL: std_logic_vector(1 to 8);
	signal number:integer range 0 to 7:=0;
	signal LED8x8map: people8x8:=mypeople;
	signal sor:std_logic:='1';

begin

	clkgen: CLK_DIV port map(clock_50Mhz=>CLOCK_50, clock_1KHz=>CLK_1khz,clock_2Hz=>CLK_2Hz);

	stop <= KEY(2);
	
	process(stop)
	begin
		if stop'event and stop='1' then
			sor<=NOT sor;
		END IF;
	end process; 
	
	process(CLK_1khz)
	begin
		if CLK_1khz'event and CLK_1khz='1' then
			if SCANLINE = 7 then 
				SCANLINE <= 0;
			else
				SCANLINE<=SCANLINE + 1;
			end if;
		end if;
	end process; 
	
	process(clk_2Hz,sor)
	begin
		if CLK_2hz'event and CLK_2hz='1' and sor='1' then
			if number = 7 then 
				number <= 0;
			else
				number<=number + 1;
			end if;
		end if;
	end process;
--display circuit
	with SCANLINE select
	ROW <=	"01111111" when 0,
				"10111111" when 1,
				"11011111" when 2,
				"11101111" when 3,
				"11110111" when 4,
				"11111011" when 5,
				"11111101" when 6,
				"11111110" when 7,
				"11111111" when others;
		
	with SCANLINE select
	COL <=	LED8x8map(number)(1) when 0,
				LED8x8map(number)(2) when 1,
				LED8x8map(number)(3) when 2,
				LED8x8map(number)(4) when 3,
				LED8x8map(number)(5) when 4,
				LED8x8map(number)(6) when 5,
				LED8x8map(number)(7) when 6,
				LED8x8map(number)(8) when 7,
				"00000000" when others;
	
-- back-side
	GPIO_0(21) <= COL(8);  GPIO_0(19) <= COL(7);	GPIO_0(17) <= ROW(2); GPIO_0(15) <= COL(1);
	GPIO_0(14) <= ROW(4);  GPIO_0(13) <= COL(6);	GPIO_0(11) <= COL(4); GPIO_0(9) <= ROW(1);
-- front-side	
	GPIO_1(21) <= ROW(5);  GPIO_1(19) <= ROW(7);	GPIO_1(17) <= COL(2); GPIO_1(15) <= COL(3);
	GPIO_1(14) <= ROW(8);  GPIO_1(13) <= COL(5);	GPIO_1(11) <= ROW(6); GPIO_1(9) <= ROW(3);
end behavior;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLK_DIV is
	port 
	(	
		clock_50Mhz				: IN	STD_LOGIC;
		clock_1KHz				: OUT	STD_LOGIC;
		clock_2Hz				: OUT STD_LOGIC); 
end CLK_DIV;

architecture arch of CLK_DIV is
	constant divisor: integer := 2;
	signal count_1Khz: integer range 0 to 25000 := 0;
	signal CLK_1Khz: STD_LOGIC;
	constant divisor2: integer := 20;
	signal count_2hz: integer range 0 to 25000000 := 0;
	signal CLK_2hz: STD_LOGIC;
	
begin
	clock_1KHz <= CLK_1Khz;
	clock_2Hz <= CLK_2hz;
	process(clock_50Mhz)
	begin
		IF clock_50Mhz'event and clock_50Mhz='1' THEN
			IF count_1Khz <  divisor/2-1 THEN
				count_1Khz <= count_1Khz + 1;
			ELSE
				count_1Khz <= 0;
				CLK_1Khz <= NOT CLK_1Khz;
			END IF;
			IF count_2hz <  divisor2/2-1 THEN
				count_2hz <= count_2hz + 1;
			ELSE
				count_2hz <= 0;
				CLK_2Hz <= NOT CLK_2Hz;
			END IF;
		END IF;
	end process;
end arch;