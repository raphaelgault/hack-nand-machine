LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ram8_tb IS
END ram8_tb;

ARCHITECTURE behavior OF ram8_tb IS 

    COMPONENT RAM8
	PORT(
		clk, load: in std_logic;
		i: in std_logic_vector(15 downto 0);
		address: in std_logic_vector(2 downto 0);
		o: out std_logic_vector(15 downto 0));
    END COMPONENT;
    
   signal l : std_logic := '0';
   signal i, o : std_logic_vector(15 downto 0);
   signal addr : std_logic_vector(2 downto 0);
   signal clk : std_logic := '0';

   constant clk_period : time := 10 ns;

BEGIN

 uut: RAM8 PORT MAP (
          clk => clk,
          load => l,
          i => i,
          address => addr,
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

  i <= "0000000000000000";
  l <= '0';
  addr <= "000";
  wait for 20 ns;

  i <= "0000000000000000";
  l <= '1';
  addr <= "000";
  wait for 20 ns;

  i <= "0000000000001111";
  l <= '0';
  addr <= "000";
  wait for 20 ns;

  i <= "0000000000001111";
  l <= '1';
  addr <= "001";
  wait for 20 ns;

  i <= "0000000000000000";
  l <= '0';
  addr <= "000";
  wait for 20 ns;
  
  i <= "0000000000000011";
  l <= '0';
  addr <= "011";
  wait for 20 ns;
  
  i <= "0000000000000011";
  l <= '1';
  addr <= "011";
  wait for 20 ns;
  wait;
  
  l <= '0';
  addr <= "001";
  wait for 20 ns;
  
  l <= '1';
  addr <= "111";
  wait for 20 ns;
  
  l <= '0';
  addr <= "011";
  wait for 20 ns;
  end process;

END;
