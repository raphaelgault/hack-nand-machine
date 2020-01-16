library ieee;
use ieee.std_logic_1164.all;

entity DEMUX4WAY is
	port(
		i: in std_logic;
		sel: in std_logic_vector(1 downto 0);
		a: out std_logic;
		b: out std_logic;
		c: out std_logic;
		d: out std_logic);
end entity DEMUX4WAY;

architecture DEMUX4WAYARCH of DEMUX4WAY is
	signal nsel1, ni, si, a1, b1, c1, d1 : std_logic;
begin
	N1: entity WORK.NOTGATE(NOTARCH) port map (a => sel(1), o => nsel1);
	AND1: entity WORK.ANDGATE(ANDARCH) port map (a => i, b => nsel1, o => ni);
	AND2: entity WORK.ANDGATE(ANDARCH) port map (a => i, b => sel(1), o => si);
	DEM1: entity WORK.DEMUX(DEMUXARCH) port map (i => ni, sel => sel(0), a => a1, b => b1);
	DEM2: entity WORK.DEMUX(DEMUXARCH) port map (i => si, sel => sel(0), a => c1, b => d1);
	a <= a1;
	b <= b1;
	c <= c1;
	d <= d1;
end architecture DEMUX4WAYARCH;
