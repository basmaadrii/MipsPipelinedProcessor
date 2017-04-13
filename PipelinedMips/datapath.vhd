library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_ARITH.all; 

entity datapath is
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
end;

architecture struct of datapath is 
	component alu 
		port(a, b: in  STD_LOGIC_VECTOR(31 downto 0);
			  alucontrol: in  STD_LOGIC_VECTOR(2 downto 0); 
			  result: inout STD_LOGIC_VECTOR(31 downto 0)); 
	end component; 
	component regfile 
		port(clk: in  STD_LOGIC; 
			  we3: in  STD_LOGIC; 
			  ra1, ra2, wa3: in  STD_LOGIC_VECTOR(4 downto 0); 
			  wd3: in  STD_LOGIC_VECTOR(31 downto 0); 
			  rd1, rd2: out STD_LOGIC_VECTOR(31 downto 0)); 
	end component; 
	component adder 
		port(a, b: in  STD_LOGIC_VECTOR(31 downto 0); 
			  y: out STD_LOGIC_VECTOR(31 downto 0)); 
	end component; 
	component sl2 
		port(a: in  STD_LOGIC_VECTOR(31 downto 0); 
			  y: out STD_LOGIC_VECTOR(31 downto 0)); 
	end component; 
	component signext 
		port(a: in  STD_LOGIC_VECTOR(15 downto 0); 
			  y: out STD_LOGIC_VECTOR(31 downto 0)); 
	end component; 
	component flopr 
		generic(width: integer); 
		port(clk, reset, enable, clear: in  STD_LOGIC; 
			  d: in  STD_LOGIC_VECTOR(width-1 downto 0); 
			  q: out STD_LOGIC_VECTOR(width-1 downto 0)); 
	end component;
	component mux2 
		generic(width: integer); 
		port(d0, d1: in  STD_LOGIC_VECTOR(width-1 downto 0); 
			  s: in  STD_LOGIC; 
			  y: out STD_LOGIC_VECTOR(width-1 downto 0));
	end component;
	component zeroext
		port(a: in  STD_LOGIC_VECTOR(15 downto 0); 
			  y: out STD_LOGIC_VECTOR(31 downto 0)); 
	end component;
	component mux4
		generic(width: integer);
		port(d0, d1, d2, d3: in STD_LOGIC_VECTOR(width-1 downto 0); 
			  s: in  STD_LOGIC_VECTOR(1 downto 0); 
			  y: out STD_LOGIC_VECTOR(width-1 downto 0));
	end component;
	component bitmux 
		port(d0, d1: in  STD_LOGIC; 
			  s: in  STD_LOGIC; 
			  y: out STD_LOGIC);
	end component;
	component equator
		port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
			  equal: out STD_LOGIC);
	end component;	
	signal rdD, rdE: STD_LOGIC_VECTOR(4 downto 0);
	signal pcnext, pcplus4F, pcplus4D, pcbranchD, pcjumpD, pcnextbr: STD_LOGIC_VECTOR(31 downto 0);
	signal rd1D, rd1E, rd2D, rd2E, A, B: STD_LOGIC_VECTOR(31 downto 0);
	signal signimmD, signimmE, signimmshD: STD_LOGIC_VECTOR(31 downto 0);
	signal aluoutW, writedataE: STD_LOGIC_VECTOR(31 downto 0);
	signal readdataW, resultW: STD_LOGIC_VECTOR(31 downto 0);
begin 
	--Fetch
	regF: flopr generic map(32) port map(clk, reset, (NOT stallF), '0', pcnext, pcF);
	adder1: adder port map(pcF, x"00000004", pcplus4F);
	
	--Decode
	regD1: flopr generic map(32) port map(clk, reset, (NOT stallD), pcsrcD, instrF, instrD);
	regD2: flopr generic map(32) port map(clk, reset, (NOT stallD), pcsrcD, pcplus4F, pcplus4D);
	rf: regfile port map(clk, regwriteW, instrD(25 downto 21), instrD(20 downto 16), writeregW, resultW, rd1D, rd2D);
	rsD <= instrD(25 downto 21);
	rtD <= instrD(20 downto 16);
	rdD <= instrD(15 downto 11);
	sext: signext port map(instrD(15 downto 0), signimmD);
	shimm: sl2 port map(signimmD, signimmshD);
	adder2: adder port map(signimmshD, pcplus4D, pcbranchD);
	muxA: mux2 generic map(32) port map(rd1D, aluoutM, forwardAD, A);
	muxB: mux2 generic map(32) port map(rd2D, aluoutM, forwardBD, B);
	eq: equator port map(A, B, equalD);
	pcjumpD <= pcplus4D(31 downto 28) & instrD(25 downto 0) & "00";
	
	--Execute
	regE1: flopr generic map(32) port map(clk, reset, '1', flushE, rd1D, rd1E);
	regE2: flopr generic map(32) port map(clk, reset, '1', flushE, rd2D, rd2E);
	regE3: flopr generic map(5) port map(clk, reset, '1', flushE, rsD, rsE);
	regE4: flopr generic map(5) port map(clk, reset, '1', flushE, rtD, rtE);
	regE5: flopr generic map(5) port map(clk, reset, '1', flushE, rdD, rdE);
	regE6: flopr generic map(32) port map(clk, reset, '1', flushE, signimmD, signimmE);
	regmux: mux2 generic map(5) port map(rtE, rdE, regdstE, writeregE);
	srcamux: mux4 generic map(32) port map(rd1E, resultW, aluoutM, x"00000000", forwardAE, srcAE);
	srcbmux1: mux4 generic map(32) port map(rd2E, resultW, aluoutM, x"00000000", forwardBE, writedataE);
	srcbmux2: mux2 generic map(32) port map(writedataE, signimmE, alusrcE, srcBE);
	mainalu: alu port map(srcAE, srcBE, alucontrolE, aluoutE);
	
	--Memory
	regM1: flopr generic map(32) port map(clk, reset, '1', '0', aluoutE, aluoutM);
	regM2: flopr generic map(32) port map(clk, reset, '1', '0', writedataE, writedataM);
	regM3: flopr generic map(5) port map(clk, reset, '1', '0', writeregE, writeregM);
	
	--Writeback
	regW1: flopr generic map(32) port map(clk, reset, '1', '0', readdataM, readdataW);
	regW2: flopr generic map(32) port map(clk, reset, '1', '0', aluoutM, aluoutW);
	regW3: flopr generic map(5) port map(clk, reset, '1', '0', writeregM, writeregW);
	resmux: mux2 generic map(32) port map(readdataW, aluoutW, memtoregW, resultW);
	pcmux1: mux2 generic map(32) port map(pcplus4F, pcbranchD, pcsrcD, pcnextbr);
	pcmux2: mux2 generic map(32) port map(pcnextbr, pcjumpD, jumpD, pcnext);
end;
