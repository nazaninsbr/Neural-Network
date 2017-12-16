--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:19:58 12/14/2017
-- Design Name:   
-- Module Name:   C:/Users/Office/Desktop/CA3-NNM/CA3/adderTb.vhd
-- Project Name:  CA3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
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
 
ENTITY adderTb IS
END adderTb;
 
ARCHITECTURE behavior OF adderTb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         b : IN  std_logic_vector(15 downto 0);
         res : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(15 downto 0) := (others => '0');
   signal b : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal res : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
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
		a <= "0000000000000010";
		b <= "0000000000000010";
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "0000000000000000";
		b <= "0000001000000000"; 
		wait for 100 ns; 
		a <= "0000000001000000"; 
		b <= "0100000000000000";
		wait for 100 ns;
		a <= "0000000000000000";
		b <= "1000000000000000"; 
		wait for 100 ns; 
		a <= "0000010001010000"; 
		b <= "1000000000010000";
		wait for 100 ns;
      -- insert stimulus here 
      wait;
   end process;

END;
