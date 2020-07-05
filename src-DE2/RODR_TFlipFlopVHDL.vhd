library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity RODR_TFlipFlopVHDL IS
port(  RODR_T: In std_logic;
	RODR_Clk: In std_logic;
		 RODR_Q: Out std_logic);
end RODR_TFlipFlopVHDL;
 
architecture LogicFunction of RODR_TFlipFlopVHDL is
signal tmp: std_logic;
begin
	process (RODR_Clk)
		begin
		if RODR_Clk' event and RODR_Clk='1' then
			if RODR_T='0' then
				tmp <= tmp;
			elsif RODR_T='1' then
			tmp <= not (tmp);
			end if;
		end if;
	end process;
	RODR_Q <= tmp;
end LogicFunction;
