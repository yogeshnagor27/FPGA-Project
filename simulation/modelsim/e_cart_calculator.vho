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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/29/2021 14:49:11"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	e_cart_calculator IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6)
	);
END e_cart_calculator;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF e_cart_calculator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \slv_product_count_X~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \cart_calculator_state.S_PRICE_CAL~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \cart_calculator_state.S_DONE~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \cart_calculator_state.S_PAYMENT~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \cart_calculator_state.S_ORDER~q\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \slv_product_count_Y~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \slv_product_count_W~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \HEX0[6]~0_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL \slv_product_count_W~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add8~28_combout\ : std_logic;
SIGNAL \Add8~29_combout\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \HEX0[5]~reg0_q\ : std_logic;
SIGNAL \slv_product_count_Z~0_combout\ : std_logic;
SIGNAL \slv_product_count_Z~1_combout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Add8~30_combout\ : std_logic;
SIGNAL \Add8~31_combout\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \HEX0[4]~reg0_q\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \Add8~32_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add8~33_combout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \HEX0[3]~reg0feeder_combout\ : std_logic;
SIGNAL \HEX0[3]~reg0_q\ : std_logic;
SIGNAL \Add8~34_combout\ : std_logic;
SIGNAL \Add8~35_combout\ : std_logic;
SIGNAL \Add6~1_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add9~1_combout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \Add8~14\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \HEX0[2]~reg0_q\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \Add8~36_combout\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \HEX0[1]~reg0_q\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~23\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL slv_total_price : std_logic_vector(0 TO 6);
SIGNAL slv_product_count_X : std_logic_vector(0 TO 3);
SIGNAL slv_product_count_Y : std_logic_vector(0 TO 3);
SIGNAL slv_product_count_W : std_logic_vector(0 TO 3);
SIGNAL slv_product_count_Z : std_logic_vector(0 TO 3);
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Add6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~0_combout\ : std_logic;
SIGNAL \ALT_INV_slv_product_count_Z~1_combout\ : std_logic;
SIGNAL \ALT_INV_slv_product_count_Z~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL ALT_INV_slv_product_count_Z : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Add9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add9~0_combout\ : std_logic;
SIGNAL ALT_INV_slv_product_count_X : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Add4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \ALT_INV_slv_product_count_W~1_combout\ : std_logic;
SIGNAL \ALT_INV_slv_product_count_W~0_combout\ : std_logic;
SIGNAL \ALT_INV_slv_product_count_Y~0_combout\ : std_logic;
SIGNAL \ALT_INV_slv_product_count_X~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~36_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~35_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~34_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~33_combout\ : std_logic;
SIGNAL ALT_INV_slv_product_count_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_slv_product_count_W : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Add8~32_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~31_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~30_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~29_combout\ : std_logic;
SIGNAL \ALT_INV_Add8~28_combout\ : std_logic;
SIGNAL \ALT_INV_cart_calculator_state.S_PAYMENT~q\ : std_logic;
SIGNAL \ALT_INV_cart_calculator_state.S_DONE~q\ : std_logic;
SIGNAL \ALT_INV_cart_calculator_state.S_ORDER~q\ : std_logic;
SIGNAL ALT_INV_slv_total_price : std_logic_vector(6 DOWNTO 3);
SIGNAL \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\ : std_logic;
SIGNAL \ALT_INV_Add10~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add10~1_sumout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_Add6~2_combout\ <= NOT \Add6~2_combout\;
\ALT_INV_Add6~1_combout\ <= NOT \Add6~1_combout\;
\ALT_INV_Add2~1_combout\ <= NOT \Add2~1_combout\;
\ALT_INV_Add6~0_combout\ <= NOT \Add6~0_combout\;
\ALT_INV_slv_product_count_Z~1_combout\ <= NOT \slv_product_count_Z~1_combout\;
\ALT_INV_slv_product_count_Z~0_combout\ <= NOT \slv_product_count_Z~0_combout\;
\ALT_INV_Add2~0_combout\ <= NOT \Add2~0_combout\;
ALT_INV_slv_product_count_Z(0) <= NOT slv_product_count_Z(0);
ALT_INV_slv_product_count_Z(1) <= NOT slv_product_count_Z(1);
\ALT_INV_Add9~1_combout\ <= NOT \Add9~1_combout\;
\ALT_INV_Add4~1_combout\ <= NOT \Add4~1_combout\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_Add9~0_combout\ <= NOT \Add9~0_combout\;
ALT_INV_slv_product_count_X(0) <= NOT slv_product_count_X(0);
ALT_INV_slv_product_count_Z(2) <= NOT slv_product_count_Z(2);
\ALT_INV_Add4~0_combout\ <= NOT \Add4~0_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
ALT_INV_slv_product_count_Z(3) <= NOT slv_product_count_Z(3);
ALT_INV_slv_product_count_X(1) <= NOT slv_product_count_X(1);
\ALT_INV_slv_product_count_W~1_combout\ <= NOT \slv_product_count_W~1_combout\;
\ALT_INV_slv_product_count_W~0_combout\ <= NOT \slv_product_count_W~0_combout\;
\ALT_INV_slv_product_count_Y~0_combout\ <= NOT \slv_product_count_Y~0_combout\;
\ALT_INV_slv_product_count_X~0_combout\ <= NOT \slv_product_count_X~0_combout\;
\ALT_INV_Add8~36_combout\ <= NOT \Add8~36_combout\;
\ALT_INV_Add8~35_combout\ <= NOT \Add8~35_combout\;
\ALT_INV_Add8~34_combout\ <= NOT \Add8~34_combout\;
\ALT_INV_Add8~33_combout\ <= NOT \Add8~33_combout\;
ALT_INV_slv_product_count_Y(0) <= NOT slv_product_count_Y(0);
ALT_INV_slv_product_count_W(0) <= NOT slv_product_count_W(0);
\ALT_INV_Add8~32_combout\ <= NOT \Add8~32_combout\;
\ALT_INV_Add8~31_combout\ <= NOT \Add8~31_combout\;
\ALT_INV_Add8~30_combout\ <= NOT \Add8~30_combout\;
ALT_INV_slv_product_count_Y(1) <= NOT slv_product_count_Y(1);
ALT_INV_slv_product_count_W(1) <= NOT slv_product_count_W(1);
ALT_INV_slv_product_count_X(2) <= NOT slv_product_count_X(2);
\ALT_INV_Add8~29_combout\ <= NOT \Add8~29_combout\;
\ALT_INV_Add8~28_combout\ <= NOT \Add8~28_combout\;
ALT_INV_slv_product_count_Y(2) <= NOT slv_product_count_Y(2);
ALT_INV_slv_product_count_W(2) <= NOT slv_product_count_W(2);
\ALT_INV_cart_calculator_state.S_PAYMENT~q\ <= NOT \cart_calculator_state.S_PAYMENT~q\;
\ALT_INV_cart_calculator_state.S_DONE~q\ <= NOT \cart_calculator_state.S_DONE~q\;
ALT_INV_slv_product_count_W(3) <= NOT slv_product_count_W(3);
ALT_INV_slv_product_count_Y(3) <= NOT slv_product_count_Y(3);
ALT_INV_slv_product_count_X(3) <= NOT slv_product_count_X(3);
\ALT_INV_cart_calculator_state.S_ORDER~q\ <= NOT \cart_calculator_state.S_ORDER~q\;
ALT_INV_slv_total_price(3) <= NOT slv_total_price(3);
\ALT_INV_cart_calculator_state.S_PRICE_CAL~q\ <= NOT \cart_calculator_state.S_PRICE_CAL~q\;
ALT_INV_slv_total_price(6) <= NOT slv_total_price(6);
\ALT_INV_Add10~17_sumout\ <= NOT \Add10~17_sumout\;
\ALT_INV_Add10~13_sumout\ <= NOT \Add10~13_sumout\;
\ALT_INV_Add10~9_sumout\ <= NOT \Add10~9_sumout\;
\ALT_INV_Add10~5_sumout\ <= NOT \Add10~5_sumout\;
\ALT_INV_Add10~1_sumout\ <= NOT \Add10~1_sumout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X35_Y3_N12
\slv_product_count_X~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \slv_product_count_X~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & (!\KEY[3]~input_o\ & ((\KEY[1]~input_o\) # (\KEY[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000101000000010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \slv_product_count_X~0_combout\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X37_Y3_N48
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\KEY[3]~input_o\ & !\cart_calculator_state.S_ORDER~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X37_Y3_N50
\cart_calculator_state.S_PRICE_CAL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector1~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cart_calculator_state.S_PRICE_CAL~q\);

-- Location: LABCELL_X37_Y3_N15
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\KEY[3]~input_o\ & \cart_calculator_state.S_PAYMENT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X37_Y3_N17
\cart_calculator_state.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cart_calculator_state.S_DONE~q\);

