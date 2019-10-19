#!/bin/bash
arreglo=()
#funciones
insertElemento(){
	echo "Funcion insertElemento"
	if [ $# -eq 1 ]
	then
		elemento=$1
		arreglo_size=${#arreglo[*]}
		arreglo[arreglo_size]=$elemento
	else
		echo "Ingrese un solo parametro"
	fi
	
	}
	
rellenarN(){
	if [ $# -eq 1 ]
	then
		for ((i=0 ; i < $1 ; i++))
		do
			echo "Ingrese un patron de texto"
			read patron
			arreglo_size=${#arreglo[*]}
			arreglo[arreglo_size]=$patron
		done
	else
		echo "Ingrese un solo parametro"
	fi	
	}
	
selectElemento(){
	if [ $# -eq 1 ]
	then
		if [ "$1" = "*" ]
		then
			echo "Los elementos son : ${arreglo[*]}"
		else
			arreglo_size=${#arreglo[*]}
			if [ $1 -le $arreglo_size ]
			then
				echo "El elemento en la posicion $1 es: ${arreglo[$1]} "
			else
				echo "No llega hasta la posicion $1"
			fi
		fi
	else 
		echo "Ingrese un solo parametro"
	fi
	}
	
deleteElemento(){
	if [ $# -eq 1 ]
	then
		if [ "$1" = "*" ]
		then
			echo "Borrando todos los elementos del arreglo"
			unset arreglo
			echo "Los elementos son : ${arreglo[*]}"
		else
			arreglo_size=${#arreglo[*]}
			seBorro=0
			for ((i=0 ; i < arreglo_size ; i++))
			do
				if [ $1 = ${arreglo[i]} ]
				then
					unset arreglo[i]
					seBorro=1
					echo "Borramos el elemento $1"
					echo "Los elementos son : ${arreglo[*]}"
				fi		
			done
		fi
		
		if [ $seBorro -ne 1 ]
		then
			echo "No se encontro el elemento $1"
		fi
	else
		echo "Ingrese un solo parametro"
	fi
	}

salir(){
	exit 0
	}
	
#PROGRAMA PRINCIPAL
echo "###################################################################################################"
echo "Ejecutando la primera funcion Insert Elemento y agregando un hola"
insertElemento hola
echo "###################################################################################################"
echo "Ejecutando la segunda funcion rellenarN con parametro 10"
rellenarN 10
echo "###################################################################################################"
echo "Imprimiendo un valor en la posicion 10"
selectElemento 10
echo "###################################################################################################"
echo "Imprimiendo todos los valores"
selectElemento "*"
echo "###################################################################################################"
deleteElemento "chau"
echo "###################################################################################################"
deleteElemento "*"
#NO USAR MENUS , CASE  Y SELECT NO HACE FALTA SABER





