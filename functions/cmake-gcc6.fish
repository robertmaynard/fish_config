function cmake-gcc6
  set -lx CC /usr/bin/gcc-6
  set -lx CXX /usr/bin/g++-6
  cmake $argv
end
