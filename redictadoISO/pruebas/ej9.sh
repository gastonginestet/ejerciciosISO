#!/bin/bash
arreglo=()
imp=()



pares(){
	echo "$1" >> hola.txt
	}

impares(){
	tam=${#imp[*]}
	imp[$tam]=$1
	}

if [ $# -gt 1 ]
then
arreglo=$*
fi

tamarreglo=${#arreglo[*]}
for ((i=0 ; i <= tamarreglo ; i++))
do
	res='expr $i % 2'
	if [ $res -eq 0 ]
	then
		ele=${arreglo[$i]}
		pares $ele
	else
		ele=${arreglo[$i]}
		impares $ele

	fi
done
	
