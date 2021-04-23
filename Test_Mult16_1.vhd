
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY work;
USE work.Clock_Utils.ALL;
USE work.Utils.ALL;

ENTITY testbench IS
END testbench;

ARCHITECTURE behavior OF testbench IS 
	COMPONENT Mult16 PORT( 
		X : in  BIT_VECTOR(7 downto 0);
		Y : in  BIT_VECTOR(7 downto 0);
		Start : in  BIT;
		CLK : in  BIT;
		Reset : in  BIT;
		Result : out  BIT_VECTOR (15 downto 0);
		Done : out  BIT);
	END COMPONENT;

	signal A, B : BIT_VECTOR(7 downto 0);
	signal Start, Done : BIT := '0';
	signal CLK, Reset : BIT;
	signal Result : BIT_VECTOR(15 downto 0);
	signal DA, DB, DR : INTEGER range 0 to 255;
	type t_Multiplier is ARRAY (0 to 4) of INTEGER range 0 to 255;
	signal Multiplier : t_Multiplier := (0, 112, 106, 11, 255);
          
BEGIN
	C: Clock(CLK, 10 ns, 10 ns);
	uut: Mult16 PORT MAP(A, B, Start, CLK, Reset, Result, Done);
	DR <= Convert(Result);
	Reset <= '1', '0' after 1 ns;
	PROCESS BEGIN
		for i in 0 to 4 loop for j in 0 to 4 loop
			DA <= i; DB <= j;
			A<=Convert(Multiplier(i),A'Length);B<=Convert(Multiplier(j),B'Length);
			wait until CLK'EVENT and CLK='1'; wait for 1 ns;
			Start <= '1', '0' after 20 ns; wait until Done = '1';
			wait until CLK'EVENT and CLK='1';
		end loop; end loop;
      wait;
	END PROCESS;
END;
