-- Generation properties:
--   Format              : hierarchical
--   Generic mappings    : exclude
--   Leaf-level entities : direct binding
--   Regular libraries   : use library name
--   View name           : include
--   
LIBRARY Diffe_Hellman_lib;
CONFIGURATION jceasarshift_bus_struct_config OF jceasarshift_bus IS
   FOR struct
      FOR ALL : jceasarshift
         USE CONFIGURATION Diffe_Hellman_lib.jceasarshift_struct_config;
      END FOR;
   END FOR;
END jceasarshift_bus_struct_config;
