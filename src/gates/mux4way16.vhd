library ieee;
use ieee.std_logic_1164.all;

entity MUX4WAY16 is
	port(
		a: in std_logic_vector(15 downto 0);
		b: in std_logic_vector(15 downto 0);
		c: in std_logic_vector(15 downto 0);
		d: in std_logic_vector(15 downto 0);
		sel: in std_logic_vector(1 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity MUX4WAY16;

architecture MUX4WAY16ARCH of MUX4WAY16 is
	signal o1, o2, o3: std_logic_vector(15 downto 0);
begin
	M1: entity WORK.MUX16(MUX16ARCH) port map (a => a, b => b, sel => sel(0), o => o1);
	M2: entity WORK.MUX16(MUX16ARCH) port map (a => c, b => d, sel => sel(0), o => o2);
	M3: entity WORK.MUX16(MUX16ARCH) port map (a => o1, b => o2, sel => sel(1), o => o3);
	o <= o3;
end architecture MUX4WAY16ARCH;
