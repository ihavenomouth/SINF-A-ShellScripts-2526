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


# Debemos entender la función como si fuera una orden local al script, por eso se llama como 
# si fuera una orden.

# Nota: si defino una función que se llama como una orden que ya existe en el sistema, la función
# tiene prioridad. Por ejemplo abajo cuando haga Bash ejecutará lo primero que encuentre y la
# función está definida en el propio script mientras que la orden habrá que buscarla en el $PATH

# function ls(){
#   echo "se ejecuta la función ls, no la orden ls"
# }
# ls

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

# function sumar(){
#   sumando1=$1   # el primer parámetro
#   sumando2=$2   # el segundo parámetro
#   # Lo que imprimiría por pantalla es el resultado
#   echo $(( $sumando1 + $sumando2 ))
#   # echo "Fin de la función"
#   # date
# }

# resultado=$( sumar 45 67 )

# echo "El resultado es $resultado"


# -----------------------------------------------------
# Variables globales y locales
# -----------------------------------------------------


# Variables globales:
# ---------------------
function variable_global(){
  # a es una variable global
  echo $a      # "letra A"
  a="Cambiamos el valor de a"
  b="letra B"  # esta también es una variable global
}


a="letra A"    # a es una variable global, disponible en todo el script

variable_global

#tanto a como b existen en todo el script
echo $a        # "Cambiamos el valor de a"
echo $b        # "letra B"


# Variables locales:
# ---------------------

function variable_local(){
  # las variables definidas como local en una función sólo existen dentro de esa función
  local c="letra C"
  echo "Valor de c: $c" # Valor de c: letra C
}

variable_local

# c no existe fuera de la función
echo "Valor de c: $c" # Valor de c:


