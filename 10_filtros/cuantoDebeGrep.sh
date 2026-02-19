#!/bin/bash

# Fichero datos.txt:
# 1 ana 125
# 2 juan 300
# 3 pedro 3456
# 4 antonio 147
# 5 felipe 847
# 60 sara 76
# 12 mar 98
# 23 carlos 7
# 7 bea 34

# El primer campo es el id, el segundo el nombre, el tercero la cantidad que deben

# Crea un script que si no recibe ningún parámetro, mostrará cuánto deben todos los clientes en total.
# Si recibe un nombre como primer parámetro devuelverá cuánto debe la persona cuyo nombre se ha recibido.


# Si el número de parámetros es igual a 0, tengo que recorrer el fichero y sumar todas las cantidades que deben
if [ $# -eq 0 ];then
  
  total=0 # variable que servirá de acumulador

  #Iteramos palabra por palabra solo por el contenido del tercer campo
  for cantidad in $( cat datos.txt | cut -d " " -f 3 );do
    total=$(( $total + cantidad ))
  done

  echo "En total los clientes deben $total €"
  exit 0
fi


# if [ $# -ne 1 ];then
#  echo "Error: debe indicar el nombre del cliente como parámetro de búsqueda" 1>&2
#  exit 1
# fi

#Recorremos el fichero línea a línea
cat datos.txt | grep " $1 " | cut -d " " -f3




