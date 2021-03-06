-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION FINALLAYOUT_struct_config OF FINALLAYOUT IS
   FOR struct
      FOR ALL : function_cipher
         USE CONFIGURATION project1_lib.function_cipher_struct_config;
      END FOR;
      FOR ALL : function_cipher_decrypt
         USE CONFIGURATION project1_lib.function_cipher_decrypt_struct_config;
      END FOR;
      FOR ALL : xor_encode
         USE CONFIGURATION project1_lib.xor_encode_struct_config;
      END FOR;
   END FOR;
END FINALLAYOUT_struct_config;
