library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU_top is
	port(	clk : in STD_LOGIC;
			char_in : in STD_LOGIC_VECTOR(3 downto 0)
	);
end ALU_top;

architecture Behavioral of ALU_top is

	component ALU_controller
	Port ( clk : in STD_LOGIC;
			 char_in : in STD_LOGIC_VECTOR (3 downto 0)
			);
	end component;

	component Mult16
	Port ( X : in  BIT_VECTOR(7 downto 0);
          Y : in  BIT_VECTOR(7 downto 0);
          Start : in  BIT;
          CLK : in  BIT;
          Reset : in  BIT;
          Result : out  BIT_VECTOR (15 downto 0);
          Done : out  BIT);
	end component;
	
	component Adder16
	Port ( A : in  BIT_VECTOR (15 downto 0);
          B : in  BIT_VECTOR (15 downto 0);
          Cin : in  BIT;
          Cout : out  BIT;
          Sum : out  BIT_VECTOR (15 downto 0));
	end component;

	signal A, B, Output : STD_LOGIC_VECTOR(15 downto 0);
	signal Start, Reset, Done, Overflow : STD_LOGIC;

begin
	
	controller : ALU_controller
	port map( clk => clk,
				 char_in => char_in
				);
	
	multiplier : Mult16
	port map( X => A(7 downto 0),
				 Y => B(7 downto 0),
				 Start => Start,
				 CLK => clk,
				 Reset => Reset,
				 Result => Output,
				 Done => Done
				);
	
	adder : Adder16
	port map ( A => A,
				  B => B,
				  Cin => '0',
				  Cout => Overflow,
				  Sum => Output
				 );
	
end Behavioral;

