function cmake-clang9
	set -lx CC /usr/bin/clang-9
	set -lx CXX /usr/bin/clang++-9
	cmake -DCMAKE_CXX_COMPILER_LAUNCHER=sccache $argv
end
