LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pc_tb IS
END pc_tb;

ARCHITECTURE behavior OF pc_tb IS 

    COMPONENT PC
	PORT(
		clk, inc, load, reset: in std_logic;
		i: in std_logic_vector(15 downto 0);
		o: out std_logic_vector(15 downto 0));
    END COMPONENT;
    
   signal l, reset, inc : std_logic := '0';
   signal i, o : std_logic_vector(15 downto 0);
   signal clk : std_logic := '0';

   constant clk_period : time := 10 ns;

BEGIN

 uut: PC PORT MAP (
          clk => clk,
          inc => inc,
          load => l,
          reset => reset,
          i => i,
          o => o 
        );

  clk_process :process
  begin
  clk <= '0';
  wait for clk_period/2;
  clk <= '1';
  wait for clk_period/2;
  end process;

  stim_proc: process
  begin  

  i <= "0000001000001111";
  l <= '0';
  reset <= '1';
  inc <= '1';
  wait for 10 ns;

  l <= '0';
  reset <= '0';
  inc <= '1';
  wait for 40 ns;

  l <= '1';
  reset <= '0';
  inc <= '1';
  wait for 10 ns;

  l <= '0';
  reset <= '0';
  inc <= '1';
  wait for 40 ns;

  l <= '0';
  reset <= '1';
  inc <= '0';
  wait for 10 ns;

  l <= '0';
  reset <= '0';
  inc <= '1';
  wait for 40 ns;

  end process;

END;
