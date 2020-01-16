library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity mux8way16_tb is
end entity mux8way16_tb;

architecture bench of mux8way16_tb is
	signal s: std_logic_vector(2 downto 0);
	signal a,b,c,d,e,f,g,h,o : std_logic_vector(15 downto 0);
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "000";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "001";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "010";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "011";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "100";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "101";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "110";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		E <= std_logic_vector(To_Unsigned(5, 16));
		F <= std_logic_vector(To_Unsigned(6, 16));
		G <= std_logic_vector(To_Unsigned(7, 16));
		H <= std_logic_vector(To_Unsigned(8, 16));
		S <= "111";
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.MUX8WAY16(MUX8WAY16ARCH) port map (a => a,
				  			   b => b,
							   c => c,
							   d => d,
				  			   e => e,
							   f => f,
							   g => g,
							   h => h,
							   sel => s,
							   o => o);
end architecture bench;
