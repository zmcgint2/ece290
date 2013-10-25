-- VHDL Entity project1_lib.function_cipher.symbol
--
-- Created:
--          by - hkiang2.ews (gelib-057-06.ews.illinois.edu)
--          at - 15:54:44 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY function_cipher IS
   PORT( 
      a0         : IN     std_logic;
      a1         : IN     std_logic;
      a2         : IN     std_logic;
      a3         : IN     std_logic;
      a4         : IN     std_logic;
      a5         : IN     std_logic;
      a6         : IN     std_logic;
      a7         : IN     std_logic;
      cout1_VOID : OUT    std_logic;
      cout2_VOID : OUT    std_logic;
      cout_VOID  : OUT    std_logic;
      out0       : OUT    std_logic;
      out1       : OUT    std_logic;
      out2       : OUT    std_logic;
      out3       : OUT    std_logic;
      out4       : OUT    std_logic;
      out5       : OUT    std_logic;
      out6       : OUT    std_logic;
      out7       : OUT    std_logic
   );

-- Declarations

END function_cipher ;

--
-- VHDL Architecture project1_lib.function_cipher.struct
--
-- Created:
--          by - hkiang2.ews (gelib-057-06.ews.illinois.edu)
--          at - 15:54:44 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF function_cipher IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL b      : std_logic;
   SIGNAL ground : std_logic;
   SIGNAL s      : std_logic;
   SIGNAL s1     : std_logic;
   SIGNAL s10    : std_logic;
   SIGNAL s11    : std_logic;
   SIGNAL s12    : std_logic;
   SIGNAL s13    : std_logic;
   SIGNAL s14    : std_logic;
   SIGNAL s15    : std_logic;
   SIGNAL s2     : std_logic;
   SIGNAL s3     : std_logic;
   SIGNAL s4     : std_logic;
   SIGNAL s5     : std_logic;
   SIGNAL s6     : std_logic;
   SIGNAL s7     : std_logic;
   SIGNAL s8     : std_logic;
   SIGNAL s9     : std_logic;


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
   COMPONENT subtract_97_lowercase_shift
   PORT (
      a    : IN     std_logic ;
      a1   : IN     std_logic ;
      a2   : IN     std_logic ;
      a3   : IN     std_logic ;
      a4   : IN     std_logic ;
      a5   : IN     std_logic ;
      a6   : IN     std_logic ;
      a7   : IN     std_logic ;
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
   FOR ALL : subtract_97_lowercase_shift USE ENTITY project1_lib.subtract_97_lowercase_shift;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_2' of 'gnd'
   ground <= '0';

   -- ModuleWare code(v1.9) for instance 'U_3' of 'vdd'
   b <= '1';

   -- Instance port mappings.
   U_0 : full_adder_8bit
      PORT MAP (
         a    => s,
         a1   => s1,
         a2   => s2,
         a3   => s3,
         a4   => s4,
         a5   => s5,
         a6   => s6,
         a7   => s7,
         b    => s,
         b1   => s1,
         b2   => s2,
         b3   => s3,
         b4   => s4,
         b5   => s5,
         b6   => s6,
         b7   => s7,
         cin  => ground,
         cout => cout1_VOID,
         s    => s8,
         s1   => s9,
         s2   => s10,
         s3   => s11,
         s4   => s12,
         s5   => s13,
         s6   => s14,
         s7   => s15
      );
   U_4 : full_adder_8bit
      PORT MAP (
         a    => s8,
         a1   => s9,
         a2   => s10,
         a3   => s11,
         a4   => s12,
         a5   => s13,
         a6   => s14,
         a7   => s15,
         b    => b,
         b1   => b,
         b2   => b,
         b3   => b,
         b4   => ground,
         b5   => ground,
         b6   => ground,
         b7   => ground,
         cin  => ground,
         cout => cout_VOID,
         s    => out0,
         s1   => out1,
         s2   => out2,
         s3   => out3,
         s4   => out4,
         s5   => out5,
         s6   => out6,
         s7   => out7
      );
   U_1 : subtract_97_lowercase_shift
      PORT MAP (
         a    => a0,
         a1   => a1,
         a2   => a2,
         a3   => a3,
         a4   => a4,
         a5   => a5,
         a6   => a6,
         a7   => a7,
         cout => cout2_VOID,
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
