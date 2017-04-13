library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity mips is -- single cycle MIPS processor 
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
end; 
architecture struct of mips is 
	component controller
		port(clk, reset, equalD, flushE: in STD_LOGIC;
			  op, funct: in  STD_LOGIC_VECTOR(5 downto 0); 
			  pcsrcD, regdstE, alusrcE, memwriteM, memtoregW: out STD_LOGIC;
			  regwriteW, regwriteM, regwriteE: inout STD_LOGIC;
			  memtoregE, memtoregM, branchD, jumpD: inout STD_LOGIC;
			  alucontrolE: out STD_LOGIC_VECTOR(2 downto 0);
			  --Testing
			  controls: inout STD_LOGIC_VECTOR(8 downto 0));
	end component; 
	component datapath 
		port(clk, reset: in STD_LOGIC; 
			  jumpD, pcsrcD, regdstE, alusrcE, memtoregW: in STD_LOGIC;
			  regwriteW: inout STD_LOGIC;
			  stallF, stallD, forwardAD, forwardBD, flushE: in STD_LOGIC;
			  forwardAE, forwardBE: in STD_LOGIC_VECTOR(1 downto 0);
			  alucontrolE: in STD_LOGIC_VECTOR(2 downto 0);
			  readdataM, instrF: in STD_LOGIC_VECTOR(31 downto 0);
			  equalD: out STD_LOGIC;
			  rsD, rtD, rsE, rtE, writeregE, writeregM: inout STD_LOGIC_VECTOR(4 downto 0);
			  writedataM: out STD_LOGIC_VECTOR(31 downto 0);
			  pcF, instrD, aluoutM: inout STD_LOGIC_VECTOR(31 downto 0);
			  writeregW: inout STD_LOGIC_VECTOR(4 downto 0);
			  --Testing
			  srcaE, srcbE, aluoutE: inout STD_LOGIC_VECTOR(31 downto 0));
	end component;
	signal jumpD, pcsrcD, regdstE, alusrcE, memtoregW, equalD: STD_LOGIC;
	signal alucontrolE: STD_LOGIC_VECTOR(2 downto 0);
begin 
	cont: controller port map(clk, reset, equalD, flushE, instrD(31 downto 26), instrD(5 downto 0), 
									  pcsrcD, regdstE, alusrcE, memwriteM, memtoregW, regwriteW, 
									  regwriteM, regwriteE, memtoregE, memtoregM, branchD, jumpD, alucontrolE, controls); 
	dp: datapath port map(clk, reset, jumpD, pcsrcD, regdstE, alusrcE, memtoregW, regwriteW,
								 stallF, stallD, forwardAD, forwardBD, flushE, forwardAE, forwardBE, 
								 alucontrolE, readdataM, instrF, equalD, rsD, rtD, rsE, rtE, 
								 writeregE, writeregM, writedataM, pcF, instrD, aluoutM, writeregW,
								 srcaE, srcbE, aluoutE); 
end;