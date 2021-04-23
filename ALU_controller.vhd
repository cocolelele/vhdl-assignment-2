library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU_controller is
	port ( clk : in STD_LOGIC;
			 reset : in STD_LOGIC;
			 new_char : in STD_LOGIC;
			 start : in STD_LOGIC;
			 char_in : in STD_LOGIC_VECTOR (3 downto 0);
			 error : out STD_LOGIC;
			 done : out STD_LOGIC;
			 sum : out STD_LOGIC_VECTOR (15 downto 0)
			);
end ALU_controller;

architecture Behavioral of ALU_controller is

	-- Keeps track of the current state of the ALU
	type legalStates is (IDLE, AWAIT_NUM1, AWAIT_OPER, AWAIT_NUM2, PROCESSING);
	signal aluState : legalStates := IDLE;
	type operations_t is (UKN, ADD, SUB, MULT, DIV); -- Note: UKN = unknown
	signal operation : operations_t := UKN;
	
	shared variable input_a, input_b : integer range 0 to 255;
	shared variable output : integer range 0 to 65535;
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
							output := 0;
							operation <= UKN;
							error <= '0';
							done <= '0';
							aluState <= AWAIT_NUM1;
						end if;
					
					when AWAIT_NUM1 =>
						if (new_char = '1') then
							new_digit := to_integer(unsigned(char_in));
							if (new_digit >= 6) then
								if ((input_a * 10) + (new_digit - 6) <= 255) then -- Better way to do overflow?
									input_a := input_a * 10;
									input_a := input_a + new_digit - 6;
								else
									error <= '1';
									aluState <= IDLE;
								end if;
							else
								aluState <= AWAIT_OPER;
							end if;
						end if;
					
					when AWAIT_OPER =>
						case (char_in) is
							when X"0" => operation <= MULT;
							when X"1" => operation <= ADD;
							when X"3" => operation <= SUB;
							when X"5" => operation <= DIV;
							when others => error <= '1'; aluState <= IDLE;
						end case;
						
						if (operation /= UKN) then
							aluState <= AWAIT_NUM2;
						end if;
						
					when AWAIT_NUM2 =>
						if (new_char = '1') then
							new_digit := to_integer(unsigned(char_in));
							if (new_digit >= 6) then
								if ((input_b * 10) + (new_digit - 6) <= 255) then -- Better way to deal with overflow?
									input_b := input_b * 10;
									input_b := input_b + new_digit - 6;
								else
									error <= '1';
									aluState <= IDLE;
								end if;
							else
								aluState <= PROCESSING;
							end if;
						end if;
						
					when PROCESSING =>
						case (operation) is -- Obviously might be able to be done some beter way
							when MULT => output := input_a * input_b;
							when ADD => output := input_a + input_b;
							when SUB => output := input_a - input_b;
							when DIV => output := input_a / input_b;
							when others => error <= '1'; aluState <= IDLE;
						end case;
						sum <= std_logic_vector(to_unsigned(output,16));
						done <= '1';
						aluState <= IDLE;
						
				end case stateMach;
			end if resetProc;
		end if syncEvents;
	end process get_num;

end Behavioral;

