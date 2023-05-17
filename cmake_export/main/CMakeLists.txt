cmake_minimum_required(VERSION 3.24)
project(main)

find_package(hello REQUIRED)  

add_executable(main "./main.cc")
target_link_libraries(main hello::hello
                           hello::bye)