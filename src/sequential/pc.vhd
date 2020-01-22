library ieee;
use ieee.std_logic_1164.all;

entity PC is
	port(
		clk, inc, load, reset: in std_logic;
		i: in std_logic_vector(15 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity PC;

architecture Behavioral of PC is
	signal l : std_logic;
	signal sel : std_logic_vector(2 downto 0);
	signal val, s, n, q : std_logic_vector(15 downto 0);
	signal step : std_logic_vector(15 downto 0) := "0000000000000001";
	signal zero : std_logic_vector(15 downto 0) := "0000000000000000";
begin
	l <= reset or load or inc;
	sel(0) <= inc;
	sel(1) <= load;
	sel(2) <= reset;

	R : entity WORK.REG(Behavioral) port map (clk => clk,
			    			  load => l,
						  i => val,
						  o => q);
	A : entity WORK.ADD16(ADD16_ARCH) port map(a => q, b => step, sum => s);
	M1: entity WORK.MUX8WAY16(MUX8WAY16ARCH) port map(a => q,
				  			  b => s,
				  			  c => i,
				  			  d => i,
				  			  e => zero,
				  			  f => zero,
				  			  g => zero,
				  			  h => zero,
							  sel => sel,
							  o => val);
	o <= q;
end Behavioral;
