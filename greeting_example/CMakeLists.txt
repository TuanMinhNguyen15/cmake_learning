cmake_minimum_required(VERSION 3.24)
project(GreetingExample)

# find_package(Greeting CONFIG REQUIRED
#              PATHS "D:\\CMakeExampleProjects\\greeting\\install\\cmake")

find_package(GreetingCombined CONFIG REQUIRED
             PATHS "D:\\CMakeExampleProjects\\greeting_combined\\install\\cmake")     
             
find_package(Eigen3 CONFIG REQUIRED
             PATHS "D:\\cpp_learning\\eigen\\cmake")       

add_executable(main src/main.cpp)
# target_link_libraries(main 
#                       Greeting::hello_lib
#                       Greeting::age_lib
#                       Greeting::goodbye_lib)

target_link_libraries(main GreetingCombined::greeting)
