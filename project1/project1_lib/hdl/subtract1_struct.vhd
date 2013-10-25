-- VHDL Entity project1_lib.subtract1.symbol
--
-- Created:
--          by - mhe5.ews (dcl-l520-36.ews.illinois.edu)
--          at - 21:14:32 10/24/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY subtract1 IS
   PORT( 
      bla_in           : IN     std_logic_vector (7 DOWNTO 0);
      bla_plus_one_out : OUT    std_logic_vector (7 DOWNTO 0);
      cout             : OUT    std_logic
   );

-- Declarations

END subtract1 ;

--
-- VHDL Architecture project1_lib.subtract1.struct
--
-- Created:
--          by - mhe5.ews (dcl-l520-36.ews.illinois.edu)
--          at - 21:14:32 10/24/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF subtract1 IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL b_in : std_logic_vector(7 DOWNTO 0);
   SIGNAL dout : std_logic;


   -- Component Declarations
   COMPONENT full_adder_8bit_bus
   PORT (
      a_in  : IN     std_logic_vector (7 DOWNTO 0);
      b_in  : IN     std_logic_vector (7 DOWNTO 0);
      cin   : IN     std_logic ;
      cout  : OUT    std_logic ;
      s_out : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : full_adder_8bit_bus USE ENTITY project1_lib.full_adder_8bit_bus;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_3' of 'gnd'
   dout <= '0';

   -- ModuleWare code(v1.9) for instance 'U_4' of 'vdd'
   b_in(3) <= '1';

   -- ModuleWare code(v1.9) for instance 'U_6' of 'vdd'
   b_in(0) <= '1';

   -- ModuleWare code(v1.9) for instance 'U_9' of 'vdd'
   b_in(1) <= '1';

   -- ModuleWare code(v1.9) for instance 'U_10' of 'vdd'
   b_in(6) <= '1';

   -- ModuleWare code(v1.9) for instance 'U_11' of 'vdd'
   b_in(4) <= '1';

   -- ModuleWare code(v1.9) for instance 'U_12' of 'vdd'
   b_in(2) <= '1';

   -- ModuleWare code(v1.9) for instance 'U_13' of 'vdd'
   b_in(7) <= '1';

   -- ModuleWare code(v1.9) for instance 'U_14' of 'vdd'
   b_in(5) <= '1';

   -- Instance port mappings.
   U_0 : full_adder_8bit_bus
      PORT MAP (
         a_in  => bla_in,
         b_in  => b_in,
         cin   => dout,
         cout  => cout,
         s_out => bla_plus_one_out
      );

END struct;
