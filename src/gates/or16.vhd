library ieee;
use ieee.std_logic_1164.all;

entity OR16 is
	port(
		a: in std_logic_vector(15 downto 0);
		b: in std_logic_vector(15 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity OR16;

architecture OR16ARCH of OR16 is
	signal na: std_logic_vector(15 downto 0);
	signal nb: std_logic_vector(15 downto 0);
begin
	N1: entity WORK.NOT16(NOT16ARCH) port map (a => a, o => na);
	N2: entity WORK.NOT16(NOT16ARCH) port map (a => b, o => nb);
	o(15) <= na(15) nand nb(15);
	o(14) <= na(14) nand nb(14);
	o(13) <= na(13) nand nb(13);
	o(12) <= na(12) nand nb(12);
	o(11) <= na(11) nand nb(11);
	o(10) <= na(10) nand nb(10);
	o(9) <= na(9) nand nb(9);
	o(8) <= na(8) nand nb(8);
	o(7) <= na(7) nand nb(7);
	o(6) <= na(6) nand nb(6);
	o(5) <= na(5) nand nb(5);
	o(4) <= na(4) nand nb(4);
	o(3) <= na(3) nand nb(3);
	o(2) <= na(2) nand nb(2);
	o(1) <= na(1) nand nb(1);
	o(0) <= na(0) nand nb(0);
end architecture OR16ARCH;
