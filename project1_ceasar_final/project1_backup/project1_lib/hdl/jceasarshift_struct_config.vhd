-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION jceasarshift_struct_config OF jceasarshift IS
   FOR struct
      FOR ALL : full_adder_8bit
         USE CONFIGURATION project1_lib.full_adder_8bit_struct_config;
      END FOR;
      FOR ALL : j21mux
         USE CONFIGURATION project1_lib.j21mux_struct_config;
      END FOR;
      FOR ALL : j7bitcomparator
         USE CONFIGURATION project1_lib.j7bitcomparator_struct_config;
      END FOR;
   END FOR;
END jceasarshift_struct_config;
