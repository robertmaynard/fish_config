function cmake-clang
	set -lx CC /usr/bin/clang-6.0
	set -lx CXX /usr/bin/clang++-6.0
	cmake $argv
end

function ccmake-clang
  set -lx CC /usr/bin/clang-6.0
  set -lx CXX /usr/bin/clang++-6.0
  ccmake $argv
end

function cmake-gui-clang
  set -lx CC /usr/bin/clang-6.0
  set -lx CXX /usr/bin/clang++-6.0
  cmake-gui $argv
end
