library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity mult is
	port(a, b: in real; 
		res: out real
		);
end mult;

architecture Behavioral of mult is
begin
	res <=  a * b;
end Behavioral;
