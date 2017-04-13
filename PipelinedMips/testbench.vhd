library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.all; 

entity testbench is 
end;

architecture test of testbench is 
	component top 
		port(clk, reset: in STD_LOGIC; 
			  writedataM, aluoutM, pcF: inout STD_LOGIC_VECTOR(31 downto 0); 
			  memwriteM: inout STD_LOGIC;
			  --Testing
			  controls: inout STD_LOGIC_VECTOR(8 downto 0);
			  instrF, instrD, srcaE, srcbE, aluoutE: inout STD_LOGIC_VECTOR(31 downto 0);
			  stallF, stallD, flushE, branchD, forwardAD, forwardBD: inout STD_LOGIC;
			  forwardAE, forwardBE: inout STD_LOGIC_VECTOR(1 downto 0));		  
	end component; 
	signal clk, reset, memwriteM: STD_LOGIC;
	signal writedataM, aluoutM, pcF, instrF, instrD, srcaE, srcbE, aluoutE: STD_LOGIC_VECTOR(31 downto 0); 
	signal controls: STD_LOGIC_VECTOR(8 downto 0);
	signal stallF, stallD, flushE, branchD, forwardAD, forwardBD: STD_LOGIC;
	signal forwardAE, forwardBE: STD_LOGIC_VECTOR(1 downto 0);	
begin 
	-- instantiate device to be tested 
	dut: top port map(clk, reset, writedataM, aluoutM, pcF, memwriteM, controls, instrF, instrD, srcaE, srcbE, aluoutE,
							stallF, stallD, flushE, branchD, forwardAD, forwardBD, forwardAE, forwardBE);
	-- Generate clock with 10 ns period 
	process begin 
		clk <= '1'; 
		wait for 5 ns; 
		clk <= '0'; 
		wait for 5 ns; 
	end process;
	
	-- Generate reset for first two clock cycles 
	process begin 
		reset <= '1'; 
		wait for 22 ns; 
		reset <= '0'; 
		wait; 
	end process;
	
	-- check that 7 gets written to address 84 at end of program 
	process (clk) begin 
		if (clk'event and clk = '0' and memwriteM = '1') then 
			if (conv_integer(aluoutM) = 84 and conv_integer (writedataM) = 7) then 
				report "Simulation succeeded"; 
			elsif (aluoutM /= 80) then 
				report "Simulation failed " & integer'image (conv_integer(aluoutM)) & " " & integer'image (conv_integer(writedataM));
			end if; 
		end if; 
	end process; 
end;
