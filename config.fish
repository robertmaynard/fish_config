if status --is-login
	set PATH /usr/local/bin /bin /usr/sbin /sbin /usr/bin /usr/local/cuda/bin
	set -xU EDITOR 'subl -w'
	
	#setup rbenv
	set -x PATH $HOME/.rbenv/shims $PATH
	set -x PATH $HOME/.rbenv/bin $PATH
	rbenv rehash >/dev/null ^&1
end

function parse_git_branch
	sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
end


function fish_prompt -d "Write out the prompt"
	# Color writeable dirs green, read-only dirs red
	if test -w "."
		printf ' %s%s' (set_color green) (prompt_pwd)
	else
		printf ' %s%s' (set_color red) (prompt_pwd)
	end

	# Print git branch
	if test -d ".git"
		printf ' %s%s/%s' (set_color normal) (set_color blue) (parse_git_branch)
	end
	printf '%s> ' (set_color normal)
end

function rbenv_shell
  set -l vers $argv[1]

  switch "$vers"
    case '--complete'
      echo '--unset'
      echo 'system'
      exec rbenv-versions --bare
      return
    case '--unset'
      set -e RBENV_VERSION
      return 1
  end
end
