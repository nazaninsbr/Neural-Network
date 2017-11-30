library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity mac is
	port(
		data1_in: in real;
		data2_in: in real;
		clk: in std_logic;
		rst: in std_logic; 
		load: in std_logic;
		data_out: out real
	);
end mac;

architecture Behavioral of mac is
	component adder is
			port(a, b: in real; 
			res: out real
			); 
	end component;	
	component mult is
			port(a, b: in real; 
			res: out real
			); 
	end component;
	component reg is 
		port(a: in real; 
			clk, load, rst: in STD_LOGIC;
		res: out real
		);
	end component;
	
	for m1: mult use entity work.mult(Behavioral);
	for a1: adder use entity work.adder(Behavioral);
	for r1: reg use entity work.reg(Behavioral);
	
	signal accumulated_value, added_value, multiplication_value: real;
begin
	m1: mult port map(data1_in, data2_in, multiplication_value);
	a1: adder port map(multiplication_value, accumulated_value, added_value);
	r1: reg port map(added_value, clk, load, rst, accumulated_value);
	data_out <= accumulated_value;
end Behavioral;

