#!/bin/bash

# --------------------------
# ¿Qué es una función?
# --------------------------
# Una función es un trozo de código con nombre que se puede invocar para ser
# ejecutada.

# ¿Para qué sirve?
# - Reutilizar código
# - Organizar el código


# -----------------------------------------------------
# Declaración y llamada de una función sin parámetros
# -----------------------------------------------------

# function saludo(){
#   echo "Hola caracola"
# }

# saludo


# -----------------------------------------------------
# Declaración y llamada de una función sin parámetros
# -----------------------------------------------------

# function saludo(){
#   echo "Hola, $1 $2"
# }

# saludo Javier Mancera


# Ejemplo: Crea un script que reciba como primer parámetro el nombre de un alumno
# y como segundo parámetro su apellido. Haz que se llame a una función que devuelva
# el "appellido, nombre"


# function nombreFormal(){
#   etiqueta=$1
#   nombre=$2
#   apellido=$3
#   echo "$1 $3, $2"
# }

# nombre=$1
# apellido=$2
# nombreFormal "Alumno: " $nombre $apellido


# -----------------------------------------------------
# Devolver una valor por parte de una función
# -----------------------------------------------------

function sumar(){
  sumando1=$1   # el primer parámetro
  sumando2=$2   # el segundo parámetro
  # Lo que imprimiría por pantalla es el resultado
  echo $(( $sumando1 + $sumando2 ))
  # echo "Fin de la función"
  # date
}

resultado=$( sumar 45 67 )

echo "El resultado es $resultado"

