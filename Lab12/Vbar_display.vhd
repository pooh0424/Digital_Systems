Library IEEE;
use IEEE.STD_Logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY Vbar_display IS   
	PORT( video_on:IN std_logic;
          r,c: IN INTEGER RANGE 0 TO 799;
		  Rout, Gout, Bout: out std_logic_vector(3 downto 0));
END Vbar_display;

ARCHITECTURE arch OF Vbar_display IS
begin
process(video_on,r,c) 
begin
If video_on='1' then         
    IF (r>0 AND r<479)and (c>=0 and c<=214) THEN
	   Rout<="1111"; Gout<="0000"; Bout<="0000";
	 elsif (r>0 AND r<479) and (c>214 and c<=427) THEN
		Rout<="1111"; Gout<="1111"; Bout<="1111";
	 elsif (r>0 AND r<479) and (c>427 and c<640)  THEN
		Rout<="0000"; Gout<="0000"; Bout<="1111";
    else 
       Rout<="0000"; Gout<="0000"; Bout<="0000";
    end if;
	 
else                            
    Rout<="0000"; Gout<="0000"; Bout<="0000";
end if;
end process;

END arch;
