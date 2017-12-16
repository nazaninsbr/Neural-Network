library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
entity macInOneCycle is
	port(
		data1_in: in std_logic_vector(31 downto 0);
		data2_in: in std_logic_vector(31 downto 0);
		calculate_value: in std_logic;
		rst: in std_logic; 
		data_out: out std_logic_vector(63 downto 0)
	);
end macInOneCycle;

architecture Behavioral of macInOneCycle is
	signal accumulation_value: std_logic_vector(63 downto 0);
begin

	process(calculate_value)
		variable multiplication_value: std_logic_vector(63 downto 0);
	begin
		if rising_edge(calculate_value) then
			if rst='1' then
				accumulation_value <= (others => '0');
			else  
				multiplication_value := signed(data1_in)*signed(data2_in);
				accumulation_value <= signed(accumulation_value)+ signed(multiplication_value);
			end if;
		end if;
	end process;
	data_out <= accumulation_value;
end Behavioral;
