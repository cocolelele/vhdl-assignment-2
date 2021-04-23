----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:17:19 02/19/2021 
-- Design Name: 
-- Module Name:    Mux8 - Behavioral 
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

entity Mux8 is
	generic (TPD : TIME := 1 ns);
	port (A, B : in BIT_VECTOR (7 downto 0);
		Sel : in BIT := '0';
		Y : out BIT_VECTOR (7 downto 0));
end;

architecture Behave of Mux8 is
begin
	Y <= A after TPD when Sel = '1' else B
after TPD;
end;

