#!/bin/bash
echo '['
row_num=0
results=$(mysql "$@")
echo "$results" |while read -r row; do

((row_num++))
if [ $row_num -eq 1 ]
then
	header_num=0
	for header_name in $row; do
		headers[$header_num]=$header_name
		((header_num++))
	done
	max_columns=$header_num

else

	cur_row='{'
	col_num=0
	for header in ${headers[@]}
	do 
		((col_num++))
		col=$(echo "$row"|cut -f$col_num)

		if [ $col_num -eq $max_columns ]
			then
				cur_row=$cur_row'"'$header'":"'$col'"'
			else
				cur_row=$cur_row'"'$header'":"'$col'",'
		
		fi
	done

	if [ -z "$prev_row" ]
	then
		cur_row=$cur_row
	else
		cur_row=','$cur_row
	fi
	cur_row=$cur_row'}'
	echo $cur_row
	prev_row=$cur_row
fi

done 
echo ']'
