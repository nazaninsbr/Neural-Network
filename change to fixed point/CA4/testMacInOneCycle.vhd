LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY testMacInOneCycle IS
END testMacInOneCycle;
 
ARCHITECTURE behavior OF testMacInOneCycle IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT macInOneCycle
    PORT(
         data1_in : IN  std_logic_vector(31 downto 0);
         data2_in : IN  std_logic_vector(31 downto 0);
         calculate_value : IN  std_logic;
         rst : IN  std_logic;
         data_out : OUT  std_logic_vector(63 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data1_in : std_logic_vector(31 downto 0) := (others => '0');
   signal data2_in : std_logic_vector(31 downto 0) := (others => '0');
   signal calculate_value : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(63 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant calculate_value_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: macInOneCycle PORT MAP (
          data1_in => data1_in,
          data2_in => data2_in,
          calculate_value => calculate_value,
          rst => rst,
          data_out => data_out
        );

   -- Clock process definitions
   calculate_value_process :process
   begin
		calculate_value <= '0';
		wait for calculate_value_period/2;
		calculate_value <= '1';
		wait for calculate_value_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
      wait for calculate_value_period*10;

      -- insert stimulus here 
		data1_in <= "00000000000000000000000000000001";
		data2_in <= "00000000000000000000000000000010";
      wait;
   end process;

END;
