-- VHDL Entity project1_lib.alphabet_to_ascii_bus.symbol
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 13:03:16 11/01/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY alphabet_to_ascii_bus IS
   PORT( 
      alphabet_in : IN     std_logic_vector (7 DOWNTO 0);
      ascii_out   : OUT    std_logic_vector (7 DOWNTO 0);
      cout        : OUT    std_logic
   );

-- Declarations

END alphabet_to_ascii_bus ;

--
-- VHDL Architecture project1_lib.alphabet_to_ascii_bus.struct
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 13:03:16 11/01/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF alphabet_to_ascii_bus IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL cin  : std_logic;
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

   -- ModuleWare code(v1.9) for instance 'U_3' of 'gnd'
   cin <= '0';

   -- ModuleWare code(v1.9) for instance 'U_2' of 'vdd'
   dout <= '1';

   -- Instance port mappings.
   U_0 : full_adder_8bit
      PORT MAP (
         a    => alphabet_in(0),
         a1   => alphabet_in(1),
         a2   => alphabet_in(2),
         a3   => alphabet_in(3),
         a4   => alphabet_in(4),
         a5   => alphabet_in(5),
         a6   => alphabet_in(6),
         a7   => alphabet_in(7),
         b    => dout,
         b1   => cin,
         b2   => cin,
         b3   => cin,
         b4   => cin,
         b5   => dout,
         b6   => dout,
         b7   => cin,
         cin  => cin,
         cout => cout,
         s    => ascii_out(0),
         s1   => ascii_out(1),
         s2   => ascii_out(2),
         s3   => ascii_out(3),
         s4   => ascii_out(4),
         s5   => ascii_out(5),
         s6   => ascii_out(6),
         s7   => ascii_out(7)
      );

END struct;
