#!/bin/bash
#3- Renombrando Archivos: haga un script que renombre solo archivos de un directorio pasado
#como parámetro agregándole una CADENA, contemplando las opciones:
#a) “-a CADENA”: renombra el fichero concatenando CADENA al final del nombre del
#archivo.
#b) “-b CADENA”: renombra el fichero concatenado CADENA al principio del nombre
#del archivo.
#¿Cómo pasamos argumentos a nuestro script?
#./nombre_script arg1 arg2 argN
#¿Como sabemos cuántos argumentos pasaron?
#La variable $# almacena el número de argumentos o parámetros recibidos por el script o función
#¿Cómo obtenemos TODOS los argumentos?
#La variable $* nos devuelve todos los argumentos recibidos por el script o función

if [ $# -ne 3 ] #Si la cantidad de parametros no es igual a 3
then
	echo "La cantidad de parametros es incorrecta"
	exit 1
fi

if [ ! -d $1 ] #Si el primer parametro no es un directorio
then
	echo "El primer parametro no es un directorio existente"
	exit 2
fi

if [ -z $3 ]
then
	echo "El tercer parametro es nulo"
	exit 3
fi

case $2 in
	"-a")
		for i in $(ls $1); do
			mv $1/$i $1/$i$3
		done
	;;
	"-b")
		for i in $(ls $1); do
			mv $1/$i $1/$3$i
		done
	;;
	*)
		echo "El segundo parametro debe ser -a o -b"
		exit 4
esac
