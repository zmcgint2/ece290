-- VHDL Entity project1_lib.full_adder.symbol
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 00:30:12 10/20/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY full_adder IS
   PORT( 
      cin  : IN     std_logic;
      A    : IN     std_logic;
      B    : IN     std_logic;
      S    : OUT    std_logic;
      cout : OUT    std_logic
   );

-- Declarations

END full_adder ;

--
-- VHDL Architecture project1_lib.full_adder.struct
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 00:30:13 10/20/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
-- 
--  VHDL Architecture lab2_lib.full_adder.struct
-- 
--  Created:
--           by - hkiang2.ews (linux-v1.ews.illinois.edu)
--           at - 00:43:12 09/14/13
-- 
--  Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
-- 
-- 
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;


ARCHITECTURE struct OF full_adder IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL dout  : std_logic;
   SIGNAL dout1 : std_logic;
   SIGNAL dout2 : std_logic;


---- Optional embedded configurations
--   -- pragma synthesis_off
--   FOR ALL : myxor USE ENTITY lab2_lib.myxor;
--   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_3' of 'sand'
   dout <= A AND B;

   -- ModuleWare code(v1.9) for instance 'U_4' of 'sand'
   dout2 <= dout1 AND cin;

   -- ModuleWare code(v1.9) for instance 'U_0' of 'sxor'
   dout1 <= A XOR B;

   -- ModuleWare code(v1.9) for instance 'U_1' of 'sxor'
   S <= cin XOR dout1;

   -- ModuleWare code(v1.9) for instance 'U_2' of 'sxor'
   cout <= dout2 XOR dout;

   -- Instance port mappings.

END struct;
