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

entity hidden_layer is
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
end hidden_layer;

architecture Behavioral of hidden_layer is
	component neuron is
		generic (n : integer := 62; 
					width : integer := 16;
					point: integer := 6);
		port(
			input_vec, weight_vec: in fixed_array(n-1 downto 0);
			bias: in std_logic_vector(width-1 downto 0);
			clk: in std_logic;
			rst: in std_logic; 
			start: in std_logic;
			output_val: out std_logic_vector(width -1 downto 0);
			done: out std_logic
		);
	end component;
	
	signal done_vec: std_logic_vector(19 downto 0);
	signal weight_vec: weight_rom62(19 downto 0) := rom62_init(filename => "w1_sign_mag.bin", idx1 => 20);
	signal bias_vec: fixed_array(19 downto 0) := rom_init(filename => "b1_sign_mag.bin", len => 20);	
begin	
	n0to19: for i in 0 to 19 generate
		ni: neuron
			GENERIC MAP(n => n, width => width, point => point)
			PORT MAP(input_vec, weight_vec(i), bias_vec(i), clk, rst, start, output_val(i), done_vec(i));
	end generate;
		
	done <= '1' when done_vec = "11111111111111111111" else '0';
		
end Behavioral;
