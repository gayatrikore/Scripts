#!/bin/sh


echo "enter values of a AND b"
read a
read b
if (( $a >= $b ))
then
	echo "$a is greater than $b"
else
	echo "$a is less than $b"
fi
