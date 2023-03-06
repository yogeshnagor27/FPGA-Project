library ieee;
use ieee.std_logic_1164.all;

entity e_bcd7seg is
	port(	slv_bcd:			in		std_logic_vector(3 downto 0);
			slv_display:		out		std_logic_vector(0 to 6)
	);
end entity e_bcd7seg;

architecture a_bcd7seg of e_bcd7seg is

-- Declarations:

-- Constant Declarations:
	constant c_0:		std_logic_vector := "0000001";
	constant c_1:		std_logic_vector := "1001111";
	constant c_2:		std_logic_vector := "0010010";
	constant c_3:		std_logic_vector := "0000110";
	constant c_4:		std_logic_vector := "1001100";
	constant c_5:		std_logic_vector := "0100100";
	constant c_6:		std_logic_vector := "0100000";
	constant c_7:		std_logic_vector := "0001111";
	constant c_8:		std_logic_vector := "0000000";
	constant c_9:		std_logic_vector := "0000100";
	constant c_blank:	std_logic_vector := "1111111";

begin

-- Assignments:

   --       0  
   --      ---  
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---  
   --     |   |
   --    4|   |2
   --     |   |
   --      ---  
   --       3  
-- Conditional Signal Assignments:
	slv_display <=	c_0 when (slv_bcd = "0000") else
					c_1 when (slv_bcd = "0001") else
					c_2 when (slv_bcd = "0010") else
					c_3 when (slv_bcd = "0011") else
					c_4 when (slv_bcd = "0100") else
					c_5 when (slv_bcd = "0101") else
					c_6 when (slv_bcd = "0110") else
					c_7 when (slv_bcd = "0111") else
					c_8 when (slv_bcd = "1000") else
					c_9 when (slv_bcd = "1001") else
					c_blank;

end architecture a_bcd7seg;