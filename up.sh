#!/bin/bash


dir=/home/zhou/code/

for file in $dir*;do
	if [ -d "$file" ]
	then	cd $file
		for child_file in $file/*;do
			if [[ -d "$child_file" && ${child_file##*/} = "HiOS-II" ]]
			then	
				echo "当前目录:$child_file"
				cd $child_file
				svn update

			fi
		done
	else
		continue
	fi

done
