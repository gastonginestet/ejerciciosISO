#!/bin/bash
echo "Defense System v2.01!"
echo "Menu:"
echo "obtenerUsuarios buscarCuentaAtacada eliminarUsuario informeDeMemoria"
select op in obtenerUsuarios buscarCuentaAtacada eliminarUsuario informeDeMemoria salir; do
case $op in
	obtenerUsuarios)
		echo `cut –d: -f1 /etc/passwd)`
	;;
	buscarCuentaAtacada)
		echo "test buscarCuentaAtacada"
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