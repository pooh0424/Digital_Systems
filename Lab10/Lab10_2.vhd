library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Lab10_2 is 
port(	CLOCK_50:in std_logic;
		KEY:in std_logic_vector(2 downto 1);
		GPIO_0:out std_logic_vector(21 downto 9);      -- connect to lcd pin8 to pin1
		GPIO_1:out std_logic_vector(21 downto 9) );    -- connect to lcd pin16 to pin9  
end Lab10_2;

architecture arch of Lab10_2 is
component CLK_DIV is
		port 
		(	
			clock_in				: IN	STD_LOGIC;
			clock_out			: OUT	STD_LOGIC;
			clock_out1Hz		: OUT STD_LOGIC); 
	end component;
signal RESET,show:std_logic;

signal INIT_CLK:std_logic;
signal COUNTER:integer range 0 to 24;
TYPE DDRAM IS ARRAY(0 to 15) OF std_logic_vector(7 downto 0);
signal LINE1:DDRAM;
signal CLK, CLK_500hz,clk_1Hz:std_logic; 
signal LCM_RS, LCM_RW, LCM_EN :std_logic;
signal LCM_DB:std_logic_vector(7 downto 0);
signal displayCOUNTER:integer range 0 to 25:=0;
begin
CLK_U1: CLK_DIV port map(CLOCK_50, CLK_500hz,clk_1Hz);
RESET<=KEY(1);
SHOW<=KEY(2);
INIT_CLK<= CLK_500hz;
LCM_EN<=INIT_CLK;
process(INIT_CLK,reset)
begin
	if(reset='0') then 
		couNTER<=0;
	elsif INIT_CLK'event and INIT_CLK='1' then
		if COUNTER>=24 then
			COUNTER<=8;
		else
			COUNTER<=COUNTER+1;
		end if;
   end if;
end process;
process(reset,show,CLK_1Hz)
begin
	if (show='0') then
		displayCOUNTER<=0;
		LINE1(0) <="01000100";				--D
		LINE1(1) <="00110001";				--1
		LINE1(2) <="00110001";				--1
		LINE1(3) <="00110011";				--3
		LINE1(4) <="00110011";				--3
		LINE1(5) <="00110011";				--3
		LINE1(6) <="00110010";				--2
		LINE1(7) <="00110100";				--4
		LINE1(8) <="00100000";				--
		LINE1(9) <="00100000";				--
		LINE1(10)<="00100000";				--
		LINE1(11)<="00100000";				--
		LINE1(12)<="00100000";				--
		LINE1(13)<="00100000";				--
		LINE1(14)<="00100000";				--
		LINE1(15)<="00100000";				--
	elsif(reset='0') then 
		LINE1(0 to 15)<=(others =>"00100000");
	elsif(CLK_1Hz'event and CLK_1Hz='0') then
		displayCOUNTER<= displayCOUNTER+1;
		if(displayCOUNTER=15)then
			displayCOUNTER<=0;
		end if;
		if(displayCOUNTER<8)then
			LINE1(0 to 15)<=LINE1(15)&LINE1(0 to 14);
		else
			LINE1(0 to 15)<=LINE1(1 to 15)&LINE1(0);
		end if;
	end if;
end process;
--displayt circuit
process(INIT_CLK)
begin
	if(INIT_CLK'event and INIT_CLK='0') then	
		case COUNTER is
			when 0 to 3=>
				LCM_RS<='0';
				LCM_RW<='0';
				LCM_DB<="00111000";		--function set
			when 4=>
				LCM_DB<="00001000";		--off screen
			when 5=>
				LCM_DB<="00000001";		--clear screen
			when 6=>
				LCM_DB<="00001100";		--on screen
			when 7=>
				LCM_DB<="00000110";		--entry mode set	
			when 8=>
				LCM_RS<='0';
				LCM_DB<="10000000";		--set position 	
			when 9=>
				LCM_RS<='1';
				LCM_DB<=LINE1(0);
			when 10=>
				LCM_DB<=LINE1(1);
			when 11=>
				LCM_DB<=LINE1(2);
			when 12=>
				LCM_DB<=LINE1(3);
			when 13=>
				LCM_DB<=LINE1(4);
			when 14=>
				LCM_DB<=LINE1(5);
			when 15=>
				LCM_DB<=LINE1(6);
			when 16=>
				LCM_DB<=LINE1(7);
			when 17=>
				LCM_DB<=LINE1(8);
			when 18=>
				LCM_DB<=LINE1(9);
			when 19=>
				LCM_DB<=LINE1(10);
			when 20=>
				LCM_DB<=LINE1(11);
			when 21=>
				LCM_DB<=LINE1(12);
			when 22=>
				LCM_DB<=LINE1(13);
			when 23=>
				LCM_DB<=LINE1(14);
			when 24=>
				LCM_DB<=LINE1(15);
		end case;
	end if;
end process;

-- lcd pin3 to pin6
	GPIO_0(13) <= '0';   GPIO_0(14) <= LCM_RS;  GPIO_0(15) <= LCM_RW;  GPIO_0(17) <= LCM_EN; 	  	 	
-- lcd pin7 to pin14	(DB0 ~ DB7)
	GPIO_0(19) <= LCM_DB(0);  GPIO_0(21) <= LCM_DB(1);  GPIO_1(9) <= LCM_DB(2);   GPIO_1(11) <= LCM_DB(3);
	GPIO_1(13) <= LCM_DB(4);  GPIO_1(14) <= LCM_DB(5);  GPIO_1(15) <= LCM_DB(6);  GPIO_1(17) <= LCM_DB(7);
-- lcd pin15 to pin16
	GPIO_1(19) <= '1';     GPIO_1(21) <= '0';   -- turn on backlight
	   
end arch;
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity CLK_DIV is
	port 
	(	
		clock_in				: IN	STD_LOGIC;
		clock_out			: OUT	STD_LOGIC;
		clock_out1Hz		: OUT STD_LOGIC ); 
end CLK_DIV;

architecture arch of CLK_DIV is
	constant divisor: integer := 100_000;
	constant divisor2: integer := 50000000;
	signal count: integer range 0 to divisor := 0;
	signal CLK_out: STD_LOGIC;
	signal count2: integer range 0 to divisor2 := 0;
	signal CLK_out2: STD_LOGIC;
begin
	
	process(clock_in)
	begin
		IF clock_in'event and clock_in='1' THEN
			IF count <  divisor/2-1 THEN
				count <= count + 1;
			ELSE
				count <= 0;
				CLK_out <= NOT CLK_out;
			END IF;
			IF count2 <  divisor2/2-1 THEN
				count2 <= count2 + 1;
			ELSE
				count2 <= 0;
				CLK_out2 <= NOT CLK_out2;
			END IF;
		END IF;
		clock_out <= CLK_out;
		clock_out1Hz <=CLK_out2;
	end process;
	
end arch;

