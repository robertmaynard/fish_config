function cmake-gui-clang
	set -lx CC /usr/bin/gcc-4.7
	set -lx CXX /usr/bin/g++-4.7
	cmake-gui $argv
end
