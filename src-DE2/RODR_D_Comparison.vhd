-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Mon Feb 24 12:49:08 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY RODR_D_Comparison IS 
	PORT
	(
		RODR_D :  IN  STD_LOGIC;
		RODR_CLK :  IN  STD_LOGIC;
		RODR_Q1 :  OUT  STD_LOGIC;
		RODR_Q2 :  OUT  STD_LOGIC;
		RODR_Q3 :  OUT  STD_LOGIC
	);
END RODR_D_Comparison;

ARCHITECTURE bdf_type OF RODR_D_Comparison IS 

COMPONENT rodr_posedgemasslave_d_flipflop
	PORT(RODR_D : IN STD_LOGIC;
		 RODR_C : IN STD_LOGIC;
		 RODR_Q : OUT STD_LOGIC;
		 RODR_QPrime : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT rodr_dlatch
	PORT(RODR_D : IN STD_LOGIC;
		 RODR_C : IN STD_LOGIC;
		 RODR_Q : OUT STD_LOGIC;
		 RODR_QPrime : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT rodr_negedgemasslave_d_flipflop
	PORT(RODR_D : IN STD_LOGIC;
		 RODR_C : IN STD_LOGIC;
		 RODR_Q : OUT STD_LOGIC;
		 RODR_QPrime : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 



b2v_inst : rodr_posedgemasslave_d_flipflop
PORT MAP(RODR_D => RODR_D,
		 RODR_C => RODR_CLK,
		 RODR_Q => RODR_Q2);


b2v_inst2 : rodr_dlatch
PORT MAP(RODR_D => RODR_D,
		 RODR_C => RODR_CLK,
		 RODR_Q => RODR_Q1);


b2v_inst3 : rodr_negedgemasslave_d_flipflop
PORT MAP(RODR_D => RODR_D,
		 RODR_C => RODR_CLK,
		 RODR_Q => RODR_Q3);


END bdf_type;