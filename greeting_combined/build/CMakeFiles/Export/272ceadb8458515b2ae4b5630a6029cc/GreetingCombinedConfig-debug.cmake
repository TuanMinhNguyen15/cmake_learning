#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GreetingCombined::greeting" for configuration "Debug"
set_property(TARGET GreetingCombined::greeting APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(GreetingCombined::greeting PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/greeting.lib"
  )

list(APPEND _cmake_import_check_targets GreetingCombined::greeting )
list(APPEND _cmake_import_check_files_for_GreetingCombined::greeting "${_IMPORT_PREFIX}/lib/greeting.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
