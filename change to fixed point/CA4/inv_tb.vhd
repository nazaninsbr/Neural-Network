--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:58:00 12/14/2017
-- Design Name:   
-- Module Name:   D:/University/Term 7/CAD/CAs/CA3-94346-93499-93436/CA3-NNM/CA3/inv_tb.vhd
-- Project Name:  CA3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: inv
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
 
ENTITY inv_tb IS
END inv_tb;
 
ARCHITECTURE behavior OF inv_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT inv
    PORT(
         i1 : IN  std_logic;
         o1 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i1 : std_logic := '0';

 	--Outputs
   signal o1 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: inv PORT MAP (
          i1 => i1,
          o1 => o1
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		i1 <= '1';
      wait for 100 ns;
		i1 <= '0';		
      wait for 100 ns;	
		i1 <= '1';
      wait for 100 ns;	
      wait for 100 ns;	
      wait;
   end process;

END;
