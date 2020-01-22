library ieee;
use ieee.std_logic_1164.all;

entity RAM8 is
	port(
		clk, load: in std_logic;
		i: in std_logic_vector(15 downto 0);
		address: in std_logic_vector(2 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity RAM8;

architecture Behavioral of RAM8 is
	signal q, q0, q1, q2, q3, q4, q5, q6, q7 : std_logic_vector(15 downto 0);
	signal l : std_logic_vector(7 downto 0);
begin
	D: ENTITY work.demux8way(demux8wayarch) port map (i => load, sel => address,
							  a => l(0),
							  b => l(1),
							  c => l(2),
							  d => l(3),
							  e => l(4),
							  f => l(5),
							  g => l(6),
							  h => l(7));

	R0: ENTITY work.reg(behavioral) port map (clk => clk,
						  load => l(0),
						  i => i,
						  o => q0);
	R1: ENTITY work.reg(behavioral) port map (clk => clk,
						  load => l(1),
						  i => i,    
						  o => q1);  
	R2: ENTITY work.reg(behavioral) port map (clk => clk, 
						  load => l(2),
						  i => i,    
						  o => q2);  
	R3: ENTITY work.reg(behavioral) port map (clk => clk, 
						  load => l(3),
						  i => i,    
						  o => q3);  
	R4: ENTITY work.reg(behavioral) port map (clk => clk, 
						  load => l(4),
						  i => i,    
						  o => q4);  
	R5: ENTITY work.reg(behavioral) port map (clk => clk, 
						  load => l(5),
						  i => i,    
						  o => q5);  
	R6: ENTITY work.reg(behavioral) port map (clk => clk, 
						  load => l(6),
						  i => i,    
						  o => q6);  
	R7: ENTITY work.reg(behavioral) port map (clk => clk, 
						  load => l(7),
						  i => i,    
						  o => q7);  
	M: ENTITY work.mux8way16(mux8way16arch) port map (a => q0,
							  b => q1,
							  c => q2,
							  d => q3,
							  e => q4,
							  f => q5,
							  g => q6,
							  h => q7,
							  sel => address,
						  	  o => q);
	o <= q;
end Behavioral;
