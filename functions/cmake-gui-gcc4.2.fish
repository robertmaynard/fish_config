function cmake-gui-clang
	set -lx CC /usr/bin/gcc
	set -lx CXX /usr/bin/g++
	cmake-gui $argv
end
