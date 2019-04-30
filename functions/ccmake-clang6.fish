function ccmake-clang6
  set -lx CC /usr/bin/clang-6.0
  set -lx CXX /usr/bin/clang++-6.0
  ccmake $argv
end
