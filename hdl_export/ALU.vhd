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
    branch			: IN  std_logic;
    branch_operation	: IN  std_logic;
    operation		 	: IN std_logic_vector(2 downto 0);
  ------------------------------------------------------------------------------
  --output ports
    branch_output		: OUT  std_logic;
    saida        		: OUT std_logic_vector(31 DOWNTO 0)
    );
END ALU;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ALU IS


	signal result_temp : std_logic_vector(32 downto 0) := "000000000000000000000000000000000";

BEGIN

	process(input0, input1, operation, branch, branch_operation)
	begin
		if (branch = '1') then
			saida <= "00000000000000000000000000000000";
			case branch_operation is
				when "0" => --BEQ (branch if equal)
					result_temp <= std_logic_vector(signed(input0(31) & input0) - signed(input1(31) & input1));
					if (result_temp = "000000000000000000000000000000000") then
						branch_output <= '1';
					else
						branch_output <= '0';
					end if;

				when "1" => --BNE (branch not equal)
					result_temp <= std_logic_vector(signed(input0(31) & input0) - signed(input1(31) & input1));
					if (result_temp = "000000000000000000000000000000000") then
						branch_output <= '0';
					else
						branch_output <= '1';
					end if;
				when others =>
					branch_output <= '0';
			end case;
		else
			branch_output <= '0';
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
		end if;
	end process;

END TypeArchitecture;
