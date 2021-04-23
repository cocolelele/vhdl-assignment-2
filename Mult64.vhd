library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- For our 2 8 bit number X = 0xab & Y = 0xcd
-- Output should be a 16 bit number!

-- Plan for integration:
-- 4x 4 bit multipliers with bit shift s
-- 	A = b*d (s=0)
-- 	B = a*d (s=4)
-- 	C = b*c (s=4)
-- 	D = a*c (s=8)
-- 4x 16 bit adders (can be built from 8 bit adders with a shifting mechanic)
-- 	A + B + C + D

-- Output will be a 16 bit number with an overflow (carry) bit.
-- NOTE: The shifting is probably best done in the final addition!

-- Not sure if this is the correct name for this but hey ho
entity Mult16 is
	port (
		X, Y: in BIT_VECTOR(7 downto 0);
		Start, CLK, Reset: in BIT;
		Result: out BIT_VECTOR(15 downto 0);
		Done: out BIT);
end Mult16;

architecture Structure of Mult64 is
component
	Mult8 port (A, B: in BIT_VECTOR(3 downto 0); Start, CLK, Reset: in BIT;
		Result: out BIT_VECTOR(7 downto 0); Done: out BIT);
end component;

begin


end Behavioral;
