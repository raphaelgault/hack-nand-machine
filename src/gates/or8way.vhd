library ieee;
use ieee.std_logic_1164.all;

entity OR8WAY is
	port(
		i: in std_logic_vector(7 downto 0);
		o: out std_logic);
end entity OR8WAY;

architecture OR8WAYARCH of OR8WAY is
	signal o1, o2, o3, o4, o5, o6, o7: std_logic;
begin
	OR1: entity WORK.ORGATE(ORARCH) port map (a => i(0), b => i(1), o => o1);
	OR2: entity WORK.ORGATE(ORARCH) port map (a => o1, b => i(2), o => o2);
	OR3: entity WORK.ORGATE(ORARCH) port map (a => o2, b => i(3), o => o3);
	OR4: entity WORK.ORGATE(ORARCH) port map (a => o3, b => i(4), o => o4);
	OR5: entity WORK.ORGATE(ORARCH) port map (a => o4, b => i(5), o => o5);
	OR6: entity WORK.ORGATE(ORARCH) port map (a => o5, b => i(6), o => o6);
	OR7: entity WORK.ORGATE(ORARCH) port map (a => o6, b => i(7), o => o7);
	o <= o7;
end architecture OR8WAYARCH;
