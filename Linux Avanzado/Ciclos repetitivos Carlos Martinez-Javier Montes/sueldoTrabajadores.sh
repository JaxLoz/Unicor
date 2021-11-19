#! bin/bash

# ::descripción.
#   Una empresa les paga a sus empleados con base en las horas trabajadas en la
#   semana. Para esto, se registran los días que laboró y las horas de cada día.
#   Realice un algoritmo para determinar el sueldo semanal de N trabajadores y #
#   además calcule cuánto pagó la empresa por los N empleados.
#   by Carlos Mateo Martinez Guerra, Javier Eduardo Montes Delgado.

>registroSueldos.txt
totalEmpresa=0
horas=0
min=1
max=-1
msg=""


ingresarNumero(){
 for (( ; 1; ));do
	 read -p "	$msg" valor

	 if [[ $valor =~ ^[0-9]+$ ]]
	 then
		 if [ $valor -ge $min ] && [ $valor -le $max ]
		 then
			 break
		 else
			 echo '	valor fuera de rango!'
		 fi
	 else
		 echo '	valor no valido'
	 fi

 done

}


calcularSueldo(){

	echo
	read -p "	ingrese su nombre: " nombre
	echo

	msg="ingrese el número de dias laborados: "

	max=7
	ingresarNumero
	dias=$valor
	max=18
	echo 
	for (( i=1; i<=$dias; i=i+1 ));do
		msg="ingrese el número de horas laboradas para el dia $i: "
		ingresarNumero
		horas=$(( $horas+$valor ))
	done
	
	echo
	sueldo=$(( $horas*100 ))
	echo "	total sueldo: $sueldo"

	totalEmpresa=$(( $totalEmpresa+$sueldo))
	echo "$nombre	$horas	$sueldo">>registroSueldos.txt
	horas=0

}

totalPagarEmpresa(){
	echo "	==========================
	      Total a pagar       
	==========================
	nombre	horas	sueldo
	--------------------------"
	cat -n registroSueldos.txt
	echo "	--------------------------"
	echo "	total:		$totalEmpresa	"
	echo "	=========================="
}
 
for (( ; 1;  )); do 
	
	echo 
	echo '	:: sueldo trabajadores'
	echo '	   1. calcular sueldo
	   2. total a pagar por la empresa
	   3. salir
		'
	msg="ingrese una opción: "	
	max=3
	ingresarNumero

	case $valor in 
		"1")
			calcularSueldo;;
		"2")
			totalPagarEmpresa;;
		"3")
			break;;
	esac
	
done
