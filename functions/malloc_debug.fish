function malloc_debug
	set -gx DYLD_INSERT_LIBRARIES /usr/lib/libgmalloc.dylib
end
