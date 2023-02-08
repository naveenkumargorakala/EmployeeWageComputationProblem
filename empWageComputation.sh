echo "Welcome to Employee Wage Computation Program"

empHrs=0;
empRatePerHr=20;
totalSalary=0;
totalWorkingHrs=0
numofWorkingDays=20;
day=1;

function calculateWorkingHour() {
   case $attendance in 
      1)
      empHrs=8;;
      2)
      empHrs=4;;
      *)
      empHrs=0;;
   esac
   echo $empHrs;
}
while [[ $day -le 20 && $totalWorkingHour -lt 100 ]]
do
   attendance=$((RANDOM%3));
   wHour=$(calculateWorkingHour $randomCheck);
   totalWorkingHrs=$(($totalWorkingHrs+$wHour))
   if [ $totalWorkingHrs -gt 100 ]
   then
      totalWorkingHrs=$(($totalWorkingHrs-$empHrs))
      break;
   fi
   salary=$(($wHour*$empRatePerHr))
   totalSalary=$(($totalSalary+$salary))
   ((day++));
done

echo "Employee has earned $totalSalary$ in a month(total working hours: $totalWorkingHrs)";
