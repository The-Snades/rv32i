library ieee;
use ieee.std_logic_1164.all;

entity reg5b is
	port (
		reg_in : in std_logic_vector(4 downto 0);
		load, clock, clear : in std_logic;
		reg_out : out std_logic_vector(4 downto 0)
	);
end reg5b;

architecture description of reg5b is
	signal internal_value : std_logic_vector(4 downto 0) := "00000";
begin
	process (clock, clear, load, internal_value)
	begin
		if (clear = '1') then
			internal_value <= "00000";
		elsif rising_edge(clock) then
			if (load = '1') then
				internal_value <= reg_in;
			else
				internal_value <= internal_value;
			end if;
		end if;
		reg_out <= internal_value;
	end process;
end description;
