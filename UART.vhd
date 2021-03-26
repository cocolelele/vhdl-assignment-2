library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity UART is
	 generic(	BAUD_RATE : integer := 57600;
					CLOCK_RATE : integer := 66666667);
	 port( 	reset : in STD_LOGIC;
				clock : in STD_LOGIC;
				serialDataIn : in STD_LOGIC;
				parallelDataOut : out STD_LOGIC_VECTOR (7 downto 0);
				dataValid : out STD_LOGIC;
				parallelDataIn : in STD_LOGIC_VECTOR (7 downto 0);
				transmitRequest : in STD_LOGIC;
				txIsReady : out STD_LOGIC;
				serialDataOut : out STD_LOGIC
	 );
end entity UART;

architecture Behavioral of UART is

	signal baudRateEnable : std_logic := 'U';
	signal baudRateEnable_x16 : std_logic := 'U';
	
	component UART_baudRateGenerator
		generic (BAUD_RATE : integer := 57600; CLOCK_RATE : integer := 66666667);
		port(	reset : in STD_LOGIC;
				clock : in STD_LOGIC;
				baudRateEnable : out STD_LOGIC;
				baudRateEnable_x16 : out STD_LOGIC
		);
	end component;
	
	component UART_transmitter
		Port(	reset : in STD_LOGIC;
				clock : in STD_LOGIC;
				baudRateEnable : in STD_LOGIC;
				parallelDataIn : in STD_LOGIC_VECTOR (7 downto 0);
				transmitRequest : in STD_LOGIC;
				ready : out STD_LOGIC;
				serialDataOut : out STD_LOGIC
		);
	end component;
	
	component UART_receiver
		Port(	reset : in STD_LOGIC;
			clock : in STD_LOGIC;
			baudRateEnable_x16 : in STD_LOGIC;
			serialDataIn : in STD_LOGIC;
			parallelDataOut : out STD_LOGIC_VECTOR (7 downto 0);
			dataValid : out STD_LOGIC
		);
	end component;
	
	constant nCountsPerBaud : integer := CLOCK_RATE / BAUD_RATE;
	constant nCountsPerBaud_X16 : integer := nCountsPerBaud / 16;
begin
	rateGen: UART_baudRateGenerator
		generic map (BAUD_RATE => BAUD_RATE, CLOCK_RATE => CLOCK_RATE)
		port map(
			reset => reset,
			clock => clock,
			baudRateEnable => baudRateEnable,
			baudRateEnable_x16 => baudRateEnable_x16
		); 

	xmit: UART_transmitter PORT MAP(
		 reset => reset,
		 clock => clock,
		 baudRateEnable => baudRateEnable,
		 parallelDataIn => parallelDataIn,
		 transmitRequest => transmitRequest,
		 ready => txIsReady,
		 serialDataOut => serialDataOut
	);

	rcvr: UART_receiver PORT MAP(
		 reset => reset,
		 clock => clock,
		 baudRateEnable_x16 => baudRateEnable_x16,
		 serialDataIn => serialDataIn,
		 parallelDataOut => parallelDataOut,
		 dataValid => dataValid
	);
		
end architecture Behavioral;