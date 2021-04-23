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
-- 3x N bit shifters using s
-- 3x 16 bit adders (can be built from 8 bit adders with a shifting mechanic)
-- 	A + B + C + D

-- Output will be a 16 bit number without an overflow (carry) bit.

entity Mult16 is
    Port ( X : in  BIT_VECTOR(7 downto 0);
           Y : in  BIT_VECTOR(7 downto 0);
           Start : in  BIT;
           CLK : in  BIT;
           Reset : in  BIT;
           Result : out  BIT_VECTOR (15 downto 0);
           Done : out  BIT);
end Mult16;

architecture architechture of Mult16 is
component
	Adder16 port(
		A, B: in BIT_VECTOR(15 downto 0);
		Cin: in BIT;
		Sum: out BIT_VECTOR(15 downto 0);
		Cout: out BIT);
end component;

component
	Mult8 port(
		A, B: in BIT_VECTOR(3 downto 0);
		Start, CLK, Reset: in BIT;
		Result: out BIT_VECTOR(7 downto 0);
		Done: out BIT);
end component;

signal A,B,C,D,Temp1,Temp2: BIT_VECTOR(15 downto 0) := x"0000";
signal Done_cumul: BIT_VECTOR(3 downto 0):= "0000";
signal Carry1,Carry2,Carry_out: BIT := '0';

begin
	M8_1:Mult8 port map
	(X(3 downto 0), Y(3 downto 0), Start, CLK, Reset, A(7 downto 0), Done_cumul(0));
	M8_2:Mult8 port map
	(X(7 downto 4), Y(3 downto 0), Start, CLK, Reset, B(11 downto 4), Done_cumul(1));
	M8_3:Mult8 port map
	(X(3 downto 0), Y(7 downto 4), Start, CLK, Reset, C(11 downto 4), Done_cumul(2));
	M8_4:Mult8 port map
	(X(7 downto 4), Y(7 downto 4), Start, CLK, Reset, D(15 downto 8), Done_cumul(3));
		
	Done <= Done_cumul(0) and Done_cumul(1) and Done_cumul(2) and Done_cumul(3);	
	
	A16_1:Adder16 port map
	(A, B, Carry2, Temp1, Carry1);	
	A16_2:Adder16 port map
	(Temp1, C, Carry1, Temp2, Carry2);	
	A16_3:Adder16 port map
	(Temp2, D, Carry2, Result, Carry_out);

end architechture;

