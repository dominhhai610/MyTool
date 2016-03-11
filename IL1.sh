#/usr/bin/env bash

#Config your data
staff_code="B120377"
staff_name="Đỗ Minh Hải"
division="Division 1"
session_group="Div 1/ Sec 1/Group 2/Nguyễn Đăng Huy"
REASON_OF_LEAVE=('hỏng xe' 'chơi muộn quá nên ngủ quên' 'em bị mệt' 'có việc nhà cần xử lý' 'em co viec rieng')

#compentation    (Auto)
n=$RANDOM%${#REASON_OF_LEAVE[@]}
reason_of_leave=${REASON_OF_LEAVE[${n}]}

leave_from=$(date +"%Y-%m-%d")"T""07:45:00"
# leave_from="1996-12-19T16:39:57"
compentation=16:45~17:45 25/02/2016
case $2 in
	5) 
	   s_time="5'"
	   leave_to=$(date +"%Y-%m-%d")"T""07:50:00"
	   compentation="16:45~16:50 "$(date +"%d/%m/%Y")
	   echo "oneone";;
	10) 
		s_time="10'"
		leave_to=$(date +"%Y-%m-%d")"T""07:55:00"
		compentation="16:45~16:55 "$(date +"%d/%m/%Y")
		echo "two" ;;
	15)
		s_time="15'" 
		leave_to=$(date +"%Y-%m-%d")"T""08:00:00"
		compentation="16:45~17:00 "$(date +"%d/%m/%Y")
		echo "three" ;;
	30)
		s_time="30'" 
		leave_to=$(date +"%Y-%m-%d")"T""08:15:00"
		compentation="16:45~17:15 "$(date +"%d/%m/%Y")
		echo "four" ;;
	45) 
		s_time="45'"
		leave_to=$(date +"%Y-%m-%d")"T""08:30:00"
		compentation="16:45~17:30 "$(date +"%d/%m/%Y")
		echo "five" ;;
	60) 
		s_time="60'"
		leave_to=$(date +"%Y-%m-%d")"T""08:45:00"
		compentation="16:45~17:45 "$(date +"%d/%m/%Y")
		echo "six" ;;
	75) 
		s_time="1h15'"
		leave_to=$(date +"%Y-%m-%d")"T""09:00:00"
		compentation="16:45~18:00 "$(date +"%d/%m/%Y")
		echo "six" ;;
	90) 
		s_time="1h30'"
		leave_to=$(date +"%Y-%m-%d")"T""09:15:00"
		compentation="16:45~18:15 "$(date +"%d/%m/%Y")
		echo "six" ;;
	105) 
		s_time="1h45'"
		echo "six" 
		leave_to=$(date +"%Y-%m-%d")"T""09:30:00"
		compentation="16:45~18:30 "$(date +"%d/%m/%Y");;
	120) 
		s_time="2h"
		leave_to=$(date +"%Y-%m-%d")"T""09:45:00"
		compentation="16:45~18:45 "$(date +"%d/%m/%Y")
		echo "six" ;;
	*) echo "INVALID NUMBER!" ;;
esac

echo $leave_from
echo $leave_to
echo $s_time
echo $compentation
echo $reason_of_leave
echo $compentation

base_url='https://docs.google.com/forms/d/1fmILMIWovOG9K2gltCtRyQSeTCEAWol467d2LWBZxYQ/formResponse?ifq&'
p1='entry.848115363'
p2='entry.1277344473'
p3='entry.109566009'
p4='entry.731469486'
p5='entry.988229706'
p6='entry.45085566'
p7='entry.2088492034'
p8='entry.1213913992'
p9='entry.1517278948'
p10='entry.1747464892'


url="https://docs.google.com/forms/d/1GvtRKhv1kEWW6EElUlo8Gtnnwstea8UQ7FLYcZUpsI8/viewform?"${p1}="$staff_code""&"${p2}="$staff_name""&"${p3}="$division""&"${p4}="$session_group""&"${p5}="$leave_from""&"${p6}="$leave_to""&"${p7}="$1""&"${p8}="$s_time""&"${p9}="$reason_of_leave""&"${p10}="$compentation"
url1="https://docs.google.com/forms/d/1GvtRKhv1kEWW6EElUlo8Gtnnwstea8UQ7FLYcZUpsI8/formResponse?ifq&"${p1}="$staff_code""&"${p2}="${staff_name}""&"${p3}="$division""&"${p4}="$session_group""&"${p5}="$leave_from""&"${p6}="$leave_to""&"${p7}="$1""&"${p8}="$s_time""&"${p9}="$reason_of_leave""&"${p10}="$compentation""&submit=Submit"

#using open $url to go to page and click submit button
# open "$url"
#using open $url1 shell will auto submit for you 
open "$url1"
open ""https://docs.google.com/spreadsheets/d/1PXCc0Sgk8ba1Vr5yH8n6EgMt2qn4c11WPIQh0Fk3l20/edit#gid=951895879


echo $url
	#statements
	# echo "$1"
# done
# open "$url1"
# request_url=
# send request link
if which xdg-open > /dev/null
then
  # xdg-open "https://docs.google.com/forms/d/1fmILMIWovOG9K2gltCtRyQSeTCEAWol467d2LWBZxYQ/formResponse?ifq&entry.179038648=haianhnc&entry.1854028218=haianhnc&entry.1122953457=haianhnc&submit=Submit"
  xdg-open $url
elif which gnome-open > /dev/null
then
  # gnome-open "https://docs.google.com/forms/d/1fmILMIWovOG9K2gltCtRyQSeTCEAWol467d2LWBZxYQ/viewform?entry.179038648=haianhnc&entry.1854028218=haianhnc&entry.1122953457=haianhncs&submit=Submit"
  gnome-open $url
fi