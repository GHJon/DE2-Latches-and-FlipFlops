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
-- CREATED		"Fri Feb 21 17:31:23 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY RODR_Control_SRLatch IS 
	PORT
	(
		RODR_S :  IN  STD_LOGIC;
		RODR_CLK :  IN  STD_LOGIC;
		RODR_R :  IN  STD_LOGIC;
		RODR_Q :  OUT  STD_LOGIC;
		RODR_QPrime :  OUT  STD_LOGIC
	);
END RODR_Control_SRLatch;

ARCHITECTURE bdf_type OF RODR_Control_SRLatch IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
RODR_Q <= SYNTHESIZED_WIRE_3;
RODR_QPrime <= SYNTHESIZED_WIRE_0;



SYNTHESIZED_WIRE_1 <= NOT(RODR_CLK AND RODR_S);


SYNTHESIZED_WIRE_2 <= NOT(RODR_R AND RODR_CLK);


SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_2 AND SYNTHESIZED_WIRE_3);


END bdf_type;