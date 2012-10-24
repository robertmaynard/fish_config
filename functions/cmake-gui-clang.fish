function cmake-gui-clang
	set -lx CC /usr/bin/clang
	set -lx CXX /usr/bin/clang++
	cmake-gui $argv
end
