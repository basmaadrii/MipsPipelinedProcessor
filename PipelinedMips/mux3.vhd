library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity mux3 is -- three-input multiplexer 
	generic(width: integer); 
	port(d0, d1, d2: in  STD_LOGIC_VECTOR(width-1 downto 0); 
		  s: in  STD_LOGIC_VECTOR(1 downto 0); 
		  y: out STD_LOGIC_VECTOR(width-1 downto 0)); 
end;

architecture behave of mux3 is 
begin 
	y <= d0 when s = "00" else d1 when s = "01" else d2; 
end;
