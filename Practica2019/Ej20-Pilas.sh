#!/bin/bash
pila=()
pila_size=0

push(){
	echo "Push! $1"
	pila_size=${#pila[*]}
	pila[$pila_size]=$1
}

pop(){
	pila_size=${#pila[*]}
	ele=$(expr $pila_size - 1)
	echo "Pop! ${pila[$pila_size - 1]} "
	unset pila[$ele]
}

lenght(){
	pila_size=${#pila[*]}
	echo "Pila. Longitud=$pila_size"
}

print(){
	pila_size=${#pila[*]}
	for ((i=0 ; i <= $pila_size ; i++))
	do
			elem=$(expr $pila_size - $i)
			echo "${pila[$elem]}"
	done
}

push 1
push 2 
push 3
push 4
print
lenght
echo " "
pop 
push 5
pop
push 10
pop
push 1000
print
lenght

