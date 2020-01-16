library ieee;
use ieee.std_logic_1164.all;

entity NOT16 is
	port(
		a: in std_logic_vector(15 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity NOT16;

architecture NOT16ARCH of NOT16 is
begin
	o(15) <= a(15) nand a(15);
	o(14) <= a(14) nand a(14);
	o(13) <= a(13) nand a(13);
	o(12) <= a(12) nand a(12);
	o(11) <= a(11) nand a(11);
	o(10) <= a(10) nand a(10);
	o(9) <= a(9) nand a(9);
	o(8) <= a(8) nand a(8);
	o(7) <= a(7) nand a(7);
	o(6) <= a(6) nand a(6);
	o(5) <= a(5) nand a(5);
	o(4) <= a(4) nand a(4);
	o(3) <= a(3) nand a(3);
	o(2) <= a(2) nand a(2);
	o(1) <= a(1) nand a(1);
	o(0) <= a(0) nand a(0);
end architecture NOT16ARCH;
