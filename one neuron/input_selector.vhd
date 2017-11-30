library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library work;
use work.nmn_types.all;

entity input_selector is
	generic ( n : integer := 32);
	port(addr: in integer; 
			input_array: in real_array(n-1 downto 0);
			wight_array: in real_array(n-1 downto 0);
			selected_input: out real;
			selected_weight: out real
		);
end input_selector;

architecture Behavioral of input_selector is
begin
	selected_input <= input_array(addr);
	selected_weight <= wight_array(addr);
end Behavioral;
