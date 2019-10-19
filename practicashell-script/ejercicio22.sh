#!/bin/bash
productoria() {
	tamano=${#num[@]}
	resultado=1
	for((i=0; i<$tamano; i++)); do
		resultado=$(expr $resultado \* ${num[$i]})
	done
	echo $resultado
	}
num=(10 3 5 7 9 3 5 4)
echo "El arreglo es ${num[@]}"
echo "El resultado del arreglo de longitud ${#num[*]} es: $(productoria)"	

	
