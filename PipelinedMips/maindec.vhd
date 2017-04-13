library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity maindec is -- main control decoder 
	port(op: in  STD_LOGIC_VECTOR(5 downto 0); 
		  memtoregD, memwriteD: out STD_LOGIC; 
		  branchD, alusrcD, jumpD: out STD_LOGIC;
		  regdstD, regwriteD: out STD_LOGIC; 
		  aluop: out STD_LOGIC_VECTOR(1 downto 0);
		  --Testing
		  controls: inout STD_LOGIC_VECTOR(8 downto 0));
end;

architecture behave of maindec is 
begin 
	process(op) begin 
		case op is                     --876543210
			when "000000" => controls <= "011000010"; -- Rtyp 
			when "100011" => controls <= "010100100"; -- LW 
			when "101011" => controls <= "000101000"; -- SW 
			when "000100" => controls <= "000010001"; -- BEQ 
			when "001000" => controls <= "010100000"; -- ADDI 
			when "000010" => controls <= "100000000"; -- J 
			when others   => controls <= "---------"; -- illegal op 
		end case; 
	end process;
	jumpD <= controls(8);
	regwriteD <= controls(7); 
	regdstD <= controls(6); 
	alusrcD <= controls(5);
	branchD <= controls(4); 
	memwriteD <= controls(3); 
	memtoregD <= controls(2); 
	aluop <= controls(1 downto 0); 
end;

