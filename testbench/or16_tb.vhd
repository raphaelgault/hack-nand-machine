library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity or16_tb is
end entity or16_tb;

architecture bench of or16_tb is
	signal a,b,o : std_logic_vector(15 downto 0);
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(0, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(2, 16));
		B <= std_logic_vector(To_Unsigned(0, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(127, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(511, 16));
		B <= std_logic_vector(To_Unsigned(511, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(2047, 16));
		B <= std_logic_vector(To_Unsigned(511, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16380, 16));
		B <= std_logic_vector(To_Unsigned(65535, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(65535, 16));
		B <= std_logic_vector(To_Unsigned(65535, 16));
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.OR16(OR16ARCH) port map (a => a, b => b, o => o);
end architecture bench;
