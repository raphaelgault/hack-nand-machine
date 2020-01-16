library ieee;
use ieee.std_logic_1164.all;

entity AND16 is
	port(
		a: in std_logic_vector(15 downto 0);
		b: in std_logic_vector(15 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity AND16;

architecture AND16ARCH of AND16 is
	signal s: std_logic_vector(15 downto 0);
begin
	s(15) <= a(15) nand b(15);
	s(14) <= a(14) nand b(14);
	s(13) <= a(13) nand b(13);
	s(12) <= a(12) nand b(12);
	s(11) <= a(11) nand b(11);
	s(10) <= a(10) nand b(10);
	s(9) <= a(9) nand b(9);
	s(8) <= a(8) nand b(8);
	s(7) <= a(7) nand b(7);
	s(6) <= a(6) nand b(6);
	s(5) <= a(5) nand b(5);
	s(4) <= a(4) nand b(4);
	s(3) <= a(3) nand b(3);
	s(2) <= a(2) nand b(2);
	s(1) <= a(1) nand b(1);
	s(0) <= a(0) nand b(0);
	N: entity WORK.NOT16(NOT16ARCH) port map (a => s, o => o);
end architecture AND16ARCH;
