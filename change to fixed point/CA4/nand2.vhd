LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY nand2 IS
	PORT(i1, i2: IN std_logic; o1: OUT std_logic);
END nand2;

ARCHITECTURE single_delay OF nand2 IS
BEGIN
	o1 <= i1 NAND i2;
END single_delay;

