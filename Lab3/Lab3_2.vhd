entity Lab3_2 is
	port (
		switch: in bit_vector(1 downto 0);
		sevensegement0: out bit_vector(0 to 6);
		sevensegement1: out bit_vector(0 to 6);
		sevensegement2: out bit_vector(0 to 6);
		sevensegement3: out bit_vector(0 to 6)
	);
end  Lab3_2;
architecture behavor of Lab3_2 is
begin
	with switch select
		sevensegement3 <= "1000010"when "00",
		"1111111"when others;
	with switch select
		sevensegement2 <= "0110000"when "01",
		"1111111"when others;
	with switch select
		sevensegement1 <= "0000001"when "10",
		"1111111"when others;
	sevensegement0 <= "1111111";
		
end behavor ;  
