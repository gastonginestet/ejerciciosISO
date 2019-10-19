#!/bin/bash
echo "Menu con opciones: "
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
			echo "Gracias vuelva prontos"
			break
		;;
esac
done
