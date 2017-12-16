-- TestBench Template 

  

--package nmn_types is
--	type real_array is array (natural range <>) of real;
--end nmn_types;
  
  library work;
  use work.nmn_types.all;
  
  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;


  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
		 COMPONENT neuron
			generic (n : integer; 
				width : integer;
				point: integer);
			port(
				input_vec, weight_vec: in fixed_array (n - 1 downto 0);
				clk: in std_logic;
				rst: in std_logic; 
				start: in std_logic;
				output_val: out std_logic_vector(width -1 downto 0);
				done: out std_logic
			);
		 END COMPONENT;
   --Inputs
   signal input_vec :  fixed_array (4 downto 0):= ("0000000000010000", "0000000000010000", "0000000000010000", "1000000000010000", "0000000000010000");
   signal weight_vec :  fixed_array (4 downto 0) :=  ("0000000000100000", "0000000000100000", "0000000000100000", "1000000000100000", "0000000000100000");
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal start : std_logic := '0';
	
 	--Outputs
   signal output_val : std_logic_vector(15 downto 0);
   signal done : std_logic;
	
   -- Clock period definitions
   constant clk_period : time := 10 ns;
          

  BEGIN

  -- Component Instantiation
	 uut: neuron
		GENERIC MAP(n => 5, width => 16, point => 6)
		PORT MAP(input_vec, weight_vec, clk, rst, start, output_val, done);


   -- Clock process definitions
   clk_process :process
   begin
			clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
		start <= '1';
      wait for 100 ns;	
		start <= '0';
      wait for clk_period*35;
      assert false report "end of simulation" severity failure;
   end process;
  --  End Test Bench 
  END;
