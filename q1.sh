#! /bin/bash
n=$( awk 'END { print NR }' $1 )
if [ $((n %2)) -eq 0 ]
then
	n=$(($n/2))
else
	n=$(($n/2+1))
fi
awk -v n="$n" '{if(NR==n)print $0}' $1


