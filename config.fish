
set -x fish_user_paths /usr/local/cuda/bin /home/robert/.local/bin/
set -x LD_LIBRARY_PATH "/usr/local/cuda/lib64"
set -x CMAKE_GENERATOR Ninja

set -x SCCACHE_CACHE_SIZE "32G"

#useful only for CMake 3.17+
set -x CMAKE_C_COMPILER_LAUNCHER sccache
set -x CMAKE_CXX_COMPILER_LAUNCHER sccache

#setup keychain
if status --is-interactive
    keychain --quiet --agents ssh --eval id_rsa
end

begin
    set -l HOSTNAME (hostname)
    if test -f ~/.keychain/$HOSTNAME-fish
        source ~/.keychain/$HOSTNAME-fish
    end
end


# added by pipx (https://github.com/pipxproject/pipx)
set -x PATH /home/robert/.local/bin $PATH

# for rust
set -x PATH /home/robert/.cargo/bin $PATH

