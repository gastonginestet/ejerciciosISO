#!/bin/bash
#Ejercicio 12 Practica 3 
#Realizar un script que le solicite al usuario 2 números, 
#los lea de la entrada Standard e imprima la multiplicación, suma, resta 
#y cuál es el mayor de los números leídos.
echo "Por favor ingrese un numero"
read n1
echo "Por favor ingrese un numero"
read n2
echo "La suma de $n1 y $n2 es `expr $n1 + $n2`"
echo "La resta de $n1 y $n2 es `expr $n1 - $n2`"
echo "La multiplicacion de $n1 y $n2 es `expr $n1 \* $n2`"
echo "El numero mas grande es: "
if (( n1 > n2 ))
then
	echo "$n1"
else
	echo "$n2"
fi
exit 0
