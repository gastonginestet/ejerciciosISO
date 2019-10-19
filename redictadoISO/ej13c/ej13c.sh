#!/bin/bash
echo "Buscando archivo/directorio con el nombre $1"
if [ -e $1 ] ; then
	echo "Si existe"
	if [ -f $1 ] ; then
		echo "Es un archivo"
	else
		echo "Es un directorio"
	fi
else
	echo "No existe el archivo/directorio"
	echo "Creando el directorio con el nombre $1"
	mkdir $1
	echo "Directorio creado"
	echo "Listando todos los directorios...." ; ls
fi
exit 0
