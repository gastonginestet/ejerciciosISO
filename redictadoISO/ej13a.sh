#!/bin/bash
echo "error?"
function pow {
	echo "error?"
	echo $(( $1 * $1 )) } 
echo "llego aca"
for (( i = 0 ; i <= 100 ; i++ )); do
echo "entre al loop"
	echo "El numero es: $i su cuadrado es: $(pow $i)"
done
echo "no entre al looop"
