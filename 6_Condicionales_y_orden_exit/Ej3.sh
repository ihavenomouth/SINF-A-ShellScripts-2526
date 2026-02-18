#!/bin/bash
# Crea un shell script que reciba exactamente dos parámetros.
# Si el número de parámetros no es exactamente dos, mostrará un mensaje de error y terminará.
# Si recibe dos parámetros que sean números devolverá por pantalla el menor de ellos.


if [ $# -ne 2 ];then
  echo "Error: debe indicar exactamente dos parámetros." 1>&2
  exit 1
fi

# Si llego aquí, es porque hay exactamente dos parámetros

if [ $1 -lt $2 ];then
  echo $1
else
  echo $2
fi




