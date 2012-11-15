function cmake-gui-gcc-4.2
	set -lx CC /usr/bin/gcc
	set -lx CXX /usr/bin/g++
	cmake-gui $argv
end
