library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity or8way_tb is
end entity or8way_tb;

architecture bench of or8way_tb is
	signal a : std_logic_vector(7 downto 0);
	signal o : std_logic;
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(0, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(2, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(4, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(8, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(32, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(64, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(128, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(45, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(127, 8));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(255, 8));
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.OR8WAY(OR8WAYARCH) port map (i => a, o => o);
end architecture bench;
