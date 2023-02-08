echo "Welcome to Employee Wage Computation Program"

attendance=$((RANDOM%2))
if [ $attendance -eq 1 ]
then
   echo "Employee is Present"
empRatePerHr=20
empHrs=8;
salary=$(($empHrs*$empRatePerHr))
echo "salary=: "$salary
else
   echo "Employee is Absent"
   echo "salary= " 0
fi
