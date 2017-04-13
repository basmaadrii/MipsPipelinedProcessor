library IEEE;
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.all; 
use ieee.std_logic_unsigned.all;

entity hazardunit is
	port(branchD, memtoregE, memtoregM, regwriteE, regwriteM, regwriteW: in STD_LOGIC;
		  stallF, stallD, forwardAD, forwardBD, flushE: out STD_LOGIC;
		  forwardAE, forwardBE: out STD_LOGIC_VECTOR(1 downto 0);
		  rsD, rtD, rsE, rtE, writeregE, writeregM, writeregW: in STD_LOGIC_VECTOR(4 downto 0));	  
end hazardunit;

architecture Behavioral of hazardunit is
signal lwstall, branchstall: STD_LOGIC;
begin
	process(rsD, rtD, writeregE, regwriteE, memtoregE, branchD) begin
		--RAW hazard
		if rsE /= x"00000" AND rsE = writeregM AND regwriteM = '1' then
			forwardAE <= "10";
		elsif rsE /= x"00000" AND rsE = writeregW AND regwriteW = '1' then
			forwardAE <= "01";
		else
			forwardAE <= "00";
		end if;
		if rtE /= x"00000" AND rtE = writeregM AND regwriteM = '1' then
			forwardBE <= "10";
		elsif rtE /= x"00000" AND rtE = writeregW AND regwriteW = '1' then
			forwardBE <= "01";
		else
			forwardBE <= "00";
		end if;
		
		--lw hazard
		if (rsD = rtE OR rtD = rtE) AND memtoregE = '1' then
			lwstall <= '1';
		else
			lwstall <= '0';
		end if;
		
		--beq hazard
		if rsD /= x"00000" AND rsD = writeregM AND regwriteM = '1' then
			forwardAD <= '1';
		else
			forwardAD <= '0';
		end if;	
		if rtD /= x"00000" AND rtD = writeregM AND regwriteM = '1' then
			forwardBD <= '1';
		else
			forwardBD <= '0';
		end if;	
		if (branchD = '1' AND regwriteE = '1' AND (rsD = writeregE OR rtD = writeregE)) OR 
			(branchD = '1' AND memtoregM = '1' AND (rsD = writeregM OR rtD = writeregM)) then
			branchstall <= '1';
		else
			branchstall <= '0';
		end if;
		
		stallF <= lwstall OR branchstall;
		stallD <= lwstall OR branchstall;
		flushE <= lwstall OR branchstall;
	end process;
end Behavioral;

