add_library(network_interface STATIC server.c)
target_include_directories(network_interface PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})