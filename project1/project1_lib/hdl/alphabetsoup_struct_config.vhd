-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION alphabetsoup_struct_config OF alphabetsoup IS
   FOR struct
      FOR ALL : add_97_alphabet_to_ascii
         USE CONFIGURATION project1_lib.add_97_alphabet_to_ascii_struct_config;
      END FOR;
   END FOR;
END alphabetsoup_struct_config;
