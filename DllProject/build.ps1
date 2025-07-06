# 1. Generatea build directory
cmake -S . -B build -G "Visual Studio 17 2022" -A x64
# 2. Compile the project
cmake --build build --config Debug