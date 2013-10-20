-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION z_ascii_mirror_struct_config OF z_ascii_mirror IS
   FOR struct
      FOR ALL : subtract_97_lowercase_shift
         USE CONFIGURATION project1_lib.subtract_97_lowercase_shift_struct_config;
      END FOR;
   END FOR;
END z_ascii_mirror_struct_config;
