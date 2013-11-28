-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION add_13_struct_config OF add_13 IS
   FOR struct
      FOR ALL : full_adder_8bit
         USE CONFIGURATION project1_lib.full_adder_8bit_struct_config;
      END FOR;
   END FOR;
END add_13_struct_config;
