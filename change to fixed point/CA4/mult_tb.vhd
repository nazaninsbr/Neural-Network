--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:47:47 12/14/2017
-- Design Name:   
-- Module Name:   D:/University/Term 7/CAD/CAs/CA3-94346-93499-93436/CA3-NNM/CA3/mult_tb.vhd
-- Project Name:  CA3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mult
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mult_tb IS
END mult_tb;
 
ARCHITECTURE behavior OF mult_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mult
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         b : IN  std_logic_vector(15 downto 0);
         res : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(15 downto 0) := "0000000000000000";
   signal b : std_logic_vector(15 downto 0) := "0000000000000000";

 	--Outputs
   signal res : std_logic_vector(15 downto 0);
 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mult PORT MAP (
          a => a,
          b => b,
          res => res
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "0000000001000000";
		b <= "0000000001000000";

      wait for 100 ns;	
		a <= "0000000001100000";
		b <= "0000000001000000";

      wait for 100 ns;
		a <= "0000000010000000";
		b <= "0000000000100000";		

      wait for 100 ns;	

      wait for 100 ns;	

		

      wait;
   end process;

END;
