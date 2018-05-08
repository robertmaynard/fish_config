function cmake-clang
	set -lx CC /usr/bin/clang-6.0
	set -lx CXX /usr/bin/clang++-6.0
	cmake $argv
end
