This is a Peer-graded Assignment called *Bash, Make, Git, and GitHub*"

echo "The date and time at which make was run:" >> README.md
date "+%m-%d-%Y %H:%M:%S" >> README.md

echo "The number of lines of code contained in guessinggame.sh is:" >> README.md 
wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

nano README.md
