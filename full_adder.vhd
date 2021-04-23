----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:09 02/19/2021 
-- Design Name: 
-- Module Name:    full_adder - Behavioral 
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

entity Full_Adder is
	generic (TS : TIME := 0.11 ns; TC : TIME := 0.1 ns);
	port (X, Y, Cin: in BIT; Cout, Sum: out BIT);
end Full_Adder;

architecture Behave of Full_Adder is
begin
	Sum <= X xor Y xor Cin after TS;
	Cout <= (X and Y) or (X and Cin) or (Y and Cin) after TC;
end;