library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity demux8way_tb is
end entity demux8way_tb;

architecture bench of demux8way_tb is
	signal s: std_logic_vector(2 downto 0);
	signal a,b,c,d,e,f,g,h,i : std_logic;
begin
	process
	begin
		I <= '1';
		S <= "000";
		wait for 50 ns;
		I <= '1';
		S <= "001";
		wait for 50 ns;
		I <= '1';
		S <= "010";
		wait for 50 ns;
		I <= '1';
		S <= "011";
		wait for 50 ns;
		I <= '1';
		S <= "100";
		wait for 50 ns;
		I <= '1';
		S <= "101";
		wait for 50 ns;
		I <= '1';
		S <= "110";
		wait for 50 ns;
		I <= '1';
		S <= "111";
		wait for 50 ns;
		I <= '0';
		S <= "000";
		wait for 50 ns;
		I <= '0';
		S <= "001";
		wait for 50 ns;
		I <= '0';
		S <= "010";
		wait for 50 ns;
		I <= '0';
		S <= "011";
		wait for 50 ns;
		I <= '0';
		S <= "100";
		wait for 50 ns;
		I <= '0';
		S <= "101";
		wait for 50 ns;
		I <= '0';
		S <= "110";
		wait for 50 ns;
		I <= '0';
		S <= "111";
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.DEMUX8WAY(DEMUX8WAYARCH) port map (i => i,
							   sel => s,
				  			   a => a,
							   b => b,
							   c => c,
							   d => d,
				  			   e => e,
							   f => f,
							   g => g,
							   h => h);
end architecture bench;
