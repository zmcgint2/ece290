-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION subtract1_struct_config OF subtract1 IS
   FOR struct
      FOR ALL : full_adder_8bit_bus
         USE CONFIGURATION project1_lib.full_adder_8bit_bus_struct_config;
      END FOR;
   END FOR;
END subtract1_struct_config;
