#for-do-done block
NUMS="2 3 4 5 6 7"
for i in $NUMS
do
	q=`expr $i + 1`
	printf "%d\n" $q
done
exit 0
