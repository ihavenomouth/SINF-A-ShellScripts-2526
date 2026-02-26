#!/bin/bash

function saludo(){
  echo "Hola $1"
}



# Comentario
echo "Esto es un mensaje de error" 1>&2
echo "Esto es un mensaje normal"

echo "$#" # número de parámetros
echo "$0" # El nombre del script
echo "$1" # PRimero parámetro
echo "$2" # Segundo parámetro

echo -n "Introdice tu edad: "
read edad

for nombre in Ana Pedro Juan;do
  echo "$nombre"
  echo "nombre"
done


edad=34
edad_curso_siguiente=$(( $edad + 1 )) # ((  ))  ==> una operación aritmética básica

annoActual=$( date +%Y )

saludo "Javier"
saludo_inicial=$( saludo "Javier" )

# nombre = "Javier Mancera" # error típico de los alumnos ¡Cuidado con los espacios!


if [ $edad -gt 30 ];then  # cuidado con los espacios
  echo "Ya eres adulto"
fi

if [ "$nombre" == "Javier" ];then
  echo "Hola, $nombre"
elif [ "$nombre" == "Paco" ];then
  echo "¿Qué pasa máquina?"
else
  echo "Hola desconocido"
fi






exit 
exit 1

#######################################################




