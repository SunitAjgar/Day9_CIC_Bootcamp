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