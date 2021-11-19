#! bin/bash 
#===Descripsion===
# Realizar un script que permita verificar si un fichero contiene o no informacion

read -p "ingrese la ruta en la que se encuentra el fichero: " ruta

if test -s $ruta; then 
	echo "el fichero existe y contiene informacion dentro"
else if test -e $ruta; then 
	echo "el fichero existe pero no contiene informacion"
fi 
fi 
