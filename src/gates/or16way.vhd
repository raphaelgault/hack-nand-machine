library ieee;
use ieee.std_logic_1164.all;

entity OR16WAY is
	port(
		i: in std_logic_vector(15 downto 0);
		o: out std_logic);
end entity OR16WAY;

architecture OR16WAYARCH of OR16WAY is
	signal o1, o2, o3, o4, o5, o6, o7, o8: std_logic;
	signal o9, o10, o11, o12, o13, o14, o15: std_logic;
begin
	OR1: entity WORK.ORGATE(ORARCH) port map (a => i(0), b => i(1), o => o1);
	OR2: entity WORK.ORGATE(ORARCH) port map (a => o1, b => i(2), o => o2);
	OR3: entity WORK.ORGATE(ORARCH) port map (a => o2, b => i(3), o => o3);
	OR4: entity WORK.ORGATE(ORARCH) port map (a => o3, b => i(4), o => o4);
	OR5: entity WORK.ORGATE(ORARCH) port map (a => o4, b => i(5), o => o5);
	OR6: entity WORK.ORGATE(ORARCH) port map (a => o5, b => i(6), o => o6);
	OR7: entity WORK.ORGATE(ORARCH) port map (a => o6, b => i(7), o => o7);
	OR8: entity WORK.ORGATE(ORARCH) port map (a => o7, b => i(8), o => o8);
	OR9: entity WORK.ORGATE(ORARCH) port map (a => o8, b => i(9), o => o9);
	OR10: entity WORK.ORGATE(ORARCH) port map (a => o9, b => i(10), o => o10);
	OR11: entity WORK.ORGATE(ORARCH) port map (a => o10, b => i(11), o => o11);
	OR12: entity WORK.ORGATE(ORARCH) port map (a => o11, b => i(12), o => o12);
	OR13: entity WORK.ORGATE(ORARCH) port map (a => o12, b => i(13), o => o13);
	OR14: entity WORK.ORGATE(ORARCH) port map (a => o13, b => i(14), o => o14);
	OR15: entity WORK.ORGATE(ORARCH) port map (a => o14, b => i(15), o => o15);
	o <= o15;
end architecture OR16WAYARCH;
