correct='\t'10
incorrect='\t'7
error='\t'5
for file in $(find . -type f -name "*.c")
do
	fname=`echo $file | cut -d'/' -f2`
	fnameWOc=`echo $fname | cut -d'.' -f1`
	gcc $file -o $fnameWOc 2>/dev/null
	if [ -f $fnameWOc ]
	then
		if [ $(./$fnameWOc) == 20 ]
		then 
			echo -e $fname $correct
		else
			echo -e $fname $incorrect
		fi
	else
		echo -e $fname $error 
	fi
done
