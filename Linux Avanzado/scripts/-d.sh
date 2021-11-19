#! bin/bash 

#===Descripsion===
#Realizar un script que determine si la ruta que se le a pasado pertenece a un fichero o a un directori

read -p "Ingrese la ruta que quiere verificar: " ruta

echo "_______________________________________________________"

if test -d $ruta; then

	echo "La ruta ("$ruta ")es un directorio"
	
else if test -f $ruta; then 

	echo "La ruta ("$ruta ")es un ficheo"

else
	echo "la ruta especificada no existe"
fi	
fi
 
