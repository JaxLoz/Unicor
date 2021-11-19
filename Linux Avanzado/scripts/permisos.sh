#! bin/bash
#===Descripsion===
#El siguiente script tiene como funcion verificar la existencia de un fichero o directorio atravez de la ruta pasada por el usuario
#ademas de verificar si el fichero o directorio cuenta con el permiso de lectura

read -p "ingrese la ruta: " ruta 

if test -d $ruta; then
	r1="Directorio"
else 
	r1="Fichero"
fi

if test -w $ruta; then 
	r2="Si"
else
	r2="No"
fi

if test -r $ruta; then 
	r3="Si"
else
	r3="No"
fi

if test -x $ruta; then 
	r4="Si"
else
	r4="No"
fi

echo "_______________________"
echo "Reporte de: " $ruta
echo "Tipo de ruta: " $r1
echo "Permiso de lectura: " $r3
echo "Permiso de escritura: " $r2
echo "Permiso de ejecucion: " $r4
