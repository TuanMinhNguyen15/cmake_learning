cmake_minimum_required(VERSION 3.24)
project(GreetingCombined)

# Normal Libraries
add_library(greeting 
            src/sayhello.cpp
            src/tellage.cpp)

target_include_directories(greeting
                           PUBLIC
                           $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>  
                           $<INSTALL_INTERFACE:include>) 

# Link Libraries to executables
add_executable(main example/main.cpp)
target_link_libraries(main greeting)


# Install all header files inside include folder
install(DIRECTORY include/
        DESTINATION include)

# Install libraries
install(TARGETS greeting
        EXPORT GreetingExport
        DESTINATION lib)


# Install .cmake exports
install(EXPORT GreetingExport
        FILE GreetingCombinedConfig.cmake
        NAMESPACE GreetingCombined::
        DESTINATION cmake)