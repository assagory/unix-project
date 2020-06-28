echo "Welcome to the Guessing Game"

echo "How many files are in this directory?"
read answer

function files {
	local count=$(ls -l | wc -l)-1
	echo $count
}

number=$(files)

while [[ $answer -ne $number ]]
do
	if [[ $answer -gt $number ]]
	then
		echo "Try again, your guess was high."
	else 
		echo "Try again, your guess was low."
	fi

	read answer
done

echo "Congrats, you got the right guess!"
