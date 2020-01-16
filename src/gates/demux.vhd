library ieee;
use ieee.std_logic_1164.all;

entity DEMUX is
	port(
		i: in std_logic;
		sel: in std_logic;
		a: out std_logic;
		b: out std_logic);
end entity DEMUX;

architecture DEMUXARCH of DEMUX is
	signal nsel : std_logic;
	signal a1 : std_logic;
	signal a2 : std_logic;
begin
	N1: entity WORK.NOTGATE(NOTARCH) port map (a => sel, o => nsel);
	AND1: entity WORK.ANDGATE(ANDARCH) port map (a => i, b => nsel, o => a1);
	AND2: entity WORK.ANDGATE(ANDARCH) port map (a => i, b => sel, o => a2);
	a <= a1;
	b <= a2;
end architecture DEMUXARCH;
