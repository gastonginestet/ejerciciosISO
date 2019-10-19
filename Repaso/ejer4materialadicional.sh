#!/bin/bash
#   Crear un script que presente un menú al usuario con las siguientes opciones:
#a- Inicializar vector: inicializa el vector con números del 1 al 10.
#b- Longitud de vector: imprime la cantidad de elementos del vector.
#c- Elementos: imprime todos los elementos del vector.
# ${valores[*]} o ${valores[@]}  Muestra todos los valores de un array
# ${!valores[*]}  Muestra todos los índices de un array
# ${#valores[*]}  Devuelve el número de valores en un array
# ${#valores[0]}  Devuelve la longitud del indice 0

inicializar()
{
	vector=(1 2 3 4 5 6 7 8 9 10);
	echo "Vector inicializado con exito"
	}

longitud()
{
	echo "La longitud del vector es ${#vector[*]}"
}

elementos()
{
	echo "Los elementos son : "
	echo "${vector[*]}"
	}

salir()
{
	exit 0
	}
	
select opcion in inicializar longitud elementos salir
do
	$opcion
done
