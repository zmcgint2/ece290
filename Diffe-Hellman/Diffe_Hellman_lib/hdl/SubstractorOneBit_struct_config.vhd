-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY Division_lib;
CONFIGURATION SubstractorOneBit_struct_config OF SubstractorOneBit IS
   FOR struct
      FOR ALL : FA
         USE CONFIGURATION Division_lib.FA_struct_config;
      END FOR;
   END FOR;
END SubstractorOneBit_struct_config;
