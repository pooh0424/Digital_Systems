entity Lab2_1 is
	port (
		switch: in bit_vector(3 downto 0);
		sevensegement: out bit_vector(0 to 6)
	);
end  Lab2_1;
architecture behavor of Lab2_1 is
begin
	with switch select
		sevensegement <= "0000001"when "0000",
		"1001111"when "0001",
		"0010010"when "0010",
		"0000110"when "0011",
		"1001100"when "0100",
		"0100100"when "0101",
		"0100000"when "0110",
		"0001111"when "0111",
		"0000000"when "1000",
		"0001100"when "1001",
		"0001000"when "1010",
		"1100000"when "1011",
		"0110001"when "1100",
		"1000010"when "1101",
		"0110000"when "1110",
		"0111000"when "1111",
		"0000000"when others;
		
end behavor ;  
