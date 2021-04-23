LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Test_ALU IS
END Test_ALU;
 
ARCHITECTURE behavior OF Test_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_controller
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         new_char : IN  std_logic;
         char_in : IN  std_logic_vector(3 downto 0);
         error : OUT  std_logic;
         sum : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal new_char : std_logic := '0';
   signal char_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal error : std_logic;
   signal sum : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_controller PORT MAP (
          clk => clk,
          reset => reset,
          new_char => new_char,
          char_in => char_in,
          error => error,
          sum => sum
        );

   -- Clock process definitions
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
		reset <= '1';
		wait for clk_period*5;
		reset <= '0';
      wait for clk_period*5;
		--char_in <= X"E";
		--new_char <= '1';
		--wait for clk_period;
		--new_char	<= '0';
		--wait for clk_period;
		char_in <= X"E";
		new_char <= '1';
		wait for clk_period;
		new_char	<= '0';
		wait for clk_period;
		new_char	<= '0';
		wait for clk_period;
		char_in <= X"7";
		new_char <= '1';
		wait for clk_period;
		new_char	<= '0';
		wait for clk_period;
		char_in <= X"0";
		new_char <= '1';
		wait for clk_period;
		new_char	<= '0';
		wait for clk_period;
		char_in <= X"0";
		new_char <= '1';
		wait for clk_period;
		new_char	<= '0';
		wait for clk_period;
		char_in <= X"F";
		new_char <= '1';
		wait for clk_period;
		new_char	<= '0';
		wait for clk_period;
		char_in <= X"F";
		new_char <= '1';
		wait for clk_period;
		new_char	<= '0';
		--wait for clk_period;
		--char_in <= X"F";
		--new_char <= '1';
		--wait for clk_period;
		--new_char	<= '0';
		wait for clk_period;
		char_in <= X"2";
		new_char <= '1';
		wait for clk_period;
		new_char	<= '0';
		wait for clk_period;

      -- insert stimulus here 

      wait;
   end process;

END;
