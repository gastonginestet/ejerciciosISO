#!/bin/bash
if [ -e $1 ] ;then
	echo "Si existe"
	if [ -f $1 ];then
		echo "Es un archivo"
	else
		echo "Es un directorio"
	fi
else
	echo "No existe el archivo/directorio"
	echo "Creando el directorio con nombre $1"
	mkdir $1
	echo "Listando todos los archivos/directorios ...." ; ls
fi
echo "Imprimiendo el nombre del archivo : $1 "
exit 0
