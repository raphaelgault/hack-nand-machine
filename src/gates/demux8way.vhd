library ieee;
use ieee.std_logic_1164.all;

entity DEMUX8WAY is
	port(
		i: in std_logic;
		sel: in std_logic_vector(2 downto 0);
		a: out std_logic;
		b: out std_logic;
		c: out std_logic;
		d: out std_logic;
		e: out std_logic;
		f: out std_logic;
		g: out std_logic;
		h: out std_logic);
end entity DEMUX8WAY;

architecture DEMUX8WAYARCH of DEMUX8WAY is
	signal sel1: std_logic_vector(1 downto 0);
	signal nsel2, ni, si, a1, b1, c1, d1, e1, f1, g1, h1 : std_logic;
begin
	sel1(1) <= sel(1);
	sel1(0) <= sel(0);
	N1: entity WORK.NOTGATE(NOTARCH) port map (a => sel(2), o => nsel2);
	AND1: entity WORK.ANDGATE(ANDARCH) port map (a => i, b => nsel2, o => ni);
	AND2: entity WORK.ANDGATE(ANDARCH) port map (a => i, b => sel(2), o => si);
	DEM1: entity WORK.DEMUX4WAY(DEMUX4WAYARCH) port map (i => ni,
				    			     sel => sel1,
							     a => a1,
							     b => b1,
							     c => c1,
							     d => d1);
	DEM2: entity WORK.DEMUX4WAY(DEMUX4WAYARCH) port map (i => si,
				    			     sel => sel1,
							     a => e1,
							     b => f1,
							     c => g1,
							     d => h1);
	a <= a1;
	b <= b1;
	c <= c1;
	d <= d1;
	e <= e1;
	f <= f1;
	g <= g1;
	h <= h1;
end architecture DEMUX8WAYARCH;
