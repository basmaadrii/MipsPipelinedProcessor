library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all; 

entity alu is
	port(a, b: in STD_LOGIC_VECTOR (31 downto 0);
		  alucontrol: in  STD_LOGIC_VECTOR(2 downto 0);
		  result: inout STD_LOGIC_VECTOR(31 downto 0));
end alu;

architecture Behavioral of alu is
begin
	result <= CONV_STD_LOGIC_VECTOR((CONV_INTEGER(a) + CONV_INTEGER(b)),32) when alucontrol = "010" else
				 CONV_STD_LOGIC_VECTOR((CONV_INTEGER(a) - CONV_INTEGER(b)),32) when alucontrol = "110" else
				 a AND b when alucontrol = "000" else 
				 a OR b when alucontrol = "001" else
				 a AND (NOT b) when alucontrol = "100" else
				 a XOR b when alucontrol = "011" else
				 a OR (NOT b) when alucontrol = "101" else
				 X"00000001" when CONV_INTEGER(a) < CONV_INTEGER(b) and alucontrol = "111" else
				 X"00000000" when CONV_INTEGER(a) >=CONV_INTEGER(b) and alucontrol = "111";
end Behavioral;