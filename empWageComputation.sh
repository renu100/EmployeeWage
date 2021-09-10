#! /bin/bash -x
#constant variable
echo "doing changes on remote"
IS_PRESENT=1
IS_PRESENT_HALF_TIME=2
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20
MAX_WORK_HR=100
counter=0
day=1
totalWorkHour=0
declaer -a wage
#variable
function getWorkHR(){
       local empCheck=$1
         local empHrsL=0
 #selection
  case $empCheck in
                   $IS_PRESENT_FULL_TIME) empHrsL=8 ;;
                   $IS_PRESENT_HALF_TIME) empHrsL=4 ;;
                       *)empHrsL=0 ;;
esac
      echo $empHrsL

}
while [ $day -le $MAX_WORKING_DAYS -a $totalWorkHour -le $MAX_WORK_HR ]
 do
       empCheck=$((RANDOM%3))
       empHrs="$(getWorkHR $empCheck)"
     totalWorkHour=$(( totalWorkHour + empHrs ))
       dailyWage=$(( empHrs * EMP_RATE_PER_HR ))
          wage[((counter++))]=$dailyWage
        ((day++))
done

MonthlyWage=$(( totalWorkHour * EMP_RATE_PER_HR ))
echo ${wage[*]}

