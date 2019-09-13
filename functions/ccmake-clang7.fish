function ccmake-clang7
  set -lx CC /usr/bin/clang-7
  set -lx CXX /usr/bin/clang++-7
  ccmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
