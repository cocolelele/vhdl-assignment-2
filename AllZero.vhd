----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:18:19 02/19/2021 
-- Design Name: 
-- Module Name:    AllZero - Behavioral 
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

entity AllZero is
	generic (TPD : TIME := 1 ns);
	port (X : BIT_VECTOR; F : out BIT );
end;

architecture Behave of AllZero is
begin process (X) begin F <= '1' after TPD;
	for j in X'RANGE loop
		if X(j) = '1' then F <= '0' after TPD;
		end if;
	end loop;
end process;
end;

