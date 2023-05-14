cmake_minimum_required(VERSION 3.24)
project(Greeting)

# Normal Libraries
add_library(hello_lib src/sayhello.cpp)
target_include_directories(hello_lib
                           PUBLIC
                           $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>  
                           $<INSTALL_INTERFACE:include>) 

add_library(age_lib src/tellage.cpp)
target_include_directories(age_lib
                           PUBLIC
                           $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>  
                           $<INSTALL_INTERFACE:include>) 

# Header-only Libraries
add_library(goodbye_lib INTERFACE)
target_include_directories(goodbye_lib 
                           INTERFACE
                           $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>  
                           $<INSTALL_INTERFACE:include>)

# Link Libraries to executables
add_executable(main example/main.cpp)
target_link_libraries(main hello_lib age_lib goodbye_lib)


# Install all header files inside include folder
install(DIRECTORY include/
        DESTINATION include)

# Install libraries
install(TARGETS hello_lib age_lib goodbye_lib
        EXPORT GreetingExport
        DESTINATION lib)


# Install .cmake exports
install(EXPORT GreetingExport
        FILE GreetingConfig.cmake
        NAMESPACE Greeting::
        DESTINATION cmake)