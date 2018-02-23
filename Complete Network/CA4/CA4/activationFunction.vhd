library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity activationFunction is
	generic(width: integer := 16; 
			point: integer :=6);
	port(
		data_in: in std_logic_vector(width-1 downto 0); 
		ready: in std_logic;
		data_out: out std_logic_vector(width-1 downto 0)
	);
end activationFunction;

architecture Behavioral of activationFunction is

	component nibble_comparator is 
		generic (width: integer := 16;
				point: integer := 6);
		port (a, b: in std_logic_vector(width - 1 downto 0);
			my_gt,
			eq,
			lt: in std_logic;
			a_gt_b,
			a_eq_b,
			a_lt_b: out std_logic);
	end component;

	for comp1: nibble_comparator use entity work.nibble_comparator(iterative); 
	
	signal a_gt_b, a_eq_b, a_lt_b: std_logic; 
	
begin
	comp1: nibble_comparator
		generic map(width => width, point => point)
		port map(data_in, "0000000000000000", '0', '1', '0', a_gt_b, a_eq_b, a_lt_b);
	process(ready) 
	begin 
		if ready='1' then
			if ((a_gt_b='1' or a_eq_b = '1') and data_in(width-1) = '0') then
				data_out <= data_in;
			else 
				data_out <= (others =>'0');
			end if;
		end if;
	end process;
end Behavioral;

