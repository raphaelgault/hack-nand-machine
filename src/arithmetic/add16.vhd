library ieee;
use ieee.std_logic_1164.all;

entity ADD16 is
	port(
		a: in std_logic_vector(15 downto 0);
		b: in std_logic_vector(15 downto 0);
		sum: out std_logic_vector(15 downto 0));
end entity ADD16;

architecture ADD16_ARCH of ADD16 is
	signal c0, c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15 : std_logic;
begin
	H1: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(0),
				   			      b => b(0),
							      c => '0',
				   			      carry => c0,
							      sum => sum(0));
	H2: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(1),
				   			      b => b(1),
							      c => c0,
							      carry => c1,
							      sum => sum(1));
	H3: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(2),
				   			      b => b(2),
							      c => c1,
				   			      carry => c2,
							      sum => sum(2));
	H4: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(3),
				   			      b => b(3),
							      c => c2,
							      carry => c3,
							      sum => sum(3));
	H5: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(4),
				   			      b => b(4),
							      c => c3,
				   			      carry => c4,
							      sum => sum(4));
	H6: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(5),
				   			      b => b(5),
							      c => c4,
							      carry => c5,
							      sum => sum(5));
	H7: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(6),
				   			      b => b(6),
							      c => c5,
							      carry => c6,
							      sum => sum(6));
	H8: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(7),
				   			      b => b(7),
							      c => c6,
							      carry => c7,
							      sum => sum(7));
	H9: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(8),
				   			      b => b(8),
							      c => c7,
							      carry => c8,
							      sum => sum(8));
	H10: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(9),
				   			       b => b(9),
							       c => c8,
							       carry => c9,
							       sum => sum(9));
	H11: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(10),
				   			       b => b(10),
							       c => c9,
							       carry => c10,
							       sum => sum(10));
	H12: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(11),
				   			       b => b(11),
							       c => c10,
							       carry => c11,
							       sum => sum(11));
	H13: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(12),
				   			       b => b(12),
							       c => c11,
							       carry => c12,
							       sum => sum(12));
	H14: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(13),
				   			       b => b(13),
							       c => c12,
							       carry => c13,
							       sum => sum(13));
	H15: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(14),
				   			       b => b(14),
							       c => c13,
							       carry => c14,
							       sum => sum(14));
	H16: entity WORK.FULL_ADDER(FULL_ADDER_ARCH) port map (a => a(15),
				   			       b => b(15),
							       c => c14,
							       carry => c15,
							       sum => sum(15));
end architecture ADD16_ARCH;
