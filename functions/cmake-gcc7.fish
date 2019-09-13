function cmake-gcc7
  set -lx CC /usr/bin/gcc-7
  set -lx CXX /usr/bin/g++-7
  cmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
