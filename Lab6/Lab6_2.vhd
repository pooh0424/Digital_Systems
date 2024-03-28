LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;
use ieee.numeric_std.all;
entity Lab6_2 is
	port (
		KEY: in std_logic_vector(2 downto 1);
		SW: in std_logic_vector(7 downto 0);
		LEDG: out std_logic_vector(9 downto 0)
	);
end  Lab6_2;
architecture behavor of Lab6_2 is
	signal clock:std_logic;
	signal lastA: integer RANGE -128 to 127;
	signal lastB: integer RANGE -128 to 127;
	signal reset:std_logic;
begin
	clock <= KEY(2);
	reset <= KEY(1);
	PROCESS(clock,reset)
	VARIABLE sum:integer;
	BEGIN
		IF (clock'EVENT and clock='1')THEN
			lastA <= to_integer(signed(SW));
			sum := lastB + lastA;
			IF (sum>127 or sum<-128)THEN
				LEDG(9)<='1';
			else 
				LEDG(9)<='0';
			END IF;
		END IF;
		lastB<=sum;
		IF (reset='0')THEN
			lastA <= 0;
			sum:=0;
			LEDG(9)<='0';
			lastB <=0;
		END IF;
	LEDG(7 downto 0)<=std_logic_vector(to_signed(sum,8));
	END PROCESS;

end behavor ;  


