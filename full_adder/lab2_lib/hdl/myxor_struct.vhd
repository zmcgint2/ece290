-- VHDL Entity lab2_lib.myxor.symbol
--
-- Created:
--          by - hkiang2.ews (linux-v1.ews.illinois.edu)
--          at - 00:34:00 09/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY myxor IS
   PORT( 
      X : IN     std_logic;
      Y : IN     std_logic;
      f : OUT    std_logic
   );

-- Declarations

END myxor ;

--
-- VHDL Architecture lab2_lib.myxor.struct
--
-- Created:
--          by - hkiang2.ews (linux-v1.ews.illinois.edu)
--          at - 00:34:00 09/14/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF myxor IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL din2  : std_logic;
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;



BEGIN

   -- ModuleWare code(v1.9) for instance 'U_0' of 'nand'
   dout1 <= NOT(X AND din2);

   -- ModuleWare code(v1.9) for instance 'U_1' of 'nand'
   dout <= NOT(din2 AND Y);

   -- ModuleWare code(v1.9) for instance 'U_2' of 'nand'
   din2 <= NOT(X AND Y);

   -- ModuleWare code(v1.9) for instance 'U_3' of 'nand'
   f <= NOT(dout1 AND dout);

   -- Instance port mappings.

END struct;
