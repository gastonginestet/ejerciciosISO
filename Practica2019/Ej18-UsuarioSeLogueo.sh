#!/bin/bash

function estaConectado {
	nom_us=$1
	seLogueo=`who | grep $nom_us | wc -l`
	if [ $seLogueo != 0 ]  ; then
		echo 0
	else
		echo 1
	fi
}

while [ true ]; do
	echo "Espere 10 segundos ..."
	sleep 1s;
	echo "Ingrese el usuario para ver si se esta conectado:..."
	read usuario
	ok=$(estaConectado $usuario)
	if [ $ok -eq 0 ]; then
		echo "Se ha logueado exitorsamente ! "
		echo "Usuario $(whoami) logueado en el sistema"
		exit
	fi
	echo "No es el usuario esperado."
done