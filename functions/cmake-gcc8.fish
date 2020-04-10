function cmake-gcc8
  set -lx CC /usr/bin/gcc-8
  set -lx CXX /usr/bin/g++-8
  cmake -DCMAKE_CXX_COMPILER_LAUNCHER=sccache $argv
end
