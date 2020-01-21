library ieee;
use ieee.std_logic_1164.all;

entity REG is
	port(
		clk, load: in std_logic;
		i: in std_logic_vector(15 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity REG;

architecture Behavioral of REG is
	signal q : std_logic_vector(15 downto 0);
begin
	B0: entity work.bitreg(Behavioral) port map (clk => clk, i => i(0),
			       			     load => load, o => q(0));
	B1: entity work.bitreg(Behavioral) port map (clk => clk, i => i(1),
			       			     load => load, o => q(1));
	B2: entity work.bitreg(Behavioral) port map (clk => clk, i => i(2),
			       			     load => load, o => q(2));
	B3: entity work.bitreg(Behavioral) port map (clk => clk, i => i(3),
			       			     load => load, o => q(3));
	B4: entity work.bitreg(Behavioral) port map (clk => clk, i => i(4),
			       			     load => load, o => q(4));
	B5: entity work.bitreg(Behavioral) port map (clk => clk, i => i(5),
			       			     load => load, o => q(5));
	B6: entity work.bitreg(Behavioral) port map (clk => clk, i => i(6),
			       			     load => load, o => q(6));
	B7: entity work.bitreg(Behavioral) port map (clk => clk, i => i(7),
			       			     load => load, o => q(7));
	B8: entity work.bitreg(Behavioral) port map (clk => clk, i => i(8),
			       			     load => load, o => q(8));
	B9: entity work.bitreg(Behavioral) port map (clk => clk, i => i(9),
			       			     load => load, o => q(9));
	B10: entity work.bitreg(Behavioral) port map (clk => clk, i => i(10),
						      load => load, o => q(10));
	B11: entity work.bitreg(Behavioral) port map (clk => clk, i => i(11),
			       			      load => load, o => q(11));
	B12: entity work.bitreg(Behavioral) port map (clk => clk, i => i(12),
						      load => load, o => q(12));
	B13: entity work.bitreg(Behavioral) port map (clk => clk, i => i(13),
						      load => load, o => q(13));
	B14: entity work.bitreg(Behavioral) port map (clk => clk, i => i(14),
						      load => load, o => q(14));
	B15: entity work.bitreg(Behavioral) port map (clk => clk, i => i(15),
						      load => load, o => q(15));
	o(0) <= q(0);
	o(1) <= q(1);
	o(2) <= q(2);
	o(3) <= q(3);
	o(4) <= q(4);
	o(5) <= q(5);
	o(6) <= q(6);
	o(7) <= q(7);
	o(8) <= q(8);
	o(9) <= q(9);
	o(10) <= q(10);
	o(11) <= q(11);
	o(12) <= q(12);
	o(13) <= q(13);
	o(14) <= q(14);
	o(15) <= q(15);
end Behavioral;
