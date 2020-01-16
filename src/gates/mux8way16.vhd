library ieee;
use ieee.std_logic_1164.all;

entity MUX8WAY16 is
	port(
		a: in std_logic_vector(15 downto 0);
		b: in std_logic_vector(15 downto 0);
		c: in std_logic_vector(15 downto 0);
		d: in std_logic_vector(15 downto 0);
		e: in std_logic_vector(15 downto 0);
		f: in std_logic_vector(15 downto 0);
		g: in std_logic_vector(15 downto 0);
		h: in std_logic_vector(15 downto 0);
		sel: in std_logic_vector(2 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity MUX8WAY16;

architecture MUX8WAY16ARCH of MUX8WAY16 is
	signal sel2: std_logic_vector(1 downto 0);
	signal o1, o2, o3: std_logic_vector(15 downto 0);
begin
	sel2(1) <= sel(1);
	sel2(0) <= sel(0);
	M1: entity WORK.MUX4WAY16(MUX4WAY16ARCH) port map (a => a,
				  			   b => b,
							   c => c,
							   d => d,
							   sel => sel2,
							   o => o1);
	M2: entity WORK.MUX4WAY16(MUX4WAY16ARCH) port map (a => e,
				  			   b => f,
							   c => g,
							   d => h,
							   sel => sel2,
							   o => o2);
	M3: entity WORK.MUX16(MUX16ARCH) port map (a => o1, b => o2, sel => sel(2), o => o3);
	o <= o3;
end architecture MUX8WAY16ARCH;
