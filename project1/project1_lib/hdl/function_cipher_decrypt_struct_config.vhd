-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION function_cipher_decrypt_struct_config OF function_cipher_decrypt IS
   FOR struct
      FOR ALL : add_97_lowercase_shift
         USE CONFIGURATION project1_lib.add_97_lowercase_shift_struct_config;
      END FOR;
      FOR ALL : full_adder_8bit
         USE CONFIGURATION project1_lib.full_adder_8bit_struct_config;
      END FOR;
   END FOR;
END function_cipher_decrypt_struct_config;
