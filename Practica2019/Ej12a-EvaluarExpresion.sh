#!/bin/bash
echo "Por favor ingrese un numero"
read n1
echo "Por favor ingrese otro numero"
read n2
echo "Multiplicacion de $n1 * $n2 es: `expr $n1 \* $n2`" 
echo "Suma de $n1 + $n2 es: `expr $n1 + $n2`" 
echo "Resta de $n1 - $n2 es: `expr $n1 - $n2`"
echo "Imprimiendo el mayor"
if (( n1 > n2 ))
then
	echo "$n1"
else
	echo "$n2"
fi
exit 0
