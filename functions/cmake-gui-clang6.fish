function cmake-gui-clang6
  set -lx CC /usr/bin/clang-6.0
  set -lx CXX /usr/bin/clang++-6.0
  cmake-gui -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
