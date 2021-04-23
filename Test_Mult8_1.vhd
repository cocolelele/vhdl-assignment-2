-- TestBench Template 

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY work;
USE work.Clock_Utils.ALL;
USE work.Utils.ALL;

entity Test_Mult8_1 is end; -- runs forever, use break!!
architecture Structure of Test_Mult8_1 is
use Work.Utils.all; use Work.Clock_Utils.all;
	component Mult8 port
		(A, B : BIT_VECTOR(3 downto 0); Start, CLK, Reset : BIT;
		Result : out BIT_VECTOR(7 downto 0); Done : out BIT);
	end component;
signal A, B : BIT_VECTOR(3 downto 0);
signal Start, Done : BIT := '0';
signal CLK, Reset : BIT;
signal Result : BIT_VECTOR(7 downto 0);
signal DA, DB, DR : INTEGER range 0 to 255;
type t_Multiplier is ARRAY (0 to 2) of INTEGER range 0 to 255;
signal Multiplier : t_Multiplier := (0, 2, 15);
beginC: Clock(CLK, 10 ns, 10 ns);
UUT: Mult8 port map (A, B, Start, CLK, Reset, Result, Done);
DR <= Convert(Result);
Reset <= '1', '0' after 1 ns;
process begin
	for i in 0 to 2 loop for j in 0 to 2 loop
		DA <= i; DB <= j;
		A<=Convert(Multiplier(i),A'Length);B<=Convert(Multiplier(j),B'Length);
		wait until CLK'EVENT and CLK='1'; wait for 1 ns;
		Start <= '1', '0' after 20 ns; wait until Done = '1';
		wait until CLK'EVENT and CLK='1';
	end loop; end loop;
wait;
end process;
end;