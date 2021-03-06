library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity alu_tb is
end entity alu_tb;

architecture bench of alu_tb is
	signal a, b, o : std_logic_vector(15 downto 0);
	signal zx, nx, zy, ny, f, no : std_logic;
	signal zr, ng : std_logic;
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(18, 16));
		B <= std_logic_vector(To_Unsigned(129, 16));
		zx <= '1';
		nx <= '0';
		zy <= '1';
		ny <= '0';
		f <= '1';
		no <= '0';
		wait for 50 ns;
		zx <= '1';
		nx <= '1';
		zy <= '1';
		ny <= '1';
		f <= '1';
		no <= '1';
		wait for 50 ns;
		zx <= '1';
		nx <= '1';
		zy <= '1';
		ny <= '0';
		f <= '1';
		no <= '0';
		wait for 50 ns;
		zx <= '0';
		nx <= '0';
		zy <= '1';
		ny <= '1';
		f <= '0';
		no <= '0';
		wait for 50 ns;
		zx <= '1';
		nx <= '1';
		zy <= '0';
		ny <= '0';
		f <= '0';
		no <= '0';
		wait for 50 ns;
		zx <= '0';
		nx <= '0';
		zy <= '1';
		ny <= '1';
		f <= '0';
		no <= '1';
		wait for 50 ns;
		zx <= '1';
		nx <= '1';
		zy <= '0';
		ny <= '0';
		f <= '0';
		no <= '1';
		wait for 50 ns;
		zx <= '0';
		nx <= '0';
		zy <= '1';
		ny <= '1';
		f <= '1';
		no <= '1';
		wait for 50 ns;
		zx <= '1';
		nx <= '1';
		zy <= '0';
		ny <= '0';
		f <= '1';
		no <= '1';
		wait for 50 ns;
		zx <= '0';
		nx <= '1';
		zy <= '1';
		ny <= '1';
		f <= '1';
		no <= '1';
		wait for 50 ns;
		zx <= '1';
		nx <= '1';
		zy <= '0';
		ny <= '1';
		f <= '1';
		no <= '1';
		wait for 50 ns;
		zx <= '0';
		nx <= '0';
		zy <= '1';
		ny <= '1';
		f <= '1';
		no <= '0';
		wait for 50 ns;
		zx <= '1';
		nx <= '1';
		zy <= '0';
		ny <= '0';
		f <= '1';
		no <= '0';
		wait for 50 ns;
		zx <= '0';
		nx <= '0';
		zy <= '0';
		ny <= '0';
		f <= '1';
		no <= '0';
		wait for 50 ns;
		zx <= '0';
		nx <= '1';
		zy <= '0';
		ny <= '0';
		f <= '1';
		no <= '1';
		wait for 50 ns;
		zx <= '0';
		nx <= '0';
		zy <= '0';
		ny <= '1';
		f <= '1';
		no <= '1';
		wait for 50 ns;
		zx <= '0';
		nx <= '0';
		zy <= '0';
		ny <= '0';
		f <= '0';
		no <= '0';
		wait for 50 ns;
		zx <= '0';
		nx <= '1';
		zy <= '0';
		ny <= '1';
		f <= '0';
		no <= '1';
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.ALU(ALU_ARCH) port map (x => a,
			   		    	y => b,
						zx => zx,
						nx => nx,
						zy => zy,
						ny => ny,
						f => f,
						no => no,
						o => o,
						zr => zr,
						ng => ng);
end architecture bench;
