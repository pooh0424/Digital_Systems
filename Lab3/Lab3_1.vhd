entity Lab3_1 is
	port (
		switch: in bit_vector(1 downto 0);
		sevensegement: out bit_vector(0 to 6)
	);
end  Lab3_1;
architecture behavor of Lab3_1 is
begin
	with switch select
		sevensegement <= "1000010"when "00",
		"0110000"when "01",
		"0000001"when "10",
		"1111111"when others;
		
end behavor ;  
