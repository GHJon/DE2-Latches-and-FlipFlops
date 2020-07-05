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
-- CREATED		"Fri Feb 21 18:59:25 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY RODR_JKFlipFlop IS 
	PORT
	(
		RODR_C :  IN  STD_LOGIC;
		RODR_J :  IN  STD_LOGIC;
		RODR_K :  IN  STD_LOGIC;
		RODR_Q :  OUT  STD_LOGIC;
		RODR_QPrime :  OUT  STD_LOGIC
	);
END RODR_JKFlipFlop;

ARCHITECTURE bdf_type OF RODR_JKFlipFlop IS 

COMPONENT rodr_posedgemasslave_d_flipflop
	PORT(RODR_D : IN STD_LOGIC;
		 RODR_C : IN STD_LOGIC;
		 RODR_Q : OUT STD_LOGIC;
		 RODR_QPrime : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 
RODR_Q <= SYNTHESIZED_WIRE_5;
RODR_QPrime <= SYNTHESIZED_WIRE_3;



b2v_inst : rodr_posedgemasslave_d_flipflop
PORT MAP(RODR_D => SYNTHESIZED_WIRE_0,
		 RODR_C => RODR_C,
		 RODR_Q => SYNTHESIZED_WIRE_5,
		 RODR_QPrime => SYNTHESIZED_WIRE_3);


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_3 AND RODR_J;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_4 <= NOT(RODR_K);



END bdf_type;