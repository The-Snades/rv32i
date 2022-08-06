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

ENTITY alu_control IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    I        : IN  std_logic_vector(31 DOWNTO 0); 
    ALUop_in : IN std_logic_vector(1 downto 0); -- input vector example
  ------------------------------------------------------------------------------
  --Insert output ports below
    ALUCtrl_o        : OUT std_logic_vector(2 downto 0)                   -- output bit example
    );
END alu_control;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF alu_control IS

BEGIN

	with I(30)&I(14 downto 12)&ALUop_in select ALUCtrl_o <=
		"000" when "XXXX00",  --lw e sw (alu add)
		"001" when "XXXXX1",  --beq (alu subtract)
		"000" when "00001X",  --R-format (add)
		"001" when "10001X",  --R-format (sub)
		"111" when "01111X",  --R-format (and)
		"110" when "01101X",  --R-format (or)
		
		
		"XXX" when others;

END TypeArchitecture;
