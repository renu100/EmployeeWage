#! /bin/bash -x
#constant variable
echo "doing changes on remote"
IS_PRESENT=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20

#variab
empCheck=$((RANDOM%2))
case $empCheck in
 	$IS_PRESENT)
			 empHrs=8 ;;
        $IS_PRESENT_HALF_TIME) 
			empHrs=8 ;;
         *)       
                  	 empHrs=0 ;;
esac
echo "dailywage=$((empHrs * EMP_RATE_PER_HR))"


