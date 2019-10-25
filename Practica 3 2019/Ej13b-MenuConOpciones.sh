#!/bin/bash
echo "Menu con opciones"
echo "Opciones:"
echo "Listar DondeEstoy QuienEsta Salir"
select op in Listar DondeEstoy QuienEsta Salir; do
case $op in
	Listar)
		echo $(ls)
	;;
	DondeEstoy)
		echo $(pwd)
	;;
	QuienEsta)
		echo $(who -a)
	;;
	Salir)
		echo "Saliendo del programa..."
		break
	;;
esac
done
