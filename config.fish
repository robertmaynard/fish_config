
if status --is-login
  set PATH /usr/local/bin /bin /usr/sbin /sbin /usr/bin
end

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

