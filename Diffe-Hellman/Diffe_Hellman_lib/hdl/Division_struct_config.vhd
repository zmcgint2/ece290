-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY Division_lib;
CONFIGURATION Division_struct_config OF Division IS
   FOR struct
      FOR ALL : SubstractorOneBit
         USE CONFIGURATION Division_lib.SubstractorOneBit_struct_config;
      END FOR;
   END FOR;
END Division_struct_config;
