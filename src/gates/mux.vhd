library ieee;
use ieee.std_logic_1164.all;

entity MUX is
	port(
		a: in std_logic;
		b: in std_logic;
		sel: in std_logic;
		o: out std_logic);
end entity MUX;

architecture MUXARCH of MUX is
	signal nsel : std_logic;
	signal a1 : std_logic;
	signal a2 : std_logic;
	signal o1 : std_logic;
begin
	N1: entity WORK.NOTGATE(NOTARCH) port map (a => sel, o => nsel);
	AND1: entity WORK.ANDGATE(ANDARCH) port map (a => a, b => nsel, o => a1);
	AND2: entity WORK.ANDGATE(ANDARCH) port map (a => b, b => sel, o => a2);
	OR1: entity WORK.ORGATE(ORARCH) port map (a => a1, b => a2, o => o1);
	o <= o1;
end architecture MUXARCH;
