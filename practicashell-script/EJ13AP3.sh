#!/bin/bash
function pow {
	echo $(($1 * $1))
	}
for ((i=0 ; i<=100 ; i++)); do
	echo "El numero es : $i su cuadrado es: $(pow $i)"
done
