library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb is
	end tb;

architecture tbarc of tb is

	signal CLK, RST: STD_LOGIC:= '0';
	signal Q : STD_LOGIC_VECTOR(2 downto 0);

BEGIN
	UUT: entity work.up_counter port map(CLK=>CLK, RST=>RST, Q=>Q);
	process
	begin
		CLK<= '0';
		wait for 5 ns;
		CLK<= '1';
		wait for 5 ns;
	end process;

	process
	begin
		RST<='1';
		wait for 10 ns;
		RST<= '0';
		wait for 80 ns;
	end process;
    
end tbarc;

