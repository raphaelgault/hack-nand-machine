library ieee;
use ieee.std_logic_1164.all;

entity INC16 is
	port(
		a: in std_logic_vector(15 downto 0);
		o: out std_logic_vector(15 downto 0));
end entity INC16;

architecture INC16_ARCH of INC16 is
	signal b : std_logic_vector(15 downto 0);
begin
	b <= "0000000000000001";
	A1: entity WORK.ADD16(ADD16_ARCH) port map (a => a,
				   			      b => b,
							      sum => o);
end architecture INC16_ARCH;
