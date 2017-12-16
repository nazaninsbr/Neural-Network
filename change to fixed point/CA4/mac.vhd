library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity mac is
	generic (width : integer := 16;
				point: integer :=6);
	port(
		data1_in: in std_logic_vector(width -1 downto 0);
		data2_in: in std_logic_vector(width -1 downto 0);
		clk: in std_logic;
		rst: in std_logic; 
		load: in std_logic;
		data_out: out std_logic_vector(width -1 downto 0)
	);
end mac;

architecture Behavioral of mac is
	component adder is
			generic (width : integer;
				point: integer);
			port(a, b: in std_logic_vector(width -1 downto 0); 
			res: out std_logic_vector(width-1 downto 0)
			); 
	end component;	
	component mult is
			generic (width : integer;
				point: integer);
			port(a, b: in std_logic_vector(width -1 downto 0); 
			res: out std_logic_vector(width -1 downto 0)
			); 
	end component;
	component reg is 
		generic (width : integer;
				point: integer);
		port(a: in std_logic_vector(width -1 downto 0); 
			clk, load, rst: in STD_LOGIC;
		res: out std_logic_vector(width -1 downto 0)
		);
	end component;
	
	for m1: mult use entity work.mult(Behavioral);
	for a1: adder use entity work.adder(Behavioral);
	for r1: reg use entity work.reg(Behavioral);
	
	signal accumulated_value, added_value, multiplication_value: std_logic_vector(width - 1 downto 0);
begin
	m1: mult 
		generic map (width => width, point => point)
		port map(data1_in, data2_in, multiplication_value);
	a1: adder
		generic map (width => width, point => point)
		port map(multiplication_value, accumulated_value, added_value);
	r1: reg 
		generic map (width => width, point => point)
		port map(added_value, clk, load, rst, accumulated_value);
	data_out <= accumulated_value;
end Behavioral;

