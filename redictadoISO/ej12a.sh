#!/bin/bash
echo "Por favor ingrese un numero"
read n1
echo "Por favor ingrese un numero"
read n2
echo "La suma de $n1 y $n2 es `expr $n1 + $n2`"
echo "La resta de $n1 y $n2 es `expr $n1 - $n2`"
echo "La multiplicacion de $n1 y $n2 es `expr $n1 \* $n2`"
echo "El numero mas grande es: "
if [ $n1 -gt $n2 ];then
	echo "$n1"
else
	echo "$n2"
fi
exit 0
