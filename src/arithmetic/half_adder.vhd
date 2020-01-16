library ieee;
use ieee.std_logic_1164.all;

entity HALF_ADDER is
	port(
		a: in std_logic;
		b: in std_logic;
		carry: out std_logic;
		sum: out std_logic);
end entity HALF_ADDER;

architecture HALF_ADDER_ARCH of HALF_ADDER is
	signal co : std_logic;
	signal so : std_logic;
begin
	XOR1: entity WORK.XORGATE(XORARCH) port map (a => a, b => b, o => so);
	AND1: entity WORK.ANDGATE(ANDARCH) port map (a => a, b => b, o => co);
	carry <= co; 
	sum <= so; 
end architecture HALF_ADDER_ARCH;
