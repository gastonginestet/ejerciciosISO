#!/bin/bash
echo "Defense System v2.01!"
echo "Menu:"
echo "obtenerUsuarios buscarCuentaAtacada eliminarUsuario informeDeMemoria"
select op in obtenerUsuarios buscarCuentaAtacada QuienEsta Salir; do
case $op in
	obtenerUsuarios)
		echo $(ls)
	;;
	buscarCuentaAtacada)
		echo $(pwd)
	;;
	eliminarUsuario)
		echo $(who -a)
	;;
	informeDeMemoria)
		echo "Saliendo del programa..."
		break
	;;
esac
done