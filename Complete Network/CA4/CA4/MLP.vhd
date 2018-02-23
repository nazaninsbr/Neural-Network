----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:20:07 01/26/2018 
-- Design Name: 
-- Module Name:    hidden_layer - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.math_real.ALL;
use ieee.std_logic_misc.ALL;
use std.textio.all;

library work;
use work.nmn_types.all;

entity MLP is
	generic (n : integer := 62;
				width : integer := 16;
				point: integer := 6);
	port(
		input_vec: in fixed_array(n-1 downto 0);
		clk: in std_logic;
		rst: in std_logic; 
		start: in std_logic;
		output_val: out fixed_array(9 downto 0);
		max: out std_logic_vector(3 downto 0);
		done: out std_logic
	);
end MLP;

architecture Behavioral of MLP is
	component hidden_layer is
		generic (n : integer := 62;
					width : integer := 16;
					point: integer := 6);
		port(
			input_vec: in fixed_array(n-1 downto 0);
			clk: in std_logic;
			rst: in std_logic; 
			start: in std_logic;
			output_val: out fixed_array(19 downto 0);
			done: out std_logic
		);
	end component;
	
	component output_layer is
		generic (n : integer := 20;
					width : integer := 16;
					point: integer := 6);
		port(
			input_vec: in fixed_array(n-1 downto 0);
			clk: in std_logic;
			rst: in std_logic; 
			start: in std_logic;
			output_val: out fixed_array(9 downto 0);
			done: out std_logic
		);
	end component;
	
	component argmax is
	generic (width : integer := 16;
				point: integer :=6);
	port(args: in fixed_array(9 downto 0); 
		res: out std_logic_vector(3 downto 0)
		);
	end component;
	
	for h1: hidden_layer use entity work.hidden_layer(Behavioral); 
	for o1: output_layer use entity work.output_layer(Behavioral); 
	for a1: argmax use entity work.argmax(Behavioral); 

	signal hidden_out: fixed_array(19 downto 0);
	signal hidden_done: std_logic;
	signal output_layer_out: fixed_array(9 downto 0);
	
begin	
	h1: hidden_layer
	generic map(n => 62, width => width, point => point)
	port map(input_vec, clk, rst, start, hidden_out, hidden_done);	

	o1: output_layer
	generic map(n => 20, width => width, point => point)
	port map(hidden_out, clk, rst, hidden_done, output_layer_out, done);	
	
	a1: argmax
	generic map(width => width, point => point)
	port map(output_layer_out, max);	
	
	output_val <= output_layer_out;
end Behavioral;
