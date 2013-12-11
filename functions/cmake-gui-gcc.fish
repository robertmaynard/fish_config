function cmake-gui-gcc
	set -lx CC /usr/bin/gcc
	set -lx CXX /usr/bin/g++
	cmake-gui $argv
end
