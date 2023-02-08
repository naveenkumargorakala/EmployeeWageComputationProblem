echo "Welcome to Employee Wage Computation Program"

empRatePerHr=20

attendance=$((RANDOM%3));

case $attendance in 
   1)
   empHrs=8;;
   2)
   empHrs=4;;
   *)
   empHrs=0;;
esac

salary=$(($empHrs*$empRatePerHr))
echo "salary=" $salary
