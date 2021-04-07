LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY lab2_test_bench IS
END lab2_test_bench;
 
ARCHITECTURE behavior OF lab2_test_bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lab2_design_top
    PORT(
         reset_pin : IN  std_logic;
         clock_pin : IN  std_logic;
         serialDataIn_pin : IN  std_logic;
         serialDataOut_pin : OUT  std_logic;
         LED_hi_pin : OUT  std_logic;
         LED_lo_pin : OUT  std_logic;
         DIP_pins : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

	-- Message to send, in the form of an array of HEX
	type msg_type is array (0 to 9) of std_logic_vector(7 downto 0);
	signal message_in : msg_type := (x"30", x"31", x"32", x"33", x"34", x"35", x"36", x"37", x"38", x"39");
	
   --Inputs
   signal reset_pin : std_logic := '0';
   signal clock_pin : std_logic := '0';
   signal serialDataIn_pin : std_logic := '1';
   signal DIP_pins : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal serialDataOut_pin : std_logic;
   signal LED_hi_pin : std_logic;
   signal LED_lo_pin : std_logic;

   -- Clock period definitions
   constant clock_pin_period : time := 15 ns;
	constant baud_rate_period : time := 17.36 us;
 
   -- Internal states
	signal msg_to_send : std_logic_vector(9 downto 0) := "0000000000";
	signal baud_state : std_logic := '0';
 
	-- Generating a UART message
	function generate_UART_msg (message : std_logic_vector(7 downto 0))
	return std_logic_vector is
		variable output : std_logic_vector(9 downto 0);
	begin
		output(0) := '0'; -- Start bit	
		output(8	downto 1) := message;
		output(9) := '1'; -- End bit
		return output;
	end generate_UART_msg;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lab2_design_top PORT MAP (
          reset_pin => reset_pin,
          clock_pin => clock_pin,
          serialDataIn_pin => serialDataIn_pin,
          serialDataOut_pin => serialDataOut_pin,
          LED_hi_pin => LED_hi_pin,
          LED_lo_pin => LED_lo_pin,
          DIP_pins => DIP_pins
        );

   -- Clock process definitions
   clock_pin_process :process
   begin
		clock_pin <= '0';
		wait for clock_pin_period/2;
		clock_pin <= '1';
		wait for clock_pin_period/2;
   end process;
 
	-- Baud rate process
	baud_rate_process: process
	begin
		baud_state <= '0';
		wait for baud_rate_period/2;
		baud_state <= '1';
		wait for baud_rate_period/2;
	end process;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset_pin <= '1';
      wait for 100 ns;	
		reset_pin <= '0';
		
      wait for baud_rate_period*3;

      -- insert stimulus here
		for charac in message_in'range loop
			msg_to_send <= generate_UART_msg(message_in(charac));
			for i in 0 to 9 loop
				wait until baud_state'event and baud_state = '1';
				serialDataIn_pin <= msg_to_send(i);
			end loop;
			wait for 30 us;
		end loop;

      wait;
   end process;

END;
