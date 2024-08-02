cmake_minimum_required(VERSION 3.5.0)
project(sysm2ctl_client VERSION 0.1.0)

add_executable(sysm2ctl_client 
src/main.cpp
)
add_subdirectory(src/core_packs)
add_subdirectory(src/network_interface)
target_link_libraries(sysm2ctl_client PRIVATE core_packs src/network_interface)
target_include_directories(sysm2ctl_client PRIVATE src/core_packs src/network_interface)
include(CTest)
enable_testing()

