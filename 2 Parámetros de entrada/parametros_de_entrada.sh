#!/bin/bash


# Los parámetros de un script se guardan en las variables siguientes:
# $1 = primer parámetro
# $2 = segundo parámetro
# $3 = trecer parámetro
# ...

# echo "Parámetros de entrada de un script"
# echo "----------------------------------"
# echo $1
# echo $2
# echo $3

# Si ejecuto el script con ./script.hs uno dos tres, lo que se 
# imprimirá será:
# echo "Parámetros de entrada de un script"
# echo "----------------------------------"
# uno
# dos
# tres


#----------------------------------
# MÁS PARÁMETROS
#----------------------------------

# echo "Parámetros de entrada de un script"
# echo "----------------------------------"
# echo $1
# echo $2
# echo $3
# echo $4
# echo $5
# echo $6
# echo $7
# echo $8
# echo $9
# echo ${10}  # hasta el 9 lo hace correctamente
# echo ${11}  # $10 lo cambiará por uno1

#----------------------------------
# PARÁMETROS ESPECIALES
#----------------------------------

# echo "Parámetros de entrada de un script"
# echo "----------------------------------"
# echo $0 # el nombre del fichero de script
# echo $1
# echo $2
# echo $3

# ./parametros_de_entrada.sh uno dos tres
# Parámetros de entrada de un script
# ----------------------------------
# ./parametros_de_entrada.sh
# uno
# dos
# tres


echo "Parámetros de entrada de un script"
echo "----------------------------------"
echo $# # el número de parámetros que recibe el script
echo $* # la lista de parámetros que recibe el script
echo $@ # la lista de parámetros que recibe el script


