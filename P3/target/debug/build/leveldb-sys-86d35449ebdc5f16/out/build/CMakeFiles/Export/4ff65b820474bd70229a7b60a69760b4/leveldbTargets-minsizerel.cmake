#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "leveldb::leveldb" for configuration "MinSizeRel"
set_property(TARGET leveldb::leveldb APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(leveldb::leveldb PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_MINSIZEREL "CXX"
  IMPORTED_LOCATION_MINSIZEREL "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/leveldb.lib"
  )

list(APPEND _cmake_import_check_targets leveldb::leveldb )
list(APPEND _cmake_import_check_files_for_leveldb::leveldb "C:/Users/smkea/Documents/GitHub/Project3/P3/target/debug/build/leveldb-sys-86d35449ebdc5f16/out/lib/leveldb.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)