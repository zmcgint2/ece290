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
      FOR ALL : add_97_alphabet_to_ascii
         USE CONFIGURATION project1_lib.add_97_alphabet_to_ascii_struct_config;
      END FOR;
      FOR ALL : full_adder_8bit
         USE CONFIGURATION project1_lib.full_adder_8bit_struct_config;
      END FOR;
      FOR ALL : inv_add1
         USE CONFIGURATION project1_lib.inv_add1_struct_config;
      END FOR;
      FOR ALL : subtract_97_lowercase_shift
         USE CONFIGURATION project1_lib.subtract_97_lowercase_shift_struct_config;
      END FOR;
   END FOR;
END z_ascii_mirror_struct_config;
