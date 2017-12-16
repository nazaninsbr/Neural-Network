library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity reg is
	generic (width : integer := 16;
				point: integer := 6);
	port(a: in std_logic_vector(width-1 downto 0); 
			clk, load, rst: in STD_LOGIC;
		res: out std_logic_vector(width-1 downto 0)
		);
end reg;

architecture Behavioral of reg is
begin
	process(clk)
	begin
		if (rst = '1') then 
			res <= "0000000000000000";
		elsif (clk'EVENT and clk = '1') then
			if(load = '1') then
				res <= a;
			end if;
		end if;
	end process;
end Behavioral;
