library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Lab8_1 is
port 
	(	
		CLOCK_50:in std_logic;		
		KEY:in std_logic_vector(2 downto 1);
		GPIO_0:out std_logic_vector(21 downto 9);      -- connect to back-side pin16~pin9 of 8x8 led
		GPIO_1:out std_logic_vector(21 downto 9)  );   -- connect to front-side pin1~pin8 of 8x8 led
end Lab8_1;

architecture behavior of LAb8_1 is

	component CLK_DIV is
	port 
	(	
		clock_50Mhz				: IN	STD_LOGIC;
		clock_1KHz				: OUT	STD_LOGIC); 
	end component;
	
	type LED8x8_type is array (1 to 8) of std_logic_vector(1 to 8);   -- each array stores the pattern of a column
	type dice8x8 is array(0 to 6)of LED8x8_type;
	constant mydice : dice8x8 := (0=>(1 => "00000000",2 => "00000000",3 => "00000000",4 => "00000000",5 => "00000000",6 => "00000000",7 => "00000000",8 => "00000000"),
											1=>(1 => "00000000",2 => "00000000",3 => "00000000",4 => "00011000",5 => "00011000",6 => "00000000",7 => "00000000",8 => "00000000"),
											2=>(1 => "00000000",2 => "01100000",3 => "01100000",4 => "00000000",5 => "00000000",6 => "00000110",7 => "00000110",8 => "00000000"),
											3=>(1 => "00000000",2 => "01100000",3 => "01100000",4 => "00011000",5 => "00011000",6 => "00000110",7 => "00000110",8 => "00000000"),
											4=>(1 => "01100110",2 => "01100110",3 => "00000000",4 => "00000000",5 => "00000000",6 => "00000000",7 => "01100110",8 => "01100110"),
											5=>(1 => "01100110",2 => "01100110",3 => "00000000",4 => "00011000",5 => "00011000",6 => "00000000",7 => "01100110",8 => "01100110"),
											6=>(1 => "01100110",2 => "01100110",3 => "00000000",4 => "01100110",5 => "01100110",6 => "00000000",7 => "01100110",8 => "01100110"));					
	
	signal CLK_1khz: std_logic;
	signal RESET, dice : std_logic;
	signal SCANLINE:integer range 0 to 7;
	signal Buttons, shift_dir: std_logic_vector(1 downto 0);
	signal ROW, COL: std_logic_vector(1 to 8);
	signal random:integer range 1 to 6:=1;
	signal selrandom:integer range 0 to 7:=0;
	signal LED8x8map: dice8x8:=mydice;

begin

	clkgen: CLK_DIV port map(clock_50Mhz=>CLOCK_50, clock_1KHz=>CLK_1khz);

	RESET <= KEY(1);
	Dice <=KEY(2);
	
	process(RESET,DICe)
	begin
		if RESET='0' then
			selrandom <=0;
		elsif DICe'event and DICe='1' then
			selrandom <=random;
		end if;
	end process; 
	
	process(CLK_1khz, RESET)
	begin
		if RESET='0' then
			SCANLINE <= 0;
			random <=1;
		elsif CLK_1khz'event and CLK_1khz='1' then
			if SCANLINE = 7 then 
				SCANLINE <= 0;
			else
				SCANLINE<=SCANLINE + 1;
			end if;
			if random = 6 then 
				random <= 1;
			else
				random<=random + 1;
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
	COL <=	LED8x8map(selrandom)(1) when 0,
				LED8x8map(selrandom)(2) when 1,
				LED8x8map(selrandom)(3) when 2,
				LED8x8map(selrandom)(4) when 3,
				LED8x8map(selrandom)(5) when 4,
				LED8x8map(selrandom)(6) when 5,
				LED8x8map(selrandom)(7) when 6,
				LED8x8map(selrandom)(8) when 7,
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
		clock_1KHz				: OUT	STD_LOGIC); 
end CLK_DIV;

architecture arch of CLK_DIV is
	constant divisor: integer := 1;
	signal count_1Khz: integer range 0 to 25000 := 0;
	signal CLK_1Khz: STD_LOGIC;
	
begin
	clock_1KHz <= CLK_1Khz;
	
	process(clock_50Mhz)
	begin
		IF clock_50Mhz'event and clock_50Mhz='1' THEN
			IF count_1Khz <  divisor/2-1 THEN
				count_1Khz <= count_1Khz + 1;
			ELSE
				count_1Khz <= 0;
				CLK_1Khz <= NOT CLK_1Khz;
			END IF;
		END IF;
	end process;
end arch;