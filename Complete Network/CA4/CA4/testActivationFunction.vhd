LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY testActivationFunction IS
END testActivationFunction;
 
ARCHITECTURE behavior OF testActivationFunction IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT activationFunction
    PORT(
         in_val : IN  std_logic_vector(31 downto 0);
         ready_signal : IN  std_logic;
         out_val : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_val : std_logic_vector(31 downto 0) := (others => '0');
   signal ready_signal : std_logic := '0';

 	--Outputs
   signal out_val : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: activationFunction PORT MAP (
          in_val => in_val,
          ready_signal => ready_signal,
          out_val => out_val
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		ready_signal <= '1';
      wait for 100 ns;	
		in_val <= "00000000000000010000000000000110";
		wait for 100 ns;	
		in_val <= "00000000000000000000000000000110";
		wait for 100 ns;	
		in_val <= "00111000000000010000000000000110";
      wait;
   end process;

END;
