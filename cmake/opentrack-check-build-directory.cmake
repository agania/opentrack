get_filename_component(_abs_src_path ${CMAKE_SOURCE_DIR} REALPATH)
string(TOLOWER ${_abs_src_path} _abs_src_path)
get_filename_component(_abs_build_path ${CMAKE_BINARY_DIR} REALPATH)
string(TOLOWER ${_abs_build_path} _abs_build_path)
if(_abs_src_path STREQUAL _abs_build_path)
    message(FATAL_ERROR "source directory has to be different than build directory")
endif()
