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

package Clock_Utils is
procedure Clock (signal C: out Bit; HT, LT:TIME);
end Clock_Utils;

package body Clock_Utils is
procedure Clock (signal C: out Bit; HT, LT:TIME) is
begin
	loop C<='1' after LT, '0' after LT + HT; wait for LT + HT;
	end loop;
end;
end Clock_Utils;