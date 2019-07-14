library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity seg7cnt is 
	port ( 	
		board_clk 	: in 				std_logic;
			
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
end seg7cnt;

architecture rtl of seg7cnt is
	constant clk_freq_c		: integer									:= 100000000;
	constant cnt_freq_c		: integer									:= 1;


	signal prescale_cnt_s 	: integer range 0 to clk_freq_c/cnt_freq_c	:= 0;
	
	signal seg1_value_s		: unsigned(3 downto 0)				:= (others => '0');
	signal seg2_value_s		: unsigned(3 downto 0)				:= (others => '0');
begin
	seg7_inst: entity work.seg7
	generic map (
		CLK_FREQ	=> 100e6,
		MUX_FREQ	=> 100
	)
	port map
	(
		clk 		=> board_clk,
		
		seg1_value 	=> std_logic_vector(seg1_value_s),
		seg2_value 	=> std_logic_vector(seg2_value_s),
		
		a 			=> a,
		b 			=> b,
		c 			=> c,
		d 			=> d,
		e 			=> e,
		f 			=> f,
		g 			=> g,
		cat			=> cat
	);

	-- two digit BCD counter
	process (board_clk)
	begin
		if rising_edge(board_clk) then
			prescale_cnt_s  <= prescale_cnt_s + 1;
			
			-- slow down upcounting speed
			if (prescale_cnt_s = clk_freq_c/cnt_freq_c) then
				prescale_cnt_s	<= 0;
				
				-- increment first decimal digit 
				seg1_value_s	<= seg1_value_s + 1;
				
				-- overflow handling first decimal digit
				if (seg1_value_s = 9) then
					seg1_value_s <= (others => '0');
					
					-- increment second decimal digit 
					seg2_value_s <= seg2_value_s + 1;
					
					-- overflow handling second decimal digit
					if (seg2_value_s = 9) then
						seg2_value_s	<= (others => '0');
					end if;
				end if;			
			end if;
		end if;
	end process;

end rtl; 





