#!/bin/bash
# Listar el contenido de un directorio enviado por parámetro y mostar los
# tamaños de archivo en unidades amigables (KB, Mb, GB). E l scrip se debe
# ejecutar: ./listado_de_archivos /home/darghex

clear
Error(){
	echo "Error. Sintaxis de uso: $o /archivo | directorio"
}
if [ $# -lt 1 ]; then 
	Error
elif [ -d $1 ]; then
	echo
	echo "El parámetro [$1] es un directorio y su tamaño es: "
	echo
	du -hs $1
	echo
elif [ -f $1 ]; then
	echo
	echo "El parámetro [$1] es un archivo regular y su tamaaño es: "
	echo
	du -hs $1
	echo
else
	echo
	echo "$1 no existe. "
	echo
fi

