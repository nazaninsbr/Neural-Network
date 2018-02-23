library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity adder is
	generic (width : integer := 16;
				point: integer :=6);
	port(a, b: in std_logic_vector(width-1 downto 0); 
		res: out std_logic_vector(width-1 downto 0) 
		);
end adder;

architecture Behavioral of adder is	
	component nibble_comparator is 
		generic (width: integer;
				point: integer);
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
	signal a_extended , b_extended : std_logic_vector(width-1 downto 0);
	
begin

	a_extended(width - 2 downto 0) <= a(width - 2 downto 0);
	b_extended(width - 2 downto 0) <= b(width - 2 downto 0);
	a_extended(width-1) <= '0';
	b_extended(width-1) <= '0';
	
	comp1: nibble_comparator
		generic map(width => width, point => point)
		port map(a_extended , b_extended , '0', '1', '0', a_gt_b, a_eq_b, a_lt_b);
		
	process (a, b, a_gt_b) 
		variable add_res : unsigned(width - 2 downto 0);
	begin
		if(a(width - 1) = '1' and b(width - 1) = '1') then 
			add_res := unsigned(a(width - 2 downto 0)) + unsigned(b(width - 2 downto 0));
			res <= std_logic_vector('1' & add_res(width - 2 downto 0));
		elsif (a(width - 1) = '0' and b(width - 1) = '1') then
			if(a_gt_b='1')then 
				add_res := unsigned(a(width - 2 downto 0)) - unsigned(b(width - 2 downto 0));
				res <= std_logic_vector('0' & add_res(width - 2 downto 0));
			elsif(a_eq_b='1')then
				res <= (others=>'0');
			else
				add_res := unsigned(b(width - 2 downto 0)) - unsigned(a(width - 2 downto 0));
				res <= std_logic_vector('1' & add_res(width - 2 downto 0));
			end if;
		elsif (a(width - 1) = '1' and b(width - 1) = '0') then
			if(a_gt_b='1')then 
				add_res := unsigned(a(width - 2 downto 0)) - unsigned(b(width - 2 downto 0));
				res <= std_logic_vector('1' & add_res(width - 2 downto 0));
			elsif(a_eq_b='1')then
				res <= (others=>'0');
			else
				add_res := unsigned(b(width - 2 downto 0)) - unsigned(a(width - 2 downto 0));
				res <= std_logic_vector('0' & add_res(width - 2 downto 0));
			end if;
		else  
			add_res := unsigned(a(width - 2 downto 0)) + unsigned(b(width - 2 downto 0));
			res <= '0' & std_logic_vector(add_res(width - 2 downto 0));
		end if;
		
	end process;
end Behavioral;
