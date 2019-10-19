#!/bin/bash
#obtengo un arreglo de pares y cuento la cantidad de impares del arreglo definido por defecto
array=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20)
pares=()
impares=0

function counter {
    a_size=${#array[@]}
    for ((i=0; i<$a_size; i++)); do
	modulo=$((${array[$i]} % 2))
	if [ $modulo -eq 0 ]; then
	    p_size=${#pares[@]}
	    pares[$p_size]=${array[$i]}
	else
	    impares=$(($impares + 1))
	fi
    done
}

counter
echo "los pares son: ${pares[@]}"
echo "la cantidad de impares son: $impares"
