library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity mux4way16_tb is
end entity mux4way16_tb;

architecture bench of mux4way16_tb is
	signal s: std_logic_vector(1 downto 0);
	signal a,b,c,d,o : std_logic_vector(15 downto 0);
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		S <= "00";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		S <= "01";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		S <= "10";
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(2, 16));
		C <= std_logic_vector(To_Unsigned(3, 16));
		D <= std_logic_vector(To_Unsigned(4, 16));
		S <= "11";
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.MUX4WAY16(MUX4WAY16ARCH) port map (a => a,
				  			   b => b,
							   c => c,
							   d => d,
							   sel => s,
							   o => o);
end architecture bench;
