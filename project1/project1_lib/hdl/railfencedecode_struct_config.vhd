-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY checkcode_lib;
CONFIGURATION railfencedecode_struct_config OF railfencedecode IS
   FOR struct
      FOR ALL : fourbitreg
         USE CONFIGURATION checkcode_lib.fourbitreg_struct_config;
      END FOR;
      FOR ALL : twotobin
         USE CONFIGURATION checkcode_lib.twotobin_struct_config;
      END FOR;
   END FOR;
END railfencedecode_struct_config;
