library ieee;
use ieee.std_logic_1164.all;

entity XORGATE is
	port(
		a: in std_logic;
		b: in std_logic;
		o: out std_logic);
end entity XORGATE;

architecture XORARCH of XORGATE is
	signal o1 : std_logic;
	signal o2 : std_logic;
	signal n : std_logic;
begin
	n <= a nand b;
	N2: entity WORK.ORGATE(ORARCH) port map (a => a, b => b, o => o1);
	N1: entity WORK.ANDGATE(ANDARCH) port map (a => n, b => o1, o => o2);
	o <= o2; 
end architecture XORARCH;
