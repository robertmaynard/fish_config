function ccmake-clang8
  set -lx CC /usr/bin/clang-8
  set -lx CXX /usr/bin/clang++-8
  ccmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
