#!/bin/bash
#store value in array
arr=(mum delhi pune 'kol kata')

no_element_arr=${#arr[@]}
echo $no_element_arr

for ((i=0;i<$no_element_arr;i++)); do
	echo ${arr[${i}]}
done