-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY AFtestbench IS
  END AFtestbench;

  ARCHITECTURE behavior OF AFtestbench IS 

  -- Component Declaration
          COMPONENT activationFunction
          PORT(
                  data_in : IN std_logic_vector(15 downto 0);
                  ready : IN std_logic;       
                  data_out : OUT std_logic_vector(15 downto 0)
                  );
          END COMPONENT;

          SIGNAL ready :  std_logic :='0';
          SIGNAL data_in :  std_logic_vector(15 downto 0) := "0000000000000000";
			 SIGNAL data_out : std_logic_vector(15 downto 0);
          
		constant clk_period : time := 10 ns;
		
  BEGIN

  -- Component Instantiation
          uut: activationFunction PORT MAP(
                  data_in => data_in,
                  ready => ready, 
						data_out => data_out
          );

		 clk_process :process
   begin
			ready <= '0';
		wait for clk_period/2;
		ready <= '1';
		wait for clk_period/2;
   end process;
  --  Test Bench Statements
     tb : PROCESS
     BEGIN
			
        wait for 100 ns; -- wait until global set/reset completes
		  data_in <= "0000000000000100";
		  wait for 100 ns;
		  data_in <= "0000000001000100";
		  wait for 100 ns;
		  data_in <= "0000000100000100";
		  wait for 100 ns;
		  data_in <= "0001000000000100";
		  wait for 100 ns;
		  data_in <= "1001000000000100";
        -- Add user defined stimulus here

        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
