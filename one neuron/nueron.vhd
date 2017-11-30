library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library work;
use work.nmn_types.all;

entity neuron is
	generic ( n : integer := 32);

	port(
		input_vec, weight_vec: in  real_array(n-1 downto 0);
		clk: in std_logic;
		rst: in std_logic; 
		start: in std_logic;
		output_val: out real;
		done: out std_logic
	);
end neuron;

architecture Behavioral of neuron is
	Component datapath
		generic (n: integer);
		port(
			input_vec, weight_vec: in real_array(n-1 downto 0);
			clk: in std_logic;
			rst: in std_logic; 
			reg_load: in std_logic;
			ready: in std_logic;
			calculate_mac: in integer; 
			output_val: out real
		);
	end component;
	
	Component controller
		generic (n: integer);
		port(
			clk: in std_logic;
			rst: in std_logic; 
			start: in std_logic;
			done: out std_logic;
			ready: out std_logic;
			reg_reset: out std_logic;
			reg_load: out std_logic;
			addr: buffer integer := 0
		);
	end component;
	
	for dp1: datapath use entity work.datapath(Behavioral); 
	for co1: controller use entity work.controller(Behavioral); 
	
	signal reg_load, ready, reg_reset : std_logic;
	signal calculate_mac : integer;
begin
	dp1: datapath
		generic map(n => n)
		port map(input_vec, weight_vec, clk, reg_reset, reg_load, ready, calculate_mac, output_val);
	co1: controller
		generic map(n => n)
		port map(clk, rst, start, done, ready, reg_reset, reg_load, calculate_mac);
end Behavioral;

