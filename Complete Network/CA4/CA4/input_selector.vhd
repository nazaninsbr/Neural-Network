library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library work;
use work.nmn_types.all;

entity input_selector is
	generic ( n : integer := 32; 
				width: integer := 16);
	port(addr: in integer; 
			input_array: in fixed_array(n-1 downto 0);
			wight_array: in fixed_array(n-1 downto 0);
			selected_input: out std_logic_vector(width -1 downto 0);
			selected_weight: out std_logic_vector(width -1 downto 0)
		);
end input_selector;

architecture Behavioral of input_selector is
begin
	selected_input <= input_array(addr);
	selected_weight <= wight_array(addr);
end Behavioral;
