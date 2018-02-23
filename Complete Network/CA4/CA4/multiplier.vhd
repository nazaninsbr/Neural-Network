library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity multiplier is
	generic ( n : integer := 0);
	port(
		a, b: in std_logic_vector(n downto 0); 
		res: out std_logic_vector((2*n-1) downto 0)
	);
end multiplier;

architecture Behavioral of multiplier is
begin
	res <= signed(a)*signed(b) after 5 ns;
end Behavioral;

