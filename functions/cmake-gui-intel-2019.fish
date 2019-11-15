function cmake-gui-intel-2019
  set -lx CC /opt/intel/compilers_and_libraries_2019/linux/bin/intel64/icc
  set -lx CXX /opt/intel/compilers_and_libraries_2019/linux/bin/intel64/icpc
  cmake-gui -DCMAKE_CXX_COMPILER_LAUNCHER=ccache $argv
end
