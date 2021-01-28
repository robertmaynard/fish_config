
set -x fish_user_paths /usr/local/bin
set -x CMAKE_GENERATOR Ninja

set -x SCCACHE_CACHE_SIZE "32G"

# #useful only for CMake 3.17+
# set -x CMAKE_C_COMPILER_LAUNCHER sccache
# set -x CMAKE_CXX_COMPILER_LAUNCHER sccache
# set -x CMAKE_CUDA_COMPILER_LAUNCHER sccache

# setup CMake colors
set -x CCMAKE_COLORS "s=213:p=227:c=207:n=203:y=49"
