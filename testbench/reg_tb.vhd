LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY reg_tb IS
END reg_tb;

ARCHITECTURE behavior OF reg_tb IS 

    COMPONENT REG
    PORT(
         clk, load : IN  std_logic;
         i : IN  std_logic_vector(15 downto 0);
         o : OUT  std_logic_vector(15 downto 0)
        ); 
    END COMPONENT;
    
   signal i, o : std_logic_vector(15 downto 0) := "0000000000000000";
   signal clk, l : std_logic := '0';

   constant clk_period : time := 10 ns;

BEGIN

 uut: REG PORT MAP (
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

  i <= "0000000000000101";
  l <= '0';
  wait for 30 ns;
  
  i <= "1111000000001111";
  l <= '0';
  wait for 30 ns;

  i <= "0000000011111000";
  l <= '1';
  wait for 30 ns;

  i <= "0001001000001100";
  l <= '0';
  wait for 30 ns;

  i <= "0000000000000101";
  l <= '0';
  wait for 30 ns;

  i <= "0101000001100110";
  l <= '1';
  wait for 30 ns;

  i <= "0000000000000000";
  l <= '1';
  wait for 30 ns;

  i <= "1111111111111111";
  l <= '0';
  wait for 30 ns;

  i <= "1111111111111111";
  l <= '1';
  wait for 30 ns;

  i <= "0000000000000000";
  l <= '1';
  wait for 30 ns;
  wait;
  
  end process;

END;
