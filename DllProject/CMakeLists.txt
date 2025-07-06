cmake_minimum_required(VERSION 3.25)
project(MyDll LANGUAGES C)

# Source files
add_library(MyDll SHARED
    src/foo.c
    src/foo.h 
)

# Let MSVC automatically export all symbols, so we don't have to write __declspec(dllexport) manually
set_target_properties(MyDll PROPERTIES
    CXX_STANDARD 17
)
if (MSVC)
    set_property(TARGET MyDll PROPERTY WINDOWS_EXPORT_ALL_SYMBOLS ON)
endif()

set_target_properties(MyDll PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin"    # .dll location
    ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"    # .lib location
)