-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY Diffe_Hellman_lib;
CONFIGURATION Cipher_MUX_struct_config OF Cipher_MUX IS
   FOR struct
      FOR ALL : XOR_8_bit
         USE CONFIGURATION Diffe_Hellman_lib.XOR_8_bit_struct_config;
      END FOR;
      FOR ALL : key_repeater_4_to_8_bit
         USE CONFIGURATION Diffe_Hellman_lib.key_repeater_4_to_8_bit_struct_config;
      END FOR;
   END FOR;
END Cipher_MUX_struct_config;
