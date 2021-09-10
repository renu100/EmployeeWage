#! /bin/bash -x
#constant variable
echo "doing changes on remote"
IS_PRESENT=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=100

day=1
totalWorkHour=0
#variab
while [ $day -le $MAX_WORKING_DAYS  -a $totalWorkHour -le $MAX_WORK_HR ]
do
empCheck=$((RANDOM%2))
case $empCheck in
 	$IS_PRESENT)
			 empHrs=8 ;;
        $IS_PRESENT_HALF_TIME) 
			empHrs=8 ;;
         *)       
                  	 empHrs=0 ;;
esac
         dailywage=$(($empHrs * $EMP_RATE_PER_HR))
          totalWorkHour=$(($totalWorkHour+$empHrs))
                   ((day++))
done

     monthlyWage=$(($totalWorkHour * $EMP_RATE_PER_HR))
       echo "Monthly Wage ="$monthlyWage
