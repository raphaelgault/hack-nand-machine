library ieee;
use ieee.std_logic_1164.all;

entity DFF is
	port(
		clk: in std_logic;
		D: in std_logic;
		Q: out std_logic);
end entity DFF;

architecture Behavioral of DFF is
begin
	Process(clk)
	begin
		if (Rising_Edge(clk)) then
			Q <= D;
		end if;
	end process;
end Behavioral;
