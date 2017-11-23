library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity neuron is
	generic ( n : integer := 0);
	port(
		input_vec, weight_vec: in std_logic_vector( n downto 0, 31 downto 0) ;
		clk: in std_logic;
		rst: in std_logic; 
		output_val: out std_logic_vector(31 downto 0)
	);
end neuron;

architecture Behavioral of neuron is
    COMPONENT macInOneCycle
    PORT(
         data1_in : IN  std_logic_vector(31 downto 0);
         data2_in : IN  std_logic_vector(31 downto 0);
         calculate_value : IN  std_logic;
         rst : IN  std_logic;
         data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	signal accumulated_result: std_logic_vector(31 downto 0);
	signal calculate_mac: std_logic;
begin

end Behavioral;

