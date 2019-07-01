function cmake-gcc8
  set -lx CC /usr/bin/gcc-8
  set -lx CXX /usr/bin/g++-8
  cmake $argv
end
