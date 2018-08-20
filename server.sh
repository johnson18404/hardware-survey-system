#!/bin/sh
while true
do
	nc -l -p 1234 -q 1 >> upload.txt < /dev/null && printf "\n\n\n\n=====\n\n\n\n" >> upload.txt && echo "server received a file."
done
