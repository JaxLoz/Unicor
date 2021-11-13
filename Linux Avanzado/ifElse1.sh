#! bin/bash

# ::descripción
#   Script para saber cual es tu horóscopo. 
#   by Carlos Mateo Martinez Guerra.

echo
echo ' ::consultar horóscopo'
echo

op=""

while [ "$op" != "salir" ]
do
	echo -n '	ingrese el dia de nacimiento: '
	read dia

	if [[ $dia =~ ^[0-9]+$ ]]
	then 
		if  [ $dia -ge 1 ] && [ $dia -le 31 ]
		then
			op="salir"
		else
			echo '	dia fuera de rango'
		fi
	else
		echo '	no es un dia valido, ingrese en formato númerico (ejemplo: 26)'
	fi
	echo
done

op=""
while [ "$op" != "salir" ]
do
        echo -n '	ingrese el mes de nacimiento: '
	read mes 

	if [[ $mes =~ ^[0-9]+$ ]]
        then 
                if  [ $mes -ge 1 ] && [ $mes -le 12 ]
                then
                        op="salir"
                else
			echo '	mes fuera de rango'
                fi  
        else
		echo '	no es un mes valido, ingrese en formato númerico (ejemplo: 1)'
        fi  
        echo
done


echo "	el dia es $dia y el mes es $mes"
echo




if [ $mes -eq 1 ]
then
	if [ $dia -le 21 ]
	then
		echo '	tu signo zodiacal es Capricornio'
	else		
		echo '	tu signo zodiacal es Acuario'
	fi
elif [ $mes -eq 2 ]
then
	if [ $dia -le 21 ]
	then
		echo '	tu signo zodiacal es Acuario'
	else		
		echo '	tu signo zodiacal es Piscis'
	fi
elif [ $mes -eq 3 ]
then
	if [ $dia -le 21 ]
	then
		echo '	tu signo zodiacal es Piscis'
	else		
		echo '	tu signo zodiacal es Aries'
	fi
elif [ $mes -eq 4 ]
then
	if [ $dia -le 21 ]
	then
		echo '	tu signo zodiacal es Aries'
	else		
		echo '	tu signo zodiacal es Tauro'
	fi
elif [ $mes -eq 5 ] 
then
	if [ $dia -le 22 ]
	then
		echo '	tu signo zodiacal es Tauro'
	else		
		echo '	tu signo zodiacal es Genimis'
	fi
elif [ $mes -eq 6 ] 
then
	if [ $dia -le 22 ]
	then
		echo '	tu signo zodiacal es Geminis'
	else		
		echo '	tu signo zodiacal es Cancer'
	fi
elif [ $mes -eq 7 ] 
then
	if [ $dia -le 23 ]
	then
		echo '	tu signo zodiacal es Cancer'
	else		
		echo '	tu signo zodiacal es Leo'
	fi
elif [ $mes -eq 8 ]
then
	if [ $dia -le 23 ]
	then
		echo '	tu signo zodiacal es Leo'
	else		
		echo '	tu signo zodiacal es Virgo'
	fi
elif [ $mes -eq 9 ] 
then
	if [ $dia -le 24 ]
	then
		echo '	tu signo zodiacal es Virgo'
	else		
		echo '	tu signo zodiacal es Libra'
	fi
elif [ $mes -eq 10 ] 
then
	if [ $dia -le 25 ]
	then
		echo '	tu signo zodiacal es Libra'
	else		
		echo '	tu signo zodiacal es Escorpio'
	fi
elif [ $mes -eq 11 ] 
then
	if [ $dia -le 23 ]
	then
		echo '	tu signo zodiacal es Escorpio'
	else		
		echo '	tu signo zodiacal es Sagitario'
	fi
elif [ $mes -eq 12 ] 
then
	if [ $dia -le 22 ]
	then
		echo '	tu signo zodiacal es Sagitario'
	else		
		echo '	tu signo zodiacal es Capricornio'
	fi
fi
echo 
