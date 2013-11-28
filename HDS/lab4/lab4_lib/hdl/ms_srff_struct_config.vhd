-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY lab4_lib;
CONFIGURATION ms_srff_struct_config OF ms_srff IS
   FOR struct
      FOR ALL : sr_latch
         USE CONFIGURATION lab4_lib.sr_latch_struct_config;
      END FOR;
   END FOR;
END ms_srff_struct_config;
