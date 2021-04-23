library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab2_design_top is
	port (	reset_pin: in STD_LOGIC;
				clock_pin: in STD_LOGIC;
				serialDataIn_pin: in STD_LOGIC;
				serialDataOut_pin: out STD_LOGIC;
				LED_hi_pin: out STD_LOGIC;
				LED_lo_pin: out STD_LOGIC;
				Error_pin: out STD_LOGIC;
				DIP_pins: in STD_LOGIC_VECTOR (3 downto 0)
			);
end entity lab2_design_top;

architecture structural of lab2_design_top is

	component UART
	generic (BAUD_RATE : integer := 57600; CLOCK_RATE : integer := 66666667);
	port (	reset : in STD_LOGIC;
				clock : in STD_LOGIC;
				serialDataIn : in STD_LOGIC;
				parallelDataOut : out STD_LOGIC_VECTOR (7 downto 0);
				dataValid : out STD_LOGIC;
				parallelDataIn : in STD_LOGIC_VECTOR (7 downto 0);
				transmitRequest : in STD_LOGIC;
				txIsReady : out STD_LOGIC;
				serialDataOut : out STD_LOGIC
	 );
	 end component;
	
	component character_decoder
	generic (CLOCK_FREQUENCY : integer := 66666667);
	port(	clk : in STD_LOGIC;
			charFromUART_valid : in STD_LOGIC;
			charFromUART : in STD_LOGIC_VECTOR(7 downto 0);
			LED_hi : out STD_LOGIC;
			LED_lo : out STD_LOGIC;
			send_character : out STD_LOGIC;
			character_to_send : out STD_LOGIC_VECTOR (7 downto 0);
			lut_op : out STD_LOGIC_VECTOR (3 downto 0);
			lut_new_char: out STD_LOGIC;
			lut_start: out STD_LOGIC
	);
	end component;
	
	component character_encoder
	port(	clk : in STD_LOGIC;
			character_decoded : in STD_LOGIC;
			character_to_send : in STD_LOGIC_VECTOR (7 downto 0);
			tx_ready : in STD_LOGIC;
			parallelDataIn : out STD_LOGIC_VECTOR (7 downto 0);
			transmitRequest : out STD_LOGIC;
			DIP_dbncd : in STD_LOGIC_VECTOR (3 downto 0)
	);
	end component;
	
	component debouncer
	generic (DELAY_VALUE : integer := 100);
	Port(	clk : in STD_LOGIC;
			signal_in : in STD_LOGIC;
			signal_out : out STD_LOGIC
	);
	end component;
	
	component ALU_single_digit
	Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           start : in  STD_LOGIC;
			  new_char : in STD_LOGIC;
           char_in : in  STD_LOGIC_VECTOR (3 downto 0);
           error : out  STD_LOGIC;
           done : out  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal lut_op : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal parallelDataOut : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal dataValid : STD_LOGIC := 'U';
	signal parallelDataIn : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal transmitRequest : STD_LOGIC := 'U';
	signal tx_ready : STD_LOGIC := 'U';
	signal send_character : STD_LOGIC := 'U';
	signal character_to_send : STD_LOGIC_VECTOR(7 downto 0) := (others=>'U');
	signal DIP_debounced : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
	signal gnd : STD_LOGIC := '0';
	signal lut_new_char: STD_LOGIC := '0';
	signal lut_start: STD_LOGIC := '0';
	
	begin
		make_UART: UART
			generic map (BAUD_RATE => 57600, CLOCK_RATE => 66666667)
			port map(reset => reset_pin,
						clock => clock_pin,
						serialDataIn => serialDataIn_pin,
						parallelDataOut => parallelDataOut,
						dataValid => dataValid,
						parallelDataIn => parallelDataIn,
						transmitRequest => transmitRequest,
						txIsReady => tx_ready,
						serialDataOut => serialDataOut_pin
			);
		
		decoder: character_decoder
			generic map (CLOCK_FREQUENCY => 66666667)
			port map(clk => clock_pin,
						charFromUART_valid => dataValid,
						charFromUART => parallelDataOut,
						LED_hi => LED_hi_pin,
						LED_lo => LED_lo_pin,
						--send_character => send_character,
						--character_to_send => character_to_send,
						lut_op => lut_op,
						lut_new_char => lut_new_char,
						lut_start => lut_start
			);
			
		encoder: character_encoder
			port map(clk => clock_pin,
						character_decoded => send_character,
						character_to_send => character_to_send,
						tx_ready => tx_ready,
						parallelDataIn => parallelDataIn,
						transmitRequest => transmitRequest,
						DIP_dbncd => DIP_debounced
			);
			
		DIP_debouncers: for i in 0 to 3 generate
			dbncr: debouncer
				generic map (DELAY_VALUE => 100)
				port map(clk => clock_pin,
							signal_in => DIP_pins(i),
							signal_out => DIP_debounced(i)
				);
		end generate DIP_debouncers;
		
		ALU: ALU_single_digit
		 port map (
			  clk => clock_pin,
           reset => reset_pin,
           start => lut_start,
			  new_char => lut_new_char,
           char_in => lut_op,
           error => Error_pin,
           done => send_character,
           output => character_to_send
			  );


end structural;