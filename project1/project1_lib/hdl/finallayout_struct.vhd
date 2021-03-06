-- VHDL Entity project1_lib.FINALLAYOUT.symbol
--
-- Created:
--          by - mhe5.ews (dcl-l520-36.ews.illinois.edu)
--          at - 22:19:45 10/24/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY FINALLAYOUT IS
   PORT( 
      c0             : IN     std_logic;
      c1             : IN     std_logic;
      c2             : IN     std_logic;
      c3             : IN     std_logic;
      c4             : IN     std_logic;
      c5             : IN     std_logic;
      c6             : IN     std_logic;
      c7             : IN     std_logic;
      d0             : IN     std_logic;
      d1             : IN     std_logic;
      d2             : IN     std_logic;
      d3             : IN     std_logic;
      d4             : IN     std_logic;
      d5             : IN     std_logic;
      d6             : IN     std_logic;
      d7             : IN     std_logic;
      s0             : IN     std_logic;
      s1             : IN     std_logic;
      s2             : IN     std_logic;
      s3             : IN     std_logic;
      uselessoutput0 : OUT    std_logic;
      uselessoutput1 : OUT    std_logic;
      uselessoutput2 : OUT    std_logic;
      uselessoutput3 : OUT    std_logic;
      uselessoutput4 : OUT    std_logic;
      uselessoutput5 : OUT    std_logic;
      uselessoutput6 : OUT    std_logic;
      uselessoutput7 : OUT    std_logic
   );

-- Declarations

END FINALLAYOUT ;

--
-- VHDL Architecture project1_lib.FINALLAYOUT.struct
--
-- Created:
--          by - mhe5.ews (dcl-l520-36.ews.illinois.edu)
--          at - 22:19:45 10/24/13
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

LIBRARY project1_lib;

