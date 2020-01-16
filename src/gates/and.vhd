library ieee;
use ieee.std_logic_1164.all;

entity ANDGATE is
	port(
		a: in std_logic;
		b: in std_logic;
		o: out std_logic);
end entity ANDGATE;

architecture ANDARCH of ANDGATE is
	signal s : std_logic;
begin
	s <= a nand b;
	N: entity WORK.NOTGATE(NOTARCH) port map (a => s, o => o);
end architecture ANDARCH;
