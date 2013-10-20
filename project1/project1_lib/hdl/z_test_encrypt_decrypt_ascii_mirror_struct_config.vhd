-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION z_test_encrypt_decrypt_ascii_mirror_struct_config OF z_test_encrypt_decrypt_ascii_mirror IS
   FOR struct
      FOR ALL : z_ascii_mirror
         USE CONFIGURATION project1_lib.z_ascii_mirror_struct_config;
      END FOR;
   END FOR;
END z_test_encrypt_decrypt_ascii_mirror_struct_config;
