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

workingDay=20;
employeeWagePerWorkingDay=160;
employeeMonthlySalary=$(($workingDay*$employeeWagePerWorkingDay));
echo "employee Monthly Salary" $employeeMonthlySalary


Employee_Wage_per_hour=20
Employee_Wage_per_day=160
WH=100
WD=20
echo "1.for Working Hours"
echo "2. for Working Days"
read -p "enter your choice: " number
case $number in
1)
read -p "enter the working hours: " workingHours
    if [ $workinghours -ge $WH ]; then
    employeeSalaryOnHourBasis=$(($workingHours*$Employee_Wage_per_hour))
    echo "employee Salary On Hourly Basis is" $employeeSalaryOnHourBasis
    else
    echo "Enter the working hours which are greater than or equal to 100"
    fi
;;
2)
read -p "enter the working days: " workingDays
    if [ $workingDays -ge $WD ]; then
    employeeSalaryOnDayBasis=$(($workingDays*$Employee_Wage_per_day))
    echo "employee Salary On the basis of number of working days is" $employeeSalaryOnDayBasis
    else
    echo "Enter the working days which are greater than or equal to 20"
    fi
    ;;
    esac