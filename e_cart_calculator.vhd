library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_cart_calculator is

port(

			CLOCK_50:	in				std_logic;
			SW:			in				std_logic_vector(9 downto 0);
			KEY:			in				std_logic_vector(3 downto 0);
			LEDR:			out				std_logic_vector(9 downto 0);
			HEX0:			out				std_logic_vector(0 to 6);
			HEX1:			out				std_logic_vector(0 to 6);
			HEX2:			out				std_logic_vector(0 to 6);
			HEX3:			out				std_logic_vector(0 to 6);
			HEX4:			out				std_logic_vector(0 to 6);
			HEX5:			out				std_logic_vector(0 to 6)

);

end entity e_cart_calculator;

architecture a_cart_calculator of e_cart_calculator is

	component e_inst_mem
		PORT
		(
			address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
			clock		: IN STD_LOGIC  := '1';
			data		: IN STD_LOGIC_VECTOR (2 DOWNTO 0);
			wren		: IN STD_LOGIC ;
			q		: OUT STD_LOGIC_VECTOR (2 DOWNTO 0)
		);
	end component;

	-- State Declaration
   type t_cart_calculator_states is (S_ORDER, S_PRICE_CAL, S_PAYMENT, S_DONE);
   signal cart_calculator_state : t_cart_calculator_states;

	   -- Signal Declaration
   signal sl_Clock_int:			std_logic;
   signal sl_resetn_int:		std_logic;
	
	-- Signal Declaration for Product prices to be ordered
	constant c_price_W : std_logic_vector (0 to 2) := "010";
	constant c_price_X : std_logic_vector (0 to 2) := "111";
	constant c_price_Y : std_logic_vector (0 to 2) := "011";
	constant c_price_Z : std_logic_vector (0 to 2) := "100";
	
	-- Signal Declaration for product count
	signal slv_product_count_W : std_logic_vector (0 to 3);
	signal slv_product_count_X : std_logic_vector (0 to 3);
	signal slv_product_count_Y : std_logic_vector (0 to 3);
	signal slv_product_count_Z : std_logic_vector (0 to 3);
	
	-- Signal Declaration for Product Selection
	signal slv_prod_select_W:	std_logic;
	signal slv_prod_select_X:	std_logic;
	signal slv_prod_select_Y:	std_logic;
	signal slv_prod_select_Z:	std_logic;	
	
	-- Signal Total Price
	signal slv_total_price: std_logic_vector (0 to 6);
	
	-- Signal for Checking multiple Switches turned on
	signal slv_check_mul_sw_on : std_logic_vector (0 to 2);
	
	-- Signal increment
	signal sl_increment : std_logic;
	signal sl_decrement : std_logic;
	
   begin
	
	LEDR <= SW;
	slv_prod_select_W <= SW(0);
	slv_prod_select_X <= SW(1);
	slv_prod_select_Y <= SW(2);
	slv_prod_select_Z <= SW(3);
	
	sl_Clock_int <= CLOCK_50;
	sl_resetn_int <= SW(9);
	
	sl_increment <= KEY(0);
	sl_decrement <= KEY(1);
	
	
		p_cart_calculator: process (sl_Clock_int, sl_resetn_int)
		  begin
--		  
--		  slv_check_mul_sw_on <= slv_prod_select_W + slv_prod_select_X + slv_prod_select_Y + slv_prod_select_Z;
--		  
--		  if(slv_check_mul_sw_on > '001') then
--			  -- display error : Multiple products cannot be selected
--			  slv_check_mul_sw_on <= slv_check_mul_sw_on;
--		  elsif(slv_check_mul_sw_on = '000') then
--				--Display Error : Select one product
--				slv_check_mul_sw_on <= slv_check_mul_sw_on;
--		  els
		  
		  if(sl_resetn_int = '0') then
			  cart_calculator_state <= S_ORDER;
			  slv_product_count_W <= "0000";
			  slv_product_count_X <= "0000";
			  slv_product_count_Y <= "0000";
			  slv_product_count_Z <= "0000";
			  --sl_resetn_int <= '1';
		  
		  elsif(rising_edge(sl_Clock_int)) then
				case(cart_calculator_state) is
				 when S_ORDER =>
					 if (KEY(3) = '1') then
							cart_calculator_state <= S_PRICE_CAL;
					 elsif (slv_prod_select_W = '1') then
							if(sl_increment = '1') then
								slv_product_count_W <= std_logic_vector(unsigned(slv_product_count_W) + 1);
							elsif(sl_decrement = '0') then
								-- Display Error : Count is '0' already
							elsif(sl_decrement = '1') then
								slv_product_count_W <= std_logic_vector(unsigned(slv_product_count_W) - 1);
							end if;
						 
					 elsif(slv_prod_select_X = '1') then
							if(sl_increment = '1') then
								slv_product_count_X <= std_logic_vector(unsigned(slv_product_count_X) + 1);
							elsif(sl_decrement = '0') then
								-- Display Error : Count is '0' already
							elsif(sl_decrement = '1') then
								slv_product_count_X <= std_logic_vector(unsigned(slv_product_count_X) - 1);
							end if;
						 
					 elsif(slv_prod_select_Y = '1') then
							if(sl_increment = '1') then
								slv_product_count_Y <= std_logic_vector(unsigned(slv_product_count_Y) + 1);
							elsif(sl_decrement = '0') then
								-- Display Error : Count is '0' already
							elsif(sl_decrement = '1') then
								slv_product_count_Y <= std_logic_vector(unsigned(slv_product_count_Y) - 1);
							end if;
						 
					 elsif(slv_prod_select_Z = '1') then
							if(sl_increment = '1') then
								slv_product_count_Z <= std_logic_vector(unsigned(slv_product_count_Z) + 1);
							elsif(sl_decrement = '0') then
								-- Display Error : Count is '0' already
							elsif(sl_decrement = '1') then
								slv_product_count_Z <= std_logic_vector(unsigned(slv_product_count_Z) - 1);
							end if;

					 end if;  
					 
				 when S_PRICE_CAL =>
					 slv_total_price <= std_logic_vector(
												(unsigned(c_price_W) * unsigned(slv_product_count_W)) +
												(unsigned(c_price_X) * unsigned(slv_product_count_X)) +
												(unsigned(c_price_Y) * unsigned(slv_product_count_Y)) +
												(unsigned(c_price_Z) * unsigned(slv_product_count_Z)));
					 HEX0 <= slv_total_price;
					 cart_calculator_state <= S_PAYMENT;
												
				 when S_PAYMENT =>
					 if(KEY(3) = '1') then
						 cart_calculator_state <= S_DONE;
						 
					 elsif(KEY(2) = '1') then
						 cart_calculator_state <= S_ORDER;
						
					 end if;
				 when S_DONE =>
						 cart_calculator_state <= S_ORDER;
						 slv_product_count_W <= "0000";
						 slv_product_count_X <= "0000";
						 slv_product_count_Y <= "0000";
						 slv_product_count_Z <= "0000";
				 when others => 
					 cart_calculator_state <= S_ORDER;	
					 report "Reach undefined state";
			 end case;
		  end if;
		end process p_cart_calculator;
		
		--I_mem: e_inst_mem port map (address, clock, data, wren, q); 
		
	
end architecture a_cart_calculator;