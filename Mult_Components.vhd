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

package Mult_Components is
component Mux8 port (A,B:BIT_VECTOR(7 downto 0); Sel:BIT;Y:out BIT_VECTOR(7 downto 0));end component;
component AllZero port (X : BIT_VECTOR; F:out BIT);end component;
component Adder8 port (A,B:BIT_VECTOR(7 downto 0);Cin:BIT;Cout:out BIT;Sum:out BIT_VECTOR(7 downto 0));end component;
component Register8 port (D:BIT_VECTOR(7 downto 0);Clk,Clr:BIT; Q:out BIT_VECTOR(7 downto 0));end component;
component ShiftN port (CLK,CLR,LD,SH,DIR:BIT;D:BIT_VECTOR;Q:out BIT_VECTOR);end component;
component SM_1 port (Start, CLK, LSB, Stop, Reset : BIT;Init, Shift, Add, Done : out BIT);
end component;
end;