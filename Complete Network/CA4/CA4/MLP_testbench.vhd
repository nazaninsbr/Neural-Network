--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:51:14 01/26/2018
-- Design Name:   
-- Module Name:   D:/University/Term 7/CAD/CAs/CA4/CA4/hidden_laye_testbench.vhd
-- Project Name:  CA3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: hidden_layer
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

library work;
use work.nmn_types.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MLP_testbench IS
END MLP_testbench;
 
ARCHITECTURE behavior OF MLP_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
component MLP is
	generic (n : integer := 62;
				width : integer := 16;
				point: integer := 6);
	port(
		input_vec: in fixed_array(n-1 downto 0);
		clk: in std_logic;
		rst: in std_logic; 
		start: in std_logic;
		output_val: out fixed_array(9 downto 0);
		max: out std_logic_vector(3 downto 0);
		done: out std_logic
	);
end component;

   --Inputs
	signal input_rom: weight_rom62(99 downto 0) := rom62_init(filename => "te_data_sign_mag.bin", idx1 => 100);
   signal input_vec : fixed_array(61 downto 0);
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal start : std_logic := '0';

 	--Outputs
   signal output_val : fixed_array(9 downto 0);
	signal max: std_logic_vector(3 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MLP PORT MAP (
          input_vec => input_vec,
          clk => clk,
          rst => rst,
          start => start,
          output_val => output_val,
			 max => max,
          done => done
        );

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
		for i in 0 to 99 loop
			wait for clk_period*1000;
			start <= '1';
			wait for 100 ns;	
			input_vec <= input_rom(i);
			wait for 100 ns;	
			start <= '0';
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
