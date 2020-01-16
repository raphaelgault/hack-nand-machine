library ieee;
use ieee.std_logic_1164.all;

entity MUX16 is
	port(
		a: in std_logic_vector(15 downto 0);
		b: in std_logic_vector(15 downto 0);
		sel: in std_logic;
		o: out std_logic_vector(15 downto 0));
end entity MUX16;

architecture MUX16ARCH of MUX16 is
	signal nsel: std_logic;
	signal nsel_vec: std_logic_vector(15 downto 0);
	signal sel_vec: std_logic_vector(15 downto 0);
	signal a1: std_logic_vector(15 downto 0);
	signal a2: std_logic_vector(15 downto 0);
	signal o1: std_logic_vector(15 downto 0);
begin
	sel_vec(15) <= sel;
	sel_vec(14) <= sel;
	sel_vec(13) <= sel;
	sel_vec(12) <= sel;
	sel_vec(11) <= sel;
	sel_vec(10) <= sel;
	sel_vec(9) <= sel;
	sel_vec(8) <= sel;
	sel_vec(7) <= sel;
	sel_vec(6) <= sel;
	sel_vec(5) <= sel;
	sel_vec(4) <= sel;
	sel_vec(3) <= sel;
	sel_vec(2) <= sel;
	sel_vec(1) <= sel;
	sel_vec(0) <= sel;
	N1: entity WORK.NOTGATE(NOTARCH) port map (a => sel, o => nsel);
	nsel_vec(15) <= nsel;
	nsel_vec(14) <= nsel;
	nsel_vec(13) <= nsel;
	nsel_vec(12) <= nsel;
	nsel_vec(11) <= nsel;
	nsel_vec(10) <= nsel;
	nsel_vec(9) <= nsel;
	nsel_vec(8) <= nsel;
	nsel_vec(7) <= nsel;
	nsel_vec(6) <= nsel;
	nsel_vec(5) <= nsel;
	nsel_vec(4) <= nsel;
	nsel_vec(3) <= nsel;
	nsel_vec(2) <= nsel;
	nsel_vec(1) <= nsel;
	nsel_vec(0) <= nsel;
	AND1: entity WORK.AND16(AND16ARCH) port map (a => a, b => nsel_vec, o => a1);
	AND2: entity WORK.AND16(AND16ARCH) port map (a => b, b => sel_vec, o => a2);
	OR1: entity WORK.OR16(OR16ARCH) port map (a => a1, b => a2, o => o1);
	o <= o1;
end architecture MUX16ARCH;
