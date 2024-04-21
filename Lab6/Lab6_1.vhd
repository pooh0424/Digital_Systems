LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity Lab6_1 is
	port (
		KEY: in std_logic_vector(2 downto 1);
		HEX0: out std_logic_vector(0 to 6);
		HEX3: out std_logic_vector(0 to 6)
	);
end  Lab6_1;
architecture behavor of Lab6_1 is
	component Intto7seg
		PORT( 
			number: in Integer;
			HEX: out std_logic_vector(0 to 6)
		);
	end component;
	signal temp1:Integer range 0 to 10;
	signal count1:Integer range 0 to 10;
	signal count2:Integer range 0 to 10;
	signal clock:std_logic;
	signal reset:std_logic;
begin
	clock <= KEY(2);
	reset <= KEY(1);
	PROCESS(clock,reset)
	BEGIN
		IF (clock'EVENT and clock='1')THEN
			temp1 <= temp1 +1;
			IF (temp1=10)THEN
				temp1<=0;
			END IF;
		END IF;
		count1<=temp1;
		IF (reset='0')THEN
			temp1<=0;
			count1<=0;
		END IF;
		END PROCESS;
	PROCESS(clock)
		VARIABLE temp2:Integer range 0 to 10;
	BEGIN
		IF (clock'EVENT and clock='1')THEN
			temp2 := temp2 +1;
			IF (temp2=10)THEN
				temp2:=0;
			END IF;
		END IF;
		IF(reset='0')THEN
			temp2:=0;
		END IF;
		count2<=temp2;
	END PROCESS;
	Digit0:Intto7seg PORT MAP(count2,HEX0);
	Digit3:Intto7seg PORT MAP(count1,HEX3);
end behavor ;  

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
ENTITY Intto7seg IS
	PORT( 
		number: in Integer;
		HEX: out std_logic_vector(0 to 6)
	);
END Intto7seg;

architecture Behavor OF Intto7seg IS
begin
	PROCESS(number)
	Begin
		CASE number IS
			WHEN 1=>HEX<="1001111" ;
			WHEN 2 =>HEX<="0010010" ;
			WHEN 3 =>HEX<="0000110" ;
			WHEN 4 =>HEX<="1001100" ;
			WHEN 5 =>HEX<="0100100" ;
			WHEN 6 =>HEX<="0100000" ;
			WHEN 7 =>HEX<="0001111" ;
			WHEN 8 =>HEX<="0000000" ;
			WHEN 9 =>HEX<="0001100" ;
			WHEN 0 =>HEX<="0000001" ;
			WHEN 10 =>HEX<="0001000" ;
			WHEN OTHERS =>HEX<="1111111";
		END CASE;
	end process;
end Behavor;

