library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity controller is
	port(clk, reset, equalD, flushE: in STD_LOGIC;
		  op, funct: in  STD_LOGIC_VECTOR(5 downto 0); 
		  pcsrcD, regdstE, alusrcE, memwriteM, memtoregW: out STD_LOGIC;
		  regwriteW, regwriteM, regwriteE: inout STD_LOGIC;
		  memtoregE, memtoregM, branchD, jumpD: inout STD_LOGIC;
		  alucontrolE: out STD_LOGIC_VECTOR(2 downto 0);
		  --Testing
		  controls: inout STD_LOGIC_VECTOR(8 downto 0));
end;
architecture struct of controller is 
	component maindec 
		port(op: in  STD_LOGIC_VECTOR(5 downto 0); 
			  memtoregD, memwriteD: out STD_LOGIC; 
			  branchD, alusrcD, jumpD: out STD_LOGIC; 
			  regdstD, regwriteD: out STD_LOGIC;
			  aluop: out STD_LOGIC_VECTOR(1 downto 0);
			  --Testing
			  controls: inout STD_LOGIC_VECTOR(8 downto 0));
   end component; 
	component aludec 
		port(funct: in  STD_LOGIC_VECTOR(5 downto 0); 
			  aluop: in  STD_LOGIC_VECTOR(1 downto 0); 
			  alucontrolD: out STD_LOGIC_VECTOR(2 downto 0));
	end component;
	component flopr 
		generic(width: integer); 
		port(clk, reset, enable, clear: in  STD_LOGIC; 
			  d: in  STD_LOGIC_VECTOR(width-1 downto 0); 
			  q: out STD_LOGIC_VECTOR(width-1 downto 0)); 
	end component;
	component floprb
		port(clk, reset, clear: in  STD_LOGIC; 
			  d: in  STD_LOGIC; 
			  q: out STD_LOGIC);
	end component;
	signal aluop:  STD_LOGIC_VECTOR(1 downto 0); 
	signal memtoregD, memwriteD, regdstD, regwriteD: STD_LOGIC;
	signal alucontrolD: STD_LOGIC_VECTOR(2 downto 0);
	signal memwriteE, alusrcD: STD_LOGIC;
begin
	md: maindec port map(op, memtoregD, memwriteD, branchD, alusrcD, jumpD, regdstD, regwriteD, aluop, controls);	
	ad: aludec port map(funct, aluop, alucontrolD);
	regE1: floprb port map(clk, reset, flushE, regwriteD, regwriteE);
	regE2: floprb port map(clk, reset, flushE, memtoregD, memtoregE);
	regE3: floprb port map(clk, reset, flushE, memWriteD, memWriteE);
	regE4: flopr generic map(3) port map(clk, reset, '1', flushE, AlucontrolD, AlucontrolE);
	regE5: floprb port map(clk, reset, flushE, AlusrcD, AlusrcE);
	regE6: floprb port map(clk, reset, flushE, regdstD, regdstE);
	
	regM1: floprb port map(clk, reset, '0', regwriteE, regwriteM);
	regM2: floprb port map(clk, reset, '0', memtoregE, memtoregM);
	regM3: floprb port map(clk, reset, '0', memWriteE, memWriteM);
	
	regW1: floprb port map(clk, reset, '0', regwriteE, regwriteM);
	regW2: floprb port map(clk, reset, '0', memtoregM, memtoregW);
	
	pcsrcD <= branchD and equalD;
end;
