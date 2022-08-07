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

ENTITY ADD IS
  PORT (
  ------------------------------------------------------------------------------
  
    A_i      : IN  std_logic_vector(23 DOWNTO 0);        --operando 1               
    B_i        : IN  std_logic_vector(23 DOWNTO 0);      --operando 2
  ------------------------------------------------------------------------------
    S_o        : OUT std_logic_vector(23 DOWNTO 0)  -- Saida
    );
END ADD;

--------------------------------------------------------------------------------
--Complete your VHDL description below
--------------------------------------------------------------------------------

ARCHITECTURE TypeArchitecture OF ADD IS

signal p : std_logic_vector(23 downto 0);
signal g : std_logic_vector(23 downto 0);
signal c : std_logic_vector(23 downto 0);
signal S : std_logic_vector(23 downto 0);


BEGIN

p <= A_i xor B_i;
g <= A_i and B_i;

--estrutura do carry lookahead
c(0) <= '0';
c(1) <= g(0) or 
		 (p(0) and c(0));
				 
c(2) <= g(1) or
		 (p(1) and g(0)) or 	 
		 (p(1) and p(0) and c(0));

c(3) <= g(2) or
		 (p(2) and g(1)) or
		 (p(2) and p(1) and g(0)) or
		 (p(2) and p(1) and p(0) and c(0));
		  
c(4) <= g(3) or 
		 (p(3) and g(2)) or
		 (p(3) and p(2) and g(1)) or		 
		 (p(3) and p(2) and p(1) and g(0)) or
		 (p(3) and p(2) and p(1) and p(0) and c(0)); 
		 
c(5) <= g(4) or 
		 (p(4) and g(3)) or
		 (p(4) and p(3) and g(2)) or
		 (p(4) and p(3) and p(2) and g(1)) or
		 (p(4) and p(3) and p(2) and p(1) and g(0)) or 
		 (p(4) and p(3) and p(2) and p(1) and p(0) and c(0));		 				 

	
c(6) <= g(5) or
		 (p(5) and g(4)) or 
		 (p(5) and p(4) and g(3)) or
		 (p(5) and p(4) and p(3) and g(2)) or
		 (p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or 
		 (p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0)); 		

c(7) <= g(6) or
		 (p(6) and g(5)) or
		 (p(6) and p(5) and g(4)) or
		 (p(6) and p(5) and p(4) and g(3)) or
		 (p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0)); 

c(8) <= g(7) or
		 (p(7) and g(6)) or
		 (p(7) and p(6) and g(5)) or
		 (p(7) and p(6) and p(5) and g(4)) or
		 (p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or	
		 (p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or 
		 (p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(9) <= g(8) or
		 (p(8) and g(7)) or
		 (p(8) and p(7) and g(6)) or
		 (p(8) and p(7) and p(6) and g(5)) or
		 (p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or	
		 (p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or 
		 (p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or 
		 (p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(10) <= g(9) or
		 (p(9) and g(8)) or
		 (p(9) and p(8) and g(7)) or
		 (p(9) and p(8) and p(7) and g(6)) or
		 (p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));


c(11) <= g(10) or
		 (p(10) and g(9)) or
		 (p(10) and p(9) and g(8)) or
		 (p(10) and p(9) and p(8) and g(7)) or
		 (p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));
		 
c(12) <= g(11) or
		 (p(11) and g(10)) or
		 (p(11) and p(10) and g(9)) or
		 (p(11) and p(10) and p(9) and g(8)) or
		 (p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(13) <= g(12) or
		 (p(12) and g(11)) or
		 (p(12) and p(11) and g(10)) or
		 (p(12) and p(11) and p(10) and g(9)) or
		 (p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));	

c(14) <= g(13) or
		 (p(13) and g(12)) or
		 (p(13) and p(12) and g(11)) or
		 (p(13) and p(12) and p(11) and g(10)) or
		 (p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(15) <= g(14) or
		 (p(14) and g(13)) or
		 (p(14) and p(13) and g(12)) or
		 (p(14) and p(13) and p(12) and g(11)) or
		 (p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(16) <= g(15) or
		 (p(15) and g(14)) or
		 (p(15) and p(14) and g(13)) or
		 (p(15) and p(14) and p(13) and g(12)) or
		 (p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(17) <= g(16) or
		 (p(16) and g(15)) or
		 (p(16) and p(15) and g(14)) or
		 (p(16) and p(15) and p(14) and g(13)) or
		 (p(16) and p(15) and p(14) and p(13) and g(12)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(18) <= g(17) or
		 (p(17) and g(16)) or
		 (p(17) and p(16) and g(15)) or
		 (p(17) and p(16) and p(15) and g(14)) or
		 (p(17) and p(16) and p(15) and p(14) and g(13)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and g(12)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));	

c(19) <= g(18) or
		 (p(18) and g(17)) or
		 (p(18) and p(17) and g(16)) or
		 (p(18) and p(17) and p(16) and g(15)) or
		 (p(18) and p(17) and p(16) and p(15) and g(14)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and g(13)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and g(12)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(20) <= g(19) or
		 (p(19) and g(18)) or
		 (p(19) and p(18) and g(17)) or
		 (p(19) and p(18) and p(17) and g(16)) or
		 (p(19) and p(18) and p(17) and p(16) and g(15)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and g(14)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and g(13)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and g(12)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(21) <= g(20) or
		 (p(20) and g(19)) or
		 (p(20) and p(19) and g(18)) or
		 (p(20) and p(19) and p(18) and g(17)) or
		 (p(20) and p(19) and p(18) and p(17) and g(16)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and g(15)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and g(14)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and g(13)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and g(12)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(22) <= g(21) or
		 (p(21) and g(20)) or
		 (p(21) and p(20) and g(19)) or
		 (p(21) and p(20) and p(19) and g(18)) or
		 (p(21) and p(20) and p(19) and p(18) and g(17)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and g(16)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and g(15)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and g(14)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and g(13)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and g(12)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

c(23) <= g(22) or
		 (p(22) and g(21)) or
		 (p(22) and p(21) and g(20)) or
		 (p(22) and p(21) and p(20) and g(19)) or
		 (p(22) and p(21) and p(20) and p(19) and g(18)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and g(17)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and g(16)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and g(15)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and g(14)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and g(13)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and g(12)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and g(11)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and g(10)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and g(9)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and g(8)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and g(7)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and g(6)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and g(5)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and g(4)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and g(3)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and g(2)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and g(1)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and g(0)) or
		 (p(22) and p(21) and p(20) and p(19) and p(18) and p(17) and p(16) and p(15) and p(14) and p(13) and p(12) and p(11) and p(10) and p(9) and p(8) and p(7) and p(6) and p(5) and p(4) and p(3) and p(2) and p(1) and p(0) and c(0));

	S_o <= p xor c;

END TypeArchitecture;
