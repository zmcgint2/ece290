-- VHDL Entity project1_lib.j1bitcomparator.symbol
--
-- Created:
--          by - jschen3.ews (gelib-057-16.ews.illinois.edu)
--          at - 18:33:09 10/15/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY j1bitcomparator IS
   PORT( 
      A         : IN     std_logic;
      B         : IN     std_logic;
      AequalsB  : OUT    std_logic;
      AgreaterB : OUT    std_logic;
      BgreaterA : OUT    std_logic
   );

-- Declarations

END j1bitcomparator ;

--
-- VHDL Architecture project1_lib.j1bitcomparator.struct
--
-- Created:
--          by - jschen3.ews (gelib-057-16.ews.illinois.edu)
--          at - 18:33:10 10/15/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF j1bitcomparator IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;
   SIGNAL dout2 : std_logic;



BEGIN

   -- ModuleWare code(v1.9) for instance 'U_0' of 'and'
   BgreaterA <= dout1 AND B;

   -- ModuleWare code(v1.9) for instance 'U_1' of 'and'
   AgreaterB <= dout2 AND A;

   -- ModuleWare code(v1.9) for instance 'U_3' of 'inv'
   AequalsB <= NOT(dout);

   -- ModuleWare code(v1.9) for instance 'U_4' of 'inv'
   dout1 <= NOT(A);

   -- ModuleWare code(v1.9) for instance 'U_5' of 'inv'
   dout2 <= NOT(B);

   -- ModuleWare code(v1.9) for instance 'U_2' of 'sxor'
   dout <= A XOR B;

   -- Instance port mappings.

END struct;
