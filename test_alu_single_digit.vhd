
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY test_alu_single_digit IS
END test_alu_single_digit;
 
ARCHITECTURE behavior OF test_alu_single_digit IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT ALU_single_digit
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         new_char : IN  std_logic;
         char_in : IN  std_logic_vector(3 downto 0);
         error : OUT  std_logic;
         done : OUT  std_logic;
         output : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal new_char : std_logic := '0';
   signal char_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal error : std_logic;
   signal done : std_logic;
   signal output : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 15 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_single_digit PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          new_char => new_char,
          char_in => char_in,
          error => error,
          done => done,
          output => output
        );
		  
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.\
		reset <= '1';
      wait for clk_period*3;
		reset <= '0';
      wait for clk_period*10;

      -- start
		start <= '1';
		wait for clk_period;
		start <= '0';
		
		-- number 1
		char_in <= x"A";
		new_char <= '1';
		wait for clk_period;
		new_char <= '0';
		wait for clk_period*5;
		
		-- operand
		char_in <= x"0";
		new_char <= '1';
		wait for clk_period;
		new_char <= '0';
		wait for clk_period*5;
		
		-- number 2
		char_in <= x"E";
		new_char <= '1';
		wait for clk_period;
		new_char <= '0';
		wait for clk_period*5;
		
      wait;
   end process;

END;
