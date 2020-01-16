library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity demux4way_tb is
end entity demux4way_tb;

architecture bench of demux4way_tb is
	signal s: std_logic_vector(1 downto 0);
	signal a,b,c,d,i : std_logic;
begin
	process
	begin
		I <= '1';
		S <= "00";
		wait for 50 ns;
		I <= '1';
		S <= "01";
		wait for 50 ns;
		I <= '1';
		S <= "10";
		wait for 50 ns;
		I <= '1';
		S <= "11";
		wait for 50 ns;
		I <= '0';
		S <= "00";
		wait for 50 ns;
		I <= '0';
		S <= "01";
		wait for 50 ns;
		I <= '0';
		S <= "10";
		wait for 50 ns;
		I <= '0';
		S <= "11";
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.DEMUX4WAY(DEMUX4WAYARCH) port map (i => i,
							   sel => s,
				  			   a => a,
							   b => b,
							   c => c,
							   d => d);
end architecture bench;
