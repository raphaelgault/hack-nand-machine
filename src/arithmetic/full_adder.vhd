library ieee;
use ieee.std_logic_1164.all;

entity FULL_ADDER is
	port(
		a: in std_logic;
		b: in std_logic;
		c: in std_logic;
		carry: out std_logic;
		sum: out std_logic);
end entity FULL_ADDER;

architecture FULL_ADDER_ARCH of FULL_ADDER is
	signal carry1 : std_logic;
	signal sum1 : std_logic;
	signal carry2 : std_logic;
	signal sum2 : std_logic;
	signal carry3 : std_logic;
begin
	H1: entity WORK.HALF_ADDER(HALF_ADDER_ARCH) port map (a => b,
				   			      b => c,
				   			      carry => carry1,
							      sum => sum1);
	H2: entity WORK.HALF_ADDER(HALF_ADDER_ARCH) port map (a => a,
				   			      b => sum1,
							      carry => carry2,
							      sum => sum2);
	OR1: entity WORK.ORGATE(ORARCH) port map (a => carry1, b => carry2, o => carry3);
	carry <= carry3; 
	sum <= sum2; 
end architecture FULL_ADDER_ARCH;
