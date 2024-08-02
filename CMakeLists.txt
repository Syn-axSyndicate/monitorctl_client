cmake_minimum_required(VERSION 3.5.0)
project(sysm2ctl_client VERSION 0.1.0)

add_executable(sysm2ctl_client 
src/main.cpp
src/mu.h
src/mu.c
)
target_include_directories(sysm2ctl_client PRIVATE src)
target_link_libraries(sysm2ctl_client PRIVATE psapi)
include(CTest)
enable_testing()

