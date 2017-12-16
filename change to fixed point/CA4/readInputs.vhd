library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity readInputs is
	PORT(
		inval: in std_logic_vector(31 downto 0);
		readsig: in std_logic; 
		clk: in std_logic;
		outval: out std_logic_vector(31 downto 0)
	);
end readInputs;

architecture Behavioral of readInputs is

begin
	
	process(readsig, clk) begin 
		if(clk'EVENT and clk = '1') then
			if(readsig='1') then
				outval <= inval;
			else 
				outval <= (others=>'0');
			end if;
		end if;
	end process;

end Behavioral;

