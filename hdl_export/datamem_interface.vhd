library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity datamem_interface is
	port (
		input_data : in std_logic_vector(31 downto 0);
		byte_address : in std_logic_vector(31 downto 0);
		clock, read, write: in std_logic;
		output_data : out std_logic_vector(31 downto 0);
		internal_mem_out0: out std_logic_vector(7 downto 0);
		internal_mem_out1: out std_logic_vector(7 downto 0);
		internal_mem_out2: out std_logic_vector(7 downto 0);
		internal_mem_out3: out std_logic_vector(7 downto 0);
		internal_mem_in0: in std_logic_vector(7 downto 0);
		internal_mem_in1: in std_logic_vector(7 downto 0);
		internal_mem_in2: in std_logic_vector(7 downto 0);
		internal_mem_in3: in std_logic_vector(7 downto 0);
		membank_address_out: out std_logic_vector(15 downto 0)
;
		internal_load_out: out std_logic_vector(3 downto 0)
		);
end entity datamem_interface;

architecture behavioural of datamem_interface is

	signal internal_load : std_logic_vector(3 downto 0);

	signal memory_input_0 : std_logic_vector(7 downto 0);
	signal memory_input_1 : std_logic_vector(7 downto 0);
	signal memory_input_2 : std_logic_vector(7 downto 0);
	signal memory_input_3 : std_logic_vector(7 downto 0);

	signal memory_output_0 : std_logic_vector(7 downto 0);
	signal memory_output_1 : std_logic_vector(7 downto 0);
	signal memory_output_2 : std_logic_vector(7 downto 0);
	signal memory_output_3 : std_logic_vector(7 downto 0);

	signal membank_address : std_logic_vector(31 downto 0);
	signal byte_starting_position : std_logic_vector(1 downto 0) := "00";

begin
	membank_address_acquirement : process (input_data, byte_address, read, write, byte_starting_position, memory_output_0, memory_output_1, memory_output_2, memory_output_3)
	begin
		membank_address <= std_logic_vector(shift_right(unsigned(byte_address), 2)); --Dividing by 4 while throwing away non-integer information
		byte_starting_position <= byte_address(1 downto 0); --Last 2 bits to know if we access the memory or not
		if (write = '1') then --writing to memory, data needs to be split before it gets saved
			if (byte_starting_position = "00") then
				internal_load <= "1111";
				memory_input_3 <= input_data(31 downto 24);
				memory_input_2 <= input_data(23 downto 16);
				memory_input_1 <= input_data(15 downto 8);
				memory_input_0 <= input_data(7 downto 0);
			else
				internal_load <= "0000";
				memory_input_3 <= X"00";
				memory_input_2 <= X"00";
				memory_input_1 <= X"00";
				memory_input_0 <= X"00";
			end if;
		elsif (read = '1') then --reading operation, data needs to be sent to internal registers in the registerfile 
			internal_load <= "0000";
			if (byte_starting_position = "00") then
				output_data <= std_logic_vector(memory_output_3 & memory_output_2 & memory_output_1 & memory_output_0);
			else
				output_data <= X"00000000";
			end if;
		end if;
	end process;

	internal_mem_out0<=memory_input_0;
	internal_mem_out1<=memory_input_1;
	internal_mem_out2<=memory_input_2;
	internal_mem_out3<=memory_input_3;
	memory_output_0<=internal_mem_in0;
	memory_output_1<=internal_mem_in1;
	memory_output_2<=internal_mem_in2;
	memory_output_3<=internal_mem_in3;
	internal_load_out<=internal_load;
	membank_address_out<=membank_address(15 downto 0);

end architecture behavioural;
