library ieee;
use ieee.std_logic_1164.all;

entity e_regn IS
   generic ( n : integer := 9);
   port ( slv_R       : in   std_logic_vector(n-1 downto 0);
          sl_Rin      : in   std_logic;
          sl_Clock    : in   std_logic;
          sl_Resetn   : in   std_logic;
          slv_Q       : out  std_logic_vector(n-1 downto 0));
end entity e_regn;

architecture a_regn of e_regn is

---- Declaration Part -----------------------------------------------

begin

---- Assignment Part ------------------------------------------------

-- Sequential process with async. reset and sync. enable
   p_reg: process (sl_Clock, sl_Resetn)
   begin
      if(sl_Resetn = '0') then
         slv_Q <= (others => '0');
      elsif(rising_edge(sl_Clock)) then
         if(sl_Rin = '1') then
            slv_Q <= slv_R;
         end if;
      end if;
   end process p_reg;
	
end architecture a_regn;