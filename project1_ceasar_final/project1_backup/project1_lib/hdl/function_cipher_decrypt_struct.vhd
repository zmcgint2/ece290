-- VHDL Entity project1_lib.function_cipher_decrypt.symbol
--
-- Created:
--          by - hkiang2.ews (gelib-057-06.ews.illinois.edu)
--          at - 16:56:40 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY function_cipher_decrypt IS
   PORT( 
      a          : IN     std_logic;
      a1         : IN     std_logic;
      a2         : IN     std_logic;
      a3         : IN     std_logic;
      a4         : IN     std_logic;
      a5         : IN     std_logic;
      a6         : IN     std_logic;
      a7         : IN     std_logic;
      cout1_VOID : OUT    std_logic;
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

END function_cipher_decrypt ;

--
-- VHDL Architecture project1_lib.function_cipher_decrypt.struct
--
-- Created:
--          by - hkiang2.ews (gelib-057-06.ews.illinois.edu)
--          at - 16:56:40 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF function_cipher_decrypt IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL gnd  : std_logic;
   SIGNAL mid0 : std_logic;
   SIGNAL mid1 : std_logic;
   SIGNAL mid2 : std_logic;
   SIGNAL mid3 : std_logic;
   SIGNAL mid4 : std_logic;
   SIGNAL mid5 : std_logic;
   SIGNAL mid6 : std_logic;
   SIGNAL pos1 : std_logic;


   -- Component Declarations
   COMPONENT add_97_lowercase_shift
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
   FOR ALL : add_97_lowercase_shift USE ENTITY project1_lib.add_97_lowercase_shift;
   FOR ALL : full_adder_8bit USE ENTITY project1_lib.full_adder_8bit;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_2' of 'gnd'
   gnd <= '0';

   -- ModuleWare code(v1.9) for instance 'U_3' of 'vdd'
   pos1 <= '1';

   -- Instance port mappings.
   U_0 : add_97_lowercase_shift
      PORT MAP (
         a    => mid0,
         a1   => mid1,
         a2   => mid2,
         a3   => mid3,
         a4   => mid4,
         a5   => mid5,
         a6   => mid6,
         a7   => gnd,
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
   U_4 : full_adder_8bit
      PORT MAP (
         a    => a,
         a1   => a1,
         a2   => a2,
         a3   => a3,
         a4   => a4,
         a5   => a5,
         a6   => a6,
         a7   => a7,
         b    => pos1,
         b1   => gnd,
         b2   => gnd,
         b3   => gnd,
         b4   => pos1,
         b5   => pos1,
         b6   => pos1,
         b7   => pos1,
         cin  => gnd,
         cout => cout1_VOID,
         s    => OPEN,
         s1   => mid0,
         s2   => mid1,
         s3   => mid2,
         s4   => mid3,
         s5   => mid4,
         s6   => mid5,
         s7   => mid6
      );

END struct;
