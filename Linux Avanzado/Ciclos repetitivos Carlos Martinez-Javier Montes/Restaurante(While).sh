#! bin/bash

#El siguiente programa utiliza la estructura de ciclos while

#===Descripsion===
#Un restaurante ofrece hamburguesas sencillas (S), dobles (D) y triples (T), las cuales tienen un costo #de $20, $25 y $28 respectivamente. La empresa acepta tarjetas de crédito con un cargo de 5 % sobre la #compra. Suponiendo que los clientes adquieren N hamburguesas, las cuales pueden ser de diferente tipo, #realice un programa para determinar cuánto deben pagar.

v=-1
v2=1
STotal=0
DTotal=0
TTotal=0


echo "_______________________________________________________"
echo "===Calcular Precio de la compra de hamburguesas==="
echo "_______________________________________________________"
echo "Autor: javier Eduardo Montes Delgado\nNombre del archivo .sd: "$0



agregar (){

if test $nuevo = "SI" -o $nuevo = "si" -o $nuevo = "Si";then
	v=0
	
else if test $nuevo = "NO" -o $nuevo = "no" -o $nuevo = "No";then
	v=1   	
fi
fi


}


menu() {

echo "_______________________________________________________"
echo "~~~Menu~~~\nHamburguesa sencilla (S)	20$\nHamburguesa doble (D)	        25$\nHambuguesa triple(T)	        28&"
echo "_______________________________________________________"


read -p "Ingrese la seleccion de hamburguesa: " tipo

case $tipo in S)
	read -p "Ingrese la cantidad de hamburguesas: " Scantidad
	STotal=$((20*$Scantidad))
	v=1;;

D)
	read -p "Ingrese la cantidad de hamburguesas: " Dcantidad
	DTotal=$((25*$Dcantidad))
	v=1;;

T)
	read -p "Ingrese la cantidad de hamburguesas: " Tcantidad
	TTotal=$((28*$Tcantidad))
	v=1;;

[a-z])
	echo "No puede ingresar esta opcion, intente digitar una opcion valida"
	tipo=""
	v=0;;
[1-9])

	echo "No puede ingresar esta opcion, intente digitar una opcion valida"
	tipo=""
	v=0;;
	
[A-C])

	echo "No puede ingresar esta opcion, intente digitar una opcion valida"
	tipo=""
	v=0;;

[E-R])

	echo "No puede ingresar esta opcion, intente digitar una opcion valida"
	tipo=""
	v=0;;

[V-Z])

	echo "No puede ingresar esta opcion, intente digitar una opcion valida"
	tipo=""
	v=0;;
esac

}

while [ $v != 1 ]
do 
	menu 
	read -p "Desea añadir otro pedido (Si/No): " nuevo
	agregar
done

echo "_______________________________________________________"
echo "~~~RESIVO~~~"
echo "Hamburguesa sencilla:..........."$STotal"$"
echo "Hamburguesa doble:.............."$DTotal"$"
echo "Hamburguesa triple:............."$TTotal"$"
echo "Total de hamburguesas a pagar:.."$(((Scantidad + Dcantidad) + Tcantidad))
echo "Subtotal:......................."$((($STotal + $DTotal) + $TTotal))"$"
echo "_______________________________________________________"
echo "~~~SELECCIONE EL METODO DE PAGO~~~"
echo "Pago en efectivo (1)"
echo "Pago con tarjeta de credito (2)"
echo "_______________________________________________________"
read -p "Ingrese el metodo de pago: " pago

case $pago in 1)

	echo "_______________________________________________________"
	echo "~~~DATOS DE LA COMPRA~~~"
	echo "Hamburguesa sencilla:..........."$STotal"$"
	echo "Hamburguesa doble:.............."$DTotal"$"
	echo "Hamburguesa triple:............."$TTotal"$"
	echo "Total de hamburguesas a pagar:.."$(((Scantidad + Dcantidad) + Tcantidad))
	echo "Subtotal:......................."$((($STotal + $DTotal) + $TTotal))"$"
	echo "TOTAL A PAGAR:.................."$((($STotal + $DTotal) + $TTotal))"$"
	echo "_______________________________________________________";;
	
2)

	echo "_______________________________________________________"
	echo "~~~DATOS DE LA COMPRA~~~"
	echo "Hamburguesa sencilla:..........."$STotal"$"
	echo "Hamburguesa doble:.............."$DTotal"$"
	echo "Hamburguesa triple:............."$TTotal"$"
	echo "Total de hamburguesas a pagar:.."$(((Scantidad + Dcantidad) + Tcantidad))
	subtotal=$((($STotal + $DTotal) + $TTotal))
	echo "Subtotal:......................."$subtotal"$"
	impuesto=$(((5*$subtotal)/100))
	echo "Impuestos:......................"$impuesto
	echo "TOTAL A PAGAR:.................."$(($subtotal+$impuesto))"$"
	echo "_______________________________________________________";;
	
esac
	




