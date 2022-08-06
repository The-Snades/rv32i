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

ENTITY ImmGen IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    I        : IN  std_logic_vector(31 DOWNTO 0); -- input vector example
  ------------------------------------------------------------------------------
  --Insert output ports below
    Imm        : OUT std_logic_vector(19 downto 0)                   -- output bit example
    );
END ImmGen;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ImmGen IS

BEGIN

	with I(6 downto 0) select Imm <=
		"00000000"&I(31 downto 20) when "0000011",  --I-type 
		"00000000"&I(31 downto 20) when "0010011",  --I-type
		"00000000"&I(31 downto 20) when "1100111",  --I-type (jalr rd, rs, imm)
		"00000000"&I(31 downto 25)&I(11 downto 7) when "0100011", --S-type (sw rs2, offset(rs1))
		"00000000"&I(31)&I(7)&I(30 downto 25)&I(11 downto 8) when "1100011", --B-type
		I(31 downto 12) when "0110111", --U-type (lui rd, offset)
		I(31)&I(19 downto 12)&I(20)&I(30 downto 21) when "1101111", --J-type (jal rd, imm)
		"XXXXXXXXXXXXXXXXXXXX" when others;

END TypeArchitecture;
