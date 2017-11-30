library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

library work;
use work.nmn_types.all;

entity datapath is
	generic (n : integer := 32);
	port(
		input_vec, weight_vec: in real_array(n-1 downto 0);
		clk: in std_logic;
		rst: in std_logic; 
		reg_load: in std_logic;
		ready: in std_logic;
		calculate_mac: in integer; 
		output_val: out real
	);
end datapath;

architecture Behavioral of datapath is
	COMPONENT mac
		port(
			data1_in: in real;
			data2_in: in real;
			clk: in std_logic;
			rst: in std_logic; 
			load: in std_logic;
			data_out: out real
		);
   END COMPONENT;
	COMPONENT activation
		port(
			data_in: in real; 
			ready: in std_logic;
			data_out: out real
		);
	END COMPONENT;
	COMPONENT selector
			generic (n: integer);
			port(addr: in integer; 
			input_array: in real_array(n-1 downto 0);
			wight_array: in real_array(n-1 downto 0);
			selected_input: out real;
			selected_weight: out real
		);
	END COMPONENT;
	for mac1: mac use ENTITY work.mac(Behavioral);
	for act1: activation use ENTITY work.activationFunction(Behavioral);
	for sel1: selector use ENTITY work.input_selector(Behavioral);
	SIGNAL selected_input, selected_weight, mac_out: real;
begin
	mac1: mac port map(selected_input, selected_weight, clk, rst, reg_load, mac_out);
	act1: activation port map(mac_out, ready, output_val);
	sel1: selector 
		generic map (n => n)
		port map(calculate_mac, input_vec, weight_vec, selected_input, selected_weight);
end Behavioral;

