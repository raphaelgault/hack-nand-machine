library ieee;
use ieee.std_logic_1164.all;
use IEEE.Numeric_std.all;

entity add16_tb is
end entity add16_tb;

architecture bench of add16_tb is
	signal a, b, o : std_logic_vector(15 downto 0);
begin
	process
	begin
		A <= std_logic_vector(To_Unsigned(0, 16));
		B <= std_logic_vector(To_Unsigned(16#FFFF#, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(0, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(1, 16));
		B <= std_logic_vector(To_Unsigned(16#FFFF#, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16#FFFE#, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(4, 16));
		B <= std_logic_vector(To_Unsigned(1, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(31, 16));
		B <= std_logic_vector(To_Unsigned(32, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(5, 16));
		B <= std_logic_vector(To_Unsigned(25, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(16#FFFC#, 16));
		B <= std_logic_vector(To_Unsigned(16#F#, 16));
		wait for 50 ns;
		A <= std_logic_vector(To_Unsigned(3, 16));
		B <= std_logic_vector(To_Unsigned(17, 16));
		wait for 50 ns;
		wait;
	end process;
	E1: entity WORK.ADD16(ADD16_ARCH) port map (a => a,
				   		    b => b,
						    sum => o);
end architecture bench;
