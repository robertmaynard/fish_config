function ccmake-clang8
  set -lx CC /usr/bin/clang-8
  set -lx CXX /usr/bin/clang++-8
  ccmake $argv
end
