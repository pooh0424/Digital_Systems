LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY Lab13_2 IS
	PORT (	
		SW:in STD_LOGIC_VECTOR(9 downto 0);
		KEY:in STD_LOGIC_VECTOR(2 downto 0);
		LEDG:OUT STD_LOGIC_VECTOR(9 downto 0);
		HEX3:OUT STD_LOGIC_VECTOR(0 to 6)
		);
END Lab13_2;
	
ARCHITECTURE Behavior OF lab13_2 IS
	COMPONENT dec3to8
		PORT (	W	: IN 	STD_LOGIC_VECTOR(2 DOWNTO 0);
			En	: IN	STD_LOGIC;
			Y	: OUT	STD_LOGIC_VECTOR(0 TO 7));
	END COMPONENT;

	COMPONENT regn
		GENERIC (n : INTEGER := 9);
		PORT (	R	: IN		STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			Rin, Clock	: IN		STD_LOGIC;
			Q	: BUFFER STD_LOGIC_VECTOR(n-1 DOWNTO 0));
	END COMPONENT;
	
	TYPE State_type IS (T0, T1, T2, T3);
	signal DIN:STD_LOGIC_VECTOR(8 DOWNTO 0);
	signal Resetn, Clock, Run	:STD_LOGIC;
	signal Done	: STD_LOGIC;
	signal BusWires: STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL Rin, Rout : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL Sum ,result: STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL High, IRin, DINout, Ain, Gin, Gout, AddSub ,Bin, Bout,Cin,cout,addxor: STD_LOGIC;
	SIGNAL I : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL Xreg, Yreg : STD_LOGIC_VECTOR(0 TO 7);
	SIGNAL R0, R1, R2, R3, R4, R5, R6, R7, A, G ,B,C: STD_LOGIC_VECTOR(8 DOWNTO 0);
	SIGNAL IR : STD_LOGIC_VECTOR(1 TO 9);
	SIGNAL Sel : STD_LOGIC_VECTOR(1 to 14); -- bus selector
	SIGNAL one,zero:std_LOGIC;
	SIGNAL Tstep_Q, Tstep_D: State_type;
