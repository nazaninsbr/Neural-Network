library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity adder is
	port(a, b: in real; 
		res: out real
		);
end adder;

architecture Behavioral of adder is
begin
	res <=  a + b;
end Behavioral;
