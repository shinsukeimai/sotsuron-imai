#!/bin/bash
echo "start tex convert"
echo "enter commit message:"
while :
do 
	read meg
 	if [ -z meg ]; then
		echo "write something"	
	else
		echo "commit is "$meg
		break
	fi
done
platex sotsuron.tex && dvipdfmx sotsuron.dvi && git add -A && git commit -m "$meg" && git push 
echo "end tex push"
