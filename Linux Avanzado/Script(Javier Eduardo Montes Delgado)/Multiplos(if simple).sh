#! bin/bash

#El siguiente ejercicio utiliza la estructura de condicionales simples 
#===Descripsion===
# Comprobar si un numero pasado por teclado es multiplo de otro numero ingresado por teclado 

echo "_______________________________________________________"
echo "Autor: javier Eduardo Montes Delgado\nNombre del archivo .sd: "$0
echo "_______________________________________________________"

read -p "Por favor establesca un numero: " num1
read -p "Por favor digite el numero que desea comprobar que es multiplo de $num1: " num2

resultado=$((num2%num1))

echo "_______________________________________________________"

if test $resultado -eq 0; then 
	echo $num2 "si es multiplo de" $num1
fi

if test $resultado -ne 0; then 
	echo $num2 "no es multiplo de" $num1
fi 
