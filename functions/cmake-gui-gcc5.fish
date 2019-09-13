function cmake-gui-gcc5
  set -lx CC /usr/bin/gcc-5
  set -lx CXX /usr/bin/g++-5
  cmake-gui -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
