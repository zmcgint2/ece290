-- VHDL Entity project1_lib.subtract_97_lowercase_shift.symbol
--
-- Created:
--          by - hkiang2.ews (gelib-057-06.ews.illinois.edu)
--          at - 15:13:21 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY subtract_97_lowercase_shift IS
   PORT( 
      a    : IN     std_logic;
      a1   : IN     std_logic;
      a2   : IN     std_logic;
      a3   : IN     std_logic;
      a4   : IN     std_logic;
      a5   : IN     std_logic;
      a6   : IN     std_logic;
      a7   : IN     std_logic;
      cout : OUT    std_logic;
      s    : OUT    std_logic;
      s1   : OUT    std_logic;
      s2   : OUT    std_logic;
      s3   : OUT    std_logic;
      s4   : OUT    std_logic;
      s5   : OUT    std_logic;
      s6   : OUT    std_logic;
      s7   : OUT    std_logic
   );

-- Declarations

END subtract_97_lowercase_shift ;

--
-- VHDL Architecture project1_lib.subtract_97_lowercase_shift.struct
--
-- Created:
--          by - hkiang2.ews (gelib-057-06.ews.illinois.edu)
--          at - 15:13:21 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF subtract_97_lowercase_shift IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL b6   : std_logic;
   SIGNAL b7   : std_logic;
   SIGNAL dout : std_logic;


   -- Component Declarations
   COMPONENT full_adder_8bit
   PORT (
      a    : IN     std_logic ;
      a1   : IN     std_logic ;
      a2   : IN     std_logic ;
      a3   : IN     std_logic ;
      a4   : IN     std_logic ;
      a5   : IN     std_logic ;
      a6   : IN     std_logic ;
      a7   : IN     std_logic ;
      b    : IN     std_logic ;
      b1   : IN     std_logic ;
      b2   : IN     std_logic ;
      b3   : IN     std_logic ;
      b4   : IN     std_logic ;
      b5   : IN     std_logic ;
      b6   : IN     std_logic ;
      b7   : IN     std_logic ;
      cin  : IN     std_logic ;
      cout : OUT    std_logic ;
      s    : OUT    std_logic ;
      s1   : OUT    std_logic ;
      s2   : OUT    std_logic ;
      s3   : OUT    std_logic ;
      s4   : OUT    std_logic ;
      s5   : OUT    std_logic ;
      s6   : OUT    std_logic ;
      s7   : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : full_adder_8bit USE ENTITY project1_lib.full_adder_8bit;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_1' of 'gnd'
   b6 <= '0';

   -- ModuleWare code(v1.9) for instance 'U_3' of 'gnd'
   dout <= '0';

   -- ModuleWare code(v1.9) for instance 'U_2' of 'vdd'
   b7 <= '1';

   -- Instance port mappings.
   U_0 : full_adder_8bit
      PORT MAP (
         a    => a,
         a1   => a1,
         a2   => a2,
         a3   => a3,
         a4   => a4,
         a5   => a5,
         a6   => a6,
         a7   => a7,
         b    => b7,
         b1   => b7,
         b2   => b7,
         b3   => b7,
         b4   => b7,
         b5   => b6,
         b6   => b6,
         b7   => b7,
         cin  => dout,
         cout => cout,
         s    => s,
         s1   => s1,
         s2   => s2,
         s3   => s3,
         s4   => s4,
         s5   => s5,
         s6   => s6,
         s7   => s7
      );

END struct;
