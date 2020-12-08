#! /bin/bash
# cars.sh
# Darren Pak

while read -r number
do
	echo "Type 1 to enter a new car"
	echo "Type 2 to display the list of cars"
	echo "Type 3 to quit and exit the program"
	case "$number" in
		1)
			echo "Enter year"
			read -r year
			echo "Enter make"
			read -r make
			echo "Enter model"
			read -r model
			a=":"
			result="$year$a$make$model"
			echo -e "\n$result" >> My_old_cars
			;;
		2)
			sort My_old_cars
			# echo "$(<My_old_cars)"
			echo "End of file"
			;;
		3)
			break
			;;
	esac
done
echo "Goodbye"
