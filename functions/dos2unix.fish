function dos2unix
	cat $argv | tr -d '\r'
end
