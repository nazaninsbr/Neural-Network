library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity activationFunction is
	port(
		in_val: in std_logic_vector(31 downto 0); 
		ready_signal: in std_logic;
		out_val: out std_logic_vector(31 downto 0)
	);
end activationFunction;

architecture Behavioral of activationFunction is
begin
	process(ready_signal) 
	begin 
		if ready_signal='1' then
			if in_val>="00000000000000010000000000000000" then
				out_val <= in_val;
			else 
				out_val <= (others => '0');
			end if;
		end if;
	end process; 
end Behavioral;

