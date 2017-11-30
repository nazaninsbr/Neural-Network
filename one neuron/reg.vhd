library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity reg is
	port(a: in real; 
			clk, load, rst: in STD_LOGIC;
		res: out real
		);
end reg;

architecture Behavioral of reg is
begin
	process(clk)
	begin
		if (rst = '1') then 
			res <= 0.0;
		elsif (clk'EVENT and clk = '1') then
			if(load = '1') then
				res <= a;
			end if;
		end if;
	end process;
end Behavioral;
