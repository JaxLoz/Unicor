#! bin/bash
#===Descripsion===
#La funcion de este escript es la de verificar la existencia de un fichero de texto plano, verificar si este es modificable 
#y establecer un numero de lineas para poder dijitar una lista de palabras y guardarlas en el fichero


contador=0

read -p "ingrese la ruta del fichero (.txt): " ruta 

if test -e $ruta; then 

	echo "el fichero existe"
	echo "________________________________"
read -p "ingrese la cantidad de lineas que tendra la lista: " nlineas

while test $contador -ne $nlineas; do

	read -p "ingrese una palabra: " palabra
	echo $palabra >> $ruta
	contador=$(($contador+1))
done  

else 
	echo "________________________________"
	echo "el fichero no existe intente otre vez"
fi


