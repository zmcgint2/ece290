-- VHDL Entity project1_lib.full_adder_8bit.symbol
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 13:03:14 11/01/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY full_adder_8bit IS
   PORT( 
      a    : IN     std_logic;
      a1   : IN     std_logic;
      a2   : IN     std_logic;
      a3   : IN     std_logic;
      a4   : IN     std_logic;
      a5   : IN     std_logic;
      a6   : IN     std_logic;
      a7   : IN     std_logic;
      b    : IN     std_logic;
      b1   : IN     std_logic;
      b2   : IN     std_logic;
      b3   : IN     std_logic;
      b4   : IN     std_logic;
      b5   : IN     std_logic;
      b6   : IN     std_logic;
      b7   : IN     std_logic;
      cin  : IN     std_logic;
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

END full_adder_8bit ;

--
-- VHDL Architecture project1_lib.full_adder_8bit.struct
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 13:03:14 11/01/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF full_adder_8bit IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL cout1 : std_logic;
   SIGNAL cout2 : std_logic;
   SIGNAL cout3 : std_logic;
   SIGNAL cout4 : std_logic;
   SIGNAL cout5 : std_logic;
   SIGNAL cout6 : std_logic;
   SIGNAL cout7 : std_logic;


   -- Component Declarations
   COMPONENT full_adder
   PORT (
      cin  : IN     std_logic ;
      A    : IN     std_logic ;
      B    : IN     std_logic ;
      S    : OUT    std_logic ;
      cout : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : full_adder USE ENTITY project1_lib.full_adder;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : full_adder
      PORT MAP (
         cin  => cout3,
         A    => a5,
         B    => b5,
         S    => s5,
         cout => cout2
      );
   U_1 : full_adder
      PORT MAP (
         cin  => cout4,
         A    => a4,
         B    => b4,
         S    => s4,
         cout => cout3
      );
   U_2 : full_adder
      PORT MAP (
         cin  => cout2,
         A    => a6,
         B    => b6,
         S    => s6,
         cout => cout1
      );
   U_3 : full_adder
      PORT MAP (
         cin  => cout5,
         A    => a3,
         B    => b3,
         S    => s3,
         cout => cout4
      );
   U_4 : full_adder
      PORT MAP (
         cin  => cout1,
         A    => a7,
         B    => b7,
         S    => s7,
         cout => cout
      );
   U_5 : full_adder
      PORT MAP (
         cin  => cout6,
         A    => a2,
         B    => b2,
         S    => s2,
         cout => cout5
      );
   U_6 : full_adder
      PORT MAP (
         cin  => cout7,
         A    => a1,
         B    => b1,
         S    => s1,
         cout => cout6
      );
   U_7 : full_adder
      PORT MAP (
         cin  => cin,
         A    => a,
         B    => b,
         S    => s,
         cout => cout7
      );

END struct;