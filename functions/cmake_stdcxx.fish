function ccmake-stdcxx
	ccmake -DCMAKE_CXX_FLAGS="-stdlib=libstdc++" $argv
end

function cmake-stdcxx
        cmake -DCMAKE_CXX_FLAGS="-stdlib=libstdc++" $argv
end
