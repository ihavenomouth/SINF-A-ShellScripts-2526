#!/bin/bash


# echo se utiliza para mostrar información al usuario

# echo imprime por pantalla lo que recibe como parámetro + 
# un retorno de carro

# Las comillas se pueden obivar y pueden ser simples o dobles.
# La recomendación es usar siempre comillas dobles

# echo Hola caracola
# echo "Hola caracola"
# echo 'Hola caracola'

# ------------------------------------------
# Diferencia entre comillas simples y dobles
# ------------------------------------------

# Con la comilla simple no se interpreta la cadena de caracteres
# Con la comilla doble sí se interpreta la cadena de caracteres

# echo "Primer parámetro: $1"
# echo 'Segundo parámetro: $2'


# ------------------------------------------
# Tratamiento del retorno de carro
# ------------------------------------------
# echo "Hola caracola"    # añade un retoro de carro
# echo                    # línea en blanco
# echo -n "Hola caracola" # sin retorno de carro

echo -n "Fecha de entrada: "
date

