-- VHDL Entity project1_lib.z_ascii_mirror.symbol
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 23:59:17 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY z_ascii_mirror IS
   PORT( 
      mirror_in  : IN     std_logic_vector (7 DOWNTO 0);
      mirror_out : OUT    std_logic_vector (7 DOWNTO 0)
   );

-- Declarations

END z_ascii_mirror ;

--
-- VHDL Architecture project1_lib.z_ascii_mirror.struct
--
-- Created:
--          by - zmcgint2.ews (linux-v1.ews.illinois.edu)
--          at - 23:59:18 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF z_ascii_mirror IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL alphabet_out : std_logic_vector(7 DOWNTO 0);
   SIGNAL dout         : std_logic;
   SIGNAL neg_out      : std_logic_vector(7 DOWNTO 0);
   SIGNAL out_plus_13  : std_logic_vector(7 DOWNTO 0);
   SIGNAL s_out        : std_logic_vector(7 DOWNTO 0);
   SIGNAL s_out1       : std_logic_vector(7 DOWNTO 0);
   SIGNAL s_out2       : std_logic_vector(7 DOWNTO 0);
   SIGNAL s_out3       : std_logic_vector(7 DOWNTO 0);


   -- Component Declarations
   COMPONENT add1
   PORT (
      a_in  : IN     std_logic_vector (7 DOWNTO 0);
      cout  : OUT    std_logic ;
      s_out : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT add_13
   PORT (
      input       : IN     std_logic_vector (7 DOWNTO 0);
      out_plus_13 : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT alphabet_to_ascii_bus
   PORT (
      alphabet_in : IN     std_logic_vector (7 DOWNTO 0);
      ascii_out   : OUT    std_logic_vector (7 DOWNTO 0);
      cout        : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT ascii_to_alphabet_bus
   PORT (
      ascii_in     : IN     std_logic_vector (7 DOWNTO 0);
      alphabet_out : OUT    std_logic_vector (7 DOWNTO 0);
      cout         : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT full_adder_8bit_bus
   PORT (
      a_in  : IN     std_logic_vector (7 DOWNTO 0);
      b_in  : IN     std_logic_vector (7 DOWNTO 0);
      cin   : IN     std_logic ;
      cout  : OUT    std_logic ;
      s_out : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT inv_and_add1_bus
   PORT (
      pos_in  : IN     std_logic_vector (7 DOWNTO 0);
      neg_out : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;
   COMPONENT subtract1
   PORT (
      a_in  : IN     std_logic_vector (7 DOWNTO 0);
      cout  : OUT    std_logic ;
      s_out : OUT    std_logic_vector (7 DOWNTO 0)
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : add1 USE ENTITY project1_lib.add1;
   FOR ALL : add_13 USE ENTITY project1_lib.add_13;
   FOR ALL : alphabet_to_ascii_bus USE ENTITY project1_lib.alphabet_to_ascii_bus;
   FOR ALL : ascii_to_alphabet_bus USE ENTITY project1_lib.ascii_to_alphabet_bus;
   FOR ALL : full_adder_8bit_bus USE ENTITY project1_lib.full_adder_8bit_bus;
   FOR ALL : inv_and_add1_bus USE ENTITY project1_lib.inv_and_add1_bus;
   FOR ALL : subtract1 USE ENTITY project1_lib.subtract1;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_8' of 'gnd'
   dout <= '0';

   -- Instance port mappings.
   U_1 : add1
      PORT MAP (
         a_in  => alphabet_out,
         cout  => OPEN,
         s_out => s_out
      );
   U_3 : add_13
      PORT MAP (
         input       => neg_out,
         out_plus_13 => out_plus_13
      );
   U_7 : alphabet_to_ascii_bus
      PORT MAP (
         alphabet_in => s_out3,
         ascii_out   => mirror_out,
         cout        => OPEN
      );
   U_0 : ascii_to_alphabet_bus
      PORT MAP (
         ascii_in     => mirror_in,
         alphabet_out => alphabet_out,
         cout         => OPEN
      );
   U_4 : full_adder_8bit_bus
      PORT MAP (
         a_in  => out_plus_13,
         b_in  => out_plus_13,
         cin   => dout,
         cout  => OPEN,
         s_out => s_out1
      );
   U_5 : full_adder_8bit_bus
      PORT MAP (
         a_in  => s_out1,
         b_in  => alphabet_out,
         cin   => dout,
         cout  => OPEN,
         s_out => s_out2
      );
   U_2 : inv_and_add1_bus
      PORT MAP (
         pos_in  => s_out,
         neg_out => neg_out
      );
   U_6 : subtract1
      PORT MAP (
         a_in  => s_out2,
         cout  => OPEN,
         s_out => s_out3
      );

END struct;
