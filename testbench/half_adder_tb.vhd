library ieee;
use ieee.std_logic_1164.all;

entity half_adder_tb is
end entity half_adder_tb;

architecture bench of half_adder_tb is
	signal a, b, s, c : std_logic;
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
	E1: entity WORK.HALF_ADDER(HALF_ADDER_ARCH) port map (a => a, b => b, carry => c, sum => s);
end architecture bench;
