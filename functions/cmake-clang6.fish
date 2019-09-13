function cmake-clang6-DCMAKE_CXX_COMPILER_LAUNCHER=ccache
	set -lx CC /usr/bin/clang-6.0
	set -lx CXX /usr/bin/clang++-6.0
	cmake -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
