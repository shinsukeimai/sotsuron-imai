#!/bin/bash
echo "start-----"

select option in convertOnly convertAndPush
do
	echo $option
	if [ "$option" = "convertOnly" ]
		then
		platex sotsuron.tex && bibtex sotsuron && platex sotsuron.tex && platex sotsuron.tex && dvipdfmx sotsuron.dvi
		break
	elif [ "$option" = "convertAndPush" ]
		then
		echo "enter commit message:"
		while :
		do 
			read meg
		 	if [ -z meg ]
		 	then
				echo "write something"	
			else
				echo "commit is "$meg
				break
			fi
		done
			platex sotsuron.tex && dvipdfmx sotsuron.dvi && git add -A && git commit -m "$meg" && git push 
			echo "end tex push-----"
			break
	else
		echo "wrong select-----"
	fi
done



