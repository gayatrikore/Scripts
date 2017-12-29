#!/bin/sh

echo "Student Information"
echo "1.Add Student"
echo "2.View Student Details"
echo "3.Delete Record"
echo "4.exit"
echo "Enter your choice"
read ch
	case $ch in
		string = "i"
		read i
		while [ $string != "y"]
		do
		1)echo "Add Student"
			echo "Enter id"
			read id
			echo "First Name : "
			read firstname
			echo "Last Name :"
			read lastname
			echo "Age : "
			read age
			echo "class :"
			read class
			
			FILE = "/gayatri/studinfo.txt"
			echo "$id  $firstname  $lastname  $age  $class" >> $FILE
			echo "Do you want to add more students?"
			read i
		done
			;;

		2)echo "View Student Details"
			cat studinfo.txt
			;;

		3)echo "Enter id to delete record"
			read id
			grep -v "$id" $FILE > FILE1
			echo "Record deleted successfully..."
			cat FILE1
			;;
		4)exit 0
			;;
	esac

