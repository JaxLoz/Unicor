#! bin/bash

#El siguiente ejercicio utiliza la estructura de condicionales case
# ===DESCRIPSION===
# Realizar un script que permita calcular el area de un cuadrado, un triangulo y un rombo

echo "_______________________________________________________"
echo "===Calcular Area de figuras==="
echo "_______________________________________________________"
echo "Autor: javier Eduardo Montes Delgado\nNombre del archivo .sd: "$0
echo "_______________________________________________________"
echo "=== Seleccione la figura a la cual desea hallar el area ==="
echo "1.Hallar el area del cuadrado\n2.Hallar el area de un triangulo\n3.Hallar el area de un rombo"
read -p "seleccine una de las 3 opciones (escriba el numero correspondiente): " opcion
echo "_______________________________________________________"

case $opcion in 1)
	echo "===Hallar area de un cuadrado==="
	read -p "ingrese el valor entero de la base del cuadrado: " Cbase
	read -p "ingrese el valor entero de la altura del cuadrado: " Caltura
	Cresultado=$((Cbase*Caltura))
	echo "El area del cuadrado es de: " $Cresultado
	echo "===FIN DEL SCRIPT";;
2)

	echo "===Hallar area de un triangulo==="
	read -p "ingrese el valor entero de la base del triangulo: " Tbase
	read -p "ingrese el valor entero de la altura del triangulo: " Taltura
	Tresultado=$((($Tbase*$Taltura)/2))
	echo "El area del triangulo es de: " $Tresultado
	echo "===FIN DEL SCRIPT";;
3)
	
	echo "===Hallar area de un rombo==="
	read -p "ingrese el valor entero de la diagonal mayor: " Dmayor
	read -p "ingrese el valor entero de la diagonal menor: " Dmenor
	Rresultado=$((($Dmayor*$Dmenor)/2))
	echo "El area del rombo es de: " $Rresultado
	echo "===FIN DEL SCRIPT";;

esac
