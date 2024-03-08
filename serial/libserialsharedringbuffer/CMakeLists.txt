add_library(libserialsharedringbuffer STATIC shared_ringbuffer.c
											 include/serial/shared_ringbuffer.h
											 include/serial/util.h
											 )
target_include_directories(libserialsharedringbuffer PUBLIC include)
target_link_libraries(libserialsharedringbuffer sddf)