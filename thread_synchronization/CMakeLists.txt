cmake_minimum_required(VERSION 3.9)
project(thread_synchronization)

set(CMAKE_CXX_STANDARD 11)

add_executable(thread_synchronization main.cpp)
target_link_libraries(thread_synchronization pthread)
