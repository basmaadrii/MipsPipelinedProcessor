library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity aludec is -- ALU control decoder 
	port(funct: in  STD_LOGIC_VECTOR(5 downto 0); 
		  aluop: in  STD_LOGIC_VECTOR(1 downto 0); 
		  alucontrolD: out STD_LOGIC_VECTOR(2 downto 0)); 
end;
	
architecture behave of aludec is 
begin 
	process(aluop, funct)begin 
		case aluop is 
			when "00" => alucontrolD <= "010"; -- add (for 1b/sb/addi) 
			when "01" => alucontrolD <= "110"; -- sub (for beq) 
			when "10" => case funct is -- R-type instructions 
									when "100000" => alucontrolD <= "010"; -- add 
									when "100010" => alucontrolD <= "110"; -- sub
									when "100100" => alucontrolD <= "000"; -- and 
									when "100101" => alucontrolD <= "001"; -- or
									when "101010" => alucontrolD <= "111"; --  slt 
									when others   => alucontrolD <= "---"; -- ??? 
								end case;
			when others => alucontrolD <= "---";
		end case; 
	end process;
end;