function dos2unix
  for file in $argv
	  cat $file | tr -d '\r' > $file.bak
    mv $file.bak $file
  end
end
