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

# Crea un script que reciba un nombre como primer parámetro y devuelva cuánto 
# debe la persona cuyo nombre se ha recibido.

if [ $# -ne 1 ];then
 echo "Error: debe indicar el nombre del cliente como parámetro de búsqueda" 1>&2
 exit 1
fi

#Recorremos el fichero línea a línea
while read linea;do
  nombre_en_la_linea=$(echo $linea | cut -d " " -f 2 )
  # echo $nombre_en_la_linea

  if [ "$1" == "$nombre_en_la_linea" ];then
    cantidad_que_debe=$(echo $linea | cut -d " " -f 3 )
    echo "$cantidad_que_debe"
    exit 0
  fi

done < datos.txt

echo "El nombre $1 no corresponde con ningún cliente"


