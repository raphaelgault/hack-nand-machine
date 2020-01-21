library ieee;
use ieee.std_logic_1164.all;

entity BITREG is
	port(
		clk: in std_logic;
		i, load: in std_logic;
		o: out std_logic);
end entity BITREG;

architecture Behavioral of BITREG is
	signal s, q : std_logic;
begin
	M: ENTITY WORK.MUX(MUXARCH) port map (a => q, b => i, sel => load, o => s);
	D: ENTITY WORK.DFF(Behavioral) port map (d => s, clk => clk, q => q);
	o <= q;
end Behavioral;
