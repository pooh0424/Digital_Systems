library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity paritice1 is 
port(	CLOCK_50:in std_logic;
		PS2_KBDAT:in std_logic;
		PS2_KBCLK:in std_LOGIC;
		KEY:in std_LOGIC_VECTOR(2 to 2);
		GPIO_0:out std_logic_vector(21 downto 9);      -- connect to back-side pin16~pin9 of 8x8 led
		GPIO_1:out std_logic_vector(21 downto 9)   -- connect to front-side pin1~pin8 of 8x8 led
		);
end paritice1;

architecture arch of paritice1 is

	component CLK_DIV is
	port 
	(	
		clock_50Mhz				: IN	STD_LOGIC;
		clock_1KHz				: OUT	STD_LOGIC); 
	end component;
	
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
	signal r3,r2,r1,r0,A,B:std_LOGIC_VECTOR(7 downto 0);
	type LED8x8_type is array (0 to 7) of std_logic_vector(7 downto 0);   -- each array stores the pattern of a column
	signal CLK_1khz: std_logic;
	signal CLK_2Hz: std_logic;
	signal SCANLINE:integer range 0 to 7;
	signal ROW, COL: std_logic_vector(1 to 8);
	signal LED8x8: LED8x8_type;
	signal number:integer range 0 to 7:=0;
begin
reset<=KEY(2);
ps2_ACCLL: ps2_keyboard_to_ascii  port map(CLOCK_50, PS2_KBCLK,PS2_KBDAT,newdata,code);
A<=(r3(3 downto 0)&r2(3 downto 0));
B<=(r1(3 downto 0)&r0(3 downto 0));
process(newdata,reset)
begin
	if reset='0' then
		r0<="00000000";
		r1<="00000000";
		r2<="00000000";
		r3<="00000000";
		LED8x8(0 to 7)<=(others=>(others=>'0'));
	elsif newdata'event and newdata='1' then
			if (code>="0110000" and code<="0111001") then
				r3<=r2;
				r2<=r1;
				r1<=r0;
				r0<='0'&(code-"0110000");
			elsif code>="1000001" and code<="1000110" then
				r3<=r2;
				r2<=r1;
				r1<=r0;
				r0<='0'&(code-"1000001"+"0001010");
			elsif code>="1100001" and code<="1100110" then
				r3<=r2;
				r2<=r1;
				r1<=r0;
				r0<='0'&(code-"1100001"+"0001010");
			elsif(code ="0001101") then
				LED8X8(3)<= A and B;
				LED8X8(4)<= A or B;
				LED8X8(5)<= not A;
				LED8X8(6)<= A xor B;
				LED8X8(7)<=A + B;
			end if;
	end if;
	LED8X8(0)<=r3(3 downto 0)&r2(3 downto 0);
	LED8X8(1)<=r1(3 downto 0)&r0(3 downto 0);
end process;
	clkgen: CLK_DIV port map(clock_50Mhz=>CLOCK_50, clock_1KHz=>CLK_1khz);	
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
	COL <=	LED8x8(0) when 0,
				LED8x8(1) when 1,
				LED8x8(2) when 2,
				LED8x8(3) when 3,
				LED8x8(4) when 4,
				LED8x8(5) when 5,
				LED8x8(6) when 6,
				LED8x8(7) when 7,
				"00000000" when others;
	
-- back-side
	GPIO_0(21) <= COL(8);  GPIO_0(19) <= COL(7);	GPIO_0(17) <= ROW(2); GPIO_0(15) <= COL(1);
	GPIO_0(14) <= ROW(4);  GPIO_0(13) <= COL(6);	GPIO_0(11) <= COL(4); GPIO_0(9) <= ROW(1);
-- front-side	
	GPIO_1(21) <= ROW(5);  GPIO_1(19) <= ROW(7);	GPIO_1(17) <= COL(2); GPIO_1(15) <= COL(3);
	GPIO_1(14) <= ROW(8);  GPIO_1(13) <= COL(5);	GPIO_1(11) <= ROW(6); GPIO_1(9) <= ROW(3);
end arch;



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
	constant divisor: integer := 2;
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


