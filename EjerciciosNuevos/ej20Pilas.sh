#!/bin/bash
pila=()
pila_size=0
push() {
	echo "Push $1"
	pila_size=${#pila[*]}
	pila[$pila_size]=$1
	}
pop(){
	pila_size=${#pila[*]}
	echo "Pop ${pila[$pila_size - 1]}"
	elemento_a_sacar=$(expr $pila_size - 1)
	unset pila[$elemento_a_sacar]
	}
lenght(){
	pila_size=${#pila[*]}
	echo "La longitud de la pila es de $pila_size"
	}
print(){
	echo "Imprimiendo al estilo pila"
	pila_size=${#pila[*]}
	for ((i=1 ; i <= $pila_size ; i++))
	do
		elemen=$(expr $pila_size - $i)
		echo "${pila[$elemen]}"
	done
		
	}

###programa principal###

push 1
push 3
push 4
print
lenght
echo "####"
pop
push 3
print

