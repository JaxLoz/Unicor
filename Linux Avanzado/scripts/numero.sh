#! bin/bash

#===Descripsion===
#determinar si un numero es par o impar

read -p "ingrese el numero que decea verificar: " numero

determinar=$(($numero%2))

if test $determinar -eq 0; then
	echo "el numero" $numero "es par"
	
else 
	echo "el numero" $numero "es impar"
	
fi 
