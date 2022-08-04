#!/bin/bash -x
echo ""
echo "Welcome to Employee Wage Computation Program"
echo ""

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ];
then
    echo "Employee is present";
else
    echo "Employee is Absent";
fi

isEmployeePresent=1;
randomCheckOne=$((RANDOM%2));

if [ $isEmployeePresent -eq $randomCheckOne ];
then
    empRatePerHr=20;
    empHrs=8;
    salary=$(($empHrs*$empRatePerHr));
    echo "Employee daily wage is" $salary
else
    echo "If Employee is absent daily wage = 0";
fi

isPartTimeEmployeePresent=1;
randomPartTimeCheckOne=$((RANDOM%2));

if [ $isPartTimeEmployeePresent -eq $randomPartTimeCheckOne ];
then
    partTimeEmpRatePerHr=20;
    partTimeEmpHrs=4;
    salary=$(($partTimeEmpHrs*$partTimeEmpRatePerHr));
    echo "If part time employee is present then its part time daily wage is" $salary
else
    echo "If part time employee is absent daily wage = 0";
fi

isPartTime=1;
isFullTime=2;
employeeRatePerHr=20;
employeeCheck=$((RANDOM%3)) ;

case $employeeCheck in
        $isFullTime)
           employeeHrs=8
                       ;;

        $isPartTime)
            employeeHrs=4
                        ;;
            *)
empHrs=0
                        ;;
esac 

salaryofemployee=$(($employeeHrs*$employeeRatePerHr));
echo "employee of salary is" $salaryofemployee

