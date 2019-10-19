#!/bin/bash

existe(){
	usuarios_size=${#usuarios[*]}
	existe=false
	for ((i=0 ; i<= $usuarios_size ; i++))
	do
		if [ "$1" = "${usuarios[$i]}" ]
		then
			existe=true
			echo "El indice donde esta el parametro $1 es $i"
			return 0
		fi
	done
	if [ $existe = false ] 
	then
		echo "No esta el parametro $1 en el arreglo de usuarios"
		return 1
	fi
	}
	
eliminarUsuario(){
	usuarios_size=${#usuarios[*]}
	borrado=false
	for ((i=0 ; i<= $usuarios_size ; i++))
	do
		if [ "$1" = "${usuarios[$i]}" ]
		then
			borrado=true
			unset usuarios[$i]
			echo "Se borro el usuario $1"
			return 0
		fi
	done
	if [ $borrado = false ] 
	then
		echo "No se pudo encontrar/borrar el usuario $1"
		return 2
	fi
	}
	
usuariosConPatron(){
	if	[ $# -ne 1 ]
	then
		echo "No se recibio el parametro esperado"
		exit 1
	else
		for elem in ${usuarios[*]}
		do
			if [ $(echo $elem | grep $1) ]
			then
				echo "El nombre de usuario $elem coincide con el patron $1"
			fi
		done
	fi
	}
	
cantidad(){
	echo "La cantidad de usuarios es de ${#usuarios[*]}"
	}
	
usuarios(){
	echo "Los usuarios que estan en el arreglo son "
	echo "${usuarios[*]} "
	}

usuarios=(gaston gaston2 pepito perez)
usuarios
cantidad
existe gaston2
existe hola

eliminarUsuario pepito
eliminarUsuario juan
usuarios
cantidad

usuariosConPatron gas


