library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity mux16_tb is
end entity mux16_tb;

architecture bench of mux16_tb is
	signal s: std_logic;
	signal a,b,o : std_logic_vector(15 downto 0);
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(0, 16));
		S <= '0';
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		S <= '0';
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(2, 16));
		B <= std_logic_vector(To_Unsigned(0, 16));
		S <= '1';
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(127, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		S <= '1';
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(511, 16));
		B <= std_logic_vector(To_Unsigned(0, 16));
		S <= '0';
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(2047, 16));
		B <= std_logic_vector(To_Unsigned(511, 16));
		S <= '1';
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16380, 16));
		B <= std_logic_vector(To_Unsigned(65535, 16));
		S <= '0';
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(0, 16));
		B <= std_logic_vector(To_Unsigned(65535, 16));
		S <= '1';
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.MUX16(MUX16ARCH) port map (a => a, b => b, sel => s, o => o);
end architecture bench;
