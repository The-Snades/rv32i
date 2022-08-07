--------------------------------------------------------------------------------
-- Project :
-- File    :
-- Autor   :
-- Date    :
--
--------------------------------------------------------------------------------
-- Description :
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ALU IS
  PORT (
  ------------------------------------------------------------------------------
  --input ports
    input0,input1        : IN  std_logic_vector(31 DOWNTO 0);
    operation		 	: IN std_logic_vector(2 downto 0);
  ------------------------------------------------------------------------------
  --output ports
    zero		: OUT  std_logic;
    saida        		: OUT std_logic_vector(31 DOWNTO 0)
    );
END ALU;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ALU IS

BEGIN

	process(input0, input1, operation)
	begin
			case operation is
				when "000" =>
					saida <= std_logic_vector(signed(input0) + signed(input1));
	
				when "001" =>
					saida <= std_logic_vector(signed(input0) - signed(input1));
	
				when "100" =>
					saida <= input0 xor input1;
	
				when "110" => 
					saida <= input0 or input1;
	
				when "111" => 
					saida <= input0 and input1;
	
				when others => --apenas zera tudo
					saida <= "00000000000000000000000000000000";

			end case;
	end process;

	zero<='1' when (signed(input0) - signed(input1)=X"000000000000000000000000000000000") else '0';	

END TypeArchitecture;
