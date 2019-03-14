#!/bin/bash

if [ $# -ne 2 ] 
	then echo "please input two param [name,age]"
else
	curl -XPOST "192.168.100.100:8080/login" -H "Content-Type: application/json" -d  '{ "userId":1 , "userName":"zhoudw"}'
	echo -e "\n"

	for i in {1..10}
	do
		var=$1
		var1=$var$i
		echo -e "$var1 \n"
		curl -XPOST "192.168.100.100:8080/student/addstudent" \
		-H "Content-Type: application/json" \
		-d  '{ "studentName":"'$var1'" , "studentAge":'$2'}'
	done
fi

