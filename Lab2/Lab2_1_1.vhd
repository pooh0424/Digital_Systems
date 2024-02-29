library ieee;
use ieee.std_logic_1164.all;
entity Lab2_1_1 is
	port (
		switch: in Std_logic_vector(3 downto 0);
		sevensegement: out Std_logic_vector(0 to 6);
		prime:out std_logic
	);
end  Lab2_1_1;
architecture dataflow of Lab2_1_1 is
begin
	sevensegement(0) <= (not switch(3) and not switch(2) and not switch(1) and switch(0))
								or (not switch(3) and switch(2) and not switch(1) and not switch(0))
								or (switch(3) and switch(2) and not switch(1) and switch(0))
								or (switch(3) and not switch(2) and switch(1) and switch(0));
	sevensegement(1) <= (switch(2) and switch(1) and not switch(0))
								or (switch(3) and switch(1) and switch(0))
								or (switch(3) and switch(2) and not switch(0))
								or (not switch(3) and switch(2) and not switch(1) and switch(0));
	sevensegement(2) <= (switch(3) and switch(2) and switch(1))
								or (switch(3) and switch(2) and not switch(0))
								or (not switch(3) and not switch(2) and switch(1) and not switch(0));
	sevensegement(3) <= (switch(2) and switch(1) and switch(0))
								or (not switch(2) and not switch(1) and switch(0))
								or (not switch(3) and switch(2) and not switch(1) and not switch(0))
								or (switch(3) and not switch(2) and switch(1) and not switch(0));
	sevensegement(4) <= (not switch(3) and switch(0))
								or (not switch(2) and not switch(1) and switch(0))
								or (not switch(3) and switch(2) and not switch(1));
	sevensegement(5) <= (not switch(3) and not switch(2) and switch(1))
								or (not switch(3) and not switch(2) and switch(0))
								or (not switch(3) and switch(1) and switch(0))
								or (switch(3) and switch(2) and not switch(1) and switch(0));
	sevensegement(6) <= (not switch(3) and not switch(2) and not switch(1))
								or (not switch(3) and switch(2) and switch(1) and switch(0))
								or (switch(3) and switch(2) and not switch(1) and not switch(0));
	prime <= (not switch(3) and not switch(2) and switch(1))
				or(not switch(3) and switch(2) and switch(0))
				or(switch(2) and not switch(1) and switch(0))
				or(not switch(2) and switch(1) and switch(0));
		
end dataflow ;  
