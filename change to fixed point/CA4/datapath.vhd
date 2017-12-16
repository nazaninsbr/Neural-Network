library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library work;
use work.nmn_types.all;

entity datapath is
	generic (n : integer := 32; 
				width : integer := 16;
				point: integer := 6);
	port(
		input_vec, weight_vec: in fixed_array(n-1 downto 0);
		clk: in std_logic;
		rst: in std_logic; 
		reg_load: in std_logic;
		ready: in std_logic;
		calculate_mac: in integer; 
		output_val: out std_logic_vector(width - 1 downto 0)
	);
end datapath;

architecture Behavioral of datapath is
	COMPONENT mac
		generic (width : integer;
				point: integer);
		port(
			data1_in: in std_logic_vector(width -1 downto 0);
			data2_in: in std_logic_vector(width -1 downto 0);
			clk: in std_logic;
			rst: in std_logic; 
			load: in std_logic;
			data_out: out std_logic_vector(width -1 downto 0)
		);
   END COMPONENT;
	COMPONENT activation
		generic(width: integer; 
			point: integer);
		port(
			data_in: in std_logic_vector(width-1 downto 0); 
			ready: in std_logic;
			data_out: out std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT selector
			generic ( n : integer; 
				width: integer);
			port(addr: in integer; 
				input_array: in fixed_array(n-1 downto 0);
				wight_array: in fixed_array(n-1 downto 0);
				selected_input: out std_logic_vector(width -1 downto 0);
				selected_weight: out std_logic_vector(width -1 downto 0)
			);
	END COMPONENT;
	for mac1: mac use ENTITY work.mac(Behavioral);
	for act1: activation use ENTITY work.activationFunction(Behavioral);
	for sel1: selector use ENTITY work.input_selector(Behavioral);
	SIGNAL selected_input, selected_weight, mac_out: std_logic_vector(width - 1 downto 0);
begin
	mac1: mac 
		generic map (width => width, point => point)
		port map(selected_input, selected_weight, clk, rst, reg_load, mac_out);
	act1: activation 
		generic map (width => width, point => point)
		port map(mac_out, ready, output_val);
	sel1: selector 
		generic map (n => n, width => width)
		port map(calculate_mac, input_vec, weight_vec, selected_input, selected_weight);
end Behavioral;

