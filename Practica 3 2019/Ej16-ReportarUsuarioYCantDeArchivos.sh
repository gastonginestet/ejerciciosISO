#!/bin/bash

#Funcion que trabaja con el parametro
function funcionExt {
	ext=$1
	res_ext=$(echo "$ext" | cut -d "." -f 2)
	final_ext=".$res_ext"
	echo $final_ext
}

#cantidade de archivos
function cantArchivos {
	path=$1
	ext=$2
	#Cuenta cuantos archivos hay con esa extension en ese directorio
	#Condando...
	cant=$(find $path -type f -name "*$ext" | wc -l)
	echo $cant
}

#Crear archivo
function crearArchivo {
	report_name="reporte.txt"
	echo "Creando Archivo"
	$(touch $report_name)
	$(echo "$2 $1 $3" > $report_name)
	echo "El archivo fue creado "
	echo "Imprimiendo archivo: "
	echo $(cat $report_name)
}

#programa principal
echo " "
extension=$1
directorio=$2

#chequeo cantidad de parametros
if [ $# -ne 2 ]; then
	echo "Por favor ingrese 2 parametros validos"
	exit 2
fi

#chequeo primer parametro si es extension
if [ -z $extension ]; then
	echo "No has ingresado el parametro esperado [ext]"
	exit 2
fi

#chequeo si es un directorio valido

if [ ! -d $directorio ]; then
	echo "No has ingresado un directorio valido"
	echo "Se trabaja con el directorio actual que es : $(pwd) "
	directorio="$(pwd)"
fi

cant_archivos=$(cantArchivos $directorio $extension)
ext=$(funcionExt $extension)
echo "El nombre del usuario actual es: $(whoami)"
echo "La extension quedo: $ext"
echo "La cantidad de archivos con la extension: $ext es de: $cant_archivos archivos."
echo "Fecha $(date)"
echo " "
crearArchivo $cant_archivos $(whoami) $(date)

