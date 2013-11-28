-- VHDL Entity Division_lib.FA.symbol
--
-- Created:
--          by - jschen3.ews (evrt-252-06.ews.illinois.edu)
--          at - 19:36:13 11/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY FA IS
   PORT( 
      a    : IN     std_logic;
      b    : IN     std_logic;
      cin  : IN     std_logic;
      S    : OUT    std_logic;
      cout : OUT    std_logic
   );

-- Declarations

END FA ;

--
-- VHDL Architecture Division_lib.FA.struct
--
-- Created:
--          by - jschen3.ews (evrt-252-06.ews.illinois.edu)
--          at - 19:36:13 11/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF FA IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL din1  : std_logic;
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;



BEGIN

   -- ModuleWare code(v1.9) for instance 'U_2' of 'sand'
   din1 <= a AND b;

   -- ModuleWare code(v1.9) for instance 'U_3' of 'sand'
   dout1 <= dout AND cin;

   -- ModuleWare code(v1.9) for instance 'U_0' of 'sxor'
   dout <= a XOR b;

   -- ModuleWare code(v1.9) for instance 'U_1' of 'sxor'
   S <= cin XOR dout;

   -- ModuleWare code(v1.9) for instance 'U_4' of 'sxor'
   cout <= dout1 XOR din1;

   -- Instance port mappings.

END struct;
