library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end entity full_adder_tb;

architecture bench of full_adder_tb is
	signal a, b, c, s, carry : std_logic;
begin
	process
	begin
		A <= '0';
		B <= '0';
		C <= '0';
		wait for 50 ns;
		A <= '0';
		B <= '0';
		C <= '1';
		wait for 50 ns;
		A <= '0';
		B <= '1';
		C <= '0';
		wait for 50 ns;
		A <= '0';
		B <= '1';
		C <= '1';
		wait for 50 ns;
		A <= '1';
		B <= '0';
		C <= '0';
		wait for 50 ns;
		A <= '1';
		B <= '0';
		C <= '1';
		wait for 50 ns;
		A <= '1';
		B <= '1';
		C <= '0';
		wait for 50 ns;
		A <= '1';
		B <= '1';
		C <= '1';
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a,
				   			      b => b,
							      c => c,
							      carry => carry,
							      sum => s);
end architecture bench;
