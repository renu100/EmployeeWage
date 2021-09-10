#! /bin/bash -x
#constant variable
IS_PRESENT=1
EMP_RATE_PER_HR=20

#variab
empCheck=$((RANDOM%2))

#selection
if [ $empCheck -eq $IS_PRESENT ]
then 
      echo "Employe is present"
           empHrs=8
        dailywage=$(( empHrs * EMP_RATE_PER_HR ))
else 
       echo "Employe is absent"
          dailywage=0
fi
