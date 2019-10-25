#!/bin/bash

#Primero chequeo cantidad de parametros
if [ $# -ne 1 ];
then
	echo "La cantidad de parametros es incorrecta"
	exit 1
fi
#Chequeo si la ruta existe (si es archivo o directorio da lo mismo)
if [ -e $1 ]; then
	echo "Si existe"
	if [ -f $1 ];then
		echo "Es un archivo"
	else
		echo "Es un directorio"
	fi
else
	echo "No existe el archivo/directorio con nombre $1"
	echo "Creando..."
	mkdir $1
	echo "Listando el directorio $(pwd)" ; ls
fi
echo "Imprimiendo el nombre del archivo: $1"
exit 0
