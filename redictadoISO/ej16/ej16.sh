function nombreUsuario {
	nombre_usuario=$(whoami)
	echo $nombre_usuario
	}
#Parametros con .txt/txt => .txt
funcion funcionExt{
	ext=$1
	res_ext=$(echo "$ext" | cut -d "." -f 2)
	final_ext=".$res_ext"
	echo  $final_ext
	}
#cantidad de archivos
function cantArchivos {
	path=$1
	ext=$2
	#cuenta cuantos archivos hay con esa extension en ese directorio
	cant=$(find $path -type f -name "*$ext" | wc -l)
	echo $cant
	}
#crea el archivo
function
