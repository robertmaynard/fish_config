
set -x fish_user_paths /usr/local/cuda/bin
set -x LD_LIBRARY_PATH "/usr/local/cuda/lib64"

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

