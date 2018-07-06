function cmake-gui-gcc6
  set -lx CC /usr/bin/gcc-6
  set -lx CXX /usr/bin/g++-6
  cmake-gui $argv
end
