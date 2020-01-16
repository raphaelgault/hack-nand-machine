library ieee;
use ieee.std_logic_1164.all;

entity ALU is
	port(
		x: in std_logic_vector(15 downto 0);
		y: in std_logic_vector(15 downto 0);
		zx, nx, zy, ny, f, no : in std_logic;
		o: out std_logic_vector(15 downto 0);
		zr, ng : out std_logic);
end entity ALU;

architecture ALU_ARCH of ALU is
	signal z, nz : std_logic_vector(15 downto 0);
	signal sum, xy : std_logic_vector(15 downto 0);
	signal negx, negy : std_logic_vector(15 downto 0);
	signal selx, sely : std_logic_vector(1 downto 0);
	signal rx, ry : std_logic_vector(15 downto 0);
	signal res, nres, result : std_logic_vector(15 downto 0);
	signal nzr : std_logic;
begin
	z <= "0000000000000000";
	nz <= "1111111111111111";
	selx(1) <= nx;
	selx(0) <= zx;
	sely(1) <= ny;
	sely(0) <= zy;
	N1: entity WORK.NOT16(NOT16ARCH) port map (a => x,
					 	   o => negx);	
	N2: entity WORK.NOT16(NOT16ARCH) port map (a => y,
					 	   o => negy);	
	MUX4_X: entity WORK.MUX4WAY16(MUX4WAY16ARCH) port map (a => x,
							       b => z,
							       c => negx,
							       d => nz,
						       	       sel => selx,
						       	       o => rx);
	MUX4_Y: entity WORK.MUX4WAY16(MUX4WAY16ARCH) port map (a => y,
							       b => z,
							       c => negy,
							       d => nz,
						       	       sel => sely,
						       	       o => ry);
	ANDXY: entity WORK.AND16(AND16ARCH) port map (a => rx,
						      b => ry,
						      o => xy);
	A1: entity WORK.ADD16(ADD16_ARCH) port map (a => rx,
				   		    b => ry,
						    sum => sum);
	MUX_SUM: entity WORK.MUX16(MUX16ARCH) port map (a => xy,
							b => sum,
							sel => f,
							o => res);
	N3: entity WORK.NOT16(NOT16ARCH) port map (a => res, o => nres);

	MUX_O: entity WORK.MUX16(MUX16ARCH) port map (a => res,
						      b => nres,
						      sel => no,
						      o => result);
	ng <= result(15);
	O1: entity WORK.OR16WAY(OR16WAYARCH) port map (i => result, o => nzr);
	O2: entity WORK.NOTGATE(NOTARCH) port map (a => nzr, o => zr);
	o <= result;
end architecture ALU_ARCH;
