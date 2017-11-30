library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity activationFunction is
	port(
		data_in: in real; 
		ready: in std_logic;
		data_out: out real
	);
end activationFunction;

architecture Behavioral of activationFunction is
begin
	process(ready) 
	begin 
		if ready='1' then
			if data_in >= 0.5 then
				data_out <= data_in;
			else 
				data_out <= 0.0;
			end if;
		end if;
	end process;
end Behavioral;

