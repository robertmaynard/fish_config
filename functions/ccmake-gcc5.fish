function ccmake-gcc5
  set -lx CC /usr/bin/gcc-5
  set -lx CXX /usr/bin/g++-5
  ccmake -DCMAKE_CXX_COMPILER_LAUNCHER=sccache $argv
end
