library ieee;
use ieee.std_logic_1164.all;

entity NOTGATE is
	port(
		a: in std_logic;
		o: out std_logic);
end entity NOTGATE;

architecture NOTARCH of NOTGATE is
begin
	o <= a nand a;
end architecture NOTARCH;
