library ieee;
use ieee.std_logic_1164.all;

entity mux_32_1 is
	port (selection : in std_logic_vector(4 downto 0);
		input_0 : in std_logic_vector(31 downto 0);
		input_1 : in std_logic_vector(31 downto 0);
		input_2 : in std_logic_vector(31 downto 0);
		input_3 : in std_logic_vector(31 downto 0);
		input_4 : in std_logic_vector(31 downto 0);
		input_5 : in std_logic_vector(31 downto 0);
		input_6 : in std_logic_vector(31 downto 0);
		input_7 : in std_logic_vector(31 downto 0);
		input_8 : in std_logic_vector(31 downto 0);
		input_9 : in std_logic_vector(31 downto 0);
		input_10 : in std_logic_vector(31 downto 0);
		input_11 : in std_logic_vector(31 downto 0);
		input_12 : in std_logic_vector(31 downto 0);
		input_13 : in std_logic_vector(31 downto 0);
		input_14 : in std_logic_vector(31 downto 0);
		input_15 : in std_logic_vector(31 downto 0);
		input_16 : in std_logic_vector(31 downto 0);
		input_17 : in std_logic_vector(31 downto 0);
		input_18 : in std_logic_vector(31 downto 0);
		input_19 : in std_logic_vector(31 downto 0);
		input_20 : in std_logic_vector(31 downto 0);
		input_21 : in std_logic_vector(31 downto 0);
		input_22 : in std_logic_vector(31 downto 0);
		input_23 : in std_logic_vector(31 downto 0);
		input_24 : in std_logic_vector(31 downto 0);
		input_25 : in std_logic_vector(31 downto 0);
		input_26 : in std_logic_vector(31 downto 0);
		input_27 : in std_logic_vector(31 downto 0);
		input_28 : in std_logic_vector(31 downto 0);
		input_29 : in std_logic_vector(31 downto 0);
		input_30 : in std_logic_vector(31 downto 0);
		input_31 : in std_logic_vector(31 downto 0);
		output_0 : out std_logic_vector(31 downto 0));
end mux_32_1;

architecture behavioral of mux_32_1 is
signal dummy : std_logic_vector(31 downto 0):=x"00000000";
begin
	with selection select
		output_0 <=
		input_0 when "00000",
		input_1 when "00001",
		input_2 when "00010",
		input_3 when "00011",
		input_4 when "00100",
		input_5 when "00101",
		input_6 when "00110",
		input_7 when "00111",
		input_8 when "01000",
		input_9 when "01001",
		input_10 when "01010",
		input_11 when "01011",
		input_12 when "01100",
		input_13 when "01101",
		input_14 when "01110",
		input_15 when "01111",
		input_16 when "10000",
		input_17 when "10001",
		input_18 when "10010",
		input_19 when "10011",
		input_20 when "10100",
		input_21 when "10101",
		input_22 when "10110",
		input_23 when "10111",
		input_24 when "11000",
		input_25 when "11001",
		input_26 when "11010",
		input_27 when "11011",
		input_28 when "11100",
		input_29 when "11101",
		input_30 when "11110",
		input_31 when "11111",
		dummy when others;
end behavioral;
