----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:01:08 12/14/2017 
-- Design Name: 
-- Module Name:    bit_comparator - Behavioral 
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

entity bit_comparator is 
	port (a , b,
			my_gt, 
			eq,
			lt: in std_logic;
			a_gt_b,
			a_eq_b,
			a_lt_b: out std_logic);
end bit_comparator;

architecture gate_level of bit_comparator is
	component n1 port (i1: in std_logic; o1: out std_logic);
	end component;
	
	component n2 port (i1, i2: in std_logic; o1: out std_logic);
	end component;
	
	component n3 port (i1, i2, i3: in std_logic; o1: out std_logic);
	end component;
	
	for all: n1 use entity work.inv(single_delay);
	for all: n2 use entity work.nand2(single_delay);
	for all: n3 use entity work.nand3(single_delay);

	signal im1, im2, im3, im4, im5, im6, im7, im8, im9, im10: std_logic;
	
	begin
	g0: n1 port map (a, im1);
	g1: n1 port map (b, im2);
	g2: n2 port map (a, im2, im3);
	g3: n2 port map (a, my_gt, im4);
	g4: n2 port map (im2, my_gt, im5);
	g5: n3 port map (im3, im4, im5, a_gt_b);
	
	g6: n3 port map (im1, im2, eq, im6);
	g7: n3 port map (a, b, eq, im7);
	g8: n2 port map (im6, im7, a_eq_b);
	g9: n2 port map (im1, b, im8);
	g10: n2 port map (im1, lt, im9);
	g11: n2 port map (b, lt, im10);
	g12: n3 port map (im8, im9, im10, a_lt_b);
end gate_level;


