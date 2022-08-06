library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity register_file is
	port (
write_address : in std_logic_vector(4 downto 0);
		 write_control : in std_logic;
		 load_vector_out : out std_logic_vector(31 downto 0));
end entity register_file;

architecture Behavioral of register_file is

	signal internal_reg_load : std_logic_vector(31 downto 0) := X"00000000";

begin
	register_load_decouple : process (write_address)
	begin
		if (write_control = '1') then
			case write_address is
				when "00000" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000000001";
				when "00001" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000000010";
				when "00010" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000000100";
				when "00011" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000001000";
				when "00100" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000010000";
				when "00101" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000100000";
				when "00110" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000001000000";
				when "00111" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000010000000";
				when "01000" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000100000000";
				when "01001" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000001000000000";
				when "01010" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000010000000000";
				when "01011" =>
					internal_reg_load(31 downto 0) <= "00000000000000000000100000000000";
				when "01100" =>
					internal_reg_load(31 downto 0) <= "00000000000000000001000000000000";
				when "01101" =>
					internal_reg_load(31 downto 0) <= "00000000000000000010000000000000";
				when "01110" =>
					internal_reg_load(31 downto 0) <= "00000000000000000100000000000000";
				when "01111" =>
					internal_reg_load(31 downto 0) <= "00000000000000001000000000000000";
				when "10000" =>
					internal_reg_load(31 downto 0) <= "00000000000000010000000000000000";
				when "10001" =>
					internal_reg_load(31 downto 0) <= "00000000000000100000000000000000";
				when "10010" =>
					internal_reg_load(31 downto 0) <= "00000000000001000000000000000000";
				when "10011" =>
					internal_reg_load(31 downto 0) <= "00000000000010000000000000000000";
				when "10100" =>
					internal_reg_load(31 downto 0) <= "00000000000100000000000000000000";
				when "10101" =>
					internal_reg_load(31 downto 0) <= "00000000001000000000000000000000";
				when "10110" =>
					internal_reg_load(31 downto 0) <= "00000000010000000000000000000000";
				when "10111" =>
					internal_reg_load(31 downto 0) <= "00000000100000000000000000000000";
				when "11000" =>
					internal_reg_load(31 downto 0) <= "00000001000000000000000000000000";
				when "11001" =>
					internal_reg_load(31 downto 0) <= "00000010000000000000000000000000";
				when "11010" =>
					internal_reg_load(31 downto 0) <= "00000100000000000000000000000000";
				when "11011" =>
					internal_reg_load(31 downto 0) <= "00001000000000000000000000000000";
				when "11100" =>
					internal_reg_load(31 downto 0) <= "00010000000000000000000000000000";
				when "11101" =>
					internal_reg_load(31 downto 0) <= "00100000000000000000000000000000";
				when "11110" =>
					internal_reg_load(31 downto 0) <= "01000000000000000000000000000000";
				when "11111" =>
					internal_reg_load(31 downto 0) <= "10000000000000000000000000000000";
				when others =>
					internal_reg_load(31 downto 0) <= "00000000000000000000000000000000";

			end case;
		else
			internal_reg_load(31 downto 0) <= "00000000000000000000000000000000";
		end if;
	end process;

	load_vector_out <= internal_reg_load;
end architecture Behavioral;
