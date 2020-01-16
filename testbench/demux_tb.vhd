library ieee;
use ieee.std_logic_1164.all;

entity demux_tb is
end entity demux_tb;

architecture bench of demux_tb is
	signal a, b, s, i : std_logic;
begin
	process
	begin
		I <= '0';
		S <= '0';
		wait for 50 ns;
		I <= '1';
		S <= '0';
		wait for 50 ns;
		I <= '0';
		S <= '1';
		wait for 50 ns;
		I <= '1';
		S <= '1';
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.DEMUX(DEMUXARCH) port map (i => i, sel => s, a => a, b => b);
end architecture bench;
