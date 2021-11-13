#! bin/bash

#El siguiente ejercicio utiliza la estructura de condicionales case

# ===DESCRIPSION===
# realizar un script que a partir del orden de los planetas en el
# sistema solar pueda determinar su nombre, densidad, radio ecuatorial, 
# y numero de satelistes

echo "_______________________________________________________"
echo "===Datos de planetas del sistemas solar==="
echo "_______________________________________________________"
echo "Autor: javier Eduardo Montes Delgado\nNombre del archivo .sd: "$0
echo "_______________________________________________________"
echo "~~~~SELECCIONE UN PLANETA~~~~"
echo "1.Mercurio\n2.Venus\n3.Tierra\n4.Marte\n5.Jupiter\n6.Saturno\n7.Urano\n8.Neptuno\n9.Pluton"
read -p "digite aqui el numero del planeta que sea selecciona: " opcion
echo "_______________________________________________________"

case $opcion in 1)
	
	echo "===Informacion del planeta===\nNombre: Mercurio\nDensidad: 5.44g/cm³\nRadio: 2.439Km\nN° de satelites: 0";;
	
2)

	echo "===Informacion del planeta===\nNombre: Venus\nDensidad: 5.24g/cm³\nRadio: 6.051Km\nN° de satelites: 0";;

3)

	echo "===Informacion del planeta===\nNombre: Tierra\nDensidad: 5.52g/cm³\nRadio: 6.378m\nN° de satelites: 1";;

4)

	echo "===Informacion del planeta===\nNombre: Marte\nDensidad: 3.95g/cm³\nRadio: 3.394Km\nN° de satelites: 2";;
	
5)

	echo "===Informacion del planeta===\nNombre: Jupiter\nDensidad: 1.33g/cm³\nRadio: 71.398Km\nN° de satelites: 16";;
	
6)

	echo "===Informacion del planeta===\nNombre: Saturno\nDensidad: 0.69g/cm³\nRadio: 60.000Km\nN° de satelites: 17";;
	
7)

	echo "===Informacion del planeta===\nNombre: Urano\nDensidad: 1.26g/cm³\nRadio: 25.400Km\nN° de satelites: 5";;
	
8)

	echo "===Informacion del planeta===\nNombre: Neptuno\nDensidad: 1.67g/cm³\nRadio: 24.750Km\nN° de satelites: 2";;
	
9)

	echo "===Informacion del planeta===\nNombre: Pluton\nDensidad: 1.5g/cm³\nRadio: 1.400Km\nN° de satelites: 1";;
	
esac





