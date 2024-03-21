LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
use ieee.numeric_std.all;
entity Lab5_1 is
	port (
		SW: in std_logic_vector(7 downto 0);
		KEY: in std_logic_vector(2 downto 0);
		HEX0: out std_logic_vector(0 to 6);
		HEX1: out std_logic_vector(0 to 6);
		LEDG : out std_logic_vector(9 to 9)
	);
end  Lab5_1;
architecture behavor of Lab5_1 is
	component Intto7seg
		PORT( 
			number: in Integer;
			HEX: out std_logic_vector(0 to 6)
		);
	end component;
	signal A: std_logic_vector(3 downto 0);
	signal B: std_logic_vector(3 downto 0);
	signal A_number : integer;
	signal B_number : integer;
	signal HEX0number : integer;
	signal HEX1number : integer;
	signal result: integer;
begin
	A(3 downto 0)<=SW(7 downto 4);
	B(3 downto 0)<=SW(3 downto 0);
	A_number <= to_integer(signed(A));
	B_number <= to_integer(signed(B));
	PROCESS(KEY)
	BEGIN
		IF KEY="110" THEN
			result <= A_number+B_number;
		ELSIF KEY="101" THEN
			result <= A_number-B_number;
		ELSIF KEY="011" THEN
			result <= A_number*B_number;
		ELSE
			result <= 0;
		END IF;
		IF KEY="110" or KEY="101" or KEY="011" THEN
			HEX0number <= (abs result) mod 10;
			HEX1number <= (abs result)/10;
		ELSE
			HEX0number <= -1;
			HEX1number <= -1;
		END IF;
	END PROCESS;
	PROCESS(result)
	BEGIN
		IF result<0 THEN
			LEDG <="1";
		ELSE 
			LEDG <="0";
		END IF;
	END PROCESS;
	Digit0:Intto7seg PORT MAP(HEX0number,HEX0);
	Digit1:Intto7seg PORT MAP(HEX1number,HEX1);
end behavor ;  

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
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
			WHEN OTHERS =>HEX<="1111111";
		END CASE;
	end process;
end Behavor;

