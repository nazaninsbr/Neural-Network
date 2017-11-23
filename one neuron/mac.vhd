library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity mac is
	port(
		data1_in: in std_logic_vector(4 downto 0);
		data2_in: in std_logic_vector(4 downto 0);
		clk: in std_logic;
		rst: in std_logic; 
		data_out: out std_logic_vector(9 downto 0)
	);
end mac;

architecture Behavioral of mac is
	signal accumulation_value: std_logic_vector(9 downto 0);
begin

	process(clk)
		variable multiplication_value: std_logic_vector(9 downto 0);
	begin
		if rising_edge(clk) then
			if rst='1' then
				accumulation_value <= "0000000000";
			else 
				multiplication_value := signed(data1_in)*signed(data2_in);
				accumulation_value <= signed(accumulation_value)+ signed(multiplication_value);
			end if;
		end if;
	end process;
	data_out <= accumulation_value;
end Behavioral;

