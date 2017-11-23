library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity adder is
	port(a, b: in std_logic_vector(4 downto 0); 
		res: out std_logic_vector(4 downto 0)
		);
end adder;

architecture Behavioral of adder is
begin
	res <= signed(a) + signed(b);
end Behavioral;

