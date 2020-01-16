library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity inc16_tb is
end entity inc16_tb;

architecture bench of inc16_tb is
	signal a, o : std_logic_vector(15 downto 0);
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(0, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16#FFFE#, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(4, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(31, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(5, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16#FFFC#, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(3, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16#FFFF#, 16));
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.INC16(INC16_ARCH) port map (a => a,
						    o => o);
end architecture bench;
