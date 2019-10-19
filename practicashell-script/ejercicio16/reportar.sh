#!/bin/bash
# realizar un script que reciba como parámetros una extensión y 
#haga un reporte con 2 columnas, el nombre de #usuario y la cantidad 
#de archivos que posee con esa extensión. Se debe guardar el resultado en 
#un archivo llamado reporte.txt
#funciones#
#Nombre del usuario actual
function nombreUsuario {
	nombre_usuario=$(whoami)
	echo $nombre_usuario
}
#Parametros con .txt/txt => .txt
function funcionExt {
	ext=$1
	res_ext=$(echo "$ext" | cut -d "." -f 2)
	final_ext=".$res_ext"
	echo $final_ext
	}
#cantidad de archivos
function cantArchivos {
    path=$1
    ext=$2
    #cuenta cuantos archivos hay con esa extensión en ese directorio
    cant=$(find $path -type f -name "*$ext" | wc -l) 
    echo $cant
}
#crea el archivo
function crearArchivo {
    amount_files=$1
    user_name=$2
    fecha=$3
    report_name="reporte.txt"
    echo "Creando Archivo"
    $(touch $report_name) #crea un archivo vacio
    $(echo "$user_name $amount_files $fecha" >> $report_name) #inserta al final del archivo con \n
    echo "El archivo fue creado: "
    echo $(ls)
    echo "El Archivo Tiene la siguiente información: [usuario][cantidad de archivos]" 
    echo $(cat $report_name)
}

#parametros#
extension=$1
directorio=$2
###################programa###############
if [ -z $extension ]; then
	echo "No has ingresado el parametro esperado [extension]  "
	exit
fi

#Si esta vacio el directorio toma el actual
if [ -z $directorio ]; then
	directorio="$(pwd)"
fi

var_cant_archivos=$(cantArchivos $directorio $extension)
var_nombre_usuario=$(nombreUsuario)
var_ext=$(funcionExt $extension)
fecha=$(date)
echo "EL nombre del usuario actual es: $var_nombre_usuario"
echo "La extension quedo: $var_ext"
echo "La cantidad de archivos con la extension: $extension es de: $var_cant_archivos"
echo "Fecha $fecha"
crearArchivo $var_cant_archivos $var_nombre_usuario $fecha
