#!/bin/bash
echo "La suma de $1 y $2 es `expr $1 + $2`"
echo "La resta de $1 y $2 es `expr $1 - $2`"
echo "La multiplicacion de $1 y $2 es `expr $1 \* $2`"
echo "El numero mas grande es: "
if [ $1 -gt $2 ];then
	echo "$1"
else
	echo "$2"
fi
exit 0
