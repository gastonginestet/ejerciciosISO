#!/bin/bash
#Programa que sirve para que en un tiempo pasado por parametro , te avise
#cada ese tiempo el tiempo que estuvo conectada la pc 
mensajes=0
if [ -z $1 ] 
then
	echo "Parametro nulo , vuelva a intentar mas tarde"
	exit 1
fi
while [ $mensajes -ne 10 ] 
do
	sleep $1
	echo "Pasaron $1 segundos , ejecutando uptime!:  $(uptime)"
	mensajes=$(expr $mensajes + 1)
done
exit 0 
