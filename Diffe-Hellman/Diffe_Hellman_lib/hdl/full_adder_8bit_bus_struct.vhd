-- VHDL Entity project1_lib.full_adder_8bit_bus.symbol
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 13:03:15 11/01/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY full_adder_8bit_bus IS
   PORT( 
      a_in  : IN     std_logic_vector (7 DOWNTO 0);
      b_in  : IN     std_logic_vector (7 DOWNTO 0);
      cin   : IN     std_logic;
      cout  : OUT    std_logic;
      s_out : OUT    std_logic_vector (7 DOWNTO 0)
   );

-- Declarations

END full_adder_8bit_bus ;

--
-- VHDL Architecture project1_lib.full_adder_8bit_bus.struct
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 13:03:15 11/01/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF full_adder_8bit_bus IS

   -- Architecture declarations

   -- Internal signal declarations


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

   -- Instance port mappings.
   U_0 : full_adder_8bit
      PORT MAP (
         a    => a_in(0),
         a1   => a_in(1),
         a2   => a_in(2),
         a3   => a_in(3),
         a4   => a_in(4),
         a5   => a_in(5),
         a6   => a_in(6),
         a7   => a_in(7),
         b    => b_in(0),
         b1   => b_in(1),
         b2   => b_in(2),
         b3   => b_in(3),
         b4   => b_in(4),
         b5   => b_in(5),
         b6   => b_in(6),
         b7   => b_in(7),
         cin  => cin,
         cout => cout,
         s    => s_out(0),
         s1   => s_out(1),
         s2   => s_out(2),
         s3   => s_out(3),
         s4   => s_out(4),
         s5   => s_out(5),
         s6   => s_out(6),
         s7   => s_out(7)
      );

END struct;