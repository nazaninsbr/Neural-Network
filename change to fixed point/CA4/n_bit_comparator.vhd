----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:19:45 12/14/2017 
-- Design Name: 
-- Module Name:    n_bit_comparator - Behavioral 
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

entity nibble_comparator is 
	generic (width: integer := 16;
				point: integer := 6);
	port (a, b: in std_logic_vector(width - 1 downto 0);
			my_gt,
			eq,
			lt: in std_logic;
			a_gt_b,
			a_eq_b,
			a_lt_b: out std_logic);
end nibble_comparator;

architecture iterative of nibble_comparator is
	component comp1
		port (a, b, my_gt, eq , lt: in std_logic; a_gt_b, a_eq_b, a_lt_b: out std_logic);
	end component;
	
	for all: comp1 use entity work.bit_comparator(gate_level);
	signal im: std_logic_vector(0 to 3 * (width - 1) - 1);
	
begin
	c0: comp1 port map (a(0), b(0), my_gt, eq, lt, im(0), im(1), im(2));
	c1: comp1 port map (a(1), b(1), im(0), im(1), im(2), im(3), im(4), im(5));
	c2: comp1 port map (a(2), b(2), im(3), im(4), im(5), im(6), im(7), im(8));
	c3: comp1 port map (a(3), b(3), im(6), im(7), im(8), im(9), im(10), im(11));
	c4: comp1 port map (a(4), b(4), im(9), im(10), im(11), im(12), im(13), im(14));
	c5: comp1 port map (a(5), b(5), im(12), im(13), im(14), im(15), im(16), im(17));
	c6: comp1 port map (a(6), b(6), im(15), im(16), im(17), im(18), im(19), im(20));
	c7: comp1 port map (a(7), b(7), im(18), im(19), im(20), im(21), im(22), im(23));
	c8: comp1 port map (a(8), b(8), im(21), im(22), im(23), im(24), im(25), im(26));
	c9: comp1 port map (a(9), b(9), im(24), im(25), im(26), im(27), im(28), im(29));
	c10: comp1 port map (a(10), b(10), im(27), im(28), im(29), im(30), im(31), im(32));
	c11: comp1 port map (a(11), b(11), im(30), im(31), im(32), im(33), im(34), im(35));
	c12: comp1 port map (a(12), b(12), im(33), im(34), im(35), im(36), im(37), im(38));
	c13: comp1 port map (a(13), b(13), im(36), im(37), im(38), im(39), im(40), im(41));
	c14: comp1 port map (a(14), b(14), im(39), im(40), im(41), im(42), im(43), im(44));
	
--	c1to14: for i in 2 to width-2 generate
--		c: comp1 port map (a(i), b(i), im(i*3-3), im(i*3-2), im(i*3-1), im(i*3+0), im(i*3+1), im(i*3+2));
--	end generate c1to14;
	
	c15: comp1 port map (a(width -1) , b(width -1), im((width -1)*3 - 3), im((width -1)*3 - 2), im((width -1)*3 - 1),
								a_gt_b, a_eq_b, a_lt_b);
end iterative;
