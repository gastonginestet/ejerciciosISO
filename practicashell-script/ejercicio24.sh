#!/bin/bash
a1=(1 3 4 8 9)
a2=(3 4 3 2 9)

function sumador {
cuenta=0	
tam=${#a1[*]}
for((i=0; i<$tam ;i++));do
	cuenta=$(expr ${a1[$i]} + ${a2[$i]})
	echo "La suma de los elementos de la posicion $i de los vectores es $cuenta"
done
}
sumador

