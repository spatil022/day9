#!/bin/bash -x
isPartTime=1;
isFullTime=2;
MaxHrsInMonth=4;
empRatePerHr=20;
numWorkingDays=20;
totalEmpHr=0;
totalWorkingDays=0;

declare -A dailywage;

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
function getEmpWage() {
        local empHr=$1
        echo $(($empHr*$empRatePerHr))

}
while [[ $totalEmpHr -lt $MaxHrsInMonth &&$totalWorkingDays>
do
        ((totalWorkingDays++))
        empCheck=$((RANDOM%3));
        empHr="$( getWorkingHrs $empCheck )"
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
	dailyWage["Day" totalWorkingDays] ="$( get EmpWage $empHrs)"
        dailyWage[$totalWorkingDays]="$( getEmpWage $empHrs>
done

                totalSalary=$(($totalEmpHrs+$empRatePerHr));
                echo ${dailyWage[@]}

