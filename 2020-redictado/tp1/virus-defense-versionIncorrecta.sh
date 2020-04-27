#!/bin/bash
arreglo=();
obtenerUsuarios(){ #NO ES LA FORMA DE OBTENER LOS USUARIOS, YA QUE PUEDE HABER CARPETAS EN EL /HOME QUE NO HAGAN REFERENCIA A UN USUARIO, PARA OBTENER LOS USUARIOS
#TENES QUE RECORRER EL PASSWD Y POR CADA USUARIO PREGUNTAR SI TIENE CARPETA EN EL /HOME
arreglo=(`ls /home | cat`);
echo "Listando arreglo";
echo ${arreglo[*]};
echo "size del arreglo";
echo ${#arreglo[*]};
}


crearArchivo(){
nuevoArch="$1.txt"
echo "Creando archivo"
$(touch $nuevoArch) #NO ES NECESARIA LA SUSTITUCION
$(echo "Archivo borrado: $2 | Fecha: $date" > $nuevoArch) #NO ES NECESARIA LA SUSTITUCION
$(chmod 740 $nuevoArch) #NO ES NECESARIA LA SUSTITUCION
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
contArchivo=$(cat $($dirPersonal/$x))
if [ "$contMalicioso" = "$contArchivo" ]; # DEBE VERIFICAR QUE CONTENGA LA LEYENDA, NO QUE SEA EXACTAMENTE IGUAL EL CONTENIDO A LA LEYENDA.
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
#valido parametro , que haya 1
if [ $# -ne 1 ]
then
echo "La cantidad de parametros es incorrecta"
return 3
#
#reviso que sea un usuario valido
else
tamanoArr=${#arreglo[*]}
for((i=0; i<$tamanoArr ; i++)); do
#si el usuario es valido lo borro e informo que se borro el usuario
if [ "$1" = "${arreglo[$i]}" ];
then
echo "El usuario es valido"
echo "borrando el usuario...."
$(deluser -remove -home $1) #NO ES NECESARIA LA SUSTITUCION
return 0
fi
done
echo "No se encontro el usuario $1"
return 2

fi

}


informeDeMemoria() {
#analizar el archivo /proc/meminfo que contiene información acerca de la memoria
info=$(cat /proc/meminfo | grep MemFree | cut -d " " -f10)
#Si la memoria disponible está por debajo de 3111156 KB
if [ $info -lt 3111156 ]
then
#deberá informarlo por pantalla y matar a los procesos apache y mysql
echo "La memoria disponible ($info kb) esta por debajo de 3111156 KB"
echo "Matando procesos apache y mysql..."
$(killall apache)
$(killall mysql)
else
#Si no está por debajo,
#deberá informar cual es la memoria total del sistema,
echo "La memoria total del sistema: $(cat /proc/meminfo | grep MemTotal | cut -d " " -f9)"

#cuanto queda de memoria disponible y el valor del SwapTotal
echo "Queda de memoria disponible $info kb"
echo "El valor de SwapTotal es de: $(cat /proc/meminfo | grep SwapTotal | cut -d " " -f9)"

fi
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
echo "Ingrese el usuario a eliminar..."
read newDeleteUser
eliminarUsuario $newDeleteUser
;;
informeDeMemoria)
informeDeMemoria
;;
salir)
echo "Saliendo del programa..."
break
;;
esac
done
