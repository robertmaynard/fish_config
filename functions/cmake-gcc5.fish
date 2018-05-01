function cmake-gcc5
  set -lx CC /usr/bin/gcc-5
  set -lx CXX /usr/bin/g++-5
  cmake $argv
end

function ccmake-gcc5
  set -lx CC /usr/bin/gcc-5
  set -lx CXX /usr/bin/g++-5
  ccmake $argv
end

function cmake-gui-gcc5
  set -lx CC /usr/bin/gcc-5
  set -lx CXX /usr/bin/g++-5
  cmake-gui $argv
end
