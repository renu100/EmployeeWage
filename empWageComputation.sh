#! /bin/bash -x
echo "Welcome to employee wage attendance system"


#constant variable
IS_PRESENT=1
empcheck=$((RANDOM%2))

if [ $empCheck -eq $IS_PRESENT ]
then
echo "Employee is present"
else
echo "Employee is Absent"
fi



