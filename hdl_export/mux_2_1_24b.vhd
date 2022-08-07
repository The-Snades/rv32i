library ieee;
use ieee.std_logic_1164.all;

entity mux_2_1_24b is
	port (
		selection : in std_logic;
		input_0, input_1 : in std_logic_vector(23 downto 0);
		output_0 : out std_logic_vector(23 downto 0)
	);
end mux_2_1_24b;

architecture behavioral of mux_2_1_24b is
begin
	with selection select
		output_0 <=
		input_0 when '0',
		input_1 when '1',
		"XXXXXXXXXXXXXXXXXXXXXXXX" when others;
end behavioral;