#!/bin/bash
# Ejemplo de uso en consola: Ej14-RenombraArchivos.sh ./CARPETA/ -a o -b CADENA
#

echo "Renombrando Archivos"
if [ $# -ne 3 ]; then
	echo "Ingrese 3 parametros"
	exit 1
fi
if [ -d $1 ]; then
	cd $1
	if [ $2 == -a ]; then
		for i in *; do
			f=$i$3;
			mv $i $f;
		done
		ls
		exit 0
	fi
	if [ $2 == -b ]; then
		for i in *; do
			f=$3$i;
			mv $i $f;
		done
		ls
		exit 0
	fi
fi
