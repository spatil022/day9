#!/bin/bash -x
isPartTime=1;
isFullTime=2;
MaxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;
function getWorkingHrs() {
		local $empCheck=$1
                case $empCheck in
                        $isFullTime)
                                empHrs=8
                                ;;
                        $isPartTime)
                                empHrs=4
                                ;;
                        *)
                        empHrs=0
                                ;;
                esac
		echo $empHrs
}
while [[ $totalEmpHr -lt $MaxHrsInMonth &&$totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3));
	empHr="$( getWorkingHrs $empCheck )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))

done

                totalSalary=$(($totalEmpHrs+$empRatePerHr));
