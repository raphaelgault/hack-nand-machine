library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity not16_tb is
end entity not16_tb;

architecture bench of not16_tb is
	signal a,o : std_logic_vector(15 downto 0);
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(0, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(2, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(127, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(511, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(2047, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16380, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(65535, 16));
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.NOT16(NOT16ARCH) port map (a => a, o => o);
end architecture bench;
