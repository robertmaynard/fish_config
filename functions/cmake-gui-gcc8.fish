function cmake-gui-gcc8
  set -lx CC /usr/bin/gcc-8
  set -lx CXX /usr/bin/g++-8
  cmake-gui -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end