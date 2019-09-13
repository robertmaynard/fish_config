function ccmake-gcc7
  set -lx CC /usr/bin/gcc-7
  set -lx CXX /usr/bin/g++-7
  ccmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