BEGIN
	RESETN <= KEY(1);
	CLOCK <= KEY(2);
	RUN <= SW(9);
	DIN <= SW(8 downto 0);
	LEDG(8 downto 0)<=BusWires;
	LEDG(9)<=Done;
	High <= '1';
	I <= IR(1 TO 3);
	decX: dec3to8 PORT MAP (IR(4 TO 6), High, Xreg);
	decY: dec3to8 PORT MAP (IR(7 TO 9), High, Yreg);
		
	statetable: PROCESS(Tstep_Q, Run, Done)
	BEGIN
		CASE Tstep_Q IS
			WHEN T0 => 	-- data is loaded into IR in this time step
					IF(Run = '0') THEN Tstep_D <=T0;
					ELSE Tstep_D <= T1;
					END IF;
					HEX3<="0000001";
			WHEN T1 =>	-- some instructions end after this time step	
					IF (Done = '1') THEN Tstep_D <=T0;
					ELSE Tstep_D <= T2;
					END IF;
					HEX3<="1001111";
			WHEN T2 =>	-- always go to T3 after this
					IF (Done = '1') THEN Tstep_D <=T0;
					ELSE Tstep_D <= T3;
					END IF;
					HEX3<="0010010";
			WHEN T3 =>	-- instructions end after this time step	
					Tstep_D <= T0;
					HEX3<="0000110";
		END CASE;
	END PROCESS;
	-- Instruction Table
	-- 	000: mv		Rx,Ry		: Rx <- [Ry]
	-- 	001: mvi	Rx,#D		: Rx <- D
	-- 	010: add	Rx,Ry		: Rx <- [Rx] + [Ry]
	-- 	011: sub	Rx,Ry		: Rx <- [Rx] - [Ry]
	-- 	OPCODE format: III XXX YYY, where 
	-- 	III = instruction, XXX = Rx, and YYY = Ry. For mvi,
	-- 	a second word of data is loaded from DIN
	--
	controlsignals: PROCESS (Tstep_Q, I, Xreg, Yreg)
	BEGIN
		Done <= '0'; Ain <= '0'; Gin <= '0'; Gout <= '0'; AddSub <= '0';
		IRin <= '0'; DINout <= '0'; Rin <= "00000000"; Rout <= "00000000";one <= '0';Bin <='0';Bout <='0';zero <= '0';Cin<='0';Cout<='0';
		CASE Tstep_Q IS
			WHEN T0 => -- store DIN in IR as long as Tstep_Q = 0
				IRin <= '1';
			WHEN T1 => -- define signals in time step T1
				CASE I IS
					WHEN "000" => -- mv Rx,Ry
						Rout <= Yreg;
						Rin <= Xreg;
						Done <= '1';
					WHEN "001" => -- mvi Rx,#D
						-- data is required to be on DIN
						DINout <= '1';
						Rin <= Xreg; 
						Done <= '1';
					WHEN "010" => -- add
						Rout <= Xreg;
						Ain <= '1';
					-- WHEN "011" => -- sub
					WHEN "011" => -- dec
						Gout <= '1';
						Ain <= '1';
					WHEN "100" => -- mvnz
						Gout <= '1';
					WHEN "101" => -- swap
						Rout <= Xreg;
						Bin <= '1';
					WHEN "110" => -- slt
						Rout <= Xreg;
						Ain <= '1';
					-- WHEN OTHERS => ; 
					WHEN others =>
						Rout <= Xreg;
						Bin <= '1';
				END CASE;
			WHEN T2 => -- define signals in time step T2
				CASE I IS
					WHEN "010" => -- add
						Rout <= Yreg;
						AddSub <= '0';
						addxor <= '0';
						Gin <= '1';
					-- WHEN "011" => -- sub
					WHEN "011" => -- dec
						AddSub <= '1';
						addxor <= '0';
						Gin <= '1';
						one <= '1';
						Done <= '1';
					-- WHEN OTHERS => ;
					WHEN "100" => -- mvnz	
						if(G = "000000000") then
							Done <= '1';
						else 
							Rout <= Yreg;
							Rin <= Xreg;
							Done <= '1';
						end if;
					WHEN "101" => -- swap
						Rout <= Yreg;
						Rin <= Xreg;
					WHEN "110" => -- slt
						Rout <= Yreg;
						AddSub <= '0';
						addxor <= '1';
						Gin <= '1';
					WHEN others =>
						Bout <= '1';
						Cin <= '1';
				END CASE;
			WHEN T3 => -- define signals in time step T3
				CASE I IS
					WHEN "010" => -- add
						Gout <= '1';
						Rin <= Xreg;
						Done <= '1';
					-- WHEN "011" => -- sub
					WHEN "011" => -- sub
						Gout <= '1';
						Rin <= Xreg;
						Done <= '1';
					WHEN "101" => -- swap
						Bout <= '1';
						Rin <= Yreg;
						Done <= '1';
					WHEN "110" => -- slt
						Gout <= '1';
						Rin <= Xreg;
						Done <= '1';
					-- WHEN OTHERS => ;
					WHEN others =>
						Cout<='1';
						Rin<=Xreg;
						Done<='1';
				END CASE;
		END CASE;
	END PROCESS;

	fsmflipflops: PROCESS (Clock, Resetn, Tstep_D)
	BEGIN
			IF (Resetn = '0') THEN
				Tstep_Q <= T0;
			ELSIF (rising_edge(Clock)) THEN
				Tstep_Q <= Tstep_D;
			END IF;
	END PROCESS;	
	
	reg_0: regn PORT MAP (BusWires, Rin(0), Clock, R0);
	reg_1: regn PORT MAP (BusWires, Rin(1), Clock, R1);
	reg_2: regn PORT MAP (BusWires, Rin(2), Clock, R2);
	reg_3: regn PORT MAP (BusWires, Rin(3), Clock, R3);
	reg_4: regn PORT MAP (BusWires, Rin(4), Clock, R4);
	reg_5: regn PORT MAP (BusWires, Rin(5), Clock, R5);
	reg_6: regn PORT MAP (BusWires, Rin(6), Clock, R6);
	reg_7: regn PORT MAP (BusWires, Rin(7), Clock, R7);
	reg_A: regn PORT MAP (BusWires, Ain, Clock, A);
	reg_B: regn PORT MAP (BusWires, Bin, Clock, B);
	reg_IR: regn GENERIC MAP (n => 9) PORT MAP (DIN(8 DOWNTO 0), IRin, Clock, IR);

	--	alu
	alu: PROCESS (AddSub, A, BusWires,addxor)
	BEGIN
		IF AddSub = '0' and addxor='0'THEN
			Sum <= A + BusWires;
	   ELSIF AddSub = '1' and addxor='0'then
			Sum <= A - BusWires;
		elsE
			sum<= A xor BusWires;
		END IF;
	END PROCESS;
	shift: PROCESS (B,Yreg)
	BEGIN
		CASE Yreg IS
			when"01000000" =>
				result<=B(7 downto 0)&"0";
			when"00100000" =>
				result<=B(6 downto 0)&"00";
			when"00010000" =>
				result<=B(5 downto 0)&"000";
			when"00001000" =>
				result<=B(4 downto 0)&"0000";
			when"00000100" =>
				result<=B(3 downto 0)&"00000";
			when"00000010" =>
				result<=B(2 downto 0)&"000000";
			when"00000001" =>
				result<=B(1 downto 0)&"0000000";
			when others=>
				result<=B;
		END CASE;
	END PROCESS;
	reg_C: regn PORT MAP (result, Cin, Clock, C);
	reg_G: regn PORT MAP (Sum, Gin, Clock, G);

	-- define the internal processor bus
	Sel <= Rout & Gout & DINout & one & zero& bout &Cout;

	busmux: PROCESS (Sel, R0, R1, R2, R3, R4, R5, R6, R7, G, DIN,B,C)
	BEGIN
		IF Sel = "10000000000000" THEN
			BusWires <= R0;
   	ELSIF Sel = "01000000000000" THEN
			BusWires <= R1;
		ELSIF Sel = "00100000000000" THEN
			BusWires <= R2;
		ELSIF Sel = "00010000000000" THEN
			BusWires <= R3;
		ELSIF Sel = "00001000000000" THEN
			BusWires <= R4;
		ELSIF Sel = "00000100000000" THEN
			BusWires <= R5;
		ELSIF Sel = "00000010000000" THEN
			BusWires <= R6;
		ELSIF Sel = "00000001000000" THEN
			BusWires <= R7;
		ELSIF Sel = "00000000100000" THEN
			BusWires <= G;
		ELSIF Sel = "00000000001000" THEN
			BusWires <= "000000001";
		ELSIF Sel = "00000000000100" THEN
			BusWires <= "000000000";
		ELSIF Sel = "00000000000010" THEN
			BusWires <= B;
		ELSIF Sel = "00000000000001" THEN
			BusWires <= C;
   	ELSE 
			BusWires <= DIN;
		END IF;
	END PROCESS;	
