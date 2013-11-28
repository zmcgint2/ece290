-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY checkcode_lib;
CONFIGURATION testdebugunit_struct_config OF testdebugunit IS
   FOR struct
      FOR ALL : railfencedecode
         USE CONFIGURATION checkcode_lib.railfencedecode_struct_config;
      END FOR;
      FOR ALL : railfenceencode
         USE CONFIGURATION checkcode_lib.railfenceencode_struct_config;
      END FOR;
   END FOR;
END testdebugunit_struct_config;
