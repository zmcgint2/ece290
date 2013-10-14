-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION j7bitcomparator_struct_config OF j7bitcomparator IS
   FOR struct
      FOR ALL : j1bitcomparator
         USE CONFIGURATION project1_lib.j1bitcomparator_struct_config;
      END FOR;
   END FOR;
END j7bitcomparator_struct_config;
