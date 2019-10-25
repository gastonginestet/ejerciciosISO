#!/bin/bash

if [ $# -ne 2 ]
then
	echo "La cantidad de parametros es incorrecta"
	exit 1
fi
echo "Multiplicacion de $1 * $2 es: `expr $1 \* $2`" 
echo "Suma de $1 + $2 es: `expr $1 + $2`" 
echo "Resta de $1 - $2 es: `expr $1 - $2`"
echo "Imprimiendo el mayor"
if (( $1 > $2 ))
then
	echo "$1"
else
	echo "$2"
fi
exit 0
