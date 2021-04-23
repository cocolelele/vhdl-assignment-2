----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:49:59 04/23/2021 
-- Design Name: 
-- Module Name:    ALU_single_digit - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity ALU_single_digit is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
			  new_char : in STD_LOGIC;
           char_in : in  STD_LOGIC_VECTOR (3 downto 0);
           error : out  STD_LOGIC;
           done : out  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0));
end ALU_single_digit;

architecture Behavioral of ALU_single_digit is

	-- Keeps track of the current state of the ALU
	type legalStates is (IDLE, AWAIT_NUM1, AWAIT_OPER, AWAIT_NUM2, PROCESSING);
	signal aluState : legalStates := IDLE;
	type operations_t is (UKN, ADD, SUB, MULT, DIV); -- Note: UKN = unknown
	signal operation : operations_t := UKN;
	
	shared variable input_a, input_b : integer range 0 to 9;
	shared variable int_output : integer range 0 to 255;

begin

	get_num: process (clk)
		variable new_digit : integer range 0 to 15;
	begin
		syncEvents: if rising_edge(clk) then
			resetProc: if (reset = '1') then
				aluState <= IDLE;
				operation <= UKN;
				input_a := 0;
				input_b := 0;
				error <= '0';
				done <= '0';
			else
				stateMach: case (aluState) is
				
					when IDLE =>
						if (start = '1') then -- maybe use a start instead using enter or something?
							input_a := 0;
							input_b := 0;
							int_output := 0;
							operation <= UKN;
							error <= '0';
							--done <= '0';
							aluState <= AWAIT_NUM1;
						end if;
						done <= '0';
					
					when AWAIT_NUM1 =>
						if (new_char = '1') then
							new_digit := to_integer(unsigned(char_in));
							if (new_digit >= 6) then
								input_a := new_digit - 6;
								aluState <= AWAIT_OPER;
							else
								error <= '1';
								aluState <= IDLE;
							end if;
						end if;
					
					when AWAIT_OPER =>
						if (new_char = '1') then
							case (char_in) is
								when X"0" => operation <= MULT; aluState <= AWAIT_NUM2;
								when X"1" => operation <= ADD; aluState <= AWAIT_NUM2;
								when X"3" => operation <= SUB; aluState <= AWAIT_NUM2;
								when X"5" => operation <= DIV; aluState <= AWAIT_NUM2;
								when others => error <= '1'; aluState <= IDLE;
							end case;
							
							--if (operation /= UKN) then
							--	aluState <= AWAIT_NUM2;
							--end if;
						end if;
						
					when AWAIT_NUM2 =>
						if (new_char = '1') then
							new_digit := to_integer(unsigned(char_in));
							if (new_digit >= 6) then
								input_b := new_digit - 6;
								aluState <= PROCESSING;
							else
								error <= '1';
								aluState <= IDLE;
							end if;
						end if;
						
					when PROCESSING =>
						case (operation) is -- Obviously might be able to be done some beter way
							when MULT => int_output := input_a * input_b;
							when ADD => int_output := input_a + input_b;
							when SUB => int_output := input_a - input_b;
							when DIV => int_output := input_a / input_b;
							when others => error <= '1'; aluState <= IDLE;
						end case;
						output <= std_logic_vector(to_unsigned(int_output,8));
						done <= '1';
						aluState <= IDLE;
						
				end case stateMach;
			end if resetProc;
		end if syncEvents;
	end process get_num;

end Behavioral;

