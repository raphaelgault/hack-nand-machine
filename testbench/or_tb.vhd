library ieee;
use ieee.std_logic_1164.all;

entity or_tb is
end entity or_tb;

architecture bench of or_tb is
	signal a, b, s, o : std_logic;
begin
	process
	begin
		A <= '0';
		B <= '0';
		wait for 50 ns;
		A <= '0';
		B <= '1';
		wait for 50 ns;
		A <= '1';
		B <= '0';
		wait for 50 ns;
		A <= '1';
		B <= '1';
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.ORGATE(ORARCH) port map (a => a, b => b, o => o);
end architecture bench;
