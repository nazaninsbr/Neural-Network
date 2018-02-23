--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.math_real.ALL;
use ieee.std_logic_misc.ALL;
use std.textio.all;

package nmn_types is
	type real_array is array (natural range <>) of real;
	type fixed_array is array(natural range <>) of std_logic_vector(15 downto 0);
	type weight_rom62 is array (natural range <>) of fixed_array(61 downto 0);
	type weight_rom20 is array (natural range <>) of fixed_array(19 downto 0);
	
	impure function rom_init(filename : string; len: integer) return fixed_array;
	impure function rom62_init(filename : string; idx1: integer) return weight_rom62;
	impure function rom20_init(filename : string; idx1: integer) return weight_rom20;

end nmn_types;

package body nmn_types is

	impure function rom_init(filename : string; len: integer) return fixed_array is
		file rom_file : text open read_mode is filename;
		variable rom_line : line;
		variable rom_value : bit_vector(15 downto 0);
		variable temp : fixed_array(len-1 downto 0);
	begin
	   for rom_index in 0 to len-1 loop
		 readline(rom_file, rom_line);
		 read(rom_line, rom_value);
		 temp(rom_index) := to_stdlogicvector(rom_value);
		end loop;
		return temp;
	end function;	
	
 
	impure function rom62_init(filename : string; idx1: integer) return weight_rom62 is
		file rom_file : text open read_mode is filename;
		variable rom_line : line;
		variable rom_value : bit_vector(15 downto 0);
		variable temp : weight_rom62(idx1-1 downto 0);
	begin
		for rom_index1 in 0 to idx1-1 loop
			for rom_index2 in 0 to 61 loop
			 readline(rom_file, rom_line);
			 read(rom_line, rom_value);
			 temp(rom_index1)(rom_index2):= to_stdlogicvector(rom_value);
			end loop;
		end loop;
		return temp;
	end function;
	
	impure function rom20_init(filename : string; idx1: integer) return weight_rom20 is
		file rom_file : text open read_mode is filename;
		variable rom_line : line;
		variable rom_value : bit_vector(15 downto 0);
		variable temp : weight_rom20(idx1-1 downto 0);
	begin
		for rom_index1 in 0 to idx1-1 loop
			for rom_index2 in 0 to 19 loop
			 readline(rom_file, rom_line);
			 read(rom_line, rom_value);
			 temp(rom_index1)(rom_index2):= to_stdlogicvector(rom_value);
			end loop;
		end loop;
		return temp;
	end function;
	
 
end nmn_types;
