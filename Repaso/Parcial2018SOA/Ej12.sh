#!/bin/bash
#INICIALIZO LAS VARIABLES
cantidad=0

while true;do #ARRANCO CON EL WHILE PARA QUE CHEQUEE CADA 3 MIN SI EL ARCHIVO EXISTE
if [ -f /home/gaston/Documents/Repaso/Parcial2018SOA/PruebaEj12/pruebaEJ12.txt ] #PREGUNTO SI EL ARCHIVO EXISTE
	then
		break
	else
		echo "No se encuentra el archivo , en 10 segundos nos volvemos a fijar"
		sleep 10
	fi
done
#MALA solucion#cantidad=$(grep "FATAL ERROR: " /home/gaston/Documents/Repaso/Parcial2018SOA/PruebaEj12/pruebaEJ12.txt | wc -l ) #grep -c
cantidad=$(grep -c "FATAL ERROR: " /home/gaston/Documents/Repaso/Parcial2018SOA/PruebaEj12/pruebaEJ12.txt)
if [ $cantidad -ne 1 ] 
then
	echo "La cantidad de lineas del archivo que contienen el texto 'FATAL ERROR' son : $cantidad"
	echo "Empaquetando y Compriendo el contenido del directorio /home/gaston/Documents/Repaso/Parcial2018SOA/PruebaEj12/"
	tar -cvf /home/gaston/Documents/Repaso/Parcial2018SOA/archivo.tar /home/gaston/Documents/Repaso/Parcial2018SOA/PruebaEj12/
	gzip /home/gaston/Documents/Repaso/Parcial2018SOA/archivo.tar
	echo "Guardado en /home/gaston/Documents/Repaso/Parcial2018SOA/"
	
	exit 0
else
	echo "El archivo esta pero no hay ningun error"
	exit 1
fi
	

