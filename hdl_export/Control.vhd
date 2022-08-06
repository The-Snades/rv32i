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

ENTITY Control IS
  PORT (
  ------------------------------------------------------------------------------
  --Insert input ports below
    I    : IN  std_logic_vector(6 DOWNTO 0); -- input vector example
  ------------------------------------------------------------------------------
  --Insert output ports below
    ALUSrc        : OUT std_logic;                    -- output bit example
    MemtoReg      : OUT std_logic;  -- output vector example
    RegWrite      : OUT std_logic;
    MemRead	   : OUT std_logic;
    MemWrite      : OUT std_logic;
    Branch        : OUT std_logic;
    ALUOp1	   : OUT std_logic;
    ALUOp0	   : OUT std_logic
    
    );
END Control;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF Control IS

BEGIN

with I select ALUSrc <=
		'0' when "0110011",  --lw e sw (alu add)
		'1' when "0000011",  --beq (alu subtract)
		'1' when "0100011",  --R-format (add)
		'0' when "1100011",  --R-format (sub)
				
		'X' when others;

with I select MemtoReg <=
		'0' when "0110011",  --lw e sw (alu add)
		'1' when "0000011",  --beq (alu subtract)
		'X' when "0100011",  --R-format (add)
		'X' when "1100011",  --R-format (sub)
				
		'X' when others;

with I select RegWrite <=
		'1' when "0110011",  --lw e sw (alu add)
		'1' when "0000011",  --beq (alu subtract)
		'0' when "0100011",  --R-format (add)
		'0' when "1100011",  --R-format (sub)
				
		'X' when others;

with I select MemRead <=
		'0' when "0110011",  --lw e sw (alu add)
		'1' when "0000011",  --beq (alu subtract)
		'0' when "0100011",  --R-format (add)
		'0' when "1100011",  --R-format (sub)
				
		'X' when others;

with I select MemWrite <=
		'0' when "0110011",  --lw e sw (alu add)
		'0' when "0000011",  --beq (alu subtract)
		'1' when "0100011",  --R-format (add)
		'0' when "1100011",  --R-format (sub)
				
		'X' when others;

with I select Branch <=
		'0' when "0110011",  --lw e sw (alu add)
		'0' when "0000011",  --beq (alu subtract)
		'0' when "0100011",  --R-format (add)
		'1' when "1100011",  --R-format (sub)
				
		'X' when others;

with I select ALUOp1 <=
		'1' when "0110011",  --lw e sw (alu add)
		'0' when "0000011",  --beq (alu subtract)
		'0' when "0100011",  --R-format (add)
		'0' when "1100011",  --R-format (sub)
				
		'X' when others;

with I select ALUOp0 <=
		'0' when "0110011",  --lw e sw (alu add)
		'0' when "0000011",  --beq (alu subtract)
		'0' when "0100011",  --R-format (add)
		'1' when "1100011",  --R-format (sub)
				
		'X' when others;


END TypeArchitecture;
