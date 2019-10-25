#!/bin/bash
#comentario
echo "Introduzca su nombre y apellido:"
read nom ape
echo "Fecha y hora actual:"
date
echo " "
echo "Su apellido y nombre es:"
echo "$ape $nom"
echo " "
echo "Su usuario es: `whoami`"
echo " "
echo "Su directorio actual es: `pwd`"
echo " "
echo "COntenido del directorio: `ls`"
echo " "
echo "Espacio libre: `df`"
