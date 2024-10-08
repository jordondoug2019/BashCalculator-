#!/bin/bash


# Requirements:

#The script should prompt the user to enter two integers.
echo "Welcome to the Bash Calculator. Please enter the 1st Number and press return"
read int1


	if ! [[ "$int1" =~ ^-?[0-9]+$ ]]
	then
		echo "Please enter a number"
		read int1

	fi

echo "Please enter the 2nd Number"
read int2


	if ! [[ "$int2" =~ ^-?[0-9]+$ ]]
	then
		echo "Please enter a number"
		read int2
	fi

	
echo "Select Operation to perform : +.-.*./"
read operation
#The script should prompt the user to choose an operation: +,-,*,/
#Use conditionals ('if`, `elif`, `else') to perform the chosen operation.

	if [ "$operation" = "+" ]
	then 
        	echo "$(( $int1 + $int2 ))"

	elif [ "$operation" = "-" ]
	then 
        	echo "$(( $int1 - $int2 ))"

	elif [ "$operation" = "*" ]
	then
        	echo "$(( $int1 * $int2 ))"

	elif [ "$operation" = "/" ]
	then
		if [  "$int2" -eq  0 ]
		then 
			echo  "error: Division by zero."
  		else 
			echo "$(( $int1 / $int2 ))"
        	fi
	fi
#Display the result of the operation.
#Handle division by zero with an appropriate error message.
 

