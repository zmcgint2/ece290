-- VHDL Entity Division_lib.Div4bit.symbol
--
-- Created:
--          by - jschen3.ews (gelib-057-21.ews.illinois.edu)
--          at - 19:59:52 11/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY Div4bit IS
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

END Div4bit ;

--
-- VHDL Architecture Division_lib.Div4bit.struct
--
-- Created:
--          by - jschen3.ews (gelib-057-21.ews.illinois.edu)
--          at - 19:59:53 11/19/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY Division_lib;

ARCHITECTURE struct OF Div4bit IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL Abus     : std_logic_vector(3 DOWNTO 0);
   SIGNAL Bbus     : std_logic_vector(3 DOWNTO 0);
   SIGNAL S        : std_logic;
   SIGNAL S1       : std_logic;
   SIGNAL S10      : std_logic;
   SIGNAL S11      : std_logic;
   SIGNAL S2       : std_logic;
   SIGNAL S3       : std_logic;
   SIGNAL S4       : std_logic;
   SIGNAL S5       : std_logic;
   SIGNAL S6       : std_logic;
   SIGNAL S7       : std_logic;
   SIGNAL S8       : std_logic;
   SIGNAL S9       : std_logic;
   SIGNAL cout     : std_logic;
   SIGNAL cout1    : std_logic;
   SIGNAL cout10   : std_logic;
   SIGNAL cout11   : std_logic;
   SIGNAL cout2    : std_logic;
   SIGNAL cout3    : std_logic;
   SIGNAL cout4    : std_logic;
   SIGNAL cout5    : std_logic;
   SIGNAL cout6    : std_logic;
   SIGNAL cout7    : std_logic;
   SIGNAL cout8    : std_logic;
   SIGNAL cout9    : std_logic;
   SIGNAL dout     : std_logic;
   SIGNAL dout1    : std_logic;
   SIGNAL dout10   : std_logic;
   SIGNAL dout11   : std_logic;
   SIGNAL dout2    : std_logic;
   SIGNAL dout3    : std_logic;
   SIGNAL dout4    : std_logic;
   SIGNAL dout5    : std_logic;
   SIGNAL dout6    : std_logic;
   SIGNAL dout7    : std_logic;
   SIGNAL dout8    : std_logic;
   SIGNAL dout9    : std_logic;
   SIGNAL firstOS  : std_logic;
   SIGNAL fourthOS : std_logic;
   SIGNAL gr       : std_logic;
   SIGNAL secondOS : std_logic;
   SIGNAL thirdOS  : std_logic;
   SIGNAL vcc      : std_logic;


   -- Component Declarations
   COMPONENT subtract
   PORT (
      a    : IN     std_logic ;
      b    : IN     std_logic ;
      cin  : IN     std_logic ;
      S    : OUT    std_logic ;
      cout : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : subtract USE ENTITY Division_lib.subtract;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_4' of 'gnd'
   gr <= '0';

   -- ModuleWare code(v1.9) for instance 'U_14' of 'inv'
   q3 <= NOT(firstOS);

   -- ModuleWare code(v1.9) for instance 'U_19' of 'inv'
   q2 <= NOT(secondOS);

   -- ModuleWare code(v1.9) for instance 'U_32' of 'inv'
   q1 <= NOT(thirdOS);

   -- ModuleWare code(v1.9) for instance 'U_33' of 'inv'
   q0 <= NOT(fourthOS);

   -- ModuleWare code(v1.9) for instance 'U_6' of 'mux'
   u_6combo_proc: PROCESS(S3, gr, firstOS)
   BEGIN
      CASE firstOS IS
      WHEN '0' => dout3 <= S3;
      WHEN '1' => dout3 <= gr;
      WHEN OTHERS => dout3 <= 'X';
      END CASE;
   END PROCESS u_6combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_7' of 'mux'
   u_7combo_proc: PROCESS(S2, gr, firstOS)
   BEGIN
      CASE firstOS IS
      WHEN '0' => dout2 <= S2;
      WHEN '1' => dout2 <= gr;
      WHEN OTHERS => dout2 <= 'X';
      END CASE;
   END PROCESS u_7combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_8' of 'mux'
   u_8combo_proc: PROCESS(S1, Abus, firstOS)
   BEGIN
      CASE firstOS IS
      WHEN '0' => dout1 <= S1;
      WHEN '1' => dout1 <= Abus(2);
      WHEN OTHERS => dout1 <= 'X';
      END CASE;
   END PROCESS u_8combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_9' of 'mux'
   u_9combo_proc: PROCESS(S, Abus, firstOS)
   BEGIN
      CASE firstOS IS
      WHEN '0' => dout <= S;
      WHEN '1' => dout <= Abus(3);
      WHEN OTHERS => dout <= 'X';
      END CASE;
   END PROCESS u_9combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_15' of 'mux'
   u_15combo_proc: PROCESS(S7, gr, secondOS)
   BEGIN
      CASE secondOS IS
      WHEN '0' => dout7 <= S7;
      WHEN '1' => dout7 <= gr;
      WHEN OTHERS => dout7 <= 'X';
      END CASE;
   END PROCESS u_15combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_16' of 'mux'
   u_16combo_proc: PROCESS(S6, Abus, secondOS)
   BEGIN
      CASE secondOS IS
      WHEN '0' => dout6 <= S6;
      WHEN '1' => dout6 <= Abus(1);
      WHEN OTHERS => dout6 <= 'X';
      END CASE;
   END PROCESS u_16combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_17' of 'mux'
   u_17combo_proc: PROCESS(S5, Abus, secondOS)
   BEGIN
      CASE secondOS IS
      WHEN '0' => dout5 <= S5;
      WHEN '1' => dout5 <= Abus(2);
      WHEN OTHERS => dout5 <= 'X';
      END CASE;
   END PROCESS u_17combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_18' of 'mux'
   u_18combo_proc: PROCESS(S4, Abus, secondOS)
   BEGIN
      CASE secondOS IS
      WHEN '0' => dout4 <= S4;
      WHEN '1' => dout4 <= Abus(3);
      WHEN OTHERS => dout4 <= 'X';
      END CASE;
   END PROCESS u_18combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_24' of 'mux'
   u_24combo_proc: PROCESS(S8, Abus, thirdOS)
   BEGIN
      CASE thirdOS IS
      WHEN '0' => dout8 <= S8;
      WHEN '1' => dout8 <= Abus(3);
      WHEN OTHERS => dout8 <= 'X';
      END CASE;
   END PROCESS u_24combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_25' of 'mux'
   u_25combo_proc: PROCESS(S9, Abus, thirdOS)
   BEGIN
      CASE thirdOS IS
      WHEN '0' => dout9 <= S9;
      WHEN '1' => dout9 <= Abus(2);
      WHEN OTHERS => dout9 <= 'X';
      END CASE;
   END PROCESS u_25combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_26' of 'mux'
   u_26combo_proc: PROCESS(S10, Abus, thirdOS)
   BEGIN
      CASE thirdOS IS
      WHEN '0' => dout10 <= S10;
      WHEN '1' => dout10 <= Abus(1);
      WHEN OTHERS => dout10 <= 'X';
      END CASE;
   END PROCESS u_26combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_27' of 'mux'
   u_27combo_proc: PROCESS(S11, Abus, thirdOS)
   BEGIN
      CASE thirdOS IS
      WHEN '0' => dout11 <= S11;
      WHEN '1' => dout11 <= Abus(0);
      WHEN OTHERS => dout11 <= 'X';
      END CASE;
   END PROCESS u_27combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_5' of 'vdd'
   vcc <= '1';

   -- Instance port mappings.
   U_0 : subtract
      PORT MAP (
         a    => gr,
         b    => Bbus(3),
         cin  => cout2,
         S    => S3,
         cout => firstOS
      );
   U_1 : subtract
      PORT MAP (
         a    => gr,
         b    => Bbus(2),
         cin  => cout1,
         S    => S2,
         cout => cout2
      );
   U_2 : subtract
      PORT MAP (
         a    => gr,
         b    => Bbus(1),
         cin  => cout,
         S    => S1,
         cout => cout1
      );
   U_3 : subtract
      PORT MAP (
         a    => Abus(3),
         b    => Bbus(0),
         cin  => vcc,
         S    => S,
         cout => cout
      );
   U_10 : subtract
      PORT MAP (
         a    => dout,
         b    => Bbus(0),
         cin  => vcc,
         S    => S4,
         cout => cout3
      );
   U_11 : subtract
      PORT MAP (
         a    => dout1,
         b    => Bbus(1),
         cin  => cout3,
         S    => S5,
         cout => cout4
      );
   U_12 : subtract
      PORT MAP (
         a    => dout2,
         b    => Bbus(2),
         cin  => cout4,
         S    => S6,
         cout => cout5
      );
   U_13 : subtract
      PORT MAP (
         a    => dout3,
         b    => Bbus(3),
         cin  => cout5,
         S    => S7,
         cout => secondOS
      );
   U_20 : subtract
      PORT MAP (
         a    => dout4,
         b    => Bbus(3),
         cin  => vcc,
         S    => S8,
         cout => cout6
      );
   U_21 : subtract
      PORT MAP (
         a    => dout5,
         b    => Bbus(2),
         cin  => cout6,
         S    => S9,
         cout => cout7
      );
   U_22 : subtract
      PORT MAP (
         a    => dout6,
         b    => Bbus(1),
         cin  => cout7,
         S    => S10,
         cout => cout8
      );
   U_23 : subtract
      PORT MAP (
         a    => dout7,
         b    => Bbus(0),
         cin  => cout8,
         S    => S11,
         cout => thirdOS
      );
   U_28 : subtract
      PORT MAP (
         a    => dout8,
         b    => Bbus(3),
         cin  => vcc,
         S    => r3,
         cout => cout9
      );
   U_29 : subtract
      PORT MAP (
         a    => dout9,
         b    => Bbus(2),
         cin  => cout9,
         S    => r2,
         cout => cout10
      );
   U_30 : subtract
      PORT MAP (
         a    => dout10,
         b    => Bbus(1),
         cin  => cout10,
         S    => r1,
         cout => cout11
      );
   U_31 : subtract
      PORT MAP (
         a    => dout11,
         b    => Bbus(0),
         cin  => cout11,
         S    => r0,
         cout => fourthOS
      );

END struct;
