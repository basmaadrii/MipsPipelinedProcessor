library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.all; 

entity top is -- top-level design for testing 
	port(clk, reset: in STD_LOGIC; 
		  writedataM, aluoutM, pcF: inout STD_LOGIC_VECTOR(31 downto 0); 
		  memwriteM: inout STD_LOGIC;
		  --Testing
		  controls: inout STD_LOGIC_VECTOR(8 downto 0);
		  instrF, instrD, srcaE, srcbE, aluoutE: inout STD_LOGIC_VECTOR(31 downto 0);
		  stallF, stallD, flushE, branchD, forwardAD, forwardBD: inout STD_LOGIC;
		  forwardAE, forwardBE: inout STD_LOGIC_VECTOR(1 downto 0));		  
end; 

architecture test of top is 
	component mips 
		port(clk, reset: in  STD_LOGIC; 
			  stallF, stallD, ForwardAD, forwardBD, flushE: in STD_LOGIC;
			  forwardAE, forwardBE: in STD_LOGIC_VECTOR(1 downto 0);
			  instrF, readdataM: in STD_LOGIC_VECTOR(31 downto 0);
			  branchD, memtoregE, memtoregM, regwriteE: inout STD_LOGIC;
			  regwriteM, regwriteW: inout STD_LOGIC;
			  rsD, rtD, rsE, rtE: inout STD_LOGIC_VECTOR(4 downto 0);
			  writeregE, writeregM, writeregW: inout STD_LOGIC_VECTOR(4 downto 0);
			  pcF, aluoutM: inout STD_LOGIC_VECTOR(31 downto 0);
			  writedataM: out STD_LOGIC_VECTOR(31 downto 0);
			  memwriteM: inout STD_LOGIC;
			  --Testing
			  controls: inout STD_LOGIC_VECTOR(8 downto 0);
			  instrD, srcaE, srcbE, aluoutE: inout STD_LOGIC_VECTOR(31 downto 0));
	end component; 
	component imem 
		port(a:  in STD_LOGIC_VECTOR(5 downto 0); 
			  rd: out STD_LOGIC_VECTOR(31 downto 0)); 
	end component; 
	component dmem 
		port(clk, we: in STD_LOGIC; 
			  a, wd:   in STD_LOGIC_VECTOR(31 downto 0); 
			  rd:      out STD_LOGIC_VECTOR(31 downto 0)); 
	end component; 
	component hazardunit
		port(branchD, memtoregE, memtoregM, regwriteE, regwriteM, regwriteW: in STD_LOGIC;
			  stallF, stallD, forwardAD, forwardBD, flushE: out STD_LOGIC;
			  forwardAE, forwardBE: out STD_LOGIC_VECTOR(1 downto 0);
			  rsD, rtD, rsE, rtE, writeregE, writeregM, writeregW: in STD_LOGIC_VECTOR(4 downto 0));	  
	end component;
	signal memtoregE, memtoregM: STD_LOGIC;
	signal regwriteE, regwriteM, regwriteW: STD_LOGIC;
	signal rsD, rtD, rsE, rtE: STD_LOGIC_VECTOR(4 downto 0);
	signal writeregE, writeregM, writeregW: STD_LOGIC_VECTOR(4 downto 0);
	signal readdataM: STD_LOGIC_VECTOR(31 downto 0);
begin 
	-- instantiate processor and memories 
	mips1: mips port map(clk, reset, stallF, stallD, forwardAD, forwardBD,
								flushE, forwardAE, forwardBE, instrF, readdataM,
								branchD, memtoregE, memtoregM, regwriteE, regwriteM, regwriteW,
								rsD, rtD, rsE, rtE, writeregE, writeregM, 
								writeregW, pcF, aluoutM, writedataM, memwriteM, controls, instrD, srcaE, srcbE, aluoutE); 
	imem1: imem port map(pcF (7 downto 2), instrF); 
	dmem1: dmem port map(clk, memwriteM, aluoutM, writedataM, readdataM);
	hu: hazardunit port map(branchD, memtoregE, memtoregM, regwriteE, regwriteM, regwriteW,
									stallF, stallD, forwardAD, forwardBD, flushE,forwardAE,
									forwardBE, rsD, rtD, rsE, rtE, writeregE, writeregM,
									writeregW);
end;
