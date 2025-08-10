# TODO if dir already exists, add seconds to date

#!/bin/sh
dir=$(date +"%y-%m-%d_%H.%M")

if [ -e "$dir" ]; then 
	dir=$(date +"%y-%m-%d_%H.%M.%S")
	if [ -e "$dir" ]; then 
		echo "Slow down!"
		exit 99
	fi
fi
echo "Creating directory: $dir"
mkdir -p "$dir"
