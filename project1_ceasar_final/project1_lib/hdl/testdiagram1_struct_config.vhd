-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION testdiagram1_struct_config OF testdiagram1 IS
   FOR struct
      FOR ALL : full_adder
         USE CONFIGURATION project1_lib.full_adder_struct_config;
      END FOR;
   END FOR;
END testdiagram1_struct_config;
