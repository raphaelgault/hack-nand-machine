library ieee;
use ieee.std_logic_1164.all;

entity ORGATE is
	port(
		a: in std_logic;
		b: in std_logic;
		o: out std_logic);
end entity ORGATE;

architecture ORARCH of ORGATE is
	signal na : std_logic;
	signal nb : std_logic;
begin
	N1: entity WORK.NOTGATE(NOTARCH) port map (a => a, o => na);
	N2: entity WORK.NOTGATE(NOTARCH) port map (a => b, o => nb);
	o <= na nand nb;
end architecture ORARCH;
