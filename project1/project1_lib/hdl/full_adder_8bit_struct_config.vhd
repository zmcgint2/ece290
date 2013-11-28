-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION full_adder_8bit_struct_config OF full_adder_8bit IS
   FOR struct
      FOR ALL : full_adder
         USE CONFIGURATION project1_lib.full_adder_struct_config;
      END FOR;
   END FOR;
END full_adder_8bit_struct_config;
