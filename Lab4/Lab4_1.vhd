library ieee;
use ieee.std_logic_1164.all;
entity Lab4_1 is
	port (
		SW: in std_logic_vector(3 downto 0);
		HEX0: out std_logic_vector(0 to 6);
		HEX1: out std_logic_vector(0 to 6)
	);
end  Lab4_1;
architecture behavor of Lab4_1 is
begin
		PROCESS(SW)
		BEGIN
			CASE SW IS
				
				WHEN "0001" =>HEX0<="1001111" ;HEX1<="0000001";
				WHEN "0010" =>HEX0<="0010010" ;HEX1<="0000001";
				WHEN "0011" =>HEX0<="0000110" ;HEX1<="0000001";
				WHEN "0100" =>HEX0<="1001100" ;HEX1<="0000001";
				WHEN "0101" =>HEX0<="0100100" ;HEX1<="0000001";
				WHEN "0110" =>HEX0<="0100000" ;HEX1<="0000001";
				WHEN "0111" =>HEX0<="0001111" ;HEX1<="0000001";
				WHEN "1000" =>HEX0<="0000000" ;HEX1<="0000001";
				WHEN "1001" =>HEX0<="0001100" ;HEX1<="0000001";
				WHEN "1010" =>HEX0<="0000001" ;HEX1<="1001111";
				WHEN "1011" =>HEX0<="1001111" ;HEX1<="1001111";
				WHEN "1100" =>HEX0<="0010010" ;HEX1<="1001111";
				WHEN "1101" =>HEX0<="0000110" ;HEX1<="1001111";
				WHEN "1110" =>HEX0<="1001100" ;HEX1<="1001111";
				WHEN "1111" =>HEX0<="0100100" ;HEX1<="1001111";
				WHEN OTHERS =>HEX0<="0000001" ;HEX1<="0000001";
			END CASE;
		END PROCESS;
end behavor ;  
