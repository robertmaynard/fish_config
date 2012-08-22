if status --is-login
	set PATH /usr/local/bin /bin /usr/sbin /sbin /usr/bin /usr/X11R6/bin /usr/local/cuda/bin
	set -xU CC /usr/local/bin/gcc-4.7
	set -xU CXX /usr/local/bin/g++-4.7
end
