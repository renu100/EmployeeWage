#! /bin/bash -x
#constant variable
echo "doing changes on remote"
IS_PRESENT=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20

#variab
empCheck=$((RANDOM%2))

#selection
if [ $empCheck -eq $IS_PRESENT ]
then 
      echo "Employe is present"
           empHrs=8
elif [ $empCheck -eq $IS_PRESENT_HALF_TIME ]
then
     empHrs=8
else
    echo "absent"
      empHrs=0
fi
echo "dailywage=$((empHrs * EMP_RATE_PER_HR))"


