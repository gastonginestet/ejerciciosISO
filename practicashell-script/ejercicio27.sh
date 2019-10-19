#!/bin/bash
array=() #arreglo vacio
parametros=$# 	#cant de parametros
operaciones=("Agregar-Elemento-[n]" "Borrar-Elemento-En-Pos=[n]" "Imprimir" "Longitud" "Salir")
resultado=-1
#############funciones###################

#############programa principal##########
if [ $parametros -eq 0 ]; then
	inicializar
	resultado=0
else
	p_longitud=$1
	p_valor=$2
	inicializarConValores $p_longitud $p_valor
fi

if [ $resultado -eq 1 ]; then
	echo "Has ingresado una longitud negativa o 0(cero), solo puedes ingresar valores > 0"
else
	select item in ${operaciones[*]};do
		case $item in
			"${operaciones[0]}") #agregar
				echo "Ingrese el valor: "
				read num
				agregarElemento $num
				echo "Se ha agregado un elemento"
				echo "El arreglo ahora es de tamano : $(longitud) : $(imprimir)"
			;;
			"${operaciones[1]}") #borrar pos[n]
			echo "Ingrese la posicion del arreglo a eliminar: "
			read pos
			borrarElemento $pos
			if [ $resultado -eq 1 ];
				echo "Ingresaste un caracter / posicion 
			"${operaciones[2]}") #imprimir
				echo $(imprimir)
			;;	
			"${operaciones[3]}") #longitud
			"${operaciones[4]}") #salir