ARCHITECTURE struct OF FINALLAYOUT IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL a0                : std_logic;
   SIGNAL a1                : std_logic;
   SIGNAL a2                : std_logic;
   SIGNAL a3                : std_logic;
   SIGNAL a5                : std_logic;
   SIGNAL a6                : std_logic;
   SIGNAL a7                : std_logic;
   SIGNAL a8                : std_logic;
   SIGNAL d10               : std_logic;
   SIGNAL d11               : std_logic;
   SIGNAL d12               : std_logic;
   SIGNAL d13               : std_logic;
   SIGNAL d14               : std_logic;
   SIGNAL d8                : std_logic;
   SIGNAL d9                : std_logic;
   SIGNAL dbus0             : std_logic_vector(8 DOWNTO 0);
   SIGNAL din0              : std_logic;
   SIGNAL din1              : std_logic;
   SIGNAL din10             : std_logic;
   SIGNAL din11             : std_logic;
   SIGNAL din12             : std_logic;
   SIGNAL din13             : std_logic;
   SIGNAL din14             : std_logic;
   SIGNAL din15             : std_logic;
   SIGNAL din2              : std_logic;
   SIGNAL din3              : std_logic;
   SIGNAL din4              : std_logic;
   SIGNAL din5              : std_logic;
   SIGNAL din6              : std_logic;
   SIGNAL din7              : std_logic;
   SIGNAL din8              : std_logic;
   SIGNAL din9              : std_logic;
   SIGNAL dout              : std_logic_vector(7 DOWNTO 0);
   SIGNAL dout0             : std_logic;
   SIGNAL dout1             : std_logic;
   SIGNAL dout16            : std_logic_vector(2 DOWNTO 0);
   SIGNAL dout17            : std_logic;
   SIGNAL dout18            : std_logic;
   SIGNAL dout19            : std_logic;
   SIGNAL dout2             : std_logic_vector(7 DOWNTO 0);
   SIGNAL dout20            : std_logic;
   SIGNAL dout21            : std_logic;
   SIGNAL dout22            : std_logic;
   SIGNAL dout23            : std_logic;
   SIGNAL dout24            : std_logic;
   SIGNAL dout25            : std_logic;
   SIGNAL dout26            : std_logic;
   SIGNAL dout27            : std_logic;
   SIGNAL dout28            : std_logic;
   SIGNAL dout29            : std_logic;
   SIGNAL dout3             : std_logic;
   SIGNAL dout30            : std_logic;
   SIGNAL dout31            : std_logic;
   SIGNAL dout32            : std_logic;
   SIGNAL dout33            : std_logic;
   SIGNAL dout34            : std_logic_vector(7 DOWNTO 0);
   SIGNAL dout4             : std_logic_vector(7 DOWNTO 0);
   SIGNAL dout5             : std_logic;
   SIGNAL dout6             : std_logic;
   SIGNAL dout7             : std_logic;
   SIGNAL dout8             : std_logic;
   SIGNAL dout9             : std_logic;
   SIGNAL mingkangencodeout : std_logic_vector(7 DOWNTO 0);
   SIGNAL out1              : std_logic;
   SIGNAL out2              : std_logic;
   SIGNAL out3              : std_logic;
   SIGNAL out4              : std_logic;
   SIGNAL out5              : std_logic;
   SIGNAL out6              : std_logic;
   SIGNAL out7              : std_logic;
   SIGNAL out8              : std_logic;
   SIGNAL outputbus         : std_logic_vector(7 DOWNTO 0);


   -- ModuleWare signal declarations(v1.9) for instance 'U_3' of 'split'
   SIGNAL mw_U_3temp_din : std_logic_vector(7 DOWNTO 0);

   -- ModuleWare signal declarations(v1.9) for instance 'U_5' of 'split'
   SIGNAL mw_U_5temp_din : std_logic_vector(7 DOWNTO 0);

   -- ModuleWare signal declarations(v1.9) for instance 'U_9' of 'split'
   SIGNAL mw_U_9temp_din : std_logic_vector(7 DOWNTO 0);

   -- ModuleWare signal declarations(v1.9) for instance 'U_12' of 'split'
   SIGNAL mw_U_12temp_din : std_logic_vector(7 DOWNTO 0);

   -- ModuleWare signal declarations(v1.9) for instance 'U_14' of 'split'
   SIGNAL mw_U_14temp_din : std_logic_vector(7 DOWNTO 0);

   -- Component Declarations
   COMPONENT function_cipher
   PORT (
      a0          : IN     std_logic ;
      a1          : IN     std_logic ;
      a2          : IN     std_logic ;
      a3          : IN     std_logic ;
      a4          : IN     std_logic ;
      a5          : IN     std_logic ;
      a6          : IN     std_logic ;
      a7          : IN     std_logic ;
      cout1_VOID  : OUT    std_logic ;
      cout2_VOID  : OUT    std_logic ;
      cout_VOID   : OUT    std_logic ;
      out0        : OUT    std_logic ;
      out1        : OUT    std_logic ;
      out2        : OUT    std_logic ;
      out3        : OUT    std_logic ;
      out4        : OUT    std_logic ;
      out5        : OUT    std_logic ;
      out6        : OUT    std_logic ;
      out7        : OUT    std_logic ;
      parity_VOID : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT function_cipher_decrypt
   PORT (
      a           : IN     std_logic ;
      a1          : IN     std_logic ;
      a2          : IN     std_logic ;
      a3          : IN     std_logic ;
      a4          : IN     std_logic ;
      a5          : IN     std_logic ;
      a6          : IN     std_logic ;
      a7          : IN     std_logic ;
      cout1_VOID  : OUT    std_logic ;
      cout2_VOID  : OUT    std_logic ;
      cout_VOID   : OUT    std_logic ;
      out0        : OUT    std_logic ;
      out1        : OUT    std_logic ;
      out2        : OUT    std_logic ;
      out3        : OUT    std_logic ;
      out4        : OUT    std_logic ;
      out5        : OUT    std_logic ;
      out6        : OUT    std_logic ;
      out7        : OUT    std_logic ;
      parity_VOID : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT xor_encode
   PORT (
      c0    : IN     std_logic ;
      c1    : IN     std_logic ;
      c2    : IN     std_logic ;
      c3    : IN     std_logic ;
      c4    : IN     std_logic ;
      c5    : IN     std_logic ;
      c6    : IN     std_logic ;
      c7    : IN     std_logic ;
      d0    : IN     std_logic ;
      d1    : IN     std_logic ;
      d2    : IN     std_logic ;
      d3    : IN     std_logic ;
      d4    : IN     std_logic ;
      d5    : IN     std_logic ;
      d6    : IN     std_logic ;
      d7    : IN     std_logic ;
      dout  : OUT    std_logic ;
      dout1 : OUT    std_logic ;
      dout2 : OUT    std_logic ;
      dout3 : OUT    std_logic ;
      dout4 : OUT    std_logic ;
      dout5 : OUT    std_logic ;
      dout6 : OUT    std_logic ;
      dout7 : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : function_cipher USE ENTITY project1_lib.function_cipher;
   FOR ALL : function_cipher_decrypt USE ENTITY project1_lib.function_cipher_decrypt;
   FOR ALL : xor_encode USE ENTITY project1_lib.xor_encode;
   -- pragma synthesis_on


BEGIN

   -- ModuleWare code(v1.9) for instance 'U_2' of 'merge'
   dout <= d7 & d6 & d5 & d4 & d3 & d2 & d1 & d0;

   -- ModuleWare code(v1.9) for instance 'U_4' of 'merge'
   dout2 <= din11 & out6 & din10 & out4 & out3 & din9 & out1 & din1;

   -- ModuleWare code(v1.9) for instance 'U_6' of 'merge'
   dout4 <= out8 & din15 & out7 & din14 & out5 & din13 & out2 & din12;

   -- ModuleWare code(v1.9) for instance 'U_8' of 'merge'
   u_8combo_proc: PROCESS(s0, s1, s2, s3)
   VARIABLE temp_dout : std_logic_vector(3 DOWNTO 0);
   BEGIN
      temp_dout := s3 & s2 & s1 & s0;
      dout16 <= temp_dout(2 DOWNTO 0);
   END PROCESS u_8combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_13' of 'merge'
   mingkangencodeout <= din7 & dout26 & din5 & dout25 & din3 & dout24 & din2 & dout23;

   -- ModuleWare code(v1.9) for instance 'U_15' of 'merge'
   dout34 <= dout33 & din8 & dout32 & din6 & dout31 & din4 & dout22 & din0;

   -- ModuleWare code(v1.9) for instance 'U_7' of 'mux'
   u_7combo_proc: PROCESS(dout34, dout4, dout16)
   BEGIN
      CASE dout16 IS
      WHEN "001" => outputbus <= dout34;
      WHEN "011" => outputbus <= dout4;
      WHEN OTHERS => outputbus <= (OTHERS => 'X');
      END CASE;
   END PROCESS u_7combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_3' of 'split'
   mw_U_3temp_din <= dout;
   u_3combo_proc: PROCESS (mw_U_3temp_din)
   VARIABLE temp_din: std_logic_vector(7 DOWNTO 0);
   BEGIN
      temp_din := mw_U_3temp_din(7 DOWNTO 0);
      a0 <= temp_din(0);
      dout1 <= temp_din(1);
      a2 <= temp_din(2);
      dout3 <= temp_din(3);
      a5 <= temp_din(4);
      dout5 <= temp_din(5);
      a6 <= temp_din(6);
      dout7 <= temp_din(7);
   END PROCESS u_3combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_5' of 'split'
   mw_U_5temp_din <= dout2;
   u_5combo_proc: PROCESS (mw_U_5temp_din)
   VARIABLE temp_din: std_logic_vector(7 DOWNTO 0);
   BEGIN
      temp_din := mw_U_5temp_din(7 DOWNTO 0);
      dout0 <= temp_din(0);
      a1 <= temp_din(1);
      dout6 <= temp_din(2);
      a3 <= temp_din(3);
      dout8 <= temp_din(4);
      a7 <= temp_din(5);
      dout9 <= temp_din(6);
      a8 <= temp_din(7);
   END PROCESS u_5combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_9' of 'split'
   mw_U_9temp_din <= outputbus;
   u_9combo_proc: PROCESS (mw_U_9temp_din)
   VARIABLE temp_din: std_logic_vector(7 DOWNTO 0);
   BEGIN
      temp_din := mw_U_9temp_din(7 DOWNTO 0);
      uselessoutput0 <= temp_din(0);
      uselessoutput1 <= temp_din(1);
      uselessoutput2 <= temp_din(2);
      uselessoutput3 <= temp_din(3);
      uselessoutput4 <= temp_din(4);
      uselessoutput5 <= temp_din(5);
      uselessoutput6 <= temp_din(6);
      uselessoutput7 <= temp_din(7);
   END PROCESS u_9combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_12' of 'split'
   mw_U_12temp_din <= dout;
   u_12combo_proc: PROCESS (mw_U_12temp_din)
   VARIABLE temp_din: std_logic_vector(7 DOWNTO 0);
   BEGIN
      temp_din := mw_U_12temp_din(7 DOWNTO 0);
      dout17 <= temp_din(0);
      d8 <= temp_din(1);
      dout18 <= temp_din(2);
      d9 <= temp_din(3);
      dout19 <= temp_din(4);
      d10 <= temp_din(5);
      dout20 <= temp_din(6);
      dout21 <= temp_din(7);
   END PROCESS u_12combo_proc;

   -- ModuleWare code(v1.9) for instance 'U_14' of 'split'
   mw_U_14temp_din <= mingkangencodeout;
   u_14combo_proc: PROCESS (mw_U_14temp_din)
   VARIABLE temp_din: std_logic_vector(7 DOWNTO 0);
   BEGIN
      temp_din := mw_U_14temp_din(7 DOWNTO 0);
      d11 <= temp_din(0);
      dout27 <= temp_din(1);
      d12 <= temp_din(2);
      dout28 <= temp_din(3);
      d13 <= temp_din(4);
      dout29 <= temp_din(5);
      d14 <= temp_din(6);
      dout30 <= temp_din(7);
   END PROCESS u_14combo_proc;

   -- Instance port mappings.
   U_0 : function_cipher
      PORT MAP (
         a0          => a0,
         a1          => dout1,
         a2          => a2,
         a3          => dout3,
         a4          => dout5,
         a5          => a5,
         a6          => a6,
         a7          => dout7,
         cout1_VOID  => OPEN,
         cout2_VOID  => OPEN,
         cout_VOID   => OPEN,
         out0        => din1,
         out1        => out1,
         out2        => din9,
         out3        => out3,
         out4        => out4,
         out5        => din10,
         out6        => out6,
         out7        => din11,
         parity_VOID => OPEN
      );
   U_1 : function_cipher_decrypt
      PORT MAP (
         a           => dout0,
         a1          => a1,
         a2          => dout6,
         a3          => a3,
         a4          => dout8,
         a5          => a7,
         a6          => dout9,
         a7          => a8,
         cout1_VOID  => OPEN,
         cout2_VOID  => OPEN,
         cout_VOID   => OPEN,
         out0        => din12,
         out1        => out2,
         out2        => din13,
         out3        => out5,
         out4        => din14,
         out5        => out7,
         out6        => din15,
         out7        => out8,
         parity_VOID => OPEN
      );
   U_10 : xor_encode
      PORT MAP (
         c0    => c0,
         c1    => c1,
         c2    => c2,
         c3    => c3,
         c4    => c4,
         c5    => c5,
         c6    => c6,
         c7    => c7,
         d0    => dout17,
         d1    => d8,
         d2    => dout18,
         d3    => d9,
         d4    => dout19,
         d5    => d10,
         d6    => dout20,
         d7    => dout21,
         dout  => dout23,
         dout1 => din2,
         dout2 => dout24,
         dout3 => din3,
         dout4 => dout25,
         dout5 => din5,
         dout6 => dout26,
         dout7 => din7
      );
   U_11 : xor_encode
      PORT MAP (
         c0    => c0,
         c1    => c1,
         c2    => c2,
         c3    => c3,
         c4    => c4,
         c5    => c5,
         c6    => c6,
         c7    => c7,
         d0    => d11,
         d1    => dout27,
         d2    => d12,
         d3    => dout28,
         d4    => d13,
         d5    => dout29,
         d6    => d14,
         d7    => dout30,
         dout  => din0,
         dout1 => dout22,
         dout2 => din4,
         dout3 => dout31,
         dout4 => din6,
         dout5 => dout32,
         dout6 => din8,
         dout7 => dout33
      );

END struct;
