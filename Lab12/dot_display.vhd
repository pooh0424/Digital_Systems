Library IEEE;
use IEEE.STD_Logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY dot_display IS   
	PORT( video_on:IN std_logic;
         r,c: IN INTEGER RANGE 0 TO 799;
			posr,posc:IN INTEGER RANGE 0 TO 799;
		  Rout, Gout, Bout: out std_logic_vector(3 downto 0));
END dot_display;

ARCHITECTURE arch OF dot_display IS
begin
process(video_on,r,c) 
begin
If video_on='1' then         -- ] w   P C   d   H   ܯS w   m
	IF (r>=posr-10 AND r<posr+10)and (c>=posc-10 and c<posc+10) THEN
	   Rout<="1111"; Gout<="1111"; Bout<="1111";
    else 
       Rout<="0000"; Gout<="0000"; Bout<="0000";
    end if;
	 
else                            --video time d   H ~        
    Rout<="0000"; Gout<="0000"; Bout<="0000";
end if;
end process;

END arch;
