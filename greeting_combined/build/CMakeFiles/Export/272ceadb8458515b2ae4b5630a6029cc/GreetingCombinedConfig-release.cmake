#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "GreetingCombined::greeting" for configuration "Release"
set_property(TARGET GreetingCombined::greeting APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(GreetingCombined::greeting PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/greeting.lib"
  )

list(APPEND _cmake_import_check_targets GreetingCombined::greeting )
list(APPEND _cmake_import_check_files_for_GreetingCombined::greeting "${_IMPORT_PREFIX}/lib/greeting.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
