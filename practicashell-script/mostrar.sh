#!/bin/bash
#Ejercicio 3 Practica 3 ISO
echo "Introduzca su nombre y apellido"
read nombre apellido
echo "Fecha y hora actual: "
date
echo "Su apellido y nombre es: "
echo "$apellido $nombre"
echo "Su usuario es: `whoami` "
echo "Su directorio actual es: `pwd`"
echo "Contenido del directorio: `ls`"
echo "Espacio libre: `df`"
