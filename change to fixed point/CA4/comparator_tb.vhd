-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY Ctestbench IS
  END Ctestbench;

  ARCHITECTURE behavior OF Ctestbench IS 

  -- Component Declaration
          COMPONENT nibble_comparator
		  	 generic (width: integer := 16;
						point: integer := 6);
          port (a, b: in std_logic_vector(width -1 downto 0);
					my_gt,
					eq,
					lt: in std_logic;
					a_gt_b,
					a_eq_b,
					a_lt_b: out std_logic);
          END COMPONENT;

          SIGNAL a :  std_logic_vector(15 downto 0) := "0000000000000000";
          SIGNAL b :  std_logic_vector(15 downto 0) := "0000000000000000";
          SIGNAL a_gt_b, a_eq_b, a_lt_b :  std_logic; 
			 SIGNAL my_gt : std_logic := '0';
			 SIGNAL eq: std_logic := '1';
			 SIGNAL lt: std_logic := '0';

			  
  BEGIN

  -- Component Instantiation
          uut: nibble_comparator PORT MAP(
                  a => a,
                  b => b,
						my_gt => my_gt,
						eq => eq,
						lt => lt,
						a_gt_b => a_gt_b,
						a_eq_b => a_eq_b,
						a_lt_b => a_lt_b
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes

        -- Add user defined stimulus here
			a <= "0000000000100000";
			b <= "0000000000010000";
			
			wait for 100 ns;
			
			a <= "0000000000100000";
			b <= "0000000100100000";
			
			wait for 100 ns;
			
			a <= "0000000000100000";
			b <= "0000000000100100";
			
			wait for 100 ns;
			
			a <= "0000000000100000";
			b <= "0000000000100000";
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
