function cmake-gcc9
  set -lx CC /usr/bin/gcc-9
  set -lx CXX /usr/bin/g++-9
  cmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
