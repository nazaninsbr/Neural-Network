	library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_ARITH.ALL;

	entity controller is
		generic ( n : integer := 0);
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
	end controller;

	architecture Behavioral of controller is
		
		TYPE CONTROLVALS IS(waiting_for_start, waiting_for_endOf_start, calculate, save, activ_func, declare_end_of_calculation);
		SIGNAL state : CONTROLVALS;
		signal calculate_num: integer := 0;

	begin
		process(clk, rst) 
		begin
			IF(rst = '1') THEN
				state <= waiting_for_start;
			ELSIF(clk'EVENT and clk = '1') THEN
				CASE state IS

					WHEN waiting_for_start =>
						done <='0';
						ready<='0';
						reg_reset<='1';
						reg_load <='0';
						calculate_num <=0;
						IF(start='1')THEN
							state <= waiting_for_endOf_start;
						END IF;
					WHEN waiting_for_endOf_start =>
						reg_reset<='0';
						IF(start='0')THEN
							state <= calculate; 
						END IF;
					WHEN calculate =>
						reg_load <= '1';
						calculate_num <= calculate_num +1;
						state <= save;
					WHEN save=> 
						reg_load <= '0';
						IF(calculate_num=n)THEN
							state <= activ_func; 
						ELSE 
							addr <= calculate_num;
							state <= calculate;
						END IF;
					WHEN activ_func =>
						ready <='1';
						state <= declare_end_of_calculation; 
					WHEN declare_end_of_calculation =>
						ready<='0';
						done <='1';
						state <= waiting_for_start;
						
				end CASE;
			END IF;
		END process; 

	END Behavioral;

