LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

 
ENTITY testAdder IS
END testAdder;
 
ARCHITECTURE behavior OF testAdder IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         a : IN  std_logic_vector(4 downto 0);
         b : IN  std_logic_vector(4 downto 0);
         res : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(4 downto 0) := "00000";
   signal b : std_logic_vector(4 downto 0) := "00000";

 	--Outputs
   signal res : std_logic_vector(4 downto 0); 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          a => a,
          b => b,
          res => res
        );

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
			a<="00001";
			b<="00001";
		wait for 100 ns;
   end process;

END  behavior;
