library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity multiplier is
	port(
		a, b: in std_logic_vector(4 downto 0); 
		res: out std_logic_vector(9 downto 0)
	);
end multiplier;

architecture Behavioral of multiplier is
begin
	res <= signed(a)*signed(b) after 5 ns;
end Behavioral;

