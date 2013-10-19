-- VHDL Entity project1_lib.jceasarshiftdecode.symbol
--
-- Created:
--          by - jschen3.ews (gelib-057-05.ews.illinois.edu)
--          at - 17:35:40 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY jceasarshiftdecode IS
   PORT( 
      A0 : IN     std_logic;
      A1 : IN     std_logic;
      A2 : IN     std_logic;
      A3 : IN     std_logic;
      A4 : IN     std_logic;
      b  : IN     std_logic;
      b1 : IN     std_logic;
      b2 : IN     std_logic;
      b3 : IN     std_logic;
      b4 : IN     std_logic;
      b5 : IN     std_logic;
      b6 : IN     std_logic;
      Z0 : OUT    std_logic;
      Z1 : OUT    std_logic;
      Z2 : OUT    std_logic;
      Z3 : OUT    std_logic;
      Z4 : OUT    std_logic;
      Z5 : OUT    std_logic;
      Z6 : OUT    std_logic;
      Z7 : OUT    std_logic
   );

-- Declarations

END jceasarshiftdecode ;

--
-- VHDL Architecture project1_lib.jceasarshiftdecode.struct
--
-- Created:
--          by - jschen3.ews (gelib-057-05.ews.illinois.edu)
--          at - 17:35:41 10/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF jceasarshiftdecode IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL A7greaterB7 : std_logic;
   SIGNAL dout        : std_logic;
   SIGNAL dout1       : std_logic;
   SIGNAL dout10      : std_logic;
   SIGNAL dout11      : std_logic;
   SIGNAL dout2       : std_logic;
   SIGNAL dout3       : std_logic;
   SIGNAL dout4       : std_logic;
   SIGNAL dout5       : std_logic;
   SIGNAL dout6       : std_logic;
   SIGNAL dout7       : std_logic;
   SIGNAL dout8       : std_logic;
   SIGNAL dout9       : std_logic;
   SIGNAL s           : std_logic;
   SIGNAL s1          : std_logic;
   SIGNAL s10         : std_logic;
   SIGNAL s11         : std_logic;
   SIGNAL s12         : std_logic;
   SIGNAL s13         : std_logic;
   SIGNAL s14         : std_logic;
   SIGNAL s15         : std_logic;
   SIGNAL s16         : std_logic;
   SIGNAL s17         : std_logic;
   SIGNAL s18         : std_logic;
   SIGNAL s19         : std_logic;
   SIGNAL s2          : std_logic;
   SIGNAL s20         : std_logic;
   SIGNAL s21         : std_logic;
   SIGNAL s3          : std_logic;
   SIGNAL s4          : std_logic;
   SIGNAL s5          : std_logic;
   SIGNAL s6          : std_logic;
   SIGNAL s7          : std_logic;
   SIGNAL s8          : std_logic;
   SIGNAL s9          : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL Z1_internal : std_logic;
   SIGNAL Z2_internal : std_logic;
   SIGNAL Z3_internal : std_logic;
   SIGNAL Z4_internal : std_logic;
   SIGNAL Z5_internal : std_logic;
   SIGNAL Z6_internal : std_logic;
   SIGNAL Z7_internal : std_logic;


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
   COMPONENT j21mux
   PORT (
      S : IN     std_logic;
      X : IN     std_logic;
      Y : IN     std_logic;
      Z : OUT    std_logic
   );
   END COMPONENT;
   COMPONENT j7bitcomparator
   PORT (
      A0          : IN     std_logic ;
      A1          : IN     std_logic ;
      A2          : IN     std_logic ;
      A3          : IN     std_logic ;
      A4          : IN     std_logic ;
      A5          : IN     std_logic ;
      A6          : IN     std_logic ;
      B0          : IN     std_logic ;
      B1          : IN     std_logic ;
      B2          : IN     std_logic ;
      B3          : IN     std_logic ;
      B4          : IN     std_logic ;
      B5          : IN     std_logic ;
      B6          : IN     std_logic ;
      A7equalsB7  : OUT    std_logic ;
      A7greaterB7 : OUT    std_logic ;
      B7greaterA7 : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : full_adder_8bit USE ENTITY project1_lib.full_adder_8bit;
   FOR ALL : j21mux USE ENTITY project1_lib.j21mux;
   FOR ALL : j7bitcomparator USE ENTITY project1_lib.j7bitcomparator;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_8' of 'gnd'
   dout8 <= '0';

   -- ModuleWare code(v1.9) for instance 'U_13' of 'gnd'
   dout11 <= '0';

   -- ModuleWare code(v1.9) for instance 'U_27' of 'gnd'
   dout <= '0';

   -- ModuleWare code(v1.9) for instance 'U_28' of 'gnd'
   dout9 <= '0';

   -- ModuleWare code(v1.9) for instance 'U_1' of 'inv'
   dout2 <= NOT(A0);

   -- ModuleWare code(v1.9) for instance 'U_2' of 'inv'
   dout3 <= NOT(A1);

   -- ModuleWare code(v1.9) for instance 'U_3' of 'inv'
   dout4 <= NOT(A2);

   -- ModuleWare code(v1.9) for instance 'U_4' of 'inv'
   dout5 <= NOT(A3);

   -- ModuleWare code(v1.9) for instance 'U_5' of 'inv'
   dout6 <= NOT(A4);

   -- ModuleWare code(v1.9) for instance 'U_34' of 'sxor'
   Z0 <= Z1_internal XOR Z2_internal XOR Z3_internal XOR Z4_internal
         XOR Z5_internal XOR Z6_internal XOR Z7_internal;

   -- ModuleWare code(v1.9) for instance 'U_6' of 'vdd'
   dout1 <= '1';

   -- ModuleWare code(v1.9) for instance 'U_9' of 'vdd'
   dout7 <= '1';

   -- ModuleWare code(v1.9) for instance 'U_11' of 'vdd'
   dout10 <= '1';

   -- Instance port mappings.
   U_0 : full_adder_8bit
      PORT MAP (
         a    => dout2,
         a1   => dout3,
         a2   => dout4,
         a3   => dout5,
         a4   => dout6,
         a5   => dout,
         a6   => dout,
         a7   => dout,
         b    => b,
         b1   => b1,
         b2   => b2,
         b3   => b3,
         b4   => b4,
         b5   => b5,
         b6   => b6,
         b7   => dout,
         cin  => dout1,
         cout => OPEN,
         s    => OPEN,
         s1   => s1,
         s2   => s2,
         s3   => s3,
         s4   => s4,
         s5   => s5,
         s6   => s6,
         s7   => s7
      );
   U_10 : full_adder_8bit
      PORT MAP (
         a    => dout9,
         a1   => dout10,
         a2   => dout9,
         a3   => dout10,
         a4   => dout10,
         a5   => dout9,
         a6   => dout9,
         a7   => dout9,
         b    => dout2,
         b1   => dout3,
         b2   => dout4,
         b3   => dout5,
         b4   => dout6,
         b5   => dout9,
         b6   => dout9,
         b7   => dout9,
         cin  => dout10,
         cout => OPEN,
         s    => s,
         s1   => s8,
         s2   => s9,
         s3   => s10,
         s4   => s11,
         s5   => s12,
         s6   => s13,
         s7   => s14
      );
   U_12 : full_adder_8bit
      PORT MAP (
         a    => s,
         a1   => s8,
         a2   => s9,
         a3   => s10,
         a4   => s11,
         a5   => s12,
         a6   => s13,
         a7   => s14,
         b    => b,
         b1   => b1,
         b2   => b2,
         b3   => b3,
         b4   => b4,
         b5   => b5,
         b6   => b6,
         b7   => dout11,
         cin  => dout11,
         cout => OPEN,
         s    => OPEN,
         s1   => s21,
         s2   => s20,
         s3   => s19,
         s4   => s18,
         s5   => s17,
         s6   => s16,
         s7   => s15
      );
   U_25 : j21mux
      PORT MAP (
         S => A7greaterB7,
         X => s7,
         Y => s15,
         Z => Z1_internal
      );
   U_26 : j21mux
      PORT MAP (
         S => A7greaterB7,
         X => s6,
         Y => s16,
         Z => Z2_internal
      );
   U_29 : j21mux
      PORT MAP (
         S => A7greaterB7,
         X => s5,
         Y => s17,
         Z => Z3_internal
      );
   U_30 : j21mux
      PORT MAP (
         S => A7greaterB7,
         X => s4,
         Y => s18,
         Z => Z4_internal
      );
   U_31 : j21mux
      PORT MAP (
         S => A7greaterB7,
         X => s3,
         Y => s19,
         Z => Z5_internal
      );
   U_32 : j21mux
      PORT MAP (
         S => A7greaterB7,
         X => s2,
         Y => s20,
         Z => Z6_internal
      );
   U_33 : j21mux
      PORT MAP (
         S => A7greaterB7,
         X => s1,
         Y => s21,
         Z => Z7_internal
      );
   U_7 : j7bitcomparator
      PORT MAP (
         A0          => s1,
         A1          => s2,
         A2          => s3,
         A3          => s4,
         A4          => s5,
         A5          => s6,
         A6          => s7,
         B0          => dout7,
         B1          => dout8,
         B2          => dout8,
         B3          => dout8,
         B4          => dout8,
         B5          => dout7,
         B6          => dout7,
         A7equalsB7  => OPEN,
         A7greaterB7 => A7greaterB7,
         B7greaterA7 => OPEN
      );

   -- Implicit buffered output assignments
   Z1 <= Z1_internal;
   Z2 <= Z2_internal;
   Z3 <= Z3_internal;
   Z4 <= Z4_internal;
   Z5 <= Z5_internal;
   Z6 <= Z6_internal;
   Z7 <= Z7_internal;

END struct;
