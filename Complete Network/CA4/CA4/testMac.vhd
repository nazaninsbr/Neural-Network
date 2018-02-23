--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY testMac IS
END testMac;
 
ARCHITECTURE behavior OF testMac IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mac
    PORT(
         data1_in : IN  std_logic_vector(4 downto 0);
         data2_in : IN  std_logic_vector(4 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic;
         data_out : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data1_in : std_logic_vector(4 downto 0) := (others => '0');
   signal data2_in : std_logic_vector(4 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mac PORT MAP (
          data1_in => data1_in,
          data2_in => data2_in,
          clk => clk,
          rst => rst,
          data_out => data_out
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
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
      wait for clk_period*10;
      -- insert stimulus here 
		data1_in<="00010";
		data2_in<="00001";
      wait;
   end process;

END;
