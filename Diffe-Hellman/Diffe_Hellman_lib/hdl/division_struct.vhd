-- VHDL Entity Division_lib.Division.symbol
--
-- Created:
--          by - jschen3.ews (evrt-252-06.ews.illinois.edu)
--          at - 19:23:47 11/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Division IS
   PORT( 
      q0 : OUT    std_logic;
      q1 : OUT    std_logic;
      q2 : OUT    std_logic;
      q3 : OUT    std_logic;
      r0 : OUT    std_logic;
      r1 : OUT    std_logic;
      r2 : OUT    std_logic;
      r3 : OUT    std_logic
   );

-- Declarations

END Division ;

--
-- VHDL Architecture Division_lib.Division.struct
--
-- Created:
--          by - jschen3.ews (evrt-252-06.ews.illinois.edu)
--          at - 19:23:47 11/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY Division_lib;

ARCHITECTURE struct OF Division IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL Abus   : std_logic_vector(3 DOWNTO 0);
   SIGNAL Bbus   : std_logic_vector(3 DOWNTO 0);
   SIGNAL cout   : std_logic;
   SIGNAL cout1  : std_logic;
   SIGNAL cout10 : std_logic;
   SIGNAL cout11 : std_logic;
   SIGNAL cout12 : std_logic;
   SIGNAL cout2  : std_logic;
   SIGNAL cout3  : std_logic;
   SIGNAL cout4  : std_logic;
   SIGNAL cout5  : std_logic;
   SIGNAL cout6  : std_logic;
   SIGNAL cout7  : std_logic;
   SIGNAL cout8  : std_logic;
   SIGNAL din0   : std_logic;
   SIGNAL din1   : std_logic;
   SIGNAL din2   : std_logic;
   SIGNAL din3   : std_logic;
   SIGNAL ground : std_logic;
   SIGNAL sum    : std_logic;
   SIGNAL sum1   : std_logic;
   SIGNAL sum10  : std_logic;
   SIGNAL sum11  : std_logic;
   SIGNAL sum2   : std_logic;
   SIGNAL sum3   : std_logic;
   SIGNAL sum4   : std_logic;
   SIGNAL sum5   : std_logic;
   SIGNAL sum6   : std_logic;
   SIGNAL sum7   : std_logic;
   SIGNAL sum8   : std_logic;
   SIGNAL sum9   : std_logic;
   SIGNAL vcc    : std_logic;


   -- Component Declarations
   COMPONENT SubstractorOneBit
   PORT (
      A     : IN     std_logic ;
      B     : IN     std_logic ;
      cin   : IN     std_logic ;
      fcout : IN     std_logic ;
      cout  : OUT    std_logic ;
      sum   : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : SubstractorOneBit USE ENTITY Division_lib.SubstractorOneBit;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_21' of 'gnd'
   ground <= '0';

   -- ModuleWare code(v1.9) for instance 'U_0' of 'or'
   q3 <= din0 OR Abus(3);

   -- ModuleWare code(v1.9) for instance 'U_1' of 'or'
   q2 <= din1 OR sum;

   -- ModuleWare code(v1.9) for instance 'U_5' of 'or'
   q1 <= din2 OR sum4;

   -- ModuleWare code(v1.9) for instance 'U_18' of 'or'
   q0 <= din3 OR sum11;

   -- ModuleWare code(v1.9) for instance 'U_4' of 'vdd'
   vcc <= '1';

   -- Instance port mappings.
   U_2 : SubstractorOneBit
      PORT MAP (
         A     => ground,
         B     => Bbus(2),
         cin   => cout1,
         fcout => din0,
         cout  => cout2,
         sum   => sum1
      );
   U_3 : SubstractorOneBit
      PORT MAP (
         A     => ground,
         B     => Bbus(3),
         cin   => cout2,
         fcout => din0,
         cout  => din0,
         sum   => sum
      );
   U_6 : SubstractorOneBit
      PORT MAP (
         A     => sum1,
         B     => Bbus(3),
         cin   => cout5,
         fcout => din1,
         cout  => din1,
         sum   => sum4
      );
   U_7 : SubstractorOneBit
      PORT MAP (
         A     => sum2,
         B     => Bbus(2),
         cin   => cout4,
         fcout => din1,
         cout  => cout5,
         sum   => sum3
      );
   U_8 : SubstractorOneBit
      PORT MAP (
         A     => sum10,
         B     => Bbus(1),
         cin   => cout3,
         fcout => din1,
         cout  => cout4,
         sum   => sum5
      );
   U_9 : SubstractorOneBit
      PORT MAP (
         A     => Abus(2),
         B     => Bbus(0),
         cin   => vcc,
         fcout => din1,
         cout  => cout3,
         sum   => sum6
      );
   U_10 : SubstractorOneBit
      PORT MAP (
         A     => sum3,
         B     => Bbus(3),
         cin   => cout12,
         fcout => din2,
         cout  => din2,
         sum   => sum11
      );
   U_11 : SubstractorOneBit
      PORT MAP (
         A     => sum5,
         B     => Bbus(2),
         cin   => cout7,
         fcout => din2,
         cout  => cout12,
         sum   => sum7
      );
   U_12 : SubstractorOneBit
      PORT MAP (
         A     => sum6,
         B     => Bbus(1),
         cin   => cout6,
         fcout => din2,
         cout  => cout7,
         sum   => sum8
      );
   U_13 : SubstractorOneBit
      PORT MAP (
         A     => Abus(1),
         B     => Bbus(0),
         cin   => vcc,
         fcout => din2,
         cout  => cout6,
         sum   => sum9
      );
   U_14 : SubstractorOneBit
      PORT MAP (
         A     => sum7,
         B     => Bbus(3),
         cin   => cout8,
         fcout => din3,
         cout  => din3,
         sum   => r3
      );
   U_15 : SubstractorOneBit
      PORT MAP (
         A     => sum8,
         B     => Bbus(2),
         cin   => cout10,
         fcout => din3,
         cout  => cout8,
         sum   => r2
      );
   U_16 : SubstractorOneBit
      PORT MAP (
         A     => sum9,
         B     => Bbus(1),
         cin   => cout11,
         fcout => din3,
         cout  => cout10,
         sum   => r1
      );
   U_17 : SubstractorOneBit
      PORT MAP (
         A     => Abus(0),
         B     => Bbus(0),
         cin   => vcc,
         fcout => din3,
         cout  => cout11,
         sum   => r0
      );
   U_22 : SubstractorOneBit
      PORT MAP (
         A     => ground,
         B     => Bbus(1),
         cin   => cout,
         fcout => din0,
         cout  => cout1,
         sum   => sum2
      );
   U_23 : SubstractorOneBit
      PORT MAP (
         A     => Abus(3),
         B     => Bbus(0),
         cin   => vcc,
         fcout => din0,
         cout  => cout,
         sum   => sum10
      );

END struct;
