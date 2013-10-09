-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY lab2_lib;
CONFIGURATION full_adder_struct_config OF full_adder IS
   FOR struct
      FOR ALL : myxor
         USE CONFIGURATION lab2_lib.myxor_struct_config;
      END FOR;
   END FOR;
END full_adder_struct_config;
