#!/bin/bash
arreglo=();
obtenerUsuarios(){
		 arreglo=(`ls /home | cat`);
		 echo "Listando arreglo";
		 echo ${arreglo[*]};
		 echo "size del arreglo";
		 echo ${#arreglo[*]};
	}
	
	
crearArchivo(){
	nuevoArch="$1.txt"
	echo "Creando archivo"
	$(touch $nuevoArch)
	$(echo "Archivo borrado: $2  | Fecha: $date" > $nuevoArch)
	$(chmod 740 $nuevoArch)
	echo "El archivo $nuevoArch fue creado"
	echo "Imprimiendo el archivo" 
	echo " $(cat $nuevoArch)" 
	}
	
	
buscarCuentaAtacada(){
	tamanoArr=${#arreglo[*]}
	for((i=0; i<$tamanoArr ; i++)); do
		dirPersonal="/home/${arreglo[$i]}/"
		#recorro el directorio personal del elemento i
		for x in $(ls $dirPersonal)
			do
			#verifico si existe un archivo con el nombre
			#"Attack from virus wwww.xwsaxs.uk"
			contMalicioso="Attack from virus wwww.xwsaxs.uk"
			contArchivo=$(cat "$dirPersonal/$x")
			if [ "$contMalicioso" = "$contArchivo" ];
				then
					echo "archivo malicioso encontrado"	
					#Si lo encuentro guardo en una variable 
					#el nombre del archivo borrado
					nomArchivoBorrado=$x
					#borro el archivo
					rm /home/${arreglo[$i]}/$x
					#creo un archivo con el nombre del usuario i.txt que contenga 
					#el nombre del archivo borrado,fecha de borrado y el contenido de
					#ese archivo tiene que tener permisos 740
					crearArchivo ${arreglo[$i]} $x
				else		
			#Si no lo encuentro
						#informo que no esta el archivo
						echo "No se encuentra el archivo en estos usuarios : "
						echo ${arreglo[*]}
						exit 0
			fi
			done
		done
	
	}

eliminarUsuario(){
	if
	#valido parametro , que haya 1
	#
	#reviso que sea un usuario valido
	#si el usuario es valido lo borro e informo que se borro el usuario 
	}



echo "Defense System v2.01!"
echo "Menu:"
select op in obtenerUsuarios buscarCuentaAtacada eliminarUsuario informeDeMemoria salir; do
case $op in
	obtenerUsuarios)
			obtenerUsuarios
	;;
	buscarCuentaAtacada)
			buscarCuentaAtacada
	;;
	eliminarUsuario)
		echo "test eliminarUsuario"
	;;
	informeDeMemoria)
		echo "test informeDeMemoria"
	;;
		salir)
		echo "Saliendo del programa..."
		break
	;;
esac
done
