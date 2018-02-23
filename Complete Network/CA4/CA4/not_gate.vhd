LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY inv IS
	PORT(i1: IN std_logic; o1: OUT std_logic);
END inv;

ARCHITECTURE single_delay OF inv IS
BEGIN
	o1 <= NOT i1;
END single_delay;