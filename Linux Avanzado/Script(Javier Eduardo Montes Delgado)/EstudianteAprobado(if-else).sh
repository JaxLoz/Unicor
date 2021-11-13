#! bin/bash

#El siguiente ejercicio utiliza la estructura de condicionales if-else
# ===DESCRIPSION===
#Realizar un script en el que se ingrese 4 notas del alumno, mostrar el promedio de las 3 notas e #indicar si está APROBADO caso contrario NO APROBADO.

echo "_______________________________________________________"
echo "===Promedio==="
echo "_______________________________________________________"
echo "Autor: javier Eduardo Montes Delgado\nNombre del archivo .sd: "$0
echo "_______________________________________________________"

read -p "ingrese el nombre del alumno: " nombre
echo "_______________________________________________________"
echo "el rango de notas es de 0 a 10"
read -p "ingrese la primera nota: " nota1
read -p "ingrese la segunda nota: " nota2
read -p "ingrese la tercera nota " nota3

echo "_______________________________________________________"

promedio=$((($nota1+$nota2+$nota3) / 3))

echo "El promedio del alumno" $nombre "es: " $promedio

if test $promedio -gt 6 ; then 
	echo "Estado del curso: Aprobado\nDesempeño: Bueno" 

else if test $promedio -lt 6; then
	echo "Estado del curso: Reprobado\nDesempeño: malo"
fi
fi


