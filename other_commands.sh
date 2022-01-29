#Check disk space
du -h --max-depth=1 / | sort -h 2> /dev/null
