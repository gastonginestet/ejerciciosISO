#!/bin/bash
arr=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
pares=()
impares=0

esPar(){
	par_size=${#pares[*]}
	pares[$par_size]=$1
}

esImpar(){
	impares=$(expr $impares + 1)
}

contador(){
	a_size=${#arr[*]}
	for ((i=0 ; i<$a_size ; i++));do
		mod=$(expr ${arr[$i]} % 2)
		if [ $mod -eq 0 ]; then
			ele=${arr[$i]}
			esPar $ele
		else
			esImpar
		fi
	done

}

contador
echo "Los pares son: ${pares[*]}"
echo "La cantidad de impares es de : $impares"
