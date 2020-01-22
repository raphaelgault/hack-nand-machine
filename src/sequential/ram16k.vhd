library ieee;
use ieee.std_logic_1164.all;

entity RAM16K is
	port(
		clk, load: in std_logic;
		i: in std_logic_vector(15 downto 0);
		address: in std_logic_vector(13 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity RAM16K;

architecture Behavioral of RAM16K is
	signal addr0 : std_logic_vector(11 downto 0);
	signal addr1 : std_logic_vector(1 downto 0);
	signal q, q0, q1, q2, q3 : std_logic_vector(15 downto 0);
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
	addr0(9) <= address(9);
	addr0(10) <= address(10);
	addr0(11) <= address(11);
	addr1(0) <= address(12);
	addr1(1) <= address(13);
	D: ENTITY work.demux4way(demux8wayarch) port map (i => load, sel => addr1,
							  a => l(0),
							  b => l(1),
							  c => l(2),
							  d => l(3));

	R0: ENTITY work.ram4k(behavioral) port map (clk => clk,
						  load => l(0),
						  i => i,
						  address => addr0,
						  o => q0);
	R1: ENTITY work.ram4k(behavioral) port map (clk => clk,
						  load => l(1),
						  i => i,    
						  address => addr0,
						  o => q1);  
	R2: ENTITY work.ram4k(behavioral) port map (clk => clk, 
						  load => l(2),
						  i => i,    
						  address => addr0,
						  o => q2);  
	R3: ENTITY work.ram4k(behavioral) port map (clk => clk, 
						  load => l(3),
						  i => i,    
						  address => addr0,
						  o => q3);  
	M: ENTITY work.mux4way16(mux4way16arch) port map (a => q0,
							  b => q1,
							  c => q2,
							  d => q3,
							  sel => addr1,
						  	  o => q);
	o <= q;
end Behavioral;
