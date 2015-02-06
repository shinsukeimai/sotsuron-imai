#!/bin/bash
echo "start tex convert"
platex sotsuron.tex && dvipdfmx sotsuron.dvi && git add -A && git commit -m "auto commit" && git push && echo "end tex push"