library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity seg7 is 
	generic (
		-- frequency of the clk signal in Hz
		CLK_FREQ	: integer			:= 100000000;
		
		-- desired mux-frequency of the two seven segment displays in Hz
		MUX_FREQ	: integer			:= 100
	);
	port ( 	
		clk 		: in 				std_logic;
		
		-- the values to display 
		seg1_value	: in				std_logic_vector(3 downto 0);
		seg2_value	: in				std_logic_vector(3 downto 0);
		
		-- 7 segment signals
		a			: out				std_logic;
		b			: out				std_logic;
		c			: out				std_logic;
		d			: out				std_logic;
		e			: out				std_logic;
		f			: out				std_logic;
		g			: out				std_logic;
		cat			: out				std_logic
	);
end seg7;

architecture rtl of seg7 is
	signal mux_state_s 		: std_logic									:= '0';
	signal seg_coder_in_s	: std_logic_vector(3 downto 0)				:= (others => '0');
	signal prescale_cnt_s 	: integer range 0 to (CLK_FREQ/MUX_FREQ) 	:= 0;
begin
	-- multiplex timebase
	process (clk)
	begin
		if rising_edge(clk) then
			prescale_cnt_s  <= prescale_cnt_s + 1;
			
			if (prescale_cnt_s = CLK_FREQ/MUX_FREQ) then
				prescale_cnt_s	<= 0;
				mux_state_s 	<= not mux_state_s;
			end if;
		end if;
	end process;
	
	cat	<= mux_state_s;

	-- segment multiplexer
	process (mux_state_s, seg1_value, seg2_value)
	begin
		if (mux_state_s = '0') then
			seg_coder_in_s <= seg1_value;
		else
			seg_coder_in_s <= seg2_value;
		end if;
	end process;

	-- binary to 7 segment decoder
	process (seg_coder_in_s)
	begin
		case seg_coder_in_s is
			when "0000" 		=> a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '0';
			when "0001" 		=> a <= '0'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
			when "0010" 		=> a <= '1'; b <= '1'; c <= '0'; d <= '1'; e <= '1'; f <= '0'; g <= '1';
			when "0011" 		=> a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '0'; f <= '0'; g <= '1';
			when "0100" 		=> a <= '0'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '1'; g <= '1';
			when "0101" 		=> a <= '1'; b <= '0'; c <= '1'; d <= '1'; e <= '0'; f <= '1'; g <= '1';
			when "0110" 		=> a <= '1'; b <= '0'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
			when "0111"			=> a <= '1'; b <= '1'; c <= '1'; d <= '0'; e <= '0'; f <= '0'; g <= '0';
			when "1000" 		=> a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '1'; f <= '1'; g <= '1';
			when "1001" 		=> a <= '1'; b <= '1'; c <= '1'; d <= '1'; e <= '0'; f <= '1'; g <= '1';
			when others 		=> a <= '0'; b <= '0'; c <= '0'; d <= '0'; e <= '0'; f <= '0'; g <= '1';
		end case;
	end process;
end rtl; 