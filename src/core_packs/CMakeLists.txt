add_library(core_packs STATIC mu.c)
target_include_directories(core_packs PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
target_link_libraries(core_packs PRIVATE psapi)
