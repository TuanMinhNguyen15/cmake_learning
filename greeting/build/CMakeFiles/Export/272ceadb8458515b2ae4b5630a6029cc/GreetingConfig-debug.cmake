#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Greeting::hello_lib" for configuration "Debug"
set_property(TARGET Greeting::hello_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Greeting::hello_lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/hello_lib.lib"
  )

list(APPEND _cmake_import_check_targets Greeting::hello_lib )
list(APPEND _cmake_import_check_files_for_Greeting::hello_lib "${_IMPORT_PREFIX}/lib/hello_lib.lib" )

# Import target "Greeting::age_lib" for configuration "Debug"
set_property(TARGET Greeting::age_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Greeting::age_lib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/age_lib.lib"
  )

list(APPEND _cmake_import_check_targets Greeting::age_lib )
list(APPEND _cmake_import_check_files_for_Greeting::age_lib "${_IMPORT_PREFIX}/lib/age_lib.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
