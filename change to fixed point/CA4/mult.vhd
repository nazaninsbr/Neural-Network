library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mult is
	generic (width : integer := 16;
				point: integer :=6);
	port(a, b: in std_logic_vector(width-1 downto 0); 
		res: out std_logic_vector(width-1 downto 0)
		);
end mult;

architecture Behavioral of mult is
	signal sign : std_logic;
	signal yaroo: unsigned(2*width-3 downto 0);
begin
	sign <= a(width-1) xor b(width-1);
	yaroo <= unsigned(a(width-2 downto 0)) * unsigned(b(width-2 downto 0));
	res(width -1) <= sign;
	res(width -2 downto 0) <= std_logic_vector(yaroo(width- 2 + point downto point));
end Behavioral;