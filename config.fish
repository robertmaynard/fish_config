
set -x fish_user_paths /usr/local/cuda/bin /home/robert/.local/bin/
set -x LD_LIBRARY_PATH "/usr/local/cuda/lib64"
set -x CMAKE_GENERATOR Ninja

#useful only for CMake 3.17+
set -x CMAKE_C_COMPILER_LAUNCHER ccache
set -x CMAKE_CXX_COMPILER_LAUNCHER ccache

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

