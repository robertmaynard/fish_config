function ccmake-gcc9
  set -lx CC /usr/bin/gcc-9
  set -lx CXX /usr/bin/g++-9
  ccmake -DCMAKE_CXX_COMPILER_LAUNCHER=sccache $argv
end
