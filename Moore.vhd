----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:25:10 02/19/2021 
-- Design Name: 
-- Module Name:    Moore - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SM_1 is
	generic (TPD : TIME := 1 ns);
	port(Start, Clk, LSB, Stop, Reset: in BIT; Init, Shift, Add, Done : out BIT);
end;

architecture Moore of SM_1 is
type STATETYPE is (I, C, A, S, E);
signal State: STATETYPE;
begin
Init <= '1' after TPD when State = I
	else '0' after TPD;
Add <= '1' after TPD when State = A
	else '0' after TPD;
Shift <= '1' after TPD when State = S
	else '0' after TPD;
Done <= '1' after TPD when State = E
	else '0' after TPD;

process (CLK, Reset) begin
	if Reset = '1' then State <= E;
	elsif CLK'EVENT and CLK = '1' then
	case State is
		when I => State <= C;
		when C =>
			if LSB = '1' then State <= A;
			elsif Stop = '0' then State <= S;
			else State <= E;
			end if;
		when A => State <= S;
		when S => State <= C;
		when E =>
			if Start = '1' then State <= I;
			end if;
	end case;
	end if;
end process;
end;