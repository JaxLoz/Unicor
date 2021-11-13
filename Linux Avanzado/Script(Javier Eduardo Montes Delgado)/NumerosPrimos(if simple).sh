#! bin/bash

# El siguiente ejercicio utiliza la estructura de condicionales if simples:
# DESCRIPSION:

# Realizar un programa que lea dos numeros por teclado, realize las operaciones basicas
# de Suma, Resta, Multiplicacion y Division y ademas determine si cada número es par o 
# impar

echo "_______________________________________________________________________________"

echo "Autor: Javier Eduardo Montes Delgado \nNombre del archivo .sh; ""--->" $0 "<---"
echo "________________________________________________________________________________"

read -p "Por favor digite el primer número: " num1

read -p "Por favor digite el segundo número: " num2

echo "numeros ingresados: " $num1 "y" $num2 

echo "________________________________________________________________________________"

suma=$(($num1+$num2))
resta=$(($num1-$num2))
multi=$(($num1*$num2))
div=$(($num1/$num2))
res=$(($num1%2))
res2=$(($num2%2))

echo "la suma:" $num1 + $num2 = $suma
echo "la resta:" $num1 - $num2 = $resta
echo "la multiplicacion" $num1 X $num2 = $multi
echo "la division" $num1 / $num2 = $div

echo "________________________________________________________________________________"

if test $res -eq 0; then

	echo "el numero" $num1 "es un numero par"  

fi

if test $res -ne 0; then 

	echo "el número" $num1 "no es impar"
fi

if test $res2 -eq 0; then 
	
	echo "el numero" $num2 "es un numero par"
fi 

if test $res2 -ne 0; then 
	
	echo "el numero" $num2 "es un numero impar"
	
fi
