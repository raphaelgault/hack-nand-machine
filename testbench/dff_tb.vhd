LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DFF_tb IS
END DFF_tb;

ARCHITECTURE behavior OF DFF_tb IS 

    COMPONENT DFF
    PORT(
         d : IN  std_logic;
         clk : IN  std_logic;
         q : OUT  std_logic
        ); 
    END COMPONENT;
    
   signal din : std_logic := '0';
   signal clk : std_logic := '0';
   signal qout : std_logic;

   constant clk_period : time := 10 ns;

BEGIN

 uut: DFF PORT MAP (
          clk => clk,
          d => din,
          q => qout
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

  din <= '0';
  wait for 30 ns;
  
  din <= '1';  
  wait for 30 ns;

  din <= '0';
  wait for 30 ns;

  din <= '1';  
  wait for 30 ns;
  wait;
  
  end process;

END;
