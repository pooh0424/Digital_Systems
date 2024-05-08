library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity Lab9_2 is
port 
	(		
		KEY:in std_logic_vector(2 downto 1);
		SW:in std_logic_vector(0 downto 0);
		LEDG:out std_logic_vector(9 downto 4)
	);
end Lab9_2;

architecture behavior of LAb9_2 is
	signal l_state,N_state:STD_LOGIC_VECTOR(3 DOWNTO 0); 
	CONSTANT I 		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000" ;
	CONSTANT O1		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0001" ;
	CONSTANT O2		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0010" ;
	CONSTANT O3		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0011" ;
	CONSTANT O4		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "0100" ;
	CONSTANT X1		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1001" ;
	CONSTANT X2		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1010" ;
	CONSTANT X3		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1011" ;
	CONSTANT X4		: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1100" ;
	signal clock,reset: std_logic;
	signal op:std_logic;
begin
	LEDG(9) <= op;
	LEDG(7 downto 4) <=l_state;
	RESET <= KEY(1);
	clock <=KEY(2);
	
	process(KEY,l_state)
	begin
		CASE l_state IS
			WHEN I=>
				IF SW = "0" THEN N_state <= O1 ;
				ELSE N_state <= X1 ;
				END IF ;
			WHEN O1=>
				IF SW = "0" THEN N_state <= O2 ;
				ELSE N_state <= X1 ;
				END IF ;
			WHEN O2=>
				IF SW = "0" THEN N_state <= O3 ;
				ELSE N_state <= X1 ;
				END IF ;
			WHEN O3=>
				IF SW = "0" THEN N_state <= O4 ;
				ELSE N_state <= X1 ;
				END IF ;
			WHEN O4=>
				IF SW = "0" THEN N_state <= O4 ;
				ELSE N_state <= X1 ;
				END IF ;
			WHEN X1=>
				IF SW = "0" THEN N_state <= O1 ;
				ELSE N_state <= X2 ;
				END IF ;
			WHEN X2=>
				IF SW = "0" THEN N_state <= O1 ;
				ELSE N_state <= X3 ;
				END IF ;
			WHEN X3=>
				IF SW = "0" THEN N_state <= O1 ;
				ELSE N_state <= X4 ;
				END IF ;
			WHEN X4=>
				IF SW = "0" THEN N_state <= O1 ;
				ELSE N_state <= X4 ;
				END IF ;
			WHEN OTHERS=>
				N_state<=I;
		END CASE;
	end process; 
	
	process(clock,reset)
	begin
		IF reset = '0' THEN
			l_state <= I ;
		ELSIF (Clock'EVENT AND Clock = '1') THEN
			l_state <= N_state ;
		END IF ;
	end process; 
	op <= '1' WHEN l_state = X4 or l_state = O4 ELSE '0'; 
end behavior;
