echo "Welcome to Employee Wage Computation Program"

empRatePerHr=20

attendance=$((RANDOM%3));

if [ $attendance -eq 1 ]
then
empHrs=8;
elif [ $attendance -eq 2 ]
then
empHrs=4;
else
empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr))
echo "salary=" $salary
