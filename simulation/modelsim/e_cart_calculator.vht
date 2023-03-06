-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/29/2021 03:55:24"
                                                            
-- Vhdl Test Bench template for design  :  e_cart_calculator
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY e_cart_calculator_vhd_tst IS
END e_cart_calculator_vhd_tst;
ARCHITECTURE e_cart_calculator_arch OF e_cart_calculator_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC := '0' ;
SIGNAL HEX0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX3 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT e_cart_calculator
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
	HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : e_cart_calculator
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);
	
	-- add in a free running clock of 50MHz / 20ns cycle
   CLOCK_50 <= not CLOCK_50 after 10 ns;
	
	
	p_stimulus: process
	
		-- Declarations
		
		procedure P_stable is
		begin
			SW(9) <= '1';
			SW(0) <= '0';
			SW(1) <= '0';
			SW(2) <= '0';
			SW(3) <= '0';
			KEY(0) <= '0';
			KEY(1) <= '0';
			KEY(2) <= '0';
			KEY(3) <= '0';
			
			wait for 20 ns;
		end procedure P_stable;
		
		procedure P_add_product_W is
		begin
			SW(0) <= '1';
			wait for 20 ns;
			KEY(0) <= '1';
			wait for 20 ns;
			KEY(0) <='0';
			SW(0) <='0';
			wait for 20 ns;
		end procedure P_add_product_W;
		
		procedure P_add_product_X is
		begin
			SW(1) <= '1';
			wait for 20 ns;
			KEY(0) <= '1';
			wait for 20 ns;
			KEY(0) <='0';
			SW(1) <='0';
			wait for 20 ns;
		end procedure P_add_product_X;
		
		procedure P_price_cal_pay is
		begin
			KEY(3) <= '1';
			wait for 20 ns;
			KEY(3) <= '1';
			wait for 20 ns;
			KEY(3) <= '1';
			wait for 20 ns;
			KEY(3) <= '1';
			wait for 20 ns;

		end procedure P_price_cal_pay;
	
	begin
	
		-- Statements
		P_stable;
		P_add_product_W;
		P_add_product_X;
		P_add_product_X;
		P_price_cal_pay;
		
		assert false report "--- End of Simulation ---" severity failure;
	
	end process p_stimulus;
--init : PROCESS                                               
---- variable declarations                                     
--BEGIN                                                        
--        -- code that executes only once                      
--WAIT;                                                       
--END PROCESS init;                                           
--always : PROCESS                                              
---- optional sensitivity list                                  
---- (        )                                                 
---- variable declarations                                      
--BEGIN                                                         
--        -- code executes for every event on sensitivity list  
--WAIT;                                                        
--END PROCESS always;                                          
END e_cart_calculator_arch;
