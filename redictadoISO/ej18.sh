#!/bin/bash
function estaConectado {
	nombre_usuario=$1
	
	if [ -z $nombre_usuario ] || "$(whoami)" ]; then
		echo 0
	else
		if [ "$nombre_usuario" = "$(whoami)" ]; then
			echo 0
		else
			echo 1
		fi
	fi
	}
while [ true ]; do 
	echo "Espere 10 segundos ...."
	sleep 10s;
	echo "Ingrese el usuario para chequear si esta conectado:.."
	read varnombreusuario
	ok=$(estaConectado $varnombreusuario)
	
	if [ $ok -eq 0 ]; then
		echo "Usuario $(whoami) logueado en el sistema"
		exit
	fi
	echo "No es el usuario esperado.Intente nuevamente mas tarde."
done
	
