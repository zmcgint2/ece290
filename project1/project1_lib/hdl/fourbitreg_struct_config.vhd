-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY checkcode_lib;
CONFIGURATION fourbitreg_struct_config OF fourbitreg IS
   FOR struct
      FOR ALL : dflipflop
         USE CONFIGURATION checkcode_lib.dflipflop_struct_config;
      END FOR;
   END FOR;
END fourbitreg_struct_config;
