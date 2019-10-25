#!/bin/bash

productoria() {
	size=${#arr[*]}
	res=1
	for ((i=0 ; i<$size ; i++)); do 
		res=$(expr $res \* ${arr[$i]})
	done
	echo $res

}

arr=(1 2 3 4 5 6 7 8)
echo "El arreglo es  ${arr[*]} "
echo "La productoria es $(productoria)"