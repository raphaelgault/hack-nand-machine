LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bit_tb IS
END bit_tb;

ARCHITECTURE behavior OF bit_tb IS 

    COMPONENT BITREG
    PORT(
         i, load : IN  std_logic;
         clk : IN  std_logic;
         o : OUT  std_logic
        ); 
    END COMPONENT;
    
   signal i, l, o : std_logic := '0';
   signal clk : std_logic := '0';

   constant clk_period : time := 10 ns;

BEGIN

 uut: BITREG PORT MAP (
          clk => clk,
          i => i,
          load => l,
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

  i <= '0';
  l <= '0';
  wait for 30 ns;
  
  i <= '1';
  l <= '0';
  wait for 30 ns;

  i <= '1';
  l <= '1';
  wait for 30 ns;

  i <= '1';
  l <= '0';
  wait for 30 ns;

  i <= '0';
  l <= '0';
  wait for 30 ns;

  i <= '0';
  l <= '1';
  wait for 30 ns;
  wait;
  
  end process;

END;
