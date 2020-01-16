library ieee;
use ieee.std_logic_1164.all;

entity not_tb is
end entity not_tb;

architecture bench of not_tb is
	signal a,o : std_logic;
begin
	process
	begin
		A <= '0';
		wait for 50 ns;
		A <= '1';
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.NOTGATE(NOTARCH) port map (a => a, o => o);
end architecture bench;
