#!/bin/bash
#Crear un script que verifique cada 10 segundos si un usuario se ha logueado en el sistema
if [ $# -ne 1 ]
then
	echo "Cantidad de parametros incorrecta"
	exit 1
fi

if [ $(grep $1 /etc/passwd | wc -l) -eq 0 ]
then
	echo "El usuario $1 no existe o esta mal escrito, vuelva a intentar mas tarde"
	exit 2
fi

while true;do
	seLogueo=`who | grep $1 | wc -l`
	
	if [ $seLogueo != 0 ]
	then
		echo "Usuario $1 logueado"
		exit 0
	fi
	echo "No se logueo todavia el usuario $1"
	sleep 5
	done

