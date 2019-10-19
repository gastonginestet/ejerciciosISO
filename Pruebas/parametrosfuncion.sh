#!/bin/bash
function impParam(){
echo –e “Nombre del SCRIPT : $0”
echo –e “Primer parámetro : $1”
echo –e “Segundo parámetro : $2”
echo –e “TODOS los parámetros : $*”
}

#PRINCIPAL
clear
impParam hola a todo el mundo
#entendi como funciona los parametros jejeje
echo "$*"
