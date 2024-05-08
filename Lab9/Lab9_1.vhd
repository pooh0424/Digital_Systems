library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Lab9_1 is
port 
	(		
		KEY:in std_logic_vector(2 downto 1);
		SW:in std_logic_vector(0 downto 0);
		LEDG:out std_logic_vector(9 downto 5)
	);
end Lab9_1;

architecture behavior of LAb9_1 is
	signal l_state,N_state:STD_LOGIC_VECTOR(2 DOWNTO 0); 
	CONSTANT S0 	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "000" ;
	CONSTANT S1 	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "001" ;
	CONSTANT S2 	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "010" ;
	CONSTANT S3 	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "011" ;
	CONSTANT S4 	: STD_LOGIC_VECTOR(2 DOWNTO 0) := "100" ;
	signal clock,reset: std_logic;
	signal op:std_logic;
begin
	LEDG(9) <= op;
	LEDG(7 downto 5) <=l_state;
	RESET <= KEY(1);
	clock <=KEY(2);
	
	process(SW,l_state)
	begin
		CASE l_state IS
			WHEN S0=>
				IF SW = "0" THEN N_state <= S0 ;
				ELSE N_state <= S1 ;
				END IF ;
			WHEN S1=>
				IF SW = "0" THEN N_state <= S2 ;
				ELSE N_state <= S1 ;
				END IF ;
			WHEN S2=>
				IF SW = "0" THEN N_state <= S0 ;
				ELSE N_state <= S3 ;
				END IF ;
			WHEN S3=>
				IF SW = "0" THEN N_state <= S2 ;
				ELSE N_state <= S4 ;
				END IF ;
			WHEN S4=>
				IF SW = "0" THEN N_state <= S2 ;
				ELSE N_state <= S1 ;
				END IF ;
			WHEN OTHERS=>
				N_state<=S0;
		END CASE;
	end process; 
	
	process(clock,reset)
	begin
		IF reset = '0' THEN
			l_state <= S0 ;
		ELSIF (Clock'EVENT AND Clock = '1') THEN
			l_state <= N_state ;
		END IF ;
	end process; 
	op <= '1' WHEN l_state = S4 ELSE '0'; 
end behavior;
