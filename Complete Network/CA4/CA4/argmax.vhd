library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library work;
use work.nmn_types.all;

entity argmax is
	generic (width : integer := 16;
				point: integer :=6);
	port(args: in fixed_array(9 downto 0); 
		res: out std_logic_vector(3 downto 0)
		);
end argmax;

architecture Behavioral of argmax is
begin
	p1: process(args) is
		variable max, max_index: integer;
	begin
		max := 10;
		max_index := 10;
		for i in 0 to 9 loop
			if to_integer(signed(args(i))) > max then
				max := to_integer(signed(args(i)));
				max_index := i;
			end if;
		end loop;
		res <= std_logic_vector(to_unsigned(max_index, 4));
	end process p1;
end Behavioral;