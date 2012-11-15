function cmake-gui-gcc
	set -lx CC /usr/local/bin/gcc-4.7
	set -lx CXX /usr/local/bin/g++-4.7
	cmake-gui $argv
end
