function guesses {

local count=$(ls . | wc -w)
local condition=1
local response=0

while [[ $condition -eq 1 ]]
do
	echo "How many files are in this directory?"
	read response
	if [[ $response -eq $count ]]
		then condition=0
		echo "you was correct!"
	elif [[ $response -lt $count ]]
		then
		echo "Try again, there are more files."
	else
		echo "Try again, there are less files."
	fi
done


}

guesses
