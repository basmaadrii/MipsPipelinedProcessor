library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_ARITH.all; 

entity floprb is -- flip-flop with synchronous reset 
	port(clk, reset, clear: in STD_LOGIC;
		  d: in STD_LOGIC; 
		  q: out STD_LOGIC); 
end;

architecture asynchronous of floprb is 
begin 
	process(clk, reset) begin 
		if reset = '1' OR clear = '1' then 
			q <= '0'; 
		elsif clk'event and clk = '1' then 
			q <= d; 
		end if; 
	end process; 
end;
