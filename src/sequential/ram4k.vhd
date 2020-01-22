library ieee;
use ieee.std_logic_1164.all;

entity RAM4K is
	port(
		clk, load: in std_logic;
		i: in std_logic_vector(15 downto 0);
		address: in std_logic_vector(11 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity RAM4K;

architecture Behavioral of RAM4K is
	signal addr0 : std_logic_vector(8 downto 0);
	signal addr1 : std_logic_vector(2 downto 0);
	signal q, q0, q1, q2, q3, q4, q5, q6, q7 : std_logic_vector(15 downto 0);
	signal l : std_logic_vector(7 downto 0);
begin
	addr0(0) <= address(0);
	addr0(1) <= address(1);
	addr0(2) <= address(2);
	addr0(3) <= address(3);
	addr0(4) <= address(4);
	addr0(5) <= address(5);
	addr0(6) <= address(6);
	addr0(7) <= address(7);
	addr0(8) <= address(8);
	addr1(9) <= address(9);
	addr1(10) <= address(10);
	addr1(11) <= address(11);
	D: ENTITY work.demux8way(demux8wayarch) port map (i => load, sel => addr1,
							  a => l(0),
							  b => l(1),
							  c => l(2),
							  d => l(3),
							  e => l(4),
							  f => l(5),
							  g => l(6),
							  h => l(7));

	R0: ENTITY work.ram512(behavioral) port map (clk => clk,
						  load => l(0),
						  i => i,
						  address => addr0,
						  o => q0);
	R1: ENTITY work.ram512(behavioral) port map (clk => clk,
						  load => l(1),
						  i => i,    
						  address => addr0,
						  o => q1);  
	R2: ENTITY work.ram512(behavioral) port map (clk => clk, 
						  load => l(2),
						  i => i,    
						  address => addr0,
						  o => q2);  
	R3: ENTITY work.ram512(behavioral) port map (clk => clk, 
						  load => l(3),
						  i => i,    
						  address => addr0,
						  o => q3);  
	R4: ENTITY work.ram512(behavioral) port map (clk => clk, 
						  load => l(4),
						  i => i,    
						  address => addr0,
						  o => q4);  
	R5: ENTITY work.ram512(behavioral) port map (clk => clk, 
						  load => l(5),
						  i => i,    
						  address => addr0,
						  o => q5);  
	R6: ENTITY work.ram512(behavioral) port map (clk => clk, 
						  load => l(6),
						  i => i,    
						  address => addr0,
						  o => q6);  
	R7: ENTITY work.ram512(behavioral) port map (clk => clk, 
						  load => l(7),
						  i => i,    
						  address => addr0,
						  o => q7);  
	M: ENTITY work.mux8way16(mux8way16arch) port map (a => q0,
							  b => q1,
							  c => q2,
							  d => q3,
							  e => q4,
							  f => q5,
							  g => q6,
							  h => q7,
							  sel => addr1,
						  	  o => q);
	o <= q;
end Behavioral;
