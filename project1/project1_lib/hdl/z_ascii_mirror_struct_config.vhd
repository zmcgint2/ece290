-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY project1_lib;
CONFIGURATION z_ascii_mirror_struct_config OF z_ascii_mirror IS
   FOR struct
      FOR ALL : add_13
         USE CONFIGURATION project1_lib.add_13_struct_config;
      END FOR;
      FOR ALL : alphabet_to_ascii_bus
         USE CONFIGURATION project1_lib.alphabet_to_ascii_bus_struct_config;
      END FOR;
      FOR ALL : ascii_to_alphabet_bus
         USE CONFIGURATION project1_lib.ascii_to_alphabet_bus_struct_config;
      END FOR;
      FOR ALL : full_adder_8bit_bus
         USE CONFIGURATION project1_lib.full_adder_8bit_bus_struct_config;
      END FOR;
      FOR ALL : inv_and_add1_bus
         USE CONFIGURATION project1_lib.inv_and_add1_bus_struct_config;
      END FOR;
      FOR ALL : subtract1
         USE CONFIGURATION project1_lib.subtract1_struct_config;
      END FOR;
   END FOR;
END z_ascii_mirror_struct_config;