-- Location: LABCELL_X37_Y3_N45
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \cart_calculator_state.S_PAYMENT~q\ & ( !\cart_calculator_state.S_DONE~q\ & ( (!\KEY[3]~input_o\ & !\KEY[2]~input_o\) ) ) ) # ( !\cart_calculator_state.S_PAYMENT~q\ & ( !\cart_calculator_state.S_DONE~q\ & ( 
-- \cart_calculator_state.S_PRICE_CAL~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\,
	datae => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	dataf => \ALT_INV_cart_calculator_state.S_DONE~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X37_Y3_N47
\cart_calculator_state.S_PAYMENT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cart_calculator_state.S_PAYMENT~q\);

-- Location: LABCELL_X37_Y3_N12
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\cart_calculator_state.S_DONE~q\ & ( ((\cart_calculator_state.S_ORDER~q\ & ((!\cart_calculator_state.S_PAYMENT~q\) # (!\KEY[2]~input_o\)))) # (\KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111101010101011111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	dataf => \ALT_INV_cart_calculator_state.S_DONE~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X37_Y3_N14
\cart_calculator_state.S_ORDER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector0~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cart_calculator_state.S_ORDER~q\);

-- Location: LABCELL_X37_Y3_N3
\Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = ( \cart_calculator_state.S_PAYMENT~q\ & ( \cart_calculator_state.S_PRICE_CAL~q\ & ( ((\slv_product_count_X~0_combout\ & !\cart_calculator_state.S_ORDER~q\)) # (slv_product_count_X(3)) ) ) ) # ( !\cart_calculator_state.S_PAYMENT~q\ 
-- & ( \cart_calculator_state.S_PRICE_CAL~q\ & ( ((\slv_product_count_X~0_combout\ & !\cart_calculator_state.S_ORDER~q\)) # (slv_product_count_X(3)) ) ) ) # ( \cart_calculator_state.S_PAYMENT~q\ & ( !\cart_calculator_state.S_PRICE_CAL~q\ & ( 
-- ((\slv_product_count_X~0_combout\ & !\cart_calculator_state.S_ORDER~q\)) # (slv_product_count_X(3)) ) ) ) # ( !\cart_calculator_state.S_PAYMENT~q\ & ( !\cart_calculator_state.S_PRICE_CAL~q\ & ( (!\cart_calculator_state.S_ORDER~q\ & 
-- (!\slv_product_count_X~0_combout\ $ (!slv_product_count_X(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011100110111001101110011011100110111001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_X~0_combout\,
	datab => ALT_INV_slv_product_count_X(3),
	datac => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datae => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	dataf => \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\,
	combout => \Selector11~0_combout\);

-- Location: FF_X36_Y3_N26
\slv_product_count_X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector11~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_X(3));

-- Location: LABCELL_X35_Y3_N54
\slv_product_count_Y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \slv_product_count_Y~0_combout\ = ( \KEY[1]~input_o\ & ( !\KEY[3]~input_o\ & ( (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & \SW[2]~input_o\)) ) ) ) # ( !\KEY[1]~input_o\ & ( !\KEY[3]~input_o\ & ( (!\SW[0]~input_o\ & (\KEY[0]~input_o\ & (!\SW[1]~input_o\ & 
-- \SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \slv_product_count_Y~0_combout\);

-- Location: MLABCELL_X34_Y3_N27
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( \cart_calculator_state.S_PRICE_CAL~q\ & ( ((!\cart_calculator_state.S_ORDER~q\ & \slv_product_count_Y~0_combout\)) # (slv_product_count_Y(3)) ) ) # ( !\cart_calculator_state.S_PRICE_CAL~q\ & ( (!slv_product_count_Y(3) & 
-- (!\cart_calculator_state.S_ORDER~q\ & (\slv_product_count_Y~0_combout\))) # (slv_product_count_Y(3) & (((!\cart_calculator_state.S_ORDER~q\ & !\slv_product_count_Y~0_combout\)) # (\cart_calculator_state.S_PAYMENT~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001111001000101000111100100010111111110010001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datab => \ALT_INV_slv_product_count_Y~0_combout\,
	datac => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	datad => ALT_INV_slv_product_count_Y(3),
	dataf => \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\,
	combout => \Selector15~0_combout\);

-- Location: FF_X34_Y3_N29
\slv_product_count_Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector15~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Y(3));

-- Location: LABCELL_X35_Y3_N51
\slv_product_count_W~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \slv_product_count_W~0_combout\ = ( !\KEY[3]~input_o\ & ( (\SW[0]~input_o\ & ((\KEY[1]~input_o\) # (\KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \slv_product_count_W~0_combout\);

-- Location: MLABCELL_X34_Y3_N54
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \slv_product_count_W~0_combout\ & ( (!slv_product_count_W(3) & (((!\cart_calculator_state.S_ORDER~q\)))) # (slv_product_count_W(3) & (((\cart_calculator_state.S_PAYMENT~q\)) # (\cart_calculator_state.S_PRICE_CAL~q\))) ) ) # ( 
-- !\slv_product_count_W~0_combout\ & ( (slv_product_count_W(3) & (((!\cart_calculator_state.S_ORDER~q\) # (\cart_calculator_state.S_PAYMENT~q\)) # (\cart_calculator_state.S_PRICE_CAL~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011111110000011101111111000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\,
	datab => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	datac => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datad => ALT_INV_slv_product_count_W(3),
	dataf => \ALT_INV_slv_product_count_W~0_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X34_Y3_N56
\slv_product_count_W[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_W(3));

-- Location: LABCELL_X36_Y3_N0
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( !slv_product_count_X(3) $ (!slv_product_count_Y(3) $ (slv_product_count_W(3))) ) + ( !VCC ) + ( !VCC ))
-- \Add8~2\ = CARRY(( !slv_product_count_X(3) $ (!slv_product_count_Y(3) $ (slv_product_count_W(3))) ) + ( !VCC ) + ( !VCC ))
-- \Add8~3\ = SHARE((slv_product_count_X(3) & (!slv_product_count_Y(3) $ (!slv_product_count_W(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101000000000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(3),
	datac => ALT_INV_slv_product_count_Y(3),
	datad => ALT_INV_slv_product_count_W(3),
	cin => GND,
	sharein => GND,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\,
	shareout => \Add8~3\);

-- Location: LABCELL_X37_Y3_N21
\HEX0[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[6]~0_combout\ = ( \cart_calculator_state.S_PRICE_CAL~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\,
	combout => \HEX0[6]~0_combout\);

-- Location: FF_X36_Y3_N1
\slv_total_price[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add8~1_sumout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_total_price(6));

-- Location: LABCELL_X37_Y3_N39
\HEX0[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[6]~reg0feeder_combout\ = ( slv_total_price(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_slv_total_price(6),
	combout => \HEX0[6]~reg0feeder_combout\);

-- Location: FF_X37_Y3_N40
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \HEX0[6]~reg0feeder_combout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

-- Location: MLABCELL_X34_Y3_N57
\slv_product_count_W~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \slv_product_count_W~1_combout\ = ( !\cart_calculator_state.S_PRICE_CAL~q\ & ( !\cart_calculator_state.S_PAYMENT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	dataf => \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\,
	combout => \slv_product_count_W~1_combout\);

-- Location: LABCELL_X37_Y3_N6
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \KEY[0]~input_o\ & ( \slv_product_count_W~1_combout\ & ( (!\cart_calculator_state.S_ORDER~q\ & (!slv_product_count_X(2) $ (((!\slv_product_count_X~0_combout\) # (!slv_product_count_X(3)))))) ) ) ) # ( !\KEY[0]~input_o\ & ( 
-- \slv_product_count_W~1_combout\ & ( (!\cart_calculator_state.S_ORDER~q\ & (!slv_product_count_X(2) $ (((!\slv_product_count_X~0_combout\) # (slv_product_count_X(3)))))) ) ) ) # ( \KEY[0]~input_o\ & ( !\slv_product_count_W~1_combout\ & ( 
-- ((!\cart_calculator_state.S_ORDER~q\ & (\slv_product_count_X~0_combout\ & slv_product_count_X(3)))) # (slv_product_count_X(2)) ) ) ) # ( !\KEY[0]~input_o\ & ( !\slv_product_count_W~1_combout\ & ( ((!\cart_calculator_state.S_ORDER~q\ & 
-- (\slv_product_count_X~0_combout\ & !slv_product_count_X(3)))) # (slv_product_count_X(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110101010101010101010101110101001000010001000100010001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(2),
	datab => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datac => \ALT_INV_slv_product_count_X~0_combout\,
	datad => ALT_INV_slv_product_count_X(3),
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_slv_product_count_W~1_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X36_Y3_N50
\slv_product_count_X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector10~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_X(2));

-- Location: MLABCELL_X34_Y3_N6
\Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = ( slv_product_count_Y(2) & ( slv_product_count_Y(3) & ( (!\slv_product_count_W~1_combout\) # ((!\cart_calculator_state.S_ORDER~q\ & ((!\KEY[0]~input_o\) # (!\slv_product_count_Y~0_combout\)))) ) ) ) # ( !slv_product_count_Y(2) & ( 
-- slv_product_count_Y(3) & ( (\KEY[0]~input_o\ & (\slv_product_count_Y~0_combout\ & !\cart_calculator_state.S_ORDER~q\)) ) ) ) # ( slv_product_count_Y(2) & ( !slv_product_count_Y(3) & ( (!\slv_product_count_W~1_combout\) # 
-- ((!\cart_calculator_state.S_ORDER~q\ & ((!\slv_product_count_Y~0_combout\) # (\KEY[0]~input_o\)))) ) ) ) # ( !slv_product_count_Y(2) & ( !slv_product_count_Y(3) & ( (!\KEY[0]~input_o\ & (\slv_product_count_Y~0_combout\ & 
-- !\cart_calculator_state.S_ORDER~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000111111111101000000010000000100001111111111100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_slv_product_count_Y~0_combout\,
	datac => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datad => \ALT_INV_slv_product_count_W~1_combout\,
	datae => ALT_INV_slv_product_count_Y(2),
	dataf => ALT_INV_slv_product_count_Y(3),
	combout => \Selector14~0_combout\);

-- Location: FF_X34_Y3_N8
\slv_product_count_Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector14~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Y(2));

-- Location: MLABCELL_X34_Y3_N48
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( slv_product_count_W(2) & ( slv_product_count_W(3) & ( (!\slv_product_count_W~1_combout\) # ((!\cart_calculator_state.S_ORDER~q\ & ((!\slv_product_count_W~0_combout\) # (!\KEY[0]~input_o\)))) ) ) ) # ( !slv_product_count_W(2) & ( 
-- slv_product_count_W(3) & ( (\slv_product_count_W~0_combout\ & (!\cart_calculator_state.S_ORDER~q\ & \KEY[0]~input_o\)) ) ) ) # ( slv_product_count_W(2) & ( !slv_product_count_W(3) & ( (!\slv_product_count_W~1_combout\) # 
-- ((!\cart_calculator_state.S_ORDER~q\ & ((!\slv_product_count_W~0_combout\) # (\KEY[0]~input_o\)))) ) ) ) # ( !slv_product_count_W(2) & ( !slv_product_count_W(3) & ( (\slv_product_count_W~0_combout\ & (!\cart_calculator_state.S_ORDER~q\ & 
-- !\KEY[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000111111111000110000000100000001001111111111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_W~0_combout\,
	datab => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_slv_product_count_W~1_combout\,
	datae => ALT_INV_slv_product_count_W(2),
	dataf => ALT_INV_slv_product_count_W(3),
	combout => \Selector6~0_combout\);

-- Location: FF_X34_Y3_N50
\slv_product_count_W[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector6~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_W(2));

-- Location: LABCELL_X35_Y3_N15
\Add8~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~28_combout\ = ( slv_product_count_W(2) & ( !slv_product_count_Y(2) ) ) # ( !slv_product_count_W(2) & ( slv_product_count_Y(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_slv_product_count_Y(2),
	dataf => ALT_INV_slv_product_count_W(2),
	combout => \Add8~28_combout\);

-- Location: LABCELL_X35_Y3_N6
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_combout\ = ( slv_product_count_Y(3) ) # ( !slv_product_count_Y(3) & ( slv_product_count_W(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_slv_product_count_W(3),
	dataf => ALT_INV_slv_product_count_Y(3),
	combout => \Add8~29_combout\);

-- Location: LABCELL_X36_Y3_N3
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( !slv_product_count_X(3) $ (!slv_product_count_X(2) $ (!\Add8~28_combout\ $ (!\Add8~29_combout\))) ) + ( \Add8~3\ ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( !slv_product_count_X(3) $ (!slv_product_count_X(2) $ (!\Add8~28_combout\ $ (!\Add8~29_combout\))) ) + ( \Add8~3\ ) + ( \Add8~2\ ))
-- \Add8~7\ = SHARE((!\Add8~28_combout\ & (\Add8~29_combout\ & (!slv_product_count_X(3) $ (!slv_product_count_X(2))))) # (\Add8~28_combout\ & ((!slv_product_count_X(3) $ (!slv_product_count_X(2))) # (\Add8~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001100110111100000000000000000110100110010110",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(3),
	datab => ALT_INV_slv_product_count_X(2),
	datac => \ALT_INV_Add8~28_combout\,
	datad => \ALT_INV_Add8~29_combout\,
	cin => \Add8~2\,
	sharein => \Add8~3\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\,
	shareout => \Add8~7\);

-- Location: FF_X36_Y3_N4
\slv_total_price[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add8~5_sumout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_total_price(5));

-- Location: FF_X36_Y3_N31
\HEX0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => slv_total_price(5),
	sload => VCC,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[5]~reg0_q\);

-- Location: LABCELL_X35_Y3_N9
\slv_product_count_Z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \slv_product_count_Z~0_combout\ = ( !\KEY[3]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\KEY[1]~input_o\) # (\KEY[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000000001010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \slv_product_count_Z~0_combout\);

-- Location: LABCELL_X35_Y3_N36
\slv_product_count_Z~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \slv_product_count_Z~1_combout\ = ( \SW[3]~input_o\ & ( !\SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \slv_product_count_Z~1_combout\);

-- Location: LABCELL_X35_Y3_N0
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( \cart_calculator_state.S_PRICE_CAL~q\ & ( \cart_calculator_state.S_PAYMENT~q\ & ( ((\slv_product_count_Z~0_combout\ & (\slv_product_count_Z~1_combout\ & !\cart_calculator_state.S_ORDER~q\))) # (slv_product_count_Z(3)) ) ) ) # ( 
-- !\cart_calculator_state.S_PRICE_CAL~q\ & ( \cart_calculator_state.S_PAYMENT~q\ & ( ((\slv_product_count_Z~0_combout\ & (\slv_product_count_Z~1_combout\ & !\cart_calculator_state.S_ORDER~q\))) # (slv_product_count_Z(3)) ) ) ) # ( 
-- \cart_calculator_state.S_PRICE_CAL~q\ & ( !\cart_calculator_state.S_PAYMENT~q\ & ( ((\slv_product_count_Z~0_combout\ & (\slv_product_count_Z~1_combout\ & !\cart_calculator_state.S_ORDER~q\))) # (slv_product_count_Z(3)) ) ) ) # ( 
-- !\cart_calculator_state.S_PRICE_CAL~q\ & ( !\cart_calculator_state.S_PAYMENT~q\ & ( (!\cart_calculator_state.S_ORDER~q\ & (!slv_product_count_Z(3) $ (((!\slv_product_count_Z~0_combout\) # (!\slv_product_count_Z~1_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011000000000010101110101010101010111010101010101011101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_Z(3),
	datab => \ALT_INV_slv_product_count_Z~0_combout\,
	datac => \ALT_INV_slv_product_count_Z~1_combout\,
	datad => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datae => \ALT_INV_cart_calculator_state.S_PRICE_CAL~q\,
	dataf => \ALT_INV_cart_calculator_state.S_PAYMENT~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X36_Y3_N29
\slv_product_count_Z[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector19~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Z(3));

-- Location: LABCELL_X36_Y3_N48
\Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = ( \KEY[0]~input_o\ & ( !slv_product_count_X(1) $ (((slv_product_count_X(3) & slv_product_count_X(2)))) ) ) # ( !\KEY[0]~input_o\ & ( !slv_product_count_X(1) $ (((!slv_product_count_X(3) & !slv_product_count_X(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_slv_product_count_X(1),
	datac => ALT_INV_slv_product_count_X(3),
	datad => ALT_INV_slv_product_count_X(2),
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \Add2~0_combout\);

-- Location: LABCELL_X36_Y3_N51
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \cart_calculator_state.S_ORDER~q\ & ( (!\slv_product_count_W~1_combout\ & slv_product_count_X(1)) ) ) # ( !\cart_calculator_state.S_ORDER~q\ & ( (!\slv_product_count_X~0_combout\ & (((slv_product_count_X(1))))) # 
-- (\slv_product_count_X~0_combout\ & ((!\Add2~0_combout\) # ((!\slv_product_count_W~1_combout\ & slv_product_count_X(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110010001100111111001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_W~1_combout\,
	datab => ALT_INV_slv_product_count_X(1),
	datac => \ALT_INV_Add2~0_combout\,
	datad => \ALT_INV_slv_product_count_X~0_combout\,
	dataf => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X36_Y3_N53
\slv_product_count_X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_X(1));

-- Location: LABCELL_X36_Y3_N30
\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( !slv_product_count_Z(3) $ (!slv_product_count_X(1) $ (((slv_product_count_X(2)) # (slv_product_count_X(3))))) ) + ( !VCC ) + ( !VCC ))
-- \Add10~2\ = CARRY(( !slv_product_count_Z(3) $ (!slv_product_count_X(1) $ (((slv_product_count_X(2)) # (slv_product_count_X(3))))) ) + ( !VCC ) + ( !VCC ))
-- \Add10~3\ = SHARE((slv_product_count_Z(3) & (!slv_product_count_X(1) $ (((!slv_product_count_X(3) & !slv_product_count_X(2)))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100100011000000000000000000000110100111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(3),
	datab => ALT_INV_slv_product_count_Z(3),
	datac => ALT_INV_slv_product_count_X(1),
	datad => ALT_INV_slv_product_count_X(2),
	cin => GND,
	sharein => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\,
	shareout => \Add10~3\);

-- Location: MLABCELL_X34_Y3_N12
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( slv_product_count_W(1) & ( (!slv_product_count_W(2) & (!slv_product_count_W(3) & !\KEY[0]~input_o\)) # (slv_product_count_W(2) & (slv_product_count_W(3) & \KEY[0]~input_o\)) ) ) # ( !slv_product_count_W(1) & ( (!slv_product_count_W(2) 
-- & ((\KEY[0]~input_o\) # (slv_product_count_W(3)))) # (slv_product_count_W(2) & ((!slv_product_count_W(3)) # (!\KEY[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111010010111111111101010100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_W(2),
	datac => ALT_INV_slv_product_count_W(3),
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => ALT_INV_slv_product_count_W(1),
	combout => \Add0~0_combout\);

-- Location: MLABCELL_X34_Y3_N39
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \Add0~0_combout\ & ( (slv_product_count_W(1) & ((!\slv_product_count_W~1_combout\) # ((!\slv_product_count_W~0_combout\ & !\cart_calculator_state.S_ORDER~q\)))) ) ) # ( !\Add0~0_combout\ & ( (!\cart_calculator_state.S_ORDER~q\ & 
-- (((slv_product_count_W(1))) # (\slv_product_count_W~0_combout\))) # (\cart_calculator_state.S_ORDER~q\ & (((!\slv_product_count_W~1_combout\ & slv_product_count_W(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111100010100001111110000000000111011000000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_W~0_combout\,
	datab => \ALT_INV_slv_product_count_W~1_combout\,
	datac => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datad => ALT_INV_slv_product_count_W(1),
	dataf => \ALT_INV_Add0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X34_Y3_N41
\slv_product_count_W[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector5~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_W(1));

-- Location: MLABCELL_X34_Y3_N33
\Add4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = ( slv_product_count_Y(1) & ( (!\KEY[0]~input_o\ & (!slv_product_count_Y(2) & !slv_product_count_Y(3))) # (\KEY[0]~input_o\ & (slv_product_count_Y(2) & slv_product_count_Y(3))) ) ) # ( !slv_product_count_Y(1) & ( (!\KEY[0]~input_o\ & 
-- ((slv_product_count_Y(3)) # (slv_product_count_Y(2)))) # (\KEY[0]~input_o\ & ((!slv_product_count_Y(2)) # (!slv_product_count_Y(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111010010111111111101010100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => ALT_INV_slv_product_count_Y(2),
	datad => ALT_INV_slv_product_count_Y(3),
	dataf => ALT_INV_slv_product_count_Y(1),
	combout => \Add4~0_combout\);

-- Location: MLABCELL_X34_Y3_N24
\Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = ( \Add4~0_combout\ & ( (slv_product_count_Y(1) & ((!\slv_product_count_W~1_combout\) # ((!\cart_calculator_state.S_ORDER~q\ & !\slv_product_count_Y~0_combout\)))) ) ) # ( !\Add4~0_combout\ & ( (!\cart_calculator_state.S_ORDER~q\ & 
-- (((slv_product_count_Y(1))) # (\slv_product_count_Y~0_combout\))) # (\cart_calculator_state.S_ORDER~q\ & (((!\slv_product_count_W~1_combout\ & slv_product_count_Y(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111010001000101111101000000000111110000000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datab => \ALT_INV_slv_product_count_Y~0_combout\,
	datac => \ALT_INV_slv_product_count_W~1_combout\,
	datad => ALT_INV_slv_product_count_Y(1),
	dataf => \ALT_INV_Add4~0_combout\,
	combout => \Selector13~0_combout\);

-- Location: FF_X34_Y3_N26
\slv_product_count_Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector13~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Y(1));

-- Location: LABCELL_X35_Y3_N39
\Add8~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~30_combout\ = ( slv_product_count_Y(3) & ( !slv_product_count_W(3) $ (!slv_product_count_W(1) $ (slv_product_count_Y(1))) ) ) # ( !slv_product_count_Y(3) & ( !slv_product_count_W(1) $ (!slv_product_count_Y(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000001011010101001010101101010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_W(3),
	datac => ALT_INV_slv_product_count_W(1),
	datad => ALT_INV_slv_product_count_Y(1),
	dataf => ALT_INV_slv_product_count_Y(3),
	combout => \Add8~30_combout\);

-- Location: LABCELL_X35_Y3_N42
\Add8~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~31_combout\ = ( slv_product_count_W(2) ) # ( !slv_product_count_W(2) & ( slv_product_count_Y(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_slv_product_count_Y(2),
	dataf => ALT_INV_slv_product_count_W(2),
	combout => \Add8~31_combout\);

-- Location: LABCELL_X36_Y3_N6
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( !\Add10~1_sumout\ $ (!\Add8~30_combout\ $ (\Add8~31_combout\)) ) + ( \Add8~7\ ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( !\Add10~1_sumout\ $ (!\Add8~30_combout\ $ (\Add8~31_combout\)) ) + ( \Add8~7\ ) + ( \Add8~6\ ))
-- \Add8~11\ = SHARE((!\Add10~1_sumout\ & (\Add8~30_combout\ & \Add8~31_combout\)) # (\Add10~1_sumout\ & ((\Add8~31_combout\) # (\Add8~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add10~1_sumout\,
	datac => \ALT_INV_Add8~30_combout\,
	datad => \ALT_INV_Add8~31_combout\,
	cin => \Add8~6\,
	sharein => \Add8~7\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\,
	shareout => \Add8~11\);

-- Location: FF_X36_Y3_N8
\slv_total_price[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add8~9_sumout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_total_price(4));

-- Location: FF_X36_Y3_N44
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => slv_total_price(4),
	sload => VCC,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LABCELL_X35_Y3_N45
\Add6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = ( slv_product_count_Z(2) & ( !\KEY[0]~input_o\ $ (slv_product_count_Z(3)) ) ) # ( !slv_product_count_Z(2) & ( !\KEY[0]~input_o\ $ (!slv_product_count_Z(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => ALT_INV_slv_product_count_Z(3),
	dataf => ALT_INV_slv_product_count_Z(2),
	combout => \Add6~0_combout\);

-- Location: LABCELL_X35_Y3_N30
\Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = ( slv_product_count_Z(2) & ( \Add6~0_combout\ & ( (!\slv_product_count_W~1_combout\) # ((!\cart_calculator_state.S_ORDER~q\ & ((!\slv_product_count_Z~0_combout\) # (!\slv_product_count_Z~1_combout\)))) ) ) ) # ( 
-- slv_product_count_Z(2) & ( !\Add6~0_combout\ & ( (!\cart_calculator_state.S_ORDER~q\) # (!\slv_product_count_W~1_combout\) ) ) ) # ( !slv_product_count_Z(2) & ( !\Add6~0_combout\ & ( (\slv_product_count_Z~0_combout\ & (!\cart_calculator_state.S_ORDER~q\ & 
-- \slv_product_count_Z~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100111111111100110000000000000000001111111111001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_Z~0_combout\,
	datab => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datac => \ALT_INV_slv_product_count_Z~1_combout\,
	datad => \ALT_INV_slv_product_count_W~1_combout\,
	datae => ALT_INV_slv_product_count_Z(2),
	dataf => \ALT_INV_Add6~0_combout\,
	combout => \Selector18~0_combout\);

-- Location: FF_X36_Y3_N56
\slv_product_count_Z[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector18~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Z(2));

-- Location: LABCELL_X37_Y3_N27
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = ( slv_product_count_X(0) & ( slv_product_count_X(1) & ( (slv_product_count_X(2) & (slv_product_count_X(3) & \KEY[0]~input_o\)) ) ) ) # ( !slv_product_count_X(0) & ( slv_product_count_X(1) & ( (!slv_product_count_X(2)) # 
-- ((!slv_product_count_X(3)) # (!\KEY[0]~input_o\)) ) ) ) # ( slv_product_count_X(0) & ( !slv_product_count_X(1) & ( (!slv_product_count_X(2) & (!slv_product_count_X(3) & !\KEY[0]~input_o\)) ) ) ) # ( !slv_product_count_X(0) & ( !slv_product_count_X(1) & ( 
-- ((\KEY[0]~input_o\) # (slv_product_count_X(3))) # (slv_product_count_X(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111100000001000000011111110111111100000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(2),
	datab => ALT_INV_slv_product_count_X(3),
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => ALT_INV_slv_product_count_X(0),
	dataf => ALT_INV_slv_product_count_X(1),
	combout => \Add2~1_combout\);

-- Location: LABCELL_X37_Y3_N54
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \Add2~1_combout\ & ( \slv_product_count_W~1_combout\ & ( (slv_product_count_X(0) & (!\slv_product_count_X~0_combout\ & !\cart_calculator_state.S_ORDER~q\)) ) ) ) # ( !\Add2~1_combout\ & ( \slv_product_count_W~1_combout\ & ( 
-- (!\cart_calculator_state.S_ORDER~q\ & ((\slv_product_count_X~0_combout\) # (slv_product_count_X(0)))) ) ) ) # ( \Add2~1_combout\ & ( !\slv_product_count_W~1_combout\ & ( slv_product_count_X(0) ) ) ) # ( !\Add2~1_combout\ & ( 
-- !\slv_product_count_W~1_combout\ & ( ((\slv_product_count_X~0_combout\ & !\cart_calculator_state.S_ORDER~q\)) # (slv_product_count_X(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010101010101010101010101011111000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(0),
	datac => \ALT_INV_slv_product_count_X~0_combout\,
	datad => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datae => \ALT_INV_Add2~1_combout\,
	dataf => \ALT_INV_slv_product_count_W~1_combout\,
	combout => \Selector8~0_combout\);

-- Location: FF_X36_Y3_N59
\slv_product_count_X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector8~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_X(0));

-- Location: LABCELL_X36_Y3_N27
\Add9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = ( !slv_product_count_X(0) & ( slv_product_count_X(2) ) ) # ( slv_product_count_X(0) & ( !slv_product_count_X(2) & ( (!slv_product_count_X(1) & !slv_product_count_X(3)) ) ) ) # ( !slv_product_count_X(0) & ( !slv_product_count_X(2) & ( 
-- (slv_product_count_X(3)) # (slv_product_count_X(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111101010100000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(1),
	datad => ALT_INV_slv_product_count_X(3),
	datae => ALT_INV_slv_product_count_X(0),
	dataf => ALT_INV_slv_product_count_X(2),
	combout => \Add9~0_combout\);

-- Location: LABCELL_X36_Y3_N33
\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( !slv_product_count_X(3) $ (!slv_product_count_Z(2) $ (\Add9~0_combout\)) ) + ( \Add10~3\ ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( !slv_product_count_X(3) $ (!slv_product_count_Z(2) $ (\Add9~0_combout\)) ) + ( \Add10~3\ ) + ( \Add10~2\ ))
-- \Add10~7\ = SHARE((!slv_product_count_X(3) & (slv_product_count_Z(2) & \Add9~0_combout\)) # (slv_product_count_X(3) & ((\Add9~0_combout\) # (slv_product_count_Z(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(3),
	datac => ALT_INV_slv_product_count_Z(2),
	datad => \ALT_INV_Add9~0_combout\,
	cin => \Add10~2\,
	sharein => \Add10~3\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\,
	shareout => \Add10~7\);

-- Location: LABCELL_X35_Y3_N48
\Add8~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~32_combout\ = ( slv_product_count_Y(3) & ( (!slv_product_count_W(1) & (!slv_product_count_W(3) & slv_product_count_Y(1))) # (slv_product_count_W(1) & ((!slv_product_count_W(3)) # (slv_product_count_Y(1)))) ) ) # ( !slv_product_count_Y(3) & ( 
-- (slv_product_count_Y(1)) # (slv_product_count_W(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111001100111111111100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_slv_product_count_W(1),
	datac => ALT_INV_slv_product_count_W(3),
	datad => ALT_INV_slv_product_count_Y(1),
	dataf => ALT_INV_slv_product_count_Y(3),
	combout => \Add8~32_combout\);

-- Location: MLABCELL_X34_Y3_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( slv_product_count_W(2) & ( !slv_product_count_W(0) $ (((\KEY[0]~input_o\ & (slv_product_count_W(1) & slv_product_count_W(3))))) ) ) # ( !slv_product_count_W(2) & ( !slv_product_count_W(0) $ (((!\KEY[0]~input_o\ & 
-- (!slv_product_count_W(1) & !slv_product_count_W(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000011110000111000011111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => ALT_INV_slv_product_count_W(1),
	datac => ALT_INV_slv_product_count_W(0),
	datad => ALT_INV_slv_product_count_W(3),
	dataf => ALT_INV_slv_product_count_W(2),
	combout => \Add0~1_combout\);

-- Location: MLABCELL_X34_Y3_N36
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \Add0~1_combout\ & ( (slv_product_count_W(0) & ((!\slv_product_count_W~1_combout\) # ((!\slv_product_count_W~0_combout\ & !\cart_calculator_state.S_ORDER~q\)))) ) ) # ( !\Add0~1_combout\ & ( (!\cart_calculator_state.S_ORDER~q\ & 
-- (((slv_product_count_W(0))) # (\slv_product_count_W~0_combout\))) # (\cart_calculator_state.S_ORDER~q\ & (((!\slv_product_count_W~1_combout\ & slv_product_count_W(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111100010100001111110000000000111011000000000011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_W~0_combout\,
	datab => \ALT_INV_slv_product_count_W~1_combout\,
	datac => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datad => ALT_INV_slv_product_count_W(0),
	dataf => \ALT_INV_Add0~1_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X34_Y3_N38
\slv_product_count_W[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_W(0));

-- Location: MLABCELL_X34_Y3_N0
\Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = ( slv_product_count_Y(1) & ( !slv_product_count_Y(0) $ (((slv_product_count_Y(2) & (\KEY[0]~input_o\ & slv_product_count_Y(3))))) ) ) # ( !slv_product_count_Y(1) & ( !slv_product_count_Y(0) $ (((!slv_product_count_Y(2) & 
-- (!\KEY[0]~input_o\ & !slv_product_count_Y(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101010101010011010101010101010101010101010011010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_Y(0),
	datab => ALT_INV_slv_product_count_Y(2),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => ALT_INV_slv_product_count_Y(3),
	dataf => ALT_INV_slv_product_count_Y(1),
	combout => \Add4~1_combout\);

-- Location: MLABCELL_X34_Y3_N18
\Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = ( \slv_product_count_W~1_combout\ & ( (!\cart_calculator_state.S_ORDER~q\ & ((!\slv_product_count_Y~0_combout\ & (slv_product_count_Y(0))) # (\slv_product_count_Y~0_combout\ & ((!\Add4~1_combout\))))) ) ) # ( 
-- !\slv_product_count_W~1_combout\ & ( ((\slv_product_count_Y~0_combout\ & (!\cart_calculator_state.S_ORDER~q\ & !\Add4~1_combout\))) # (slv_product_count_Y(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101011101010101010101110000010000000111000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_Y(0),
	datab => \ALT_INV_slv_product_count_Y~0_combout\,
	datac => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datad => \ALT_INV_Add4~1_combout\,
	dataf => \ALT_INV_slv_product_count_W~1_combout\,
	combout => \Selector12~0_combout\);

-- Location: FF_X34_Y3_N20
\slv_product_count_Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector12~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Y(0));

-- Location: MLABCELL_X34_Y3_N15
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_combout\ = ( slv_product_count_Y(0) & ( !slv_product_count_W(0) $ (((slv_product_count_W(2) & slv_product_count_Y(2)))) ) ) # ( !slv_product_count_Y(0) & ( !slv_product_count_W(0) $ (((!slv_product_count_W(2)) # (!slv_product_count_Y(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101011111010000001011111101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_W(2),
	datac => ALT_INV_slv_product_count_Y(2),
	datad => ALT_INV_slv_product_count_W(0),
	dataf => ALT_INV_slv_product_count_Y(0),
	combout => \Add8~33_combout\);

-- Location: LABCELL_X36_Y3_N9
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( !\Add10~5_sumout\ $ (!\Add8~32_combout\ $ (\Add8~33_combout\)) ) + ( \Add8~11\ ) + ( \Add8~10\ ))
-- \Add8~14\ = CARRY(( !\Add10~5_sumout\ $ (!\Add8~32_combout\ $ (\Add8~33_combout\)) ) + ( \Add8~11\ ) + ( \Add8~10\ ))
-- \Add8~15\ = SHARE((!\Add10~5_sumout\ & (\Add8~32_combout\ & \Add8~33_combout\)) # (\Add10~5_sumout\ & ((\Add8~33_combout\) # (\Add8~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add10~5_sumout\,
	datac => \ALT_INV_Add8~32_combout\,
	datad => \ALT_INV_Add8~33_combout\,
	cin => \Add8~10\,
	sharein => \Add8~11\,
	sumout => \Add8~13_sumout\,
	cout => \Add8~14\,
	shareout => \Add8~15\);

-- Location: FF_X36_Y3_N10
\slv_total_price[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add8~13_sumout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_total_price(3));

-- Location: LABCELL_X37_Y3_N33
\HEX0[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX0[3]~reg0feeder_combout\ = ( slv_total_price(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_slv_total_price(3),
	combout => \HEX0[3]~reg0feeder_combout\);

-- Location: FF_X37_Y3_N34
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \HEX0[3]~reg0feeder_combout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: MLABCELL_X34_Y3_N42
\Add8~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~34_combout\ = ( slv_product_count_Y(3) & ( slv_product_count_W(1) & ( (slv_product_count_Y(1)) # (slv_product_count_W(3)) ) ) ) # ( !slv_product_count_Y(3) & ( slv_product_count_W(1) & ( slv_product_count_Y(1) ) ) ) # ( slv_product_count_Y(3) & ( 
-- !slv_product_count_W(1) & ( (slv_product_count_W(3) & slv_product_count_Y(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100001111000011110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_W(3),
	datac => ALT_INV_slv_product_count_Y(1),
	datae => ALT_INV_slv_product_count_Y(3),
	dataf => ALT_INV_slv_product_count_W(1),
	combout => \Add8~34_combout\);

-- Location: MLABCELL_X34_Y3_N21
\Add8~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~35_combout\ = ( slv_product_count_W(2) & ( (!slv_product_count_Y(0) & (!slv_product_count_Y(2) & slv_product_count_W(0))) # (slv_product_count_Y(0) & ((!slv_product_count_Y(2)) # (slv_product_count_W(0)))) ) ) # ( !slv_product_count_W(2) & ( 
-- (slv_product_count_W(0)) # (slv_product_count_Y(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111101010000111101010101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_Y(0),
	datac => ALT_INV_slv_product_count_Y(2),
	datad => ALT_INV_slv_product_count_W(0),
	dataf => ALT_INV_slv_product_count_W(2),
	combout => \Add8~35_combout\);

-- Location: LABCELL_X35_Y3_N24
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_combout\ = ( slv_product_count_Z(3) & ( !slv_product_count_Z(1) $ (((\KEY[0]~input_o\ & slv_product_count_Z(2)))) ) ) # ( !slv_product_count_Z(3) & ( !slv_product_count_Z(1) $ (((!\KEY[0]~input_o\ & !slv_product_count_Z(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_slv_product_count_Z(1),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => ALT_INV_slv_product_count_Z(2),
	dataf => ALT_INV_slv_product_count_Z(3),
	combout => \Add6~1_combout\);

-- Location: LABCELL_X35_Y3_N33
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( slv_product_count_Z(1) & ( \Add6~1_combout\ & ( (!\slv_product_count_W~1_combout\) # ((!\cart_calculator_state.S_ORDER~q\ & ((!\slv_product_count_Z~0_combout\) # (!\slv_product_count_Z~1_combout\)))) ) ) ) # ( 
-- slv_product_count_Z(1) & ( !\Add6~1_combout\ & ( (!\cart_calculator_state.S_ORDER~q\) # (!\slv_product_count_W~1_combout\) ) ) ) # ( !slv_product_count_Z(1) & ( !\Add6~1_combout\ & ( (\slv_product_count_Z~0_combout\ & (!\cart_calculator_state.S_ORDER~q\ & 
-- \slv_product_count_Z~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100111111001111110000000000000000001111110011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_Z~0_combout\,
	datab => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	datac => \ALT_INV_slv_product_count_W~1_combout\,
	datad => \ALT_INV_slv_product_count_Z~1_combout\,
	datae => ALT_INV_slv_product_count_Z(1),
	dataf => \ALT_INV_Add6~1_combout\,
	combout => \Selector17~0_combout\);

-- Location: FF_X36_Y3_N41
\slv_product_count_Z[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector17~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Z(1));

-- Location: LABCELL_X36_Y3_N54
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_combout\ = ( slv_product_count_X(0) & ( slv_product_count_X(2) ) ) # ( !slv_product_count_X(0) & ( slv_product_count_X(2) ) ) # ( slv_product_count_X(0) & ( !slv_product_count_X(2) ) ) # ( !slv_product_count_X(0) & ( !slv_product_count_X(2) & ( 
-- (slv_product_count_X(3)) # (slv_product_count_X(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(1),
	datac => ALT_INV_slv_product_count_X(3),
	datae => ALT_INV_slv_product_count_X(0),
	dataf => ALT_INV_slv_product_count_X(2),
	combout => \Add9~1_combout\);

-- Location: LABCELL_X36_Y3_N36
\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( !slv_product_count_X(2) $ (!slv_product_count_Z(1) $ (\Add9~1_combout\)) ) + ( \Add10~7\ ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( !slv_product_count_X(2) $ (!slv_product_count_Z(1) $ (\Add9~1_combout\)) ) + ( \Add10~7\ ) + ( \Add10~6\ ))
-- \Add10~11\ = SHARE((!slv_product_count_X(2) & (slv_product_count_Z(1) & \Add9~1_combout\)) # (slv_product_count_X(2) & ((\Add9~1_combout\) # (slv_product_count_Z(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010101111100000000000000000101101010100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(2),
	datac => ALT_INV_slv_product_count_Z(1),
	datad => \ALT_INV_Add9~1_combout\,
	cin => \Add10~6\,
	sharein => \Add10~7\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\,
	shareout => \Add10~11\);

-- Location: LABCELL_X36_Y3_N12
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( !\Add8~34_combout\ $ (!\Add8~35_combout\ $ (\Add10~9_sumout\)) ) + ( \Add8~15\ ) + ( \Add8~14\ ))
-- \Add8~18\ = CARRY(( !\Add8~34_combout\ $ (!\Add8~35_combout\ $ (\Add10~9_sumout\)) ) + ( \Add8~15\ ) + ( \Add8~14\ ))
-- \Add8~19\ = SHARE((!\Add8~34_combout\ & (\Add8~35_combout\ & \Add10~9_sumout\)) # (\Add8~34_combout\ & ((\Add10~9_sumout\) # (\Add8~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Add8~34_combout\,
	datac => \ALT_INV_Add8~35_combout\,
	datad => \ALT_INV_Add10~9_sumout\,
	cin => \Add8~14\,
	sharein => \Add8~15\,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\,
	shareout => \Add8~19\);

-- Location: FF_X36_Y3_N13
\slv_total_price[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add8~17_sumout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_total_price(2));

-- Location: FF_X36_Y3_N46
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => slv_total_price(2),
	sload => VCC,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: LABCELL_X35_Y3_N27
\Add6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = ( slv_product_count_Z(3) & ( !slv_product_count_Z(0) $ (((\KEY[0]~input_o\ & (slv_product_count_Z(1) & slv_product_count_Z(2))))) ) ) # ( !slv_product_count_Z(3) & ( !slv_product_count_Z(0) $ (((!\KEY[0]~input_o\ & 
-- (!slv_product_count_Z(1) & !slv_product_count_Z(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100011110000011110001111000011110000111000011111000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => ALT_INV_slv_product_count_Z(1),
	datac => ALT_INV_slv_product_count_Z(0),
	datad => ALT_INV_slv_product_count_Z(2),
	dataf => ALT_INV_slv_product_count_Z(3),
	combout => \Add6~2_combout\);

-- Location: LABCELL_X35_Y3_N18
\Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = ( !\slv_product_count_W~1_combout\ & ( \cart_calculator_state.S_ORDER~q\ & ( slv_product_count_Z(0) ) ) ) # ( \slv_product_count_W~1_combout\ & ( !\cart_calculator_state.S_ORDER~q\ & ( (!\slv_product_count_Z~1_combout\ & 
-- (((slv_product_count_Z(0))))) # (\slv_product_count_Z~1_combout\ & ((!\slv_product_count_Z~0_combout\ & ((slv_product_count_Z(0)))) # (\slv_product_count_Z~0_combout\ & (!\Add6~2_combout\)))) ) ) ) # ( !\slv_product_count_W~1_combout\ & ( 
-- !\cart_calculator_state.S_ORDER~q\ & ( ((\slv_product_count_Z~1_combout\ & (\slv_product_count_Z~0_combout\ & !\Add6~2_combout\))) # (slv_product_count_Z(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011111111000100001111111000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_slv_product_count_Z~1_combout\,
	datab => \ALT_INV_slv_product_count_Z~0_combout\,
	datac => \ALT_INV_Add6~2_combout\,
	datad => ALT_INV_slv_product_count_Z(0),
	datae => \ALT_INV_slv_product_count_W~1_combout\,
	dataf => \ALT_INV_cart_calculator_state.S_ORDER~q\,
	combout => \Selector16~0_combout\);

-- Location: FF_X36_Y3_N38
\slv_product_count_Z[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector16~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_product_count_Z(0));

-- Location: LABCELL_X36_Y3_N39
\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( !slv_product_count_Z(0) $ (!slv_product_count_X(1) $ (\Add9~1_combout\)) ) + ( \Add10~11\ ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( !slv_product_count_Z(0) $ (!slv_product_count_X(1) $ (\Add9~1_combout\)) ) + ( \Add10~11\ ) + ( \Add10~10\ ))
-- \Add10~15\ = SHARE((!slv_product_count_Z(0) & (slv_product_count_X(1) & \Add9~1_combout\)) # (slv_product_count_Z(0) & ((\Add9~1_combout\) # (slv_product_count_X(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000011110011000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_slv_product_count_Z(0),
	datac => ALT_INV_slv_product_count_X(1),
	datad => \ALT_INV_Add9~1_combout\,
	cin => \Add10~10\,
	sharein => \Add10~11\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\,
	shareout => \Add10~15\);

-- Location: MLABCELL_X34_Y3_N3
\Add8~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~36_combout\ = ( slv_product_count_W(2) & ( (!slv_product_count_Y(0) & (slv_product_count_Y(2) & slv_product_count_W(0))) # (slv_product_count_Y(0) & ((slv_product_count_W(0)) # (slv_product_count_Y(2)))) ) ) # ( !slv_product_count_W(2) & ( 
-- (slv_product_count_Y(0) & slv_product_count_W(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100010001011101110001000101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_Y(0),
	datab => ALT_INV_slv_product_count_Y(2),
	datad => ALT_INV_slv_product_count_W(0),
	dataf => ALT_INV_slv_product_count_W(2),
	combout => \Add8~36_combout\);

-- Location: LABCELL_X36_Y3_N15
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( !\Add10~13_sumout\ $ (!\Add8~36_combout\) ) + ( \Add8~19\ ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( !\Add10~13_sumout\ $ (!\Add8~36_combout\) ) + ( \Add8~19\ ) + ( \Add8~18\ ))
-- \Add8~23\ = SHARE((\Add10~13_sumout\ & \Add8~36_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000111111110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add10~13_sumout\,
	datad => \ALT_INV_Add8~36_combout\,
	cin => \Add8~18\,
	sharein => \Add8~19\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\,
	shareout => \Add8~23\);

-- Location: FF_X36_Y3_N17
\slv_total_price[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add8~21_sumout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_total_price(1));

-- Location: FF_X36_Y3_N22
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => slv_total_price(1),
	sload => VCC,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: LABCELL_X36_Y3_N42
\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( (!slv_product_count_X(0) & (((slv_product_count_X(3)) # (slv_product_count_X(2))) # (slv_product_count_X(1)))) ) + ( \Add10~15\ ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010101010101010",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_slv_product_count_X(0),
	datab => ALT_INV_slv_product_count_X(1),
	datac => ALT_INV_slv_product_count_X(2),
	datad => ALT_INV_slv_product_count_X(3),
	cin => \Add10~14\,
	sharein => \Add10~15\,
	sumout => \Add10~17_sumout\);

-- Location: LABCELL_X36_Y3_N18
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( \Add10~17_sumout\ ) + ( \Add8~23\ ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add10~17_sumout\,
	cin => \Add8~22\,
	sharein => \Add8~23\,
	sumout => \Add8~25_sumout\);

-- Location: FF_X36_Y3_N20
\slv_total_price[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add8~25_sumout\,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => slv_total_price(0));

-- Location: FF_X36_Y3_N34
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => slv_total_price(0),
	sload => VCC,
	ena => \HEX0[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: LABCELL_X27_Y34_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


