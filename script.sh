#!/bin/bash
# nombre max d'images 
totnum=29

i=1
while [ $i -lt $totnum ]
do
	i1=$i
	printf -v j1 "%04d" $i1
	i2=$((i+1))
	printf -v j2 "%04d" $i2
	if [ $i1 -eq 1 ]
	then
		convert image-$j1.jpeg image-$j2.jpeg -evaluate-sequence Min resultTmp.jpeg
	else
		convert resultTmp.jpeg image-$j2.jpeg -evaluate-sequence Min resultTmp1.jpeg
		mv resultTmp1.jpeg resultTmp.jpeg
	fi
	i=$((i+1))
	echo $i / $totnum
done
