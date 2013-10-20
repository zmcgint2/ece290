-- VHDL Entity project1_lib.j21mux.symbol
--
-- Created:
--          by - jschen3.ews (gelib-057-05.ews.illinois.edu)
--          at - 14:52:37 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY j21mux IS
   PORT( 
      S : IN     std_logic;
      X : IN     std_logic;
      Y : IN     std_logic;
      Z : OUT    std_logic
   );

-- Declarations

END j21mux ;

--
-- VHDL Architecture project1_lib.j21mux.struct
--
-- Created:
--          by - jschen3.ews (gelib-057-05.ews.illinois.edu)
--          at - 14:52:37 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF j21mux IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;
   SIGNAL dout2 : std_logic;



BEGIN

   -- ModuleWare code(v1.9) for instance 'U_1' of 'and1'
   dout1 <= X AND dout;

   -- ModuleWare code(v1.9) for instance 'U_2' of 'and1'
   dout2 <= S AND Y;

   -- ModuleWare code(v1.9) for instance 'U_0' of 'inv'
   dout <= NOT(S);

   -- ModuleWare code(v1.9) for instance 'U_3' of 'sor'
   Z <= dout1 OR dout2;

   -- Instance port mappings.

END struct;