END behavior;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY dec3to8 IS
	PORT (	W	: IN 	STD_LOGIC_VECTOR(2 DOWNTO 0);
		En	: IN	STD_LOGIC;
		Y	: OUT	STD_LOGIC_VECTOR(0 TO 7));
END dec3to8;

ARCHITECTURE Behavior OF dec3to8 IS
BEGIN
	PROCESS (W, En)
	BEGIN
		IF En = '1' THEN
			CASE W IS
				WHEN "000" => Y <= "10000000";
	   	  		WHEN "001" => Y <= "01000000";
				WHEN "010" => Y <= "00100000";
				WHEN "011" => Y <= "00010000";
				WHEN "100" => Y <= "00001000";
				WHEN "101" => Y <= "00000100";
				WHEN "110" => Y <= "00000010";
				WHEN "111" => Y <= "00000001";
			END CASE;
		ELSE 
			Y <= "00000000";
		END IF;
	END PROCESS;
END Behavior;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY regn IS
	GENERIC (n : INTEGER := 9);
	PORT (	R	: IN		STD_LOGIC_VECTOR(n-1 DOWNTO 0);
		Rin, Clock	: IN		STD_LOGIC;
		Q	: BUFFER STD_LOGIC_VECTOR(n-1 DOWNTO 0));
END regn;

ARCHITECTURE Behavior OF regn IS
BEGIN
	PROCESS (Clock)
	BEGIN
	 	IF Clock'EVENT AND Clock = '1' THEN
			IF Rin = '1' THEN
				Q <= R;
			END IF;
		END IF;
	END PROCESS;
END Behavior;
