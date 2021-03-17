
set -x LD_LIBRARY_PATH "/usr/local/cuda/lib64"
set -x CMAKE_GENERATOR Ninja

set -x SCCACHE_CACHE_SIZE "32G"

#useful only for CMake 3.17+
set -x CMAKE_C_COMPILER_LAUNCHER ccache
set -x CMAKE_CXX_COMPILER_LAUNCHER ccache
set -x CMAKE_CUDA_COMPILER_LAUNCHER ccache

#setup keychain
if status --is-interactive
    keychain --quiet --agents ssh --eval id_ed25519
end

begin
    set -l HOSTNAME (hostname)
    if test -f ~/.keychain/$HOSTNAME-fish
        source ~/.keychain/$HOSTNAME-fish
    end
end


# for rust
if test ~/.cargo/bin
	set -x PATH $PATH ~/.cargo/bin
end

set -x CCMAKE_COLORS "s=213:p=227:c=207:n=203:y=49"
