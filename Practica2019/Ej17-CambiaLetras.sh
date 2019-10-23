#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Por favor ingrese un parametro valido"
	exit 1
fi

if [ ! -d $1 ]; then
	echo "Por favor ingrese un directorio valido"
	exit 2
fi

directorio=$1
ls $directorio | tr '[:upper:][:lower:]' '[:lower:][:upper:]' | tr -d 'a' | tr -d 'A'