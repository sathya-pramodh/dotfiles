#!/bin/bash
exe=$(acpi | awk '{print $4}' | sed s/,//)
exe1=$(acpi | awk '{print $4}'| sed s/,// | sed s/\%//)
if (("$exe1" >= 75 && "$exe1" <= 100))
then
	echo "  $exe"
elif (("$exe1" >= 50 && "$exe1" < 75))
then
	echo "  $exe"
elif (("$exe1" >= 25 && "$exe1" < 50))
then
	echo "  $exe"
elif (("$exe1" >= 5 && "$exe1" < 25))
then
	echo "  $exe"
else
	echo "  $exe"
fi
