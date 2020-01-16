library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end entity mux_tb;

architecture bench of mux_tb is
	signal a, b, s, o : std_logic;
begin
	process
	begin
		A <= '0';
		B <= '0';
		S <= '0';
		wait for 50 ns;
		A <= '0';
		B <= '1';
		S <= '0';
		wait for 50 ns;
		A <= '1';
		B <= '0';
		S <= '0';
		wait for 50 ns;
		A <= '0';
		B <= '1';
		S <= '1';
		wait for 50 ns;
		A <= '1';
		B <= '0';
		S <= '1';
		wait for 50 ns;
		A <= '1';
		B <= '1';
		S <= '1';
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.MUX(MUXARCH) port map (a => a, b => b, sel => s, o => o);
end architecture bench;
