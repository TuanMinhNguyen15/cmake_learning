cmake_minimum_required(VERSION 3.24)
project(hello)

add_library(hello "./src/hello.cc")
target_include_directories(hello PUBLIC "./include")

add_library(bye "./src/bye.cc")
target_include_directories(bye PUBLIC "./include")

export(TARGETS hello bye
       NAMESPACE hello::
       FILE "../cmake/helloConfig.cmake")   