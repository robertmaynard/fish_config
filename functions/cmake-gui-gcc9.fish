function cmake-gui-gcc9
  set -lx CC /usr/bin/gcc-9
  set -lx CXX /usr/bin/g++-9
  cmake-gui -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
