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
    echo salary=0;
fi