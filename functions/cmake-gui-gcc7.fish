function cmake-gui-gcc7
  set -lx CC /usr/bin/gcc-7
  set -lx CXX /usr/bin/g++-7
  cmake-gui -DCMAKE_CXX_COMPILER_LAUNCHER=sccache $argv
end
