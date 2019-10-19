#!/bin/bash
echo "Renombrando archivos..."
cd $1 #en el primer parametro estara la direccion del directorio
if [ $2 == -a ]; then #el segundo parametro es el tipo de concatenacion
		for i in *; do
			f=$i$3;	#el tercer parametro va a ser la cadena que se agregue
			mv $i $f;
		done
		exit
fi
if [ $2 == -b ]; then #el segundo parametro es el tipo de concatenacion
		for i in *; do
			f=$3$i;	#el tercer parametro va a ser la cadena que se agregue
			mv $i $f;
		done
		exit
fi
