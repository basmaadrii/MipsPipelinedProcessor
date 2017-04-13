library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity equator is
	port(a, b: in STD_LOGIC_VECTOR(31 downto 0);
		  equal: out STD_LOGIC);
end equator;

architecture Behavioral of equator is
begin
	process(a, b) begin
		if a = b then
			equal <= '1';
		else
			equal <= '0';
		end if;
	end process;
end Behavioral;

