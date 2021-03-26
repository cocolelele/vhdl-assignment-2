
-- VHDL Instantiation Created from source file UART_baudRateGenerator.vhd -- 13:44:05 03/19/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT UART_baudRateGenerator
	PORT(
		reset : IN std_logic;
		clock : IN std_logic;          
		baudRateEnable : OUT std_logic;
		baudRateEnable_x16 : OUT std_logic
		);
	END COMPONENT;

	Inst_UART_baudRateGenerator: UART_baudRateGenerator PORT MAP(
		reset => ,
		clock => ,
		baudRateEnable => ,
		baudRateEnable_x16 => 
	);


