#!/bin/bash
#calculadora
if (( $2 = * ))
then
	echo  "$1 $2 $3 = `expr $1 /* $3`"
else
	echo "$1 $2 $3 = `expr $1 $2 $3`"
fi
exit 0
