function ccmake-gcc5
  set -lx CC /usr/bin/gcc-5
  set -lx CXX /usr/bin/g++-5
  ccmake $argv
end
