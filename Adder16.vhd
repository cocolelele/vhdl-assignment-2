library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Adder16 is
    Port ( A : in  BIT_VECTOR (15 downto 0);
           B : in  BIT_VECTOR (15 downto 0);
           Cin : in  BIT;
           Cout : out  BIT;
           Sum : out  BIT_VECTOR (15 downto 0));
end Adder16;

architecture structure of Adder16 is
component
	Adder8 port(
		A, B: in BIT_VECTOR(7 downto 0);
		Cin: in BIT;
		Sum: out BIT_VECTOR(7 downto 0);
		Cout: out BIT);
end component;

signal C: BIT := '0';
begin

	A8_1:Adder8 port map
	(A(7 downto 0), B(7 downto 0), Cin, Sum(7 downto 0), C);

	A8_2:Adder8 port map
	(A(15 downto 8), B(15 downto 8), C, Sum(15 downto 8), Cout);

end structure;

