add_library(sddf STATIC include/util/fence.h)
set_target_properties(sddf PROPERTIES LINKER_LANGUAGE C)
target_include_directories(sddf PUBLIC include)