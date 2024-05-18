library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;
entity Lab11_1 is 
port(	CLOCK_50:in std_logic;
		PS2_KBDAT:in std_logic;
		PS2_KBCLK:in std_LOGIC;
		KEY:in std_LOGIC_VECTOR(1 to 1);
		LEDG:out std_logic_vector(9 downto 0);
		HEX3:out std_LOGIC_VECTOR(0 to 6);
		HEX2:out std_LOGIC_VECTOR(0 to 6)
		);
end Lab11_1;

architecture arch of Lab11_1 is
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
component HEXto7seg IS
	PORT( 
		number: in std_lOGIC_VECTOR(4 downto 0);
		HEX: out std_logic_vector(0 to 6)
	);
END component;
signal reset:std_LOGIC;
signal newdata:std_LOGIC;
signal code:std_LOGIC_VECTOR(6 downto 0);
signal number0:std_LOGIC_VECTOR(4 downto 0);
signal number1:std_LOGIC_VECTOR(4 downto 0);
signal codeun:unsigned(6 downto 0);
begin
reset<=KEY(1);
ps2_ACCLL: ps2_keyboard_to_ascii  port map(CLOCK_50, PS2_KBCLK,PS2_KBDAT,newdata,code);
dig0:HEXto7seg port map(number0,HEX2);
dig1:HEXto7seg port map(number1,HEX3);
process(newdata,reset)
begin
	if reset='0' then
		LEDG <="0000000000";
		number0<="10000";
		number1<="10000";
	elsif newdata'event and newdata='1' then
		case code is
			when "0110000" =>LEDG <="0000000001";
			when "0110001" =>LEDG <="0000000010";
			when "0110010" =>LEDG <="0000000100";
			when "0110011" =>LEDG <="0000001000";
			when "0110100" =>LEDG <="0000010000";
			when "0110101" =>LEDG <="0000100000";
			when "0110110" =>LEDG <="0001000000";
			when "0110111" =>LEDG <="0010000000";
			when "0111000" =>LEDG <="0100000000";
			when "0111001" =>LEDG <="1000000000";
			when others =>LEDG <="0000000000";
		end case;
		number1<="00"&code(6 downto 4);
		number0<='0'&code(3 downto 0);
	end if;
end process;
end arch;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
use ieee.numeric_std.all;
ENTITY HEXto7seg IS
	PORT( 
		number: in std_logic_vector(4 downto 0);
		HEX: out std_logic_vector(0 to 6)
	);
END HEXto7seg;

architecture Behavor OF HEXto7seg IS
begin
	PROCESS(number)
	Begin
		CASE number IS
			WHEN "00001"=>HEX<="1001111" ;
			WHEN "00010" =>HEX<="0010010" ;
			WHEN "00011" =>HEX<="0000110" ;
			WHEN "00100" =>HEX<="1001100" ;
			WHEN "00101" =>HEX<="0100100" ;
			WHEN "00110" =>HEX<="0100000" ;
			WHEN "00111" =>HEX<="0001111" ;
			WHEN "01000" =>HEX<="0000000" ;
			WHEN "01001" =>HEX<="0001100" ;
			WHEN "01010" =>HEX<="0001000" ;
			WHEN "01011" =>HEX<="1100000" ;
			WHEN "01100" =>HEX<="0110001" ;
			WHEN "01101" =>HEX<="1000010" ;
			WHEN "01110" =>HEX<="0110000" ;
			WHEN "01111" =>HEX<="0111000" ;
			WHEN "00000" =>HEX<="0000001" ;
			WHEN OTHERS =>HEX<="1111111";
		END CASE;
	end process;
end Behavor;


