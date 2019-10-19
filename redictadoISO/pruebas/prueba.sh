#!/bin/bash
arreglo=()

#insertarEle(){
#	if [ $# -eq 1 ]
#	then
#			elemento=$1
#			arreglotam=${#arreglo[*]}
#			arreglo[$arreglotam]=$elemento
#			echo "Se inserto $elemento"
#	fi
#				}
	
if [ $# -gt 1 ]
then
arreglo=$*
fi

echo " - " 
##echo " ${arreglo[*]}"
tamarreglo=${#arreglo[*]}
for ((i=0 ; i <= tamarreglo ; i++))
do
	echo "${arreglo[$i]}"
done
exit 0 

