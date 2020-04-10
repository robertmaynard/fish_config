function cmake-clang8
	set -lx CC /usr/bin/clang-8
	set -lx CXX /usr/bin/clang++-8
	cmake -DCMAKE_CXX_COMPILER_LAUNCHER=sccache $argv
end
