#! bin/bash

#El siguiente ejercicio utiliza la estructura de condicionales if-else
# ===DESCRIPSION===
#Una compañía de transporte internacional tiene servicio en algunos países de América del Norte, América #Central, América del Sur, Europa y Asia. El costo por servicio de transporte se basa en el peso del #paquete y la zona a la que va dirigida. Parte de su política implica que los paquetes con un peso #superior a 5kg no son transportados, por cuestiones de logística y seguridad.
#Realiza un algoritmo para determinar el cobro por la entrega de un paquete o, en su caso, el rechazo de la entrega.

echo "_______________________________________________________"
echo "===Calcular costo de envio==="
echo "_______________________________________________________"
echo "Autor: javier Eduardo Montes Delgado\nNombre del archivo .sd: "$0
echo "_______________________________________________________"

read -p "Por favor digite el peso del paquete (redondear a una canidad entera): " peso
echo "_______________________________________________________"
echo "ZONA UBICACION:\n1.America del norte\n2.America central\n3.America del sur\n4.Europa\n5.Asia"
read -p "Digite el numero correspondiente a la zona a la que sera enviado el paquete: " zona

echo "_______________________________________________________"

if test $zona -eq 1 -a $peso -lt 5 ; then 
	echo "El paquete sera enviado a: America del norte\nCosto de envio: 24.00$"
else if test $zona -eq 1 -a $peso -gt 5; then
	echo "El paquete no se puede enviar debido a que tiene un peso mañor a 5kg"
else if test $zona -eq 2 -a $peso -lt 5 ; then 
	echo "El paquete sera enviado a: America central\nCosto de envio: 20.00$"
else if test $zona -eq 2 -a $peso -gt 5; then
	echo "El paquete no se puede enviar debido a que tiene un peso mañor a 5kg"
else if test $zona -eq 3 -a $peso -lt 5 ; then 
	echo "El paquete sera enviado a: America del sur\nCosto de envio: 21.00$"
else if test $zona -eq 3 -a $peso -gt 5; then
	echo "El paquete no se puede enviar debido a que tiene un peso mañor a 5kg"
else if test $zona -eq 4 -a $peso -lt 5 ; then 
	echo "El paquete sera enviado a: Europa\nCosto de envio: 10.00$"
else if test $zona -eq 4 -a $peso -gt 5; then
	echo "El paquete no se puede enviar debido a que tiene un peso mañor a 5kg"
else if test $zona -eq 5 -a $peso -lt 5 ; then 
	echo "El paquete sera enviado a: America del norte\nCosto de envio: 18.00$"
else if test $zona -eq 5 -a $peso -gt 5; then
	echo "El paquete no se puede enviar debido a que tiene un peso mañor a 5kg"
fi
fi
fi	
fi	
fi
fi
fi
fi
fi
fi
echo "_______________________________________________________"
echo "Script finalizado"
	
