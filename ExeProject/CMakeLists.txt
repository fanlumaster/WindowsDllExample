cmake_minimum_required(VERSION 3.25)
project(MyExe LANGUAGES C)

include_directories("./")

add_executable(MyExe
    lib/foo.h
    src/main.c
)

# Where is MyDll.lib
target_link_directories(MyExe PRIVATE "./lib")

target_link_libraries(MyExe PRIVATE MyDll)