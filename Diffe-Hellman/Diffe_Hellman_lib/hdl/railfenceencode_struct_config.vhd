-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY checkcode_lib;
CONFIGURATION railfenceencode_struct_config OF railfenceencode IS
   FOR struct
      FOR ALL : bintotwo
         USE CONFIGURATION checkcode_lib.bintotwo_struct_config;
      END FOR;
      FOR ALL : fourbitreg
         USE CONFIGURATION checkcode_lib.fourbitreg_struct_config;
      END FOR;
   END FOR;
END railfenceencode_struct_config;
